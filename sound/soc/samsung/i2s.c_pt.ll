; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/i2s.c_pt.bc'
source_filename = "../sound/soc/samsung/i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.samsung_i2s_dai_data = type { i32, i32, ptr }
%struct.samsung_i2s_variant_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.s3c_audio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.samsung_i2s_type }
%struct.samsung_i2s_type = type { i32, i32 }
%struct.samsung_i2s_priv = type { ptr, ptr, %struct.spinlock, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, [3 x ptr], %struct.clk_onecell_data, %struct.spinlock, ptr, i8 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.i2s_dai = type { ptr, i32, i32, i32, ptr, ptr, i32, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@__initcall__kmod_snd_soc_i2s__242_1699_samsung_i2s_driver_init6 = internal global ptr @samsung_i2s_driver_init, section ".initcall6.init", align 4
@samsung_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @samsung_i2s_probe, ptr @samsung_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_i2s_pm, ptr null, ptr null }, ptr @samsung_i2s_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_i2s_driver_exit = internal global ptr @samsung_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [63 x i8] c"snd_soc_i2s.author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [46 x i8] c"snd_soc_i2s.description=Samsung I2S Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [39 x i8] c"snd_soc_i2s.alias=platform:samsung-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [47 x i8] c"snd_soc_i2s.file=sound/soc/samsung/snd-soc-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [24 x i8] c"snd_soc_i2s.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-i2s\00", [20 x i8] zeroinitializer }, align 32
@exynos_i2s_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv3_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv5_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv6_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv7_dai_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-i2s1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2sv5_dai_type_i2s1 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@samsung_i2s_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_runtime_suspend, ptr @i2s_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@samsung_i2s_driver_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"samsung-i2s\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @i2sv3_dai_type to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung_i2s_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/samsung/i2s.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry_ptr = internal global ptr @samsung_i2s_probe._entry, section ".printk_index", align 4
@samsung_i2s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@samsung_i2s_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->pcm_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung,idma-addr\00", [46 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1439, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"idma address is notspecified\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry_ptr.13 = internal global ptr @samsung_i2s_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iis\00", [28 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get iis clock\0A\00", [39 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry_ptr.17 = internal global ptr @samsung_i2s_probe._entry.15, section ".printk_index", align 4
@samsung_i2s_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry_ptr.20 = internal global ptr @samsung_i2s_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx-sec\00", [25 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@samsung_i2s_probe._entry_ptr.26 = internal global ptr @samsung_i2s_probe._entry.24, section ".printk_index", align 4
@samsung_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr @samsung_i2s_widgets, i32 3, ptr @samsung_i2s_dapm_routes, i32 4, ptr null, ptr null, ptr @i2s_suspend, ptr @i2s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@i2s_alloc_dais.dai_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung-i2s-sec\00", [16 x i8] zeroinitializer }, align 32
@i2s_alloc_dais.stream_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Primary Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Secondary Playback\00", [45 x i8] zeroinitializer }, align 32
@samsung_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @i2s_set_sysclk, ptr null, ptr @i2s_set_clkdiv, ptr null, ptr @i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_startup, ptr @i2s_shutdown, ptr @i2s_hw_params, ptr null, ptr null, ptr @i2s_trigger, ptr null, ptr @i2s_delay, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Primary Capture\00", [16 x i8] zeroinitializer }, align 32
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:%d Other DAI busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2s_set_sysclk\00", [17 x i8] zeroinitializer }, align 32
@i2s_set_sysclk._entry_ptr = internal global ptr @i2s_set_sysclk._entry, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s_opclk1\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s_opclk0\00", [21 x i8] zeroinitializer }, align 32
@i2s_set_sysclk._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@i2s_set_sysclk._entry_ptr.36 = internal global ptr @i2s_set_sysclk._entry.35, section ".printk_index", align 4
@i2s_set_sysclk._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"We don't serve that!\0A\00", [42 x i8] zeroinitializer }, align 32
@i2s_set_sysclk._entry_ptr.39 = internal global ptr @i2s_set_sysclk._entry.37, section ".printk_index", align 4
@i2s_set_clkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.40, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2s_set_clkdiv\00", [17 x i8] zeroinitializer }, align 32
@i2s_set_clkdiv._entry_ptr = internal global ptr @i2s_set_clkdiv._entry, section ".printk_index", align 4
@i2s_set_clkdiv._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 999, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid clock divider(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@i2s_set_clkdiv._entry_ptr.43 = internal global ptr @i2s_set_clkdiv._entry.41, section ".printk_index", align 4
@i2s_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Format not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s_set_fmt\00", [20 x i8] zeroinitializer }, align 32
@i2s_set_fmt._entry_ptr = internal global ptr @i2s_set_fmt._entry, section ".printk_index", align 4
@i2s_set_fmt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Polarity not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@i2s_set_fmt._entry_ptr.48 = internal global ptr @i2s_set_fmt._entry.46, section ".printk_index", align 4
@i2s_set_fmt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"master/slave format not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@i2s_set_fmt._entry_ptr.51 = internal global ptr @i2s_set_fmt._entry.49, section ".printk_index", align 4
@i2s_set_fmt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.45, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@i2s_set_fmt._entry_ptr.53 = internal global ptr @i2s_set_fmt._entry.52, section ".printk_index", align 4
@i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d channels not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s_hw_params\00", [18 x i8] zeroinitializer }, align 32
@i2s_hw_params._entry_ptr = internal global ptr @i2s_hw_params._entry, section ".printk_index", align 4
@i2s_hw_params._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Format(%d) not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@i2s_hw_params._entry_ptr.58 = internal global ptr @i2s_hw_params._entry.56, section ".printk_index", align 4
@config_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d-RFS not supported for 24-blc\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config_setup\00", [19 x i8] zeroinitializer }, align 32
@config_setup._entry_ptr = internal global ptr @config_setup._entry, section ".printk_index", align 4
@config_setup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.60, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@config_setup._entry_ptr.62 = internal global ptr @config_setup._entry.61, section ".printk_index", align 4
@config_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.60, ptr @.str.3, ptr @.str.64, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_soc_i2s\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RCLK_SRC=%luHz PSR=%u, RCLK=%dfs, BCLK=%dfs\0A\00", [51 x i8] zeroinitializer }, align 32
@set_bfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported BCLK divider\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_bfs\00", [24 x i8] zeroinitializer }, align 32
@set_bfs._entry_ptr = internal global ptr @set_bfs._entry, section ".printk_index", align 4
@set_bfs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong BCLK Divider!\0A\00", [43 x i8] zeroinitializer }, align 32
@set_bfs._entry_ptr.69 = internal global ptr @set_bfs._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-sec\00", [25 x i8] zeroinitializer }, align 32
@i2s_create_secondary_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 1362, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device_attach() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2s_create_secondary_device\00", [36 x i8] zeroinitializer }, align 32
@i2s_create_secondary_device._entry_ptr = internal global ptr @i2s_create_secondary_device._entry, section ".printk_index", align 4
@samsung_i2s_dapm_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixer DAI TX\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mixer DAI RX\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Playback Mixer\00", [17 x i8] zeroinitializer }, align 32
@samsung_i2s_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdclk\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rclk_src\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prescaler\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@i2s_register_clock_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add clock provider: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2s_register_clock_provider\00", [36 x i8] zeroinitializer }, align 32
@i2s_register_clock_provider._entry_ptr = internal global ptr @i2s_register_clock_provider._entry, section ".printk_index", align 4
@i2sv3_dai_type = internal constant { %struct.samsung_i2s_dai_data, [20 x i8] } { %struct.samsung_i2s_dai_data { i32 4, i32 2046, ptr @i2sv3_regs }, [20 x i8] zeroinitializer }, align 32
@i2sv5_dai_type = internal constant { %struct.samsung_i2s_dai_data, [20 x i8] } { %struct.samsung_i2s_dai_data { i32 43, i32 2046, ptr @i2sv3_regs }, [20 x i8] zeroinitializer }, align 32
@i2sv6_dai_type = internal constant { %struct.samsung_i2s_dai_data, [20 x i8] } { %struct.samsung_i2s_dai_data { i32 59, i32 2046, ptr @i2sv6_regs }, [20 x i8] zeroinitializer }, align 32
@i2sv7_dai_type = internal constant { %struct.samsung_i2s_dai_data, [20 x i8] } { %struct.samsung_i2s_dai_data { i32 27, i32 8190, ptr @i2sv7_regs }, [20 x i8] zeroinitializer }, align 32
@i2sv5_dai_type_i2s1 = internal constant { %struct.samsung_i2s_dai_data, [20 x i8] } { %struct.samsung_i2s_dai_data { i32 9, i32 2046, ptr @i2sv5_i2s1_regs }, [20 x i8] zeroinitializer }, align 32
@i2sv3_regs = internal constant { %struct.samsung_i2s_variant_regs, [52 x i8] } { %struct.samsung_i2s_variant_regs { i32 1, i32 3, i32 5, i32 8, i32 10, i32 11, i32 12, i32 7, i32 3, i32 3, i32 8 }, [52 x i8] zeroinitializer }, align 32
@i2sv6_regs = internal constant { %struct.samsung_i2s_variant_regs, [52 x i8] } { %struct.samsung_i2s_variant_regs { i32 0, i32 4, i32 6, i32 8, i32 10, i32 11, i32 12, i32 15, i32 15, i32 3, i32 8 }, [52 x i8] zeroinitializer }, align 32
@i2sv7_regs = internal constant { %struct.samsung_i2s_variant_regs, [52 x i8] } { %struct.samsung_i2s_variant_regs { i32 0, i32 4, i32 7, i32 9, i32 11, i32 12, i32 22, i32 15, i32 15, i32 7, i32 0 }, [52 x i8] zeroinitializer }, align 32
@i2sv5_i2s1_regs = internal constant { %struct.samsung_i2s_variant_regs, [52 x i8] } { %struct.samsung_i2s_variant_regs { i32 0, i32 3, i32 6, i32 8, i32 10, i32 11, i32 12, i32 15, i32 7, i32 7, i32 8 }, [52 x i8] zeroinitializer }, align 32
@switch.table.i2s_set_clkdiv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 48, i32 16, i32 24, i32 64, i32 96, i32 128, i32 192, i32 256], [32 x i8] zeroinitializer }, align 32
@switch.table.config_setup = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 512, i32 384, i32 768, i32 64, i32 128, i32 96, i32 192], [36 x i8] zeroinitializer }, align 32
@switch.table.config_setup.84 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 48, i32 16, i32 24, i32 64, i32 96, i32 128, i32 192, i32 256], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.92 = internal global [11 x i64] [i64 9, i64 32, i64 16, i64 24, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256]
@__sancov_gen_cov_switch_values.93 = internal global [9 x i64] [i64 7, i64 32, i64 64, i64 96, i64 128, i64 192, i64 384, i64 512, i64 768]
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"samsung_i2s_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1688, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1693, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"exynos_i2s_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1659, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"samsung_i2s_pm\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1681, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"samsung_i2s_driver_ids\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1649, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1409, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1425, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1426, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1435, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1438, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1450, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1452, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1458, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1463, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1464, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1481, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1507, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"samsung_i2s_component\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1135, i32 46 }
@___asan_gen_.184 = private unnamed_addr constant [10 x i8] c"dai_names\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1155, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1155, i32 52 }
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"stream_names\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1156, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1156, i32 40 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1157, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"samsung_i2s_dai_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1107, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1200, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 533, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 570, i32 7 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 573, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 591, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 604, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 990, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 998, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 652, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 670, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 689, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 704, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 754, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 793, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 892, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 906, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 921, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 334, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 369, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1342, i32 57 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1362, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [24 x i8] c"samsung_i2s_dapm_routes\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1127, i32 40 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1120, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1121, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1124, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"samsung_i2s_widgets\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1118, i32 41 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1265, i32 40 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1265, i32 49 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1265, i32 61 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1275, i32 38 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1288, i32 53 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1328, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [15 x i8] c"i2sv3_dai_type\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1616, i32 42 }
@___asan_gen_.367 = private unnamed_addr constant [15 x i8] c"i2sv5_dai_type\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1622, i32 42 }
@___asan_gen_.370 = private unnamed_addr constant [15 x i8] c"i2sv6_dai_type\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1629, i32 42 }
@___asan_gen_.373 = private unnamed_addr constant [15 x i8] c"i2sv7_dai_type\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1636, i32 42 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c"i2sv5_dai_type_i2s1\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1643, i32 42 }
@___asan_gen_.379 = private unnamed_addr constant [11 x i8] c"i2sv3_regs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1560, i32 46 }
@___asan_gen_.382 = private unnamed_addr constant [11 x i8] c"i2sv6_regs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1574, i32 46 }
@___asan_gen_.385 = private unnamed_addr constant [11 x i8] c"i2sv7_regs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1588, i32 46 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"i2sv5_i2s1_regs\00", align 1
@___asan_gen_.389 = private constant [27 x i8] c"../sound/soc/samsung/i2s.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1602, i32 46 }
@___asan_gen_.391 = private unnamed_addr constant [28 x i8] c"switch.table.i2s_set_clkdiv\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [26 x i8] c"switch.table.config_setup\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [29 x i8] c"switch.table.config_setup.84\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_samsung_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_i2s__242_1699_samsung_i2s_driver_init6, ptr @config_setup._entry, ptr @config_setup._entry.61, ptr @config_setup._entry_ptr, ptr @config_setup._entry_ptr.62, ptr @i2s_create_secondary_device._entry, ptr @i2s_create_secondary_device._entry_ptr, ptr @i2s_hw_params._entry, ptr @i2s_hw_params._entry.56, ptr @i2s_hw_params._entry_ptr, ptr @i2s_hw_params._entry_ptr.58, ptr @i2s_register_clock_provider._entry, ptr @i2s_register_clock_provider._entry_ptr, ptr @i2s_set_clkdiv._entry, ptr @i2s_set_clkdiv._entry.41, ptr @i2s_set_clkdiv._entry_ptr, ptr @i2s_set_clkdiv._entry_ptr.43, ptr @i2s_set_fmt._entry, ptr @i2s_set_fmt._entry.46, ptr @i2s_set_fmt._entry.49, ptr @i2s_set_fmt._entry.52, ptr @i2s_set_fmt._entry_ptr, ptr @i2s_set_fmt._entry_ptr.48, ptr @i2s_set_fmt._entry_ptr.51, ptr @i2s_set_fmt._entry_ptr.53, ptr @i2s_set_sysclk._entry, ptr @i2s_set_sysclk._entry.35, ptr @i2s_set_sysclk._entry.37, ptr @i2s_set_sysclk._entry_ptr, ptr @i2s_set_sysclk._entry_ptr.36, ptr @i2s_set_sysclk._entry_ptr.39, ptr @samsung_i2s_driver_exit, ptr @samsung_i2s_probe._entry, ptr @samsung_i2s_probe._entry.10, ptr @samsung_i2s_probe._entry.15, ptr @samsung_i2s_probe._entry.18, ptr @samsung_i2s_probe._entry.24, ptr @samsung_i2s_probe._entry_ptr, ptr @samsung_i2s_probe._entry_ptr.13, ptr @samsung_i2s_probe._entry_ptr.17, ptr @samsung_i2s_probe._entry_ptr.20, ptr @samsung_i2s_probe._entry_ptr.26, ptr @set_bfs._entry, ptr @set_bfs._entry.67, ptr @set_bfs._entry_ptr, ptr @set_bfs._entry_ptr.69, ptr @samsung_i2s_driver, ptr @.str, ptr @exynos_i2s_match, ptr @samsung_i2s_pm, ptr @samsung_i2s_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @samsung_i2s_probe.__key, ptr @.str.6, ptr @samsung_i2s_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @samsung_i2s_component, ptr @i2s_alloc_dais.dai_names, ptr @.str.27, ptr @i2s_alloc_dais.stream_names, ptr @.str.28, ptr @.str.29, ptr @samsung_i2s_dai_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @samsung_i2s_dapm_routes, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @samsung_i2s_widgets, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @i2sv3_dai_type, ptr @i2sv5_dai_type, ptr @i2sv6_dai_type, ptr @i2sv7_dai_type, ptr @i2sv5_dai_type_i2s1, ptr @i2sv3_regs, ptr @i2sv6_regs, ptr @i2sv7_regs, ptr @i2sv5_i2s1_regs, ptr @switch.table.i2s_set_clkdiv, ptr @switch.table.config_setup, ptr @switch.table.config_setup.84], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_i2s_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_driver_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_alloc_dais.dai_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_alloc_dais.stream_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_sysclk._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_sysclk._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_clkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_clkdiv._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_fmt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_fmt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_set_fmt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_hw_params._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_setup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_bfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_bfs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_create_secondary_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_dapm_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_i2s_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_register_clock_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv3_dai_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv5_dai_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv6_dai_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv7_dai_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv5_dai_type_i2s1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv3_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv6_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv7_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2sv5_i2s1_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.i2s_set_clkdiv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.config_setup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.config_setup.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_i2s_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_i2s_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %p_names.i = alloca [2 x ptr], align 8
  %idma_addr = alloca i32, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idma_addr) #7
  %2 = ptrtoint ptr %idma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idma_addr, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %5 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !208
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.end7.thread

if.else:                                          ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_entry, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = inttoptr i32 %9 to ptr
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.else16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.thread:                                   ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %call.i315 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %tobool10.not316 = icmp eq ptr %call.i315, null
  br i1 %tobool10.not316, label %if.end7.thread.cleanup_crit_edge, label %if.end7.thread.if.end23_crit_edge

if.end7.thread.if.end23_crit_edge:                ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end7.thread.cleanup_crit_edge:                 ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else16:                                        ; preds = %if.end7
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end20:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 6
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end7.thread.if.end23_crit_edge
  %type.sink = phi ptr [ %type, %if.end20 ], [ %call, %if.end7.thread.if.end23_crit_edge ]
  %call.i.sink = phi ptr [ %call.i, %if.end20 ], [ %call.i315, %if.end7.thread.if.end23_crit_edge ]
  %i2s_dai_data.0317324 = phi ptr [ %10, %if.end20 ], [ %call, %if.end7.thread.if.end23_crit_edge ]
  %11 = ptrtoint ptr %type.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.sink, align 4
  %quirks22 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 13
  %13 = ptrtoint ptr %quirks22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %quirks22, align 4
  %quirks24 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 13
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool25.not, i32 1, i32 2
  %14 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %call.i.sink, align 4
  %i2s_variant_regs = getelementptr inbounds %struct.samsung_i2s_dai_data, ptr %i2s_dai_data.0317324, i32 0, i32 2
  %15 = ptrtoint ptr %i2s_variant_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2s_variant_regs, align 4
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 12
  %17 = ptrtoint ptr %variant_regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %variant_regs, align 4
  %18 = mul nuw nsw i32 %cond, 148
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #7
  %dai.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 3
  %19 = ptrtoint ptr %dai.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %dai.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %devm_kcalloc.exit78.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit78.i:                            ; preds = %if.end23
  %20 = mul nuw nsw i32 %cond, 168
  %21 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i.sink, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %call5.i.i75.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3.i, i32 noundef %20, i32 noundef 3520) #7
  %dai_drv5.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 4
  %23 = ptrtoint ptr %dai_drv5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i75.i, ptr %dai_drv5.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i75.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit78.i.cleanup_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit78.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit78.i
  %pcm_rates.i = getelementptr inbounds %struct.samsung_i2s_dai_data, ptr %i2s_dai_data.0317324, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.086.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %dai_drv5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dai_drv5.i, align 4
  %arrayidx.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i
  %probe.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 4
  %26 = ptrtoint ptr %probe.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @samsung_i2s_dai_probe, ptr %probe.i, align 8
  %remove.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 5
  %27 = ptrtoint ptr %remove.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @samsung_i2s_dai_remove, ptr %remove.i, align 4
  %symmetric_rate.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 12
  %28 = ptrtoint ptr %symmetric_rate.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %symmetric_rate.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %symmetric_rate.i, align 8
  %ops.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 8
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @samsung_i2s_dai_ops, ptr %ops.i, align 8
  %playback.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 11
  %channels_min.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 11, i32 5
  %30 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 11, i32 6
  %31 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %channels_max.i, align 8
  %32 = ptrtoint ptr %pcm_rates.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pcm_rates.i, align 4
  %rates.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 11, i32 2
  %34 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rates.i, align 8
  %formats.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 11, i32 1
  %35 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 69, ptr %formats.i, align 8
  %arrayidx14.i = getelementptr [2 x ptr], ptr @i2s_alloc_dais.stream_names, i32 0, i32 %i.086.i
  %36 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx14.i, align 4
  %38 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %playback.i, align 8
  %add.i = add nuw nsw i32 %i.086.i, 1
  %id.i = getelementptr %struct.snd_soc_dai_driver, ptr %25, i32 %i.086.i, i32 1
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %id.i, align 4
  %arrayidx16.i = getelementptr [2 x ptr], ptr @i2s_alloc_dais.dai_names, i32 0, i32 %i.086.i
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx16.i, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %arrayidx.i, align 8
  %43 = load ptr, ptr %dai_drv5.i, align 4
  %arrayidx18.i = getelementptr %struct.snd_soc_dai_driver, ptr %43, i32 %i.086.i
  %44 = ptrtoint ptr %dai.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dai.i, align 4
  %drv.i = getelementptr %struct.i2s_dai, ptr %45, i32 %i.086.i, i32 7
  %46 = ptrtoint ptr %drv.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx18.i, ptr %drv.i, align 4
  %47 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i.sink, align 4
  %49 = load ptr, ptr %dai.i, align 4
  %arrayidx23.i = getelementptr %struct.i2s_dai, ptr %49, i32 %i.086.i
  %50 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %arrayidx23.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, %cond
  br i1 %exitcond.not.i, label %if.end29, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end29:                                         ; preds = %for.body.i
  %51 = ptrtoint ptr %dai_drv5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dai_drv5.i, align 4
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %52, i32 0, i32 10
  %channels_min27.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %52, i32 0, i32 10, i32 5
  %53 = ptrtoint ptr %channels_min27.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %channels_min27.i, align 4
  %channels_max29.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %52, i32 0, i32 10, i32 6
  %54 = ptrtoint ptr %channels_max29.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %channels_max29.i, align 8
  %55 = ptrtoint ptr %pcm_rates.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pcm_rates.i, align 4
  %rates32.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %52, i32 0, i32 10, i32 2
  %57 = ptrtoint ptr %rates32.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rates32.i, align 8
  %formats34.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %52, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %formats34.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 69, ptr %formats34.i, align 8
  %59 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.30, ptr %capture.i, align 8
  %60 = ptrtoint ptr %dai.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dai.i, align 4
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @samsung_i2s_probe.__key, i16 noundef signext 3) #7
  %pcm_lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %pcm_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @samsung_i2s_probe.__key.7, i16 noundef signext 3) #7
  br i1 %tobool.not, label %if.then39, label %if.else45

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %dma_playback = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %dma_playback to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_playback, align 4
  %filter_data = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 8, i32 3
  %64 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %filter_data, align 4
  %dma_capture = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %dma_capture to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_capture, align 4
  %filter_data42 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 9, i32 3
  %67 = ptrtoint ptr %filter_data42 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %filter_data42, align 4
  %dma_filter = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_filter, align 4
  %filter = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 11
  %70 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %filter, align 4
  %idma_addr44 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 6, i32 1
  %71 = ptrtoint ptr %idma_addr44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idma_addr44, align 4
  %73 = ptrtoint ptr %idma_addr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %idma_addr, align 4
  br label %if.end59

if.else45:                                        ; preds = %if.end29
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %idma_addr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool47.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool47.not, label %if.else45.if.end59_crit_edge, label %if.then48

if.else45.if.end59_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then48:                                        ; preds = %if.else45
  %74 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks24, align 4
  %and50 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then48.if.end59_crit_edge, label %do.end55

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %if.then48.if.end59_crit_edge, %if.else45.if.end59_crit_edge, %if.then39
  %call60 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 17
  %76 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call60, ptr %addr, align 4
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %78 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %res, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %call68 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 6
  %82 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call68, ptr %clk, align 4
  %cmp.i293 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %do.end74, label %if.end78

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %83 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk, align 4
  %85 = ptrtoint ptr %84 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %call.i294 = call i32 @clk_prepare(ptr noundef %call68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %tobool.not.i295 = icmp eq i32 %call.i294, 0
  br i1 %tobool.not.i295, label %if.end.i296, label %if.end78.do.end85_crit_edge

if.end78.do.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end85

if.end.i296:                                      ; preds = %if.end78
  %call1.i = call i32 @clk_enable(ptr noundef %call68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end87, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call68) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then3.i, %if.end78.do.end85_crit_edge
  %retval.0.i297.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i294, %if.end78.do.end85_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i297.ph) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end.i296
  %add = add i32 %81, 16
  %dma_playback88 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 8
  %86 = ptrtoint ptr %dma_playback88 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add, ptr %dma_playback88, align 4
  %add90 = add i32 %81, 20
  %dma_capture91 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 9
  %87 = ptrtoint ptr %dma_capture91 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add90, ptr %dma_capture91, align 4
  %chan_name = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 8, i32 4
  %88 = ptrtoint ptr %chan_name to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.21, ptr %chan_name, align 4
  %chan_name95 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 9, i32 4
  %89 = ptrtoint ptr %chan_name95 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.22, ptr %chan_name95, align 4
  %addr_width = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %addr_width, align 4
  %addr_width98 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %addr_width98 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %addr_width98, align 4
  %priv99 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 12
  %92 = ptrtoint ptr %priv99 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.sink, ptr %priv99, align 4
  %93 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks24, align 4
  %and101 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end87.if.end104_crit_edge, label %if.then103

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %drv = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 7
  %95 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %drv, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %96, i32 0, i32 11, i32 6
  %97 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 6, ptr %channels_max, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end87.if.end104_crit_edge
  %filter106 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 11
  %98 = ptrtoint ptr %filter106 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %filter106, align 4
  %call107 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %dev, ptr noundef %99, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.end104.err_disable_clk_crit_edge, label %if.end110

if.end104.err_disable_clk_crit_edge:              ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end110:                                        ; preds = %if.end104
  %100 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %quirks24, align 4
  %and112 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end146_crit_edge, label %if.then114

if.end110.if.end146_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then114:                                       ; preds = %if.end110
  %102 = ptrtoint ptr %dai.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dai.i, align 4
  %arrayidx116 = getelementptr %struct.i2s_dai, ptr %103, i32 1
  %add117 = add i32 %81, 28
  %dma_playback118 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 8
  %104 = ptrtoint ptr %dma_playback118 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add117, ptr %dma_playback118, align 4
  %chan_name121 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 8, i32 4
  %105 = ptrtoint ptr %chan_name121 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.23, ptr %chan_name121, align 4
  br i1 %tobool.not, label %if.then123, label %if.then114.if.end128_crit_edge

if.then114.if.end128_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then123:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %dma_play_sec = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %dma_play_sec to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma_play_sec, align 4
  %filter_data125 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 8, i32 3
  %108 = ptrtoint ptr %filter_data125 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %filter_data125, align 4
  %dma_filter126 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 1
  %109 = ptrtoint ptr %dma_filter126 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dma_filter126, align 4
  %filter127 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 11
  %111 = ptrtoint ptr %filter127 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %filter127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %if.then114.if.end128_crit_edge
  %addr_width130 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 8, i32 1
  %112 = ptrtoint ptr %addr_width130 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 4, ptr %addr_width130, align 4
  %113 = ptrtoint ptr %idma_addr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idma_addr, align 4
  %idma_playback = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 10
  %115 = ptrtoint ptr %idma_playback to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %idma_playback, align 4
  %pri_dai132 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 4
  %116 = ptrtoint ptr %pri_dai132 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %61, ptr %pri_dai132, align 4
  %priv133 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 12
  %117 = ptrtoint ptr %priv133 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i.sink, ptr %priv133, align 4
  %sec_dai134 = getelementptr inbounds %struct.i2s_dai, ptr %61, i32 0, i32 5
  %118 = ptrtoint ptr %sec_dai134 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx116, ptr %sec_dai134, align 4
  %119 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i.sink, align 4
  %dev.i298 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end128.dev_name.exit.i_crit_edge

if.end128.dev_name.exit.i_crit_edge:              ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %dev.i298 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i298, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end128.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %124, %if.end.i.i ], [ %122, %if.end128.dev_name.exit.i_crit_edge ]
  %call3.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i298, i32 noundef 3264, ptr noundef nonnull @.str.70, ptr noundef %retval.0.i.i) #7
  %tobool.not.i299 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i299, label %dev_name.exit.i.err_disable_clk_crit_edge, label %if.end.i300

dev_name.exit.i.err_disable_clk_crit_edge:        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end.i300:                                      ; preds = %dev_name.exit.i
  %call4.i = call ptr @platform_device_alloc(ptr noundef nonnull %call3.i, i32 noundef -1) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i300.err_disable_clk_crit_edge, label %if.end7.i

if.end.i300.err_disable_clk_crit_edge:            ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end7.i:                                        ; preds = %if.end.i300
  %call8.i = call noalias ptr @kstrdup(ptr noundef nonnull @.str, i32 noundef 3264) #7
  %driver_override.i = getelementptr inbounds %struct.platform_device, ptr %call4.i, i32 0, i32 9
  %125 = ptrtoint ptr %driver_override.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call8.i, ptr %driver_override.i, align 8
  %call9.i = call i32 @platform_device_add(ptr noundef nonnull %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i301 = icmp slt i32 %call9.i, 0
  br i1 %cmp.i301, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @platform_device_put(ptr noundef nonnull %call4.i) #7
  br label %err_disable_clk

if.end11.i:                                       ; preds = %if.end7.i
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %call4.i, i32 0, i32 3
  %call13.i = call i32 @device_attach(ptr noundef %dev12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 1
  %pdev_sec16.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 1
  br i1 %cmp14.i, label %i2s_create_secondary_device.exit, label %i2s_create_secondary_device.exit.thread333

i2s_create_secondary_device.exit.thread333:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %pdev_sec16.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call4.i, ptr %pdev_sec16.i, align 4
  br label %if.end138

i2s_create_secondary_device.exit:                 ; preds = %if.end11.i
  %127 = ptrtoint ptr %pdev_sec16.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev_sec16.i, align 4
  call void @platform_device_unregister(ptr noundef %128) #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.i, ptr noundef nonnull @.str.71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp136 = icmp slt i32 %call13.i, 0
  br i1 %cmp136, label %i2s_create_secondary_device.exit.err_disable_clk_crit_edge, label %i2s_create_secondary_device.exit.if.end138_crit_edge

i2s_create_secondary_device.exit.if.end138_crit_edge: ; preds = %i2s_create_secondary_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

i2s_create_secondary_device.exit.err_disable_clk_crit_edge: ; preds = %i2s_create_secondary_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end138:                                        ; preds = %i2s_create_secondary_device.exit.if.end138_crit_edge, %i2s_create_secondary_device.exit.thread333
  %129 = ptrtoint ptr %pdev_sec16.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev_sec16.i, align 4
  %dev139 = getelementptr inbounds %struct.platform_device, ptr %130, i32 0, i32 3
  %filter140 = getelementptr %struct.i2s_dai, ptr %103, i32 1, i32 11
  %131 = ptrtoint ptr %filter140 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %filter140, align 4
  %call142 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %dev139, ptr noundef %132, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end138.err_del_sec_crit_edge, label %if.end138.if.end146_crit_edge

if.end138.if.end146_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.end138.err_del_sec_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_del_sec

if.end146:                                        ; preds = %if.end138.if.end146_crit_edge, %if.end110.if.end146_crit_edge
  %tobool147.not = icmp eq ptr %1, null
  br i1 %tobool147.not, label %if.end146.if.end158_crit_edge, label %land.lhs.true

if.end146.if.end158_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

land.lhs.true:                                    ; preds = %if.end146
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %tobool148.not = icmp eq ptr %134, null
  br i1 %tobool148.not, label %land.lhs.true.if.end158_crit_edge, label %land.lhs.true149

land.lhs.true.if.end158_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

land.lhs.true149:                                 ; preds = %land.lhs.true
  %call151 = call i32 %134(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %land.lhs.true149.if.end158_crit_edge, label %do.end156

land.lhs.true149.if.end158_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

do.end156:                                        ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %err_del_sec

if.end158:                                        ; preds = %land.lhs.true149.if.end158_crit_edge, %land.lhs.true.if.end158_crit_edge, %if.end146.if.end158_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %135 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i.sink, ptr %driver_data.i, align 4
  %136 = ptrtoint ptr %dai_drv5.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dai_drv5.i, align 4
  %call161 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @samsung_i2s_component, ptr noundef %137, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end158.err_del_sec_crit_edge, label %if.end164

if.end158.err_del_sec_crit_edge:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_del_sec

if.end164:                                        ; preds = %if.end158
  %call.i303 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_names.i) #7
  %138 = ptrtoint ptr %p_names.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 0, ptr %p_names.i, align 8
  %139 = ptrtoint ptr %call.i.sink to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %call.i.sink, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %variant_regs, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3, i32 27
  %143 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %of_node.i, align 8
  %call.i304 = call ptr @of_find_property(ptr noundef %144, ptr noundef nonnull @.str.80, ptr noundef null) #7
  %tobool.not.i305 = icmp eq ptr %call.i304, null
  br i1 %tobool.not.i305, label %if.end164.if.end171_crit_edge, label %for.body.preheader.i

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

for.body.preheader.i:                             ; preds = %if.end164
  %call2.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.34) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end5.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = call ptr @__clk_get_name(ptr noundef %call2.i) #7
  %145 = ptrtoint ptr %p_names.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call6.i, ptr %p_names.i, align 8
  call void @clk_put(ptr noundef %call2.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i, %for.body.preheader.i.for.inc.i_crit_edge
  %call2.1.i = call ptr @clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.33) #7
  %cmp.i.1.i = icmp ugt ptr %call2.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end5.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end5.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.1.i = call ptr @__clk_get_name(ptr noundef %call2.1.i) #7
  %arrayidx7.1.i = getelementptr inbounds [2 x ptr], ptr %p_names.i, i32 0, i32 1
  %146 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call6.1.i, ptr %arrayidx7.1.i, align 4
  call void @clk_put(ptr noundef %call2.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end5.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %init_name.i.i306 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3, i32 3
  %147 = ptrtoint ptr %init_name.i.i306 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %init_name.i.i306, align 8
  %tobool.not.i.i307 = icmp eq ptr %148, null
  br i1 %tobool.not.i.i307, label %if.end.i.i308, label %for.inc.1.i.dev_name.exit.i311_crit_edge

for.inc.1.i.dev_name.exit.i311_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i311

for.cond8.i:                                      ; preds = %dev_name.exit.i311
  %149 = ptrtoint ptr %init_name.i.i306 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %init_name.i.i306, align 8
  %tobool.not.i.1.i = icmp eq ptr %150, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.cond8.i.dev_name.exit.1.i_crit_edge

for.cond8.i.dev_name.exit.1.i_crit_edge:          ; preds = %for.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.1.i

if.end.i.1.i:                                     ; preds = %for.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.1.i

dev_name.exit.1.i:                                ; preds = %if.end.i.1.i, %for.cond8.i.dev_name.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %152, %if.end.i.1.i ], [ %150, %for.cond8.i.dev_name.exit.1.i_crit_edge ]
  %call13.1.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i, i32 noundef 3264, ptr noundef nonnull @.str.81, ptr noundef %retval.0.i.1.i, ptr noundef nonnull @.str.78) #7
  %tobool16.not.1.i = icmp eq ptr %call13.1.i, null
  br i1 %tobool16.not.1.i, label %dev_name.exit.1.i.i2s_register_clock_provider.exit.thread_crit_edge, label %for.cond8.1.i

dev_name.exit.1.i.i2s_register_clock_provider.exit.thread_crit_edge: ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_register_clock_provider.exit.thread

for.cond8.1.i:                                    ; preds = %dev_name.exit.1.i
  %153 = ptrtoint ptr %init_name.i.i306 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i.i306, align 8
  %tobool.not.i.2.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %for.cond8.1.i.dev_name.exit.2.i_crit_edge

for.cond8.1.i.dev_name.exit.2.i_crit_edge:        ; preds = %for.cond8.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.2.i

if.end.i.2.i:                                     ; preds = %for.cond8.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.2.i

dev_name.exit.2.i:                                ; preds = %if.end.i.2.i, %for.cond8.1.i.dev_name.exit.2.i_crit_edge
  %retval.0.i.2.i = phi ptr [ %156, %if.end.i.2.i ], [ %154, %for.cond8.1.i.dev_name.exit.2.i_crit_edge ]
  %call13.2.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i, i32 noundef 3264, ptr noundef nonnull @.str.81, ptr noundef %retval.0.i.2.i, ptr noundef nonnull @.str.79) #7
  %tobool16.not.2.i = icmp eq ptr %call13.2.i, null
  br i1 %tobool16.not.2.i, label %dev_name.exit.2.i.i2s_register_clock_provider.exit.thread_crit_edge, label %for.cond8.2.i

dev_name.exit.2.i.i2s_register_clock_provider.exit.thread_crit_edge: ; preds = %dev_name.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_register_clock_provider.exit.thread

for.cond8.2.i:                                    ; preds = %dev_name.exit.2.i
  %157 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %quirks24, align 4
  %and.i = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %for.cond8.2.i.if.end43.i_crit_edge

for.cond8.2.i.if.end43.i_crit_edge:               ; preds = %for.cond8.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end.i.i308:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i311

dev_name.exit.i311:                               ; preds = %if.end.i.i308, %for.inc.1.i.dev_name.exit.i311_crit_edge
  %retval.0.i.i309 = phi ptr [ %160, %if.end.i.i308 ], [ %148, %for.inc.1.i.dev_name.exit.i311_crit_edge ]
  %call13.i310 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i, i32 noundef 3264, ptr noundef nonnull @.str.81, ptr noundef %retval.0.i.i309, ptr noundef nonnull @.str.77) #7
  %tobool16.not.i = icmp eq ptr %call13.i310, null
  br i1 %tobool16.not.i, label %dev_name.exit.i311.i2s_register_clock_provider.exit.thread_crit_edge, label %for.cond8.i

dev_name.exit.i311.i2s_register_clock_provider.exit.thread_crit_edge: ; preds = %dev_name.exit.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_register_clock_provider.exit.thread

if.then23.i:                                      ; preds = %for.cond8.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %162, i32 12
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  call void @arm_heavy_mb() #7
  %164 = or i32 %163, 8388608
  %165 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %addr, align 4
  %add.ptr27.i = getelementptr i8, ptr %166, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %164) #7, !srcloc !212
  %167 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %addr, align 4
  %add.ptr30.i = getelementptr i8, ptr %168, i32 4
  %rclksrc_off.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %142, i32 0, i32 4
  %169 = ptrtoint ptr %rclksrc_off.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rclksrc_off.i, align 4
  %conv.i = trunc i32 %170 to i8
  %call31.i = call ptr @clk_register_mux_table(ptr noundef %dev1.i, ptr noundef nonnull %call13.1.i, ptr noundef nonnull %p_names.i, i8 noundef zeroext 2, i32 noundef 132, ptr noundef %add.ptr30.i, i8 noundef zeroext %conv.i, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %lock) #7
  %arrayidx32.i = getelementptr %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 14, i32 1
  %171 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call31.i, ptr %arrayidx32.i, align 4
  %172 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %addr, align 4
  %add.ptr36.i = getelementptr i8, ptr %173, i32 12
  %call38.i = call ptr @clk_register_divider_table(ptr noundef %dev1.i, ptr noundef nonnull %call13.2.i, ptr noundef nonnull %call13.1.i, i32 noundef 4, ptr noundef %add.ptr36.i, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef %lock) #7
  %arrayidx40.i = getelementptr %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 14, i32 2
  %174 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call38.i, ptr %arrayidx40.i, align 4
  %175 = ptrtoint ptr %p_names.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call13.2.i, ptr %p_names.i, align 8
  %clk_num.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 15, i32 1
  %176 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2, ptr %clk_num.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then23.i, %for.cond8.2.i.if.end43.i_crit_edge
  %177 = ptrtoint ptr %p_names.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %p_names.i, align 8
  %179 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %addr, align 4
  %add.ptr47.i = getelementptr i8, ptr %180, i32 4
  %cdclkcon_off.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %142, i32 0, i32 6
  %181 = ptrtoint ptr %cdclkcon_off.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cdclkcon_off.i, align 4
  %conv48.i = trunc i32 %182 to i8
  %call50.i = call ptr @clk_register_gate(ptr noundef %dev1.i, ptr noundef nonnull %call13.i310, ptr noundef %178, i32 noundef 4, ptr noundef %add.ptr47.i, i8 noundef zeroext %conv48.i, i8 noundef zeroext 1, ptr noundef %lock) #7
  %clk_table51.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 14
  %183 = ptrtoint ptr %clk_table51.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call50.i, ptr %clk_table51.i, align 4
  %clk_data53.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 15
  %clk_num54.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 15, i32 1
  %184 = ptrtoint ptr %clk_num54.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %clk_num54.i, align 4
  %add.i312 = add i32 %185, 1
  store i32 %add.i312, ptr %clk_num54.i, align 4
  %186 = ptrtoint ptr %clk_data53.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %clk_table51.i, ptr %clk_data53.i, align 4
  %187 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %of_node.i, align 8
  %call60.i = call i32 @of_clk_add_provider(ptr noundef %188, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data53.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %do.end66.i, label %if.end43.i.if.end171_crit_edge

if.end43.i.if.end171_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

do.end66.i:                                       ; preds = %if.end43.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.82, i32 noundef %call60.i) #10
  %189 = ptrtoint ptr %clk_num54.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %clk_num54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp8.not.i.i = icmp eq i32 %190, 0
  br i1 %cmp8.not.i.i, label %do.end66.i.i2s_register_clock_provider.exit.thread_crit_edge, label %do.end66.i.for.body.i.i_crit_edge

do.end66.i.for.body.i.i_crit_edge:                ; preds = %do.end66.i
  br label %for.body.i.i

do.end66.i.i2s_register_clock_provider.exit.thread_crit_edge: ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_register_clock_provider.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end66.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end66.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 14, i32 %i.09.i.i
  %191 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unregister(ptr noundef %192) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %193 = ptrtoint ptr %clk_num54.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %clk_num54.i, align 4
  %cmp.i116.i = icmp ult i32 %inc.i.i, %194
  br i1 %cmp.i116.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %i2s_register_clock_provider.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

i2s_register_clock_provider.exit.thread:          ; preds = %do.end66.i.i2s_register_clock_provider.exit.thread_crit_edge, %dev_name.exit.i311.i2s_register_clock_provider.exit.thread_crit_edge, %dev_name.exit.2.i.i2s_register_clock_provider.exit.thread_crit_edge, %dev_name.exit.1.i.i2s_register_clock_provider.exit.thread_crit_edge
  %retval.0.i313.ph = phi i32 [ -12, %dev_name.exit.i311.i2s_register_clock_provider.exit.thread_crit_edge ], [ -12, %dev_name.exit.1.i.i2s_register_clock_provider.exit.thread_crit_edge ], [ -12, %dev_name.exit.2.i.i2s_register_clock_provider.exit.thread_crit_edge ], [ %call60.i, %do.end66.i.i2s_register_clock_provider.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_names.i) #7
  br label %err_disable_pm

i2s_register_clock_provider.exit:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_names.i) #7
  br label %err_disable_pm

if.end171:                                        ; preds = %if.end43.i.if.end171_crit_edge, %if.end164.if.end171_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_names.i) #7
  %arrayidx172 = getelementptr %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 14, i32 1
  %195 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx172, align 4
  %call173 = call ptr @clk_get_parent(ptr noundef %196) #7
  %op_clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 7
  %197 = ptrtoint ptr %op_clk to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call173, ptr %op_clk, align 4
  br label %cleanup

err_disable_pm:                                   ; preds = %i2s_register_clock_provider.exit, %i2s_register_clock_provider.exit.thread
  %retval.0.i313338 = phi i32 [ %retval.0.i313.ph, %i2s_register_clock_provider.exit.thread ], [ %call60.i, %i2s_register_clock_provider.exit ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %err_del_sec

err_del_sec:                                      ; preds = %err_disable_pm, %if.end158.err_del_sec_crit_edge, %do.end156, %if.end138.err_del_sec_crit_edge
  %ret.0 = phi i32 [ %call142, %if.end138.err_del_sec_crit_edge ], [ -22, %do.end156 ], [ %call161, %if.end158.err_del_sec_crit_edge ], [ %retval.0.i313338, %err_disable_pm ]
  %pdev_sec.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %call.i.sink, i32 0, i32 1
  %198 = ptrtoint ptr %pdev_sec.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev_sec.i, align 4
  call void @platform_device_unregister(ptr noundef %199) #7
  %200 = ptrtoint ptr %pdev_sec.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %pdev_sec.i, align 4
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_del_sec, %i2s_create_secondary_device.exit.err_disable_clk_crit_edge, %if.then10.i, %if.end.i300.err_disable_clk_crit_edge, %dev_name.exit.i.err_disable_clk_crit_edge, %if.end104.err_disable_clk_crit_edge
  %ret.1 = phi i32 [ %call107, %if.end104.err_disable_clk_crit_edge ], [ %call13.i, %i2s_create_secondary_device.exit.err_disable_clk_crit_edge ], [ %ret.0, %err_del_sec ], [ -12, %if.end.i300.err_disable_clk_crit_edge ], [ -12, %dev_name.exit.i.err_disable_clk_crit_edge ], [ %call9.i, %if.then10.i ]
  %201 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %202) #7
  call void @clk_unprepare(ptr noundef %202) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end171, %do.end85, %do.end74, %if.then63, %devm_kcalloc.exit78.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end, %if.end7.thread.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %if.then63 ], [ %85, %do.end74 ], [ %retval.0.i297.ph, %do.end85 ], [ %ret.1, %err_disable_clk ], [ 0, %if.end171 ], [ -22, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end7.thread.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit78.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idma_addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_i2s_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #7
  %clk_num.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %clk_num.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp8.not.i.i, label %if.end.i2s_unregister_clock_provider.exit_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.i2s_unregister_clock_provider.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_unregister_clock_provider.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.samsung_i2s_priv, ptr %1, i32 0, i32 14, i32 %i.09.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unregister(ptr noundef %9) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %10 = ptrtoint ptr %clk_num.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_num.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %11
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.i2s_unregister_clock_provider.exit_crit_edge

for.inc.i.i.i2s_unregister_clock_provider.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_unregister_clock_provider.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

i2s_unregister_clock_provider.exit:               ; preds = %for.inc.i.i.i2s_unregister_clock_provider.exit_crit_edge, %if.end.i2s_unregister_clock_provider.exit_crit_edge
  %pdev_sec.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pdev_sec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev_sec.i, align 4
  tail call void @platform_device_unregister(ptr noundef %13) #7
  %14 = ptrtoint ptr %pdev_sec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pdev_sec.i, align 4
  %clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !213
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !214
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %i2s_unregister_clock_provider.exit.cleanup_crit_edge, label %do.end11.i.i.i.i

i2s_unregister_clock_provider.exit.cleanup_crit_edge: ; preds = %i2s_unregister_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %i2s_unregister_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %i2s_unregister_clock_provider.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_i2s_dai_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %pri_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %8 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %10 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %entry.get_other_dai.exit_crit_edge ]
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %drv.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %12 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv.i, align 4
  %id.i53 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id.i53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  %dma_playback = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 8
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %16 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dma_playback, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %17 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %capture_dma_data.i, align 4
  br label %if.end14

if.else:                                          ; preds = %get_other_dai.exit
  %dma_capture = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 9
  %playback_dma_data.i54 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %18 = ptrtoint ptr %playback_dma_data.i54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dma_playback, ptr %playback_dma_data.i54, align 4
  %capture_dma_data.i55 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %19 = ptrtoint ptr %capture_dma_data.i55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dma_capture, ptr %capture_dma_data.i55, align 4
  %quirks = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %do.body

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 128) #7, !srcloc !212
  br label %if.end

if.end:                                           ; preds = %do.body, %if.else.if.end_crit_edge
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %and8 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %addr11 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %26 = ptrtoint ptr %addr11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr11, align 4
  %idma_playback = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 10
  %28 = ptrtoint ptr %idma_playback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idma_playback, align 4
  tail call void @idma_reg_addr_init(ptr noundef %27, i32 noundef %29) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge, %if.then
  %rfs = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 2
  %30 = ptrtoint ptr %rfs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rfs, align 4
  %bfs = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 3
  %31 = ptrtoint ptr %bfs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bfs, align 4
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call fastcc void @i2s_txctrl(ptr noundef %arrayidx.i, i32 noundef 0)
  tail call fastcc void @i2s_rxctrl(ptr noundef %arrayidx.i, i32 noundef 0)
  %tobool.not.i56 = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i56, label %if.end14.i2s_fifo.exit_crit_edge, label %if.end.i

if.end14.i2s_fifo.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_fifo.exit

if.end.i:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 2
  %priv.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 4
  %addr.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i, align 4
  %..i = select i1 %cmp.i.i, i32 24, i32 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %41 = or i32 %40, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #7, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %42 = load i32, ptr @loops_per_jiffy, align 4
  %div9.i = udiv i32 %42, 10000
  %dec36.i = add nsw i32 %div9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.i)
  %tobool10.not37.i = icmp eq i32 %dec36.i, 0
  br i1 %tobool10.not37.i, label %if.end.i.do.body20.i_crit_edge, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  br label %do.end15.i

if.end.i.do.body20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i

do.end15.i:                                       ; preds = %do.end15.i.do.end15.i_crit_edge, %if.end.i.do.end15.i_crit_edge
  %dec38.i = phi i32 [ %dec.i, %do.end15.i.do.end15.i_crit_edge ], [ %dec36.i, %if.end.i.do.end15.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !220
  %dec.i = add i32 %dec38.i, -1
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %do.end15.i.do.body20.i_crit_edge, label %do.end15.i.do.end15.i_crit_edge

do.end15.i.do.end15.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i

do.end15.i.do.body20.i_crit_edge:                 ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.end15.i.do.body20.i_crit_edge, %if.end.i.do.body20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %44 = and i32 %43, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #7, !srcloc !212
  br label %i2s_fifo.exit

i2s_fifo.exit:                                    ; preds = %do.body20.i, %if.end14.i2s_fifo.exit_crit_edge
  %tobool.not.i57 = icmp eq ptr %cond.i, null
  br i1 %tobool.not.i57, label %i2s_fifo.exit.i2s_fifo.exit76_crit_edge, label %if.end.i69

i2s_fifo.exit.i2s_fifo.exit76_crit_edge:          ; preds = %i2s_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_fifo.exit76

if.end.i69:                                       ; preds = %i2s_fifo.exit
  %drv.i.i58 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 7
  %45 = ptrtoint ptr %drv.i.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv.i.i58, align 4
  %id.i.i59 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %id.i.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i.i60 = icmp eq i32 %48, 2
  %priv.i61 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 12
  %49 = ptrtoint ptr %priv.i61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i61, align 4
  %addr.i62 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %addr.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr.i62, align 4
  %..i63 = select i1 %cmp.i.i60, i32 24, i32 8
  %add.ptr.i64 = getelementptr i8, ptr %52, i32 %..i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %54 = or i32 %53, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %54) #7, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %55 = load i32, ptr @loops_per_jiffy, align 4
  %div9.i66 = udiv i32 %55, 10000
  %dec36.i67 = add nsw i32 %div9.i66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.i67)
  %tobool10.not37.i68 = icmp eq i32 %dec36.i67, 0
  br i1 %tobool10.not37.i68, label %if.end.i69.do.body20.i75_crit_edge, label %if.end.i69.do.end15.i73_crit_edge

if.end.i69.do.end15.i73_crit_edge:                ; preds = %if.end.i69
  br label %do.end15.i73

if.end.i69.do.body20.i75_crit_edge:               ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i75

do.end15.i73:                                     ; preds = %do.end15.i73.do.end15.i73_crit_edge, %if.end.i69.do.end15.i73_crit_edge
  %dec38.i70 = phi i32 [ %dec.i71, %do.end15.i73.do.end15.i73_crit_edge ], [ %dec36.i67, %if.end.i69.do.end15.i73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !220
  %dec.i71 = add i32 %dec38.i70, -1
  %tobool10.not.i72 = icmp eq i32 %dec.i71, 0
  br i1 %tobool10.not.i72, label %do.end15.i73.do.body20.i75_crit_edge, label %do.end15.i73.do.end15.i73_crit_edge

do.end15.i73.do.end15.i73_crit_edge:              ; preds = %do.end15.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i73

do.end15.i73.do.body20.i75_crit_edge:             ; preds = %do.end15.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i75

do.body20.i75:                                    ; preds = %do.end15.i73.do.body20.i75_crit_edge, %if.end.i69.do.body20.i75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %57 = and i32 %56, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %57) #7, !srcloc !212
  br label %i2s_fifo.exit76

i2s_fifo.exit76:                                  ; preds = %do.body20.i75, %i2s_fifo.exit.i2s_fifo.exit76_crit_edge
  br i1 %tobool.not.i56, label %i2s_fifo.exit76.i2s_fifo.exit96_crit_edge, label %if.end.i89

i2s_fifo.exit76.i2s_fifo.exit96_crit_edge:        ; preds = %i2s_fifo.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_fifo.exit96

if.end.i89:                                       ; preds = %i2s_fifo.exit76
  %58 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drv.i, align 4
  %id.i.i79 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %id.i.i79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i.i80 = icmp eq i32 %61, 2
  %priv.i81 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %62 = ptrtoint ptr %priv.i81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i81, align 4
  %addr.i82 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %addr.i82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr.i82, align 4
  %..i83 = select i1 %cmp.i.i80, i32 24, i32 8
  %add.ptr.i84 = getelementptr i8, ptr %65, i32 %..i83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %67 = or i32 %66, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %67) #7, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %68 = load i32, ptr @loops_per_jiffy, align 4
  %div9.i86 = udiv i32 %68, 10000
  %dec36.i87 = add nsw i32 %div9.i86, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.i87)
  %tobool10.not37.i88 = icmp eq i32 %dec36.i87, 0
  br i1 %tobool10.not37.i88, label %if.end.i89.do.body20.i95_crit_edge, label %if.end.i89.do.end15.i93_crit_edge

if.end.i89.do.end15.i93_crit_edge:                ; preds = %if.end.i89
  br label %do.end15.i93

if.end.i89.do.body20.i95_crit_edge:               ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i95

do.end15.i93:                                     ; preds = %do.end15.i93.do.end15.i93_crit_edge, %if.end.i89.do.end15.i93_crit_edge
  %dec38.i90 = phi i32 [ %dec.i91, %do.end15.i93.do.end15.i93_crit_edge ], [ %dec36.i87, %if.end.i89.do.end15.i93_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !220
  %dec.i91 = add i32 %dec38.i90, -1
  %tobool10.not.i92 = icmp eq i32 %dec.i91, 0
  br i1 %tobool10.not.i92, label %do.end15.i93.do.body20.i95_crit_edge, label %do.end15.i93.do.end15.i93_crit_edge

do.end15.i93.do.end15.i93_crit_edge:              ; preds = %do.end15.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i93

do.end15.i93.do.body20.i95_crit_edge:             ; preds = %do.end15.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i95

do.body20.i95:                                    ; preds = %do.end15.i93.do.body20.i95_crit_edge, %if.end.i89.do.body20.i95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %70 = and i32 %69, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %70) #7, !srcloc !212
  br label %i2s_fifo.exit96

i2s_fifo.exit96:                                  ; preds = %do.body20.i95, %i2s_fifo.exit76.i2s_fifo.exit96_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #7
  br i1 %tobool.not.i57, label %i2s_fifo.exit96.if.then25_crit_edge, label %land.lhs.true.i

i2s_fifo.exit96.if.then25_crit_edge:              ; preds = %i2s_fifo.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

land.lhs.true.i:                                  ; preds = %i2s_fifo.exit96
  %mode.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 6
  %71 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mode.i, align 4
  %and.i98 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool1.not.i = icmp eq i32 %and.i98, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then25_crit_edge, label %land.lhs.true.i.if.end27_crit_edge

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true.i.if.then25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %land.lhs.true.i.if.then25_crit_edge, %i2s_fifo.exit96.if.then25_crit_edge
  %call26 = tail call i32 @i2s_set_sysclk(ptr noundef %dai, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.i.if.end27_crit_edge
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %call.i99 = tail call i32 @__pm_runtime_idle(ptr noundef %74, i32 noundef 5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_i2s_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %drv.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %8 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv.i, align 4
  %id.i23 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %quirks = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end14_crit_edge, label %do.body5

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !212
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %if.end14

if.end14:                                         ; preds = %do.body5, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call.i24 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idma_reg_addr_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2s_txctrl(ptr noundef readonly %i2s, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 12
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %addr2 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr2, align 4
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant_regs, align 4
  %txr_off3 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %txr_off3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txr_off3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !209
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %add.ptr7 = getelementptr i8, ptr %3, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !209
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  %shl = shl i32 3, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %drv.i89 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 7
  %12 = ptrtoint ptr %drv.i89 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv.i89, align 4
  %id.i90 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id.i90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i91 = icmp eq i32 %15, 2
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %or = and i32 %9, -1310738
  %or14 = or i32 %or, 262145
  %or16 = and i32 %9, -86
  %and17 = or i32 %or16, 5
  %con.0 = select i1 %cmp.i91, i32 %or14, i32 %and17
  %tobool.not.i.i = icmp eq ptr %i2s, null
  br i1 %tobool.not.i.i, label %if.then.lor.rhs.i_crit_edge, label %rx_active.exit.i

if.then.lor.rhs.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

rx_active.exit.i:                                 ; preds = %if.then
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 4
  %addr.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %21 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.i.not.i, label %rx_active.exit.i.lor.rhs.i_crit_edge, label %rx_active.exit.i.if.then19_crit_edge

rx_active.exit.i.if.then19_crit_edge:             ; preds = %rx_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

rx_active.exit.i.lor.rhs.i_crit_edge:             ; preds = %rx_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %rx_active.exit.i.lor.rhs.i_crit_edge, %if.then.lor.rhs.i_crit_edge
  %pri_dai.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 4
  %22 = ptrtoint ptr %pri_dai.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri_dai.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %get_other_dai.exit.i.i, label %lor.rhs.i.any_rx_active.exit_crit_edge

lor.rhs.i.any_rx_active.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_rx_active.exit

get_other_dai.exit.i.i:                           ; preds = %lor.rhs.i
  %sec_dai.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %24 = ptrtoint ptr %sec_dai.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sec_dai.i.i.i, align 4
  %tobool.not.i2.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i2.i.i, label %get_other_dai.exit.i.i.do.body48_crit_edge, label %get_other_dai.exit.i.i.any_rx_active.exit_crit_edge

get_other_dai.exit.i.i.any_rx_active.exit_crit_edge: ; preds = %get_other_dai.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_rx_active.exit

get_other_dai.exit.i.i.do.body48_crit_edge:       ; preds = %get_other_dai.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

any_rx_active.exit:                               ; preds = %get_other_dai.exit.i.i.any_rx_active.exit_crit_edge, %lor.rhs.i.any_rx_active.exit_crit_edge
  %cond.i5.i.i = phi ptr [ %25, %get_other_dai.exit.i.i.any_rx_active.exit_crit_edge ], [ %23, %lor.rhs.i.any_rx_active.exit_crit_edge ]
  %priv.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i.i.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %31 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.i.i.i.not = icmp eq i32 %31, 0
  br i1 %tobool2.i.i.i.not, label %any_rx_active.exit.do.body48_crit_edge, label %any_rx_active.exit.if.then19_crit_edge

any_rx_active.exit.if.then19_crit_edge:           ; preds = %any_rx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

any_rx_active.exit.do.body48_crit_edge:           ; preds = %any_rx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

if.then19:                                        ; preds = %any_rx_active.exit.if.then19_crit_edge, %rx_active.exit.i.if.then19_crit_edge
  %shl20 = shl i32 2, %7
  %or21 = or i32 %and, %shl20
  br label %do.body48

if.else26:                                        ; preds = %entry
  %or29 = and i32 %9, -1310721
  %and30 = or i32 %or29, 1048576
  %or32 = and i32 %9, -69
  %and33 = or i32 %or32, 64
  %con.1 = select i1 %cmp.i91, i32 %and30, i32 %and33
  %pri_dai.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 4
  %32 = ptrtoint ptr %pri_dai.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri_dai.i.i, align 4
  %tobool.not.i.i92 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i92, label %get_other_dai.exit.i, label %if.else26.other_tx_active.exit_crit_edge

if.else26.other_tx_active.exit_crit_edge:         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_tx_active.exit

get_other_dai.exit.i:                             ; preds = %if.else26
  %sec_dai.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %34 = ptrtoint ptr %sec_dai.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sec_dai.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %35, null
  br i1 %tobool.not.i2.i, label %get_other_dai.exit.i.if.end38_crit_edge, label %get_other_dai.exit.i.other_tx_active.exit_crit_edge

get_other_dai.exit.i.other_tx_active.exit_crit_edge: ; preds = %get_other_dai.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_tx_active.exit

get_other_dai.exit.i.if.end38_crit_edge:          ; preds = %get_other_dai.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

other_tx_active.exit:                             ; preds = %get_other_dai.exit.i.other_tx_active.exit_crit_edge, %if.else26.other_tx_active.exit_crit_edge
  %cond.i5.i = phi ptr [ %35, %get_other_dai.exit.i.other_tx_active.exit_crit_edge ], [ %33, %if.else26.other_tx_active.exit_crit_edge ]
  %priv.i.i93 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i, i32 0, i32 12
  %36 = ptrtoint ptr %priv.i.i93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i93, align 4
  %addr.i.i94 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %addr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i.i94, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !209
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i, i32 0, i32 7
  %42 = ptrtoint ptr %drv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i.i.i = icmp eq i32 %45, 2
  %active.0.v.i.i = select i1 %cmp.i.i.i, i32 262144, i32 4
  %active.0.i.i = and i32 %active.0.v.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i)
  %tobool6.i.i.not = icmp eq i32 %active.0.i.i, 0
  br i1 %tobool6.i.i.not, label %other_tx_active.exit.if.end38_crit_edge, label %do.body

other_tx_active.exit.if.end38_crit_edge:          ; preds = %other_tx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.body:                                          ; preds = %other_tx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %con.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %46) #7, !srcloc !212
  br label %cleanup

if.end38:                                         ; preds = %other_tx_active.exit.if.end38_crit_edge, %get_other_dai.exit.i.if.end38_crit_edge
  %or39 = or i32 %con.1, 16
  %tobool.not.i.i95 = icmp eq ptr %i2s, null
  br i1 %tobool.not.i.i95, label %if.end38.lor.rhs.i102_crit_edge, label %rx_active.exit.i99

if.end38.lor.rhs.i102_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i102

rx_active.exit.i99:                               ; preds = %if.end38
  %47 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv1, align 4
  %addr.i.i97 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %addr.i.i97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr.i.i97, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %52 = and i32 %51, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.i.not.i98 = icmp eq i32 %52, 0
  br i1 %tobool2.i.not.i98, label %rx_active.exit.i99.lor.rhs.i102_crit_edge, label %rx_active.exit.i99.if.then41_crit_edge

rx_active.exit.i99.if.then41_crit_edge:           ; preds = %rx_active.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

rx_active.exit.i99.lor.rhs.i102_crit_edge:        ; preds = %rx_active.exit.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i102

lor.rhs.i102:                                     ; preds = %rx_active.exit.i99.lor.rhs.i102_crit_edge, %if.end38.lor.rhs.i102_crit_edge
  %53 = ptrtoint ptr %pri_dai.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri_dai.i.i, align 4
  %tobool.not.i.i.i101 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i101, label %get_other_dai.exit.i.i105, label %lor.rhs.i102.any_rx_active.exit111_crit_edge

lor.rhs.i102.any_rx_active.exit111_crit_edge:     ; preds = %lor.rhs.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_rx_active.exit111

get_other_dai.exit.i.i105:                        ; preds = %lor.rhs.i102
  %sec_dai.i.i.i103 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %55 = ptrtoint ptr %sec_dai.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sec_dai.i.i.i103, align 4
  %tobool.not.i2.i.i104 = icmp eq ptr %56, null
  br i1 %tobool.not.i2.i.i104, label %get_other_dai.exit.i.i105.if.else44_crit_edge, label %get_other_dai.exit.i.i105.any_rx_active.exit111_crit_edge

get_other_dai.exit.i.i105.any_rx_active.exit111_crit_edge: ; preds = %get_other_dai.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_rx_active.exit111

get_other_dai.exit.i.i105.if.else44_crit_edge:    ; preds = %get_other_dai.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44

any_rx_active.exit111:                            ; preds = %get_other_dai.exit.i.i105.any_rx_active.exit111_crit_edge, %lor.rhs.i102.any_rx_active.exit111_crit_edge
  %cond.i5.i.i106 = phi ptr [ %56, %get_other_dai.exit.i.i105.any_rx_active.exit111_crit_edge ], [ %54, %lor.rhs.i102.any_rx_active.exit111_crit_edge ]
  %priv.i.i.i107 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i106, i32 0, i32 12
  %57 = ptrtoint ptr %priv.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i.i.i107, align 4
  %addr.i.i.i108 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %addr.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addr.i.i.i108, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %62 = and i32 %61, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool2.i.i.i109.not = icmp eq i32 %62, 0
  br i1 %tobool2.i.i.i109.not, label %any_rx_active.exit111.if.else44_crit_edge, label %any_rx_active.exit111.if.then41_crit_edge

any_rx_active.exit111.if.then41_crit_edge:        ; preds = %any_rx_active.exit111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

any_rx_active.exit111.if.else44_crit_edge:        ; preds = %any_rx_active.exit111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44

if.then41:                                        ; preds = %any_rx_active.exit111.if.then41_crit_edge, %rx_active.exit.i99.if.then41_crit_edge
  %shl42 = shl nuw i32 1, %7
  %or43 = or i32 %and, %shl42
  br label %do.body48

if.else44:                                        ; preds = %any_rx_active.exit111.if.else44_crit_edge, %get_other_dai.exit.i.i105.if.else44_crit_edge
  %and45 = and i32 %or39, -2
  br label %do.body48

do.body48:                                        ; preds = %if.else44, %if.then41, %if.then19, %any_rx_active.exit.do.body48_crit_edge, %get_other_dai.exit.i.i.do.body48_crit_edge
  %mod.0 = phi i32 [ %or21, %if.then19 ], [ %or43, %if.then41 ], [ %and, %if.else44 ], [ %and, %any_rx_active.exit.do.body48_crit_edge ], [ %and, %get_other_dai.exit.i.i.do.body48_crit_edge ]
  %con.2 = phi i32 [ %con.0, %if.then19 ], [ %or39, %if.then41 ], [ %and45, %if.else44 ], [ %con.0, %any_rx_active.exit.do.body48_crit_edge ], [ %con.0, %get_other_dai.exit.i.i.do.body48_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %mod.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %63) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %con.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %64) #7, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2s_rxctrl(ptr noundef readonly %i2s, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 12
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %addr2 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr2, align 4
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant_regs, align 4
  %txr_off3 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %txr_off3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txr_off3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !209
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  %add.ptr7 = getelementptr i8, ptr %3, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !209
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  %shl = shl i32 3, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  %or = and i32 %9, -44
  %and11 = or i32 %or, 3
  %tobool.not.i.i = icmp eq ptr %i2s, null
  br i1 %tobool.not.i.i, label %if.then.lor.rhs.i_crit_edge, label %tx_active.exit.i

if.then.lor.rhs.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i:                                 ; preds = %if.then
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 4
  %addr.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !209
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 7
  %18 = ptrtoint ptr %drv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.i.i = icmp eq i32 %21, 2
  %active.0.v.i.i = select i1 %cmp.i.i.i, i32 262144, i32 4
  %active.0.i.i = and i32 %active.0.v.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i)
  %tobool6.i.not.i = icmp eq i32 %active.0.i.i, 0
  br i1 %tobool6.i.not.i, label %tx_active.exit.i.lor.rhs.i_crit_edge, label %tx_active.exit.i.if.then13_crit_edge

tx_active.exit.i.if.then13_crit_edge:             ; preds = %tx_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

tx_active.exit.i.lor.rhs.i_crit_edge:             ; preds = %tx_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %tx_active.exit.i.lor.rhs.i_crit_edge, %if.then.lor.rhs.i_crit_edge
  %pri_dai.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 4
  %22 = ptrtoint ptr %pri_dai.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri_dai.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %get_other_dai.exit.i.i, label %lor.rhs.i.any_tx_active.exit_crit_edge

lor.rhs.i.any_tx_active.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit

get_other_dai.exit.i.i:                           ; preds = %lor.rhs.i
  %sec_dai.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %24 = ptrtoint ptr %sec_dai.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sec_dai.i.i.i, align 4
  %tobool.not.i2.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i2.i.i, label %get_other_dai.exit.i.i.if.else_crit_edge, label %get_other_dai.exit.i.i.any_tx_active.exit_crit_edge

get_other_dai.exit.i.i.any_tx_active.exit_crit_edge: ; preds = %get_other_dai.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit

get_other_dai.exit.i.i.if.else_crit_edge:         ; preds = %get_other_dai.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

any_tx_active.exit:                               ; preds = %get_other_dai.exit.i.i.any_tx_active.exit_crit_edge, %lor.rhs.i.any_tx_active.exit_crit_edge
  %cond.i5.i.i = phi ptr [ %25, %get_other_dai.exit.i.i.any_tx_active.exit_crit_edge ], [ %23, %lor.rhs.i.any_tx_active.exit_crit_edge ]
  %priv.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i.i.i, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !209
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.i.i.not = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.i.i.not, label %any_tx_active.exit.if.else_crit_edge, label %any_tx_active.exit.if.then13_crit_edge

any_tx_active.exit.if.then13_crit_edge:           ; preds = %any_tx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

any_tx_active.exit.if.else_crit_edge:             ; preds = %any_tx_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then13:                                        ; preds = %any_tx_active.exit.if.then13_crit_edge, %tx_active.exit.i.if.then13_crit_edge
  %shl14 = shl i32 2, %7
  %or15 = or i32 %and, %shl14
  br label %do.body

if.else:                                          ; preds = %any_tx_active.exit.if.else_crit_edge, %get_other_dai.exit.i.i.if.else_crit_edge
  %shl16 = shl nuw i32 1, %7
  %or17 = or i32 %and, %shl16
  br label %do.body

if.else18:                                        ; preds = %entry
  %or19 = and i32 %9, -43
  %and20 = or i32 %or19, 40
  %tobool.not.i.i51 = icmp eq ptr %i2s, null
  br i1 %tobool.not.i.i51, label %if.else18.lor.rhs.i63_crit_edge, label %tx_active.exit.i60

if.else18.lor.rhs.i63_crit_edge:                  ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i63

tx_active.exit.i60:                               ; preds = %if.else18
  %36 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv1, align 4
  %addr.i.i53 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %addr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i.i53, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !209
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i54 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 7
  %42 = ptrtoint ptr %drv.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv.i.i.i54, align 4
  %id.i.i.i55 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %id.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i.i.i56 = icmp eq i32 %45, 2
  %active.0.v.i.i57 = select i1 %cmp.i.i.i56, i32 262144, i32 4
  %active.0.i.i58 = and i32 %active.0.v.i.i57, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i58)
  %tobool6.i.not.i59 = icmp eq i32 %active.0.i.i58, 0
  br i1 %tobool6.i.not.i59, label %tx_active.exit.i60.lor.rhs.i63_crit_edge, label %tx_active.exit.i60.any_tx_active.exit77.thread_crit_edge

tx_active.exit.i60.any_tx_active.exit77.thread_crit_edge: ; preds = %tx_active.exit.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit77.thread

tx_active.exit.i60.lor.rhs.i63_crit_edge:         ; preds = %tx_active.exit.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i63

lor.rhs.i63:                                      ; preds = %tx_active.exit.i60.lor.rhs.i63_crit_edge, %if.else18.lor.rhs.i63_crit_edge
  %pri_dai.i.i.i61 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 4
  %46 = ptrtoint ptr %pri_dai.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri_dai.i.i.i61, align 4
  %tobool.not.i.i.i62 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i62, label %get_other_dai.exit.i.i66, label %lor.rhs.i63.any_tx_active.exit77_crit_edge

lor.rhs.i63.any_tx_active.exit77_crit_edge:       ; preds = %lor.rhs.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit77

get_other_dai.exit.i.i66:                         ; preds = %lor.rhs.i63
  %sec_dai.i.i.i64 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %48 = ptrtoint ptr %sec_dai.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sec_dai.i.i.i64, align 4
  %tobool.not.i2.i.i65 = icmp eq ptr %49, null
  br i1 %tobool.not.i2.i.i65, label %any_tx_active.exit77.thread80, label %get_other_dai.exit.i.i66.any_tx_active.exit77_crit_edge

get_other_dai.exit.i.i66.any_tx_active.exit77_crit_edge: ; preds = %get_other_dai.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit77

any_tx_active.exit77.thread80:                    ; preds = %get_other_dai.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  %and2681 = and i32 %and20, -4
  br label %do.body

any_tx_active.exit77:                             ; preds = %get_other_dai.exit.i.i66.any_tx_active.exit77_crit_edge, %lor.rhs.i63.any_tx_active.exit77_crit_edge
  %cond.i5.i.i67 = phi ptr [ %49, %get_other_dai.exit.i.i66.any_tx_active.exit77_crit_edge ], [ %47, %lor.rhs.i63.any_tx_active.exit77_crit_edge ]
  %priv.i.i.i68 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i67, i32 0, i32 12
  %50 = ptrtoint ptr %priv.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.i.i.i68, align 4
  %addr.i.i.i69 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %addr.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i.i.i69, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !209
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i70 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i67, i32 0, i32 7
  %56 = ptrtoint ptr %drv.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drv.i.i.i.i70, align 4
  %id.i.i.i.i71 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %id.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i.i.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.i.i.i.i72 = icmp eq i32 %59, 2
  %active.0.v.i.i.i73 = select i1 %cmp.i.i.i.i72, i32 262144, i32 4
  %active.0.i.i.i74 = and i32 %active.0.v.i.i.i73, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i74)
  %tobool6.i.i.i75.not = icmp eq i32 %active.0.i.i.i74, 0
  %and26 = and i32 %and20, -4
  br i1 %tobool6.i.i.i75.not, label %any_tx_active.exit77.do.body_crit_edge, label %any_tx_active.exit77.any_tx_active.exit77.thread_crit_edge

any_tx_active.exit77.any_tx_active.exit77.thread_crit_edge: ; preds = %any_tx_active.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_tx_active.exit77.thread

any_tx_active.exit77.do.body_crit_edge:           ; preds = %any_tx_active.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

any_tx_active.exit77.thread:                      ; preds = %any_tx_active.exit77.any_tx_active.exit77.thread_crit_edge, %tx_active.exit.i60.any_tx_active.exit77.thread_crit_edge
  br label %do.body

do.body:                                          ; preds = %any_tx_active.exit77.thread, %any_tx_active.exit77.do.body_crit_edge, %any_tx_active.exit77.thread80, %if.else, %if.then13
  %mod.0 = phi i32 [ %or15, %if.then13 ], [ %or17, %if.else ], [ %and, %any_tx_active.exit77.thread80 ], [ %and, %any_tx_active.exit77.do.body_crit_edge ], [ %and, %any_tx_active.exit77.thread ]
  %con.0 = phi i32 [ %and11, %if.then13 ], [ %and11, %if.else ], [ %and2681, %any_tx_active.exit77.thread80 ], [ %and26, %any_tx_active.exit77.do.body_crit_edge ], [ %and20, %any_tx_active.exit77.thread ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %mod.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %60) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %con.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %61) #7, !srcloc !212
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %rfs, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %pri_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %8 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %10 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %entry.get_other_dai.exit_crit_edge ]
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant_regs, align 4
  %cdclkcon_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %cdclkcon_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cdclkcon_off, align 4
  %shl = shl nuw i32 1, %15
  %rclksrc_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %rclksrc_off to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rclksrc_off, align 4
  %shl3 = shl nuw i32 1, %17
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  %22 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %do.end170 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb15
    i32 0, label %get_other_dai.exit.sw.bb55_crit_edge
    i32 1, label %get_other_dai.exit.sw.bb55_crit_edge353
  ]

get_other_dai.exit.sw.bb55_crit_edge353:          ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55

get_other_dai.exit.sw.bb55_crit_edge:             ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55

sw.bb:                                            ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl14 = shl i32 %dir, 30
  br label %do.body174

sw.bb15:                                          ; preds = %get_other_dai.exit
  %23 = ptrtoint ptr %cdclkcon_off to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cdclkcon_off, align 4
  %shl17 = shl nuw i32 1, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp18 = icmp eq i32 %dir, 0
  %spec.select = select i1 %cmp18, i32 0, i32 %rfs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  %tobool20.not = icmp eq ptr %cond.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %sw.bb15.lor.lhs.false_crit_edge, label %land.lhs.true21

sw.bb15.lor.lhs.false_crit_edge:                  ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true21:                                  ; preds = %sw.bb15
  %rfs22 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 2
  %25 = ptrtoint ptr %rfs22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rfs22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %spec.select)
  %cmp26.not = icmp eq i32 %26, %spec.select
  %or.cond286 = or i1 %tobool23.not, %cmp26.not
  br i1 %or.cond286, label %land.lhs.true21.lor.lhs.false_crit_edge, label %land.lhs.true21.do.end45_crit_edge

land.lhs.true21.do.end45_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

land.lhs.true21.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true21.lor.lhs.false_crit_edge, %sw.bb15.lor.lhs.false_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.lor.rhs.i_crit_edge, label %tx_active.exit.i.i

lor.lhs.false.lor.rhs.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i.i:                               ; preds = %lor.lhs.false
  %priv.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %27 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i.i.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !209
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %33 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.not.i.i = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.not.i.i, label %this_active.exit.i, label %tx_active.exit.i.i.land.lhs.true30_crit_edge

tx_active.exit.i.i.land.lhs.true30_crit_edge:     ; preds = %tx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

this_active.exit.i:                               ; preds = %tx_active.exit.i.i
  %37 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i5.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addr.i5.i.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %42 = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool2.i.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool2.i.i.not.i, label %this_active.exit.i.lor.rhs.i_crit_edge, label %this_active.exit.i.land.lhs.true30_crit_edge

this_active.exit.i.land.lhs.true30_crit_edge:     ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

this_active.exit.i.lor.rhs.i_crit_edge:           ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %this_active.exit.i.lor.rhs.i_crit_edge, %lor.lhs.false.lor.rhs.i_crit_edge
  %43 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i.i, label %get_other_dai.exit.i.i.i, label %lor.rhs.i.other_rx_active.exit.i.i_crit_edge

lor.rhs.i.other_rx_active.exit.i.i_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i:                         ; preds = %lor.rhs.i
  %sec_dai.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %45 = ptrtoint ptr %sec_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sec_dai.i.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i2.i.i.i, label %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge, label %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge

get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge: ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge:   ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

other_rx_active.exit.i.i:                         ; preds = %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge
  %cond.i5.i.i.i = phi ptr [ %46, %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge ], [ %44, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge ]
  %priv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i, i32 0, i32 12
  %47 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %addr.i.i.i.i, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %52 = and i32 %51, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.i.i.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool2.i.i.not.i.i, label %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, label %other_rx_active.exit.i.i.land.lhs.true30_crit_edge

other_rx_active.exit.i.i.land.lhs.true30_crit_edge: ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge:   ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge
  %53 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i4.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i4.i.i, label %get_other_dai.exit.i7.i.i, label %lor.rhs.i.i.any_active.exit_crit_edge

lor.rhs.i.i.any_active.exit_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i:                        ; preds = %lor.rhs.i.i
  %sec_dai.i.i5.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %55 = ptrtoint ptr %sec_dai.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sec_dai.i.i5.i.i, align 4
  %tobool.not.i2.i6.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i2.i6.i.i, label %get_other_dai.exit.i7.i.i.if.end47_crit_edge, label %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge

get_other_dai.exit.i7.i.i.any_active.exit_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i.if.end47_crit_edge:     ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

any_active.exit:                                  ; preds = %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge, %lor.rhs.i.i.any_active.exit_crit_edge
  %cond.i5.i8.i.i = phi ptr [ %56, %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge ], [ %54, %lor.rhs.i.i.any_active.exit_crit_edge ]
  %priv.i.i9.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 12
  %57 = ptrtoint ptr %priv.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i.i9.i.i, align 4
  %addr.i.i10.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %addr.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addr.i.i10.i.i, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !209
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 7
  %63 = ptrtoint ptr %drv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv.i.i.i.i.i, align 4
  %id.i.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i.i.i.i.i = icmp eq i32 %66, 2
  %active.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i.i = and i32 %active.0.v.i.i.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i)
  %tobool6.i.i.i.i.not = icmp eq i32 %active.0.i.i.i.i, 0
  br i1 %tobool6.i.i.i.i.not, label %any_active.exit.if.end47_crit_edge, label %any_active.exit.land.lhs.true30_crit_edge

any_active.exit.land.lhs.true30_crit_edge:        ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

any_active.exit.if.end47_crit_edge:               ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true30:                                  ; preds = %any_active.exit.land.lhs.true30_crit_edge, %other_rx_active.exit.i.i.land.lhs.true30_crit_edge, %this_active.exit.i.land.lhs.true30_crit_edge, %tx_active.exit.i.i.land.lhs.true30_crit_edge
  %and34 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond287 = select i1 %cmp18, i1 %tobool35.not, i1 false
  %or.cond287.not = xor i1 %or.cond287, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp37 = icmp ne i32 %dir, 1
  %or.cond288 = select i1 %cmp37, i1 true, i1 %tobool35.not
  %or.cond349 = select i1 %or.cond287.not, i1 %or.cond288, i1 false
  br i1 %or.cond349, label %land.lhs.true30.if.end47_crit_edge, label %land.lhs.true30.do.end45_crit_edge

land.lhs.true30.do.end45_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

land.lhs.true30.if.end47_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end45:                                         ; preds = %land.lhs.true30.do.end45_crit_edge, %land.lhs.true21.do.end45_crit_edge
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 534) #10
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true30.if.end47_crit_edge, %any_active.exit.if.end47_crit_edge, %get_other_dai.exit.i7.i.i.if.end47_crit_edge
  br i1 %cmp18, label %if.then50, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %cdclkcon_off to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cdclkcon_off, align 4
  %shl52 = shl nuw i32 1, %70
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %val.0 = phi i32 [ %shl52, %if.then50 ], [ 0, %if.end47.if.end53_crit_edge ]
  %rfs54 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 2
  %71 = ptrtoint ptr %rfs54 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select, ptr %rfs54, align 4
  br label %do.body174

sw.bb55:                                          ; preds = %get_other_dai.exit.sw.bb55_crit_edge, %get_other_dai.exit.sw.bb55_crit_edge353
  %72 = ptrtoint ptr %rclksrc_off to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rclksrc_off, align 4
  %shl57 = shl nuw i32 1, %73
  %quirks = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 13
  %74 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks, align 4
  %and58 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp ne i32 %and58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp61 = icmp eq i32 %clk_id, 0
  %or.cond289 = or i1 %cmp61, %tobool59.not
  %tobool.not.i.i.i299 = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i.i299, label %sw.bb55.lor.rhs.i314_crit_edge, label %tx_active.exit.i.i308

sw.bb55.lor.rhs.i314_crit_edge:                   ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i314

tx_active.exit.i.i308:                            ; preds = %sw.bb55
  %priv.i.i.i300 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %76 = ptrtoint ptr %priv.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i.i.i300, align 4
  %addr.i.i.i301 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %addr.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %addr.i.i.i301, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !209
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i302 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %82 = ptrtoint ptr %drv.i.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %drv.i.i.i.i302, align 4
  %id.i.i.i.i303 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %id.i.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id.i.i.i.i303, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i.i.i.i304 = icmp eq i32 %85, 2
  %active.0.v.i.i.i305 = select i1 %cmp.i.i.i.i304, i32 262144, i32 4
  %active.0.i.i.i306 = and i32 %active.0.v.i.i.i305, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i306)
  %tobool6.i.not.i.i307 = icmp eq i32 %active.0.i.i.i306, 0
  br i1 %tobool6.i.not.i.i307, label %this_active.exit.i311, label %tx_active.exit.i.i308.if.else144_crit_edge

tx_active.exit.i.i308.if.else144_crit_edge:       ; preds = %tx_active.exit.i.i308
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

this_active.exit.i311:                            ; preds = %tx_active.exit.i.i308
  %86 = ptrtoint ptr %priv.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv.i.i.i300, align 4
  %addr.i5.i.i309 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %87, i32 0, i32 17
  %88 = ptrtoint ptr %addr.i5.i.i309 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %addr.i5.i.i309, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %91 = and i32 %90, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool2.i.i.not.i310 = icmp eq i32 %91, 0
  br i1 %tobool2.i.i.not.i310, label %this_active.exit.i311.lor.rhs.i314_crit_edge, label %this_active.exit.i311.if.else144_crit_edge

this_active.exit.i311.if.else144_crit_edge:       ; preds = %this_active.exit.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

this_active.exit.i311.lor.rhs.i314_crit_edge:     ; preds = %this_active.exit.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i314

lor.rhs.i314:                                     ; preds = %this_active.exit.i311.lor.rhs.i314_crit_edge, %sw.bb55.lor.rhs.i314_crit_edge
  %92 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i.i.i313 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i.i.i313, label %get_other_dai.exit.i.i.i317, label %lor.rhs.i314.other_rx_active.exit.i.i322_crit_edge

lor.rhs.i314.other_rx_active.exit.i.i322_crit_edge: ; preds = %lor.rhs.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i322

get_other_dai.exit.i.i.i317:                      ; preds = %lor.rhs.i314
  %sec_dai.i.i.i.i315 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %94 = ptrtoint ptr %sec_dai.i.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sec_dai.i.i.i.i315, align 4
  %tobool.not.i2.i.i.i316 = icmp eq ptr %95, null
  br i1 %tobool.not.i2.i.i.i316, label %get_other_dai.exit.i.i.i317.lor.rhs.i.i324_crit_edge, label %get_other_dai.exit.i.i.i317.other_rx_active.exit.i.i322_crit_edge

get_other_dai.exit.i.i.i317.other_rx_active.exit.i.i322_crit_edge: ; preds = %get_other_dai.exit.i.i.i317
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i322

get_other_dai.exit.i.i.i317.lor.rhs.i.i324_crit_edge: ; preds = %get_other_dai.exit.i.i.i317
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i324

other_rx_active.exit.i.i322:                      ; preds = %get_other_dai.exit.i.i.i317.other_rx_active.exit.i.i322_crit_edge, %lor.rhs.i314.other_rx_active.exit.i.i322_crit_edge
  %cond.i5.i.i.i318 = phi ptr [ %95, %get_other_dai.exit.i.i.i317.other_rx_active.exit.i.i322_crit_edge ], [ %93, %lor.rhs.i314.other_rx_active.exit.i.i322_crit_edge ]
  %priv.i.i.i.i319 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i318, i32 0, i32 12
  %96 = ptrtoint ptr %priv.i.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv.i.i.i.i319, align 4
  %addr.i.i.i.i320 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %97, i32 0, i32 17
  %98 = ptrtoint ptr %addr.i.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr.i.i.i.i320, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %101 = and i32 %100, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool2.i.i.not.i.i321 = icmp eq i32 %101, 0
  br i1 %tobool2.i.i.not.i.i321, label %other_rx_active.exit.i.i322.lor.rhs.i.i324_crit_edge, label %other_rx_active.exit.i.i322.if.else144_crit_edge

other_rx_active.exit.i.i322.if.else144_crit_edge: ; preds = %other_rx_active.exit.i.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

other_rx_active.exit.i.i322.lor.rhs.i.i324_crit_edge: ; preds = %other_rx_active.exit.i.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i324

lor.rhs.i.i324:                                   ; preds = %other_rx_active.exit.i.i322.lor.rhs.i.i324_crit_edge, %get_other_dai.exit.i.i.i317.lor.rhs.i.i324_crit_edge
  %102 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i4.i.i323 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i4.i.i323, label %get_other_dai.exit.i7.i.i327, label %lor.rhs.i.i324.any_active.exit338_crit_edge

lor.rhs.i.i324.any_active.exit338_crit_edge:      ; preds = %lor.rhs.i.i324
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit338

get_other_dai.exit.i7.i.i327:                     ; preds = %lor.rhs.i.i324
  %sec_dai.i.i5.i.i325 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %104 = ptrtoint ptr %sec_dai.i.i5.i.i325 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sec_dai.i.i5.i.i325, align 4
  %tobool.not.i2.i6.i.i326 = icmp eq ptr %105, null
  br i1 %tobool.not.i2.i6.i.i326, label %get_other_dai.exit.i7.i.i327.if.then66_crit_edge, label %get_other_dai.exit.i7.i.i327.any_active.exit338_crit_edge

get_other_dai.exit.i7.i.i327.any_active.exit338_crit_edge: ; preds = %get_other_dai.exit.i7.i.i327
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit338

get_other_dai.exit.i7.i.i327.if.then66_crit_edge: ; preds = %get_other_dai.exit.i7.i.i327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

any_active.exit338:                               ; preds = %get_other_dai.exit.i7.i.i327.any_active.exit338_crit_edge, %lor.rhs.i.i324.any_active.exit338_crit_edge
  %cond.i5.i8.i.i328 = phi ptr [ %105, %get_other_dai.exit.i7.i.i327.any_active.exit338_crit_edge ], [ %103, %lor.rhs.i.i324.any_active.exit338_crit_edge ]
  %priv.i.i9.i.i329 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i328, i32 0, i32 12
  %106 = ptrtoint ptr %priv.i.i9.i.i329 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv.i.i9.i.i329, align 4
  %addr.i.i10.i.i330 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %107, i32 0, i32 17
  %108 = ptrtoint ptr %addr.i.i10.i.i330 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %addr.i.i10.i.i330, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !209
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i331 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i328, i32 0, i32 7
  %112 = ptrtoint ptr %drv.i.i.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %drv.i.i.i.i.i331, align 4
  %id.i.i.i.i.i332 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %id.i.i.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id.i.i.i.i.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp.i.i.i.i.i333 = icmp eq i32 %115, 2
  %active.0.v.i.i.i.i334 = select i1 %cmp.i.i.i.i.i333, i32 262144, i32 4
  %active.0.i.i.i.i335 = and i32 %active.0.v.i.i.i.i334, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i335)
  %tobool6.i.i.i.i336.not = icmp eq i32 %active.0.i.i.i.i335, 0
  br i1 %tobool6.i.i.i.i336.not, label %any_active.exit338.if.then66_crit_edge, label %any_active.exit338.if.else144_crit_edge

any_active.exit338.if.else144_crit_edge:          ; preds = %any_active.exit338
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else144

any_active.exit338.if.then66_crit_edge:           ; preds = %any_active.exit338
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

if.then66:                                        ; preds = %any_active.exit338.if.then66_crit_edge, %get_other_dai.exit.i7.i.i327.if.then66_crit_edge
  %op_clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 7
  %116 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %op_clk, align 4
  %tobool67.not = icmp eq ptr %117, null
  %cmp.i = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  %or.cond350 = or i1 %tobool67.not, %cmp.i
  br i1 %or.cond350, label %if.then66.if.end88_crit_edge, label %if.then71

if.then66.if.end88_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then71:                                        ; preds = %if.then66
  %tobool89.not.not.demorgan = or i1 %cmp61, %tobool59.not
  %tobool89.not.not = xor i1 %tobool89.not.not.demorgan, true
  %and74 = and i32 %21, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %tobool75.not.not = xor i1 %tobool75.not, true
  %or.cond290.not = select i1 %or.cond289, i1 true, i1 %tobool75.not.not
  %or.cond292 = select i1 %tobool89.not.not, i1 true, i1 %tobool75.not
  %or.cond351 = select i1 %or.cond290.not, i1 %or.cond292, i1 false
  br i1 %or.cond351, label %if.else84, label %if.then81

if.then81:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %117) #7
  tail call void @clk_unprepare(ptr noundef nonnull %117) #7
  %118 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %op_clk, align 4
  tail call void @clk_put(ptr noundef %119) #7
  br label %if.end88

if.else84:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = tail call i32 @clk_get_rate(ptr noundef nonnull %117) #7
  %rclk_srcrate = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 8
  %120 = ptrtoint ptr %rclk_srcrate to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call86, ptr %rclk_srcrate, align 4
  br label %cleanup

if.end88:                                         ; preds = %if.then81, %if.then66.if.end88_crit_edge
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 4
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3
  %.str.34..str.33 = select i1 %or.cond289, ptr @.str.34, ptr @.str.33
  %call98 = tail call ptr @clk_get(ptr noundef %dev97, ptr noundef nonnull %.str.34..str.33) #7
  %123 = ptrtoint ptr %op_clk to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call98, ptr %op_clk, align 4
  %cmp.i339 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %do.end114, label %if.end133, !prof !236

do.end114:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 9, ptr noundef null) #7
  %124 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %op_clk, align 4
  %126 = ptrtoint ptr %125 to i32
  store ptr null, ptr %op_clk, align 4
  br label %cleanup

if.end133:                                        ; preds = %if.end88
  %call.i340 = tail call i32 @clk_prepare(ptr noundef %call98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool.not.i341 = icmp eq i32 %call.i340, 0
  br i1 %tobool.not.i341, label %if.end.i, label %if.end133.if.then137_crit_edge

if.end133.if.then137_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then137

if.end.i:                                         ; preds = %if.end133
  %call1.i = tail call i32 @clk_enable(ptr noundef %call98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end140, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call98) #7
  br label %if.then137

if.then137:                                       ; preds = %if.then3.i, %if.end133.if.then137_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i340, %if.end133.if.then137_crit_edge ]
  %127 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %op_clk, align 4
  tail call void @clk_put(ptr noundef %128) #7
  %129 = ptrtoint ptr %op_clk to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %op_clk, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.end.i
  %130 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %op_clk, align 4
  %call142 = tail call i32 @clk_get_rate(ptr noundef %131) #7
  %rclk_srcrate143 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 8
  %132 = ptrtoint ptr %rclk_srcrate143 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call142, ptr %rclk_srcrate143, align 4
  br i1 %or.cond289, label %if.end140.do.body174_crit_edge, label %if.then164

if.end140.do.body174_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body174

if.else144:                                       ; preds = %any_active.exit338.if.else144_crit_edge, %other_rx_active.exit.i.i322.if.else144_crit_edge, %this_active.exit.i311.if.else144_crit_edge, %tx_active.exit.i.i308.if.else144_crit_edge
  %and147 = and i32 %21, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %or.cond352 = xor i1 %tobool148.not, %or.cond289
  br i1 %or.cond352, label %do.end157, label %if.else144.cleanup_crit_edge

if.else144.cleanup_crit_edge:                     ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end157:                                        ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i, align 4
  %dev159 = getelementptr inbounds %struct.platform_device, ptr %134, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 592) #10
  br label %cleanup

if.then164:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %rclksrc_off to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rclksrc_off, align 4
  %shl166 = shl nuw i32 1, %136
  br label %do.body174

do.end170:                                        ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i, align 4
  %dev172 = getelementptr inbounds %struct.platform_device, ptr %138, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev172, ptr noundef nonnull @.str.38) #10
  br label %cleanup

do.body174:                                       ; preds = %if.then164, %if.end140.do.body174_crit_edge, %if.end53, %sw.bb
  %val.1 = phi i32 [ %shl166, %if.then164 ], [ 0, %if.end140.do.body174_crit_edge ], [ %val.0, %if.end53 ], [ %shl14, %sw.bb ]
  %mask.0 = phi i32 [ %shl57, %if.then164 ], [ %shl57, %if.end140.do.body174_crit_edge ], [ %shl17, %if.end53 ], [ -1073741824, %sw.bb ]
  %call182 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %139 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %addr, align 4
  %add.ptr190 = getelementptr i8, ptr %140, i32 4
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #7, !srcloc !209
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %neg = xor i32 %mask.0, -1
  %and194 = and i32 %142, %neg
  %or = or i32 %and194, %val.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %143 = tail call i32 @llvm.bswap.i32(i32 %or)
  %144 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %addr, align 4
  %add.ptr199 = getelementptr i8, ptr %145, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %143) #7, !srcloc !212
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call182) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body174, %do.end170, %do.end157, %if.else144.cleanup_crit_edge, %if.then137, %do.end114, %if.else84, %do.end45
  %retval.0 = phi i32 [ 0, %if.else144.cleanup_crit_edge ], [ 0, %do.body174 ], [ 0, %if.else84 ], [ -22, %do.end170 ], [ -11, %do.end157 ], [ %126, %do.end114 ], [ %retval.0.i.ph, %if.then137 ], [ -11, %do.end45 ]
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 4
  %call.i343 = tail call i32 @__pm_runtime_idle(ptr noundef %147, i32 noundef 5) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_set_clkdiv(ptr nocapture noundef readonly %dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %pri_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %8 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %10 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %entry.get_other_dai.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div_id)
  %cond = icmp eq i32 %div_id, 1
  br i1 %cond, label %sw.bb, label %do.end20

sw.bb:                                            ; preds = %get_other_dai.exit
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.lor.rhs.i_crit_edge, label %tx_active.exit.i.i

sw.bb.lor.rhs.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i.i:                               ; preds = %sw.bb
  %priv.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %12 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !209
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %18 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.not.i.i = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.not.i.i, label %this_active.exit.i, label %tx_active.exit.i.i.any_active.exit_crit_edge

tx_active.exit.i.i.any_active.exit_crit_edge:     ; preds = %tx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

this_active.exit.i:                               ; preds = %tx_active.exit.i.i
  %22 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i5.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i5.i.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %27 = and i32 %26, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.i.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool2.i.i.not.i, label %this_active.exit.i.lor.rhs.i_crit_edge, label %this_active.exit.i.any_active.exit_crit_edge

this_active.exit.i.any_active.exit_crit_edge:     ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

this_active.exit.i.lor.rhs.i_crit_edge:           ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %this_active.exit.i.lor.rhs.i_crit_edge, %sw.bb.lor.rhs.i_crit_edge
  %28 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.i, label %get_other_dai.exit.i.i.i, label %lor.rhs.i.other_rx_active.exit.i.i_crit_edge

lor.rhs.i.other_rx_active.exit.i.i_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i:                         ; preds = %lor.rhs.i
  %sec_dai.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %30 = ptrtoint ptr %sec_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sec_dai.i.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i2.i.i.i, label %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge, label %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge

get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge: ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge:   ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

other_rx_active.exit.i.i:                         ; preds = %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge
  %cond.i5.i.i.i = phi ptr [ %31, %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge ], [ %29, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge ]
  %priv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i, i32 0, i32 12
  %32 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.i.i.i.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.i.i.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool2.i.i.not.i.i, label %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, label %other_rx_active.exit.i.i.any_active.exit_crit_edge

other_rx_active.exit.i.i.any_active.exit_crit_edge: ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge:   ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge
  %38 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i4.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i4.i.i, label %get_other_dai.exit.i7.i.i, label %lor.rhs.i.i.if.end.i.i11.i.i_crit_edge

lor.rhs.i.i.if.end.i.i11.i.i_crit_edge:           ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i11.i.i

get_other_dai.exit.i7.i.i:                        ; preds = %lor.rhs.i.i
  %sec_dai.i.i5.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %40 = ptrtoint ptr %sec_dai.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sec_dai.i.i5.i.i, align 4
  %tobool.not.i2.i6.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i2.i6.i.i, label %get_other_dai.exit.i7.i.i.lor.lhs.false_crit_edge, label %get_other_dai.exit.i7.i.i.if.end.i.i11.i.i_crit_edge

get_other_dai.exit.i7.i.i.if.end.i.i11.i.i_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i11.i.i

get_other_dai.exit.i7.i.i.lor.lhs.false_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end.i.i11.i.i:                                 ; preds = %get_other_dai.exit.i7.i.i.if.end.i.i11.i.i_crit_edge, %lor.rhs.i.i.if.end.i.i11.i.i_crit_edge
  %cond.i5.i8.i.i = phi ptr [ %41, %get_other_dai.exit.i7.i.i.if.end.i.i11.i.i_crit_edge ], [ %39, %lor.rhs.i.i.if.end.i.i11.i.i_crit_edge ]
  %priv.i.i9.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %priv.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv.i.i9.i.i, align 4
  %addr.i.i10.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %addr.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr.i.i10.i.i, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !209
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %drv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %drv.i.i.i.i.i, align 4
  %id.i.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp.i.i.i.i.i = icmp eq i32 %51, 2
  %active.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i.i = and i32 %active.0.v.i.i.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i)
  %tobool6.i.i.i.i = icmp eq i32 %active.0.i.i.i.i, 0
  br label %any_active.exit

any_active.exit:                                  ; preds = %if.end.i.i11.i.i, %other_rx_active.exit.i.i.any_active.exit_crit_edge, %this_active.exit.i.any_active.exit_crit_edge, %tx_active.exit.i.i.any_active.exit_crit_edge
  %52 = phi i1 [ false, %this_active.exit.i.any_active.exit_crit_edge ], [ false, %other_rx_active.exit.i.i.any_active.exit_crit_edge ], [ %tobool6.i.i.i.i, %if.end.i.i11.i.i ], [ false, %tx_active.exit.i.i.any_active.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %tobool.not = icmp eq i32 %div, 0
  %or.cond = or i1 %tobool.not, %52
  br i1 %or.cond, label %any_active.exit.lor.lhs.false_crit_edge, label %land.lhs.true4

any_active.exit.lor.lhs.false_crit_edge:          ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true4:                                   ; preds = %any_active.exit
  %priv1.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %53 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv1.i, align 4
  %addr.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  %variant_regs.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %54, i32 0, i32 12
  %59 = ptrtoint ptr %variant_regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %variant_regs.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %shr.i = lshr i32 %58, %62
  %bfs_mask.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %60, i32 0, i32 8
  %63 = ptrtoint ptr %bfs_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bfs_mask.i, align 4
  %and.i = and i32 %shr.i, %64
  %switch.tableidx = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %65 = icmp ult i32 %switch.tableidx, 8
  br i1 %65, label %switch.lookup, label %land.lhs.true4.get_bfs.exit_crit_edge

land.lhs.true4.get_bfs.exit_crit_edge:            ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bfs.exit

switch.lookup:                                    ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.i2s_set_clkdiv, i32 0, i32 %switch.tableidx
  %66 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_bfs.exit

get_bfs.exit:                                     ; preds = %switch.lookup, %land.lhs.true4.get_bfs.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 32, %land.lhs.true4.get_bfs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %div)
  %cmp.not = icmp eq i32 %retval.0.i, %div
  br i1 %cmp.not, label %get_bfs.exit.lor.lhs.false_crit_edge, label %get_bfs.exit.if.then_crit_edge

get_bfs.exit.if.then_crit_edge:                   ; preds = %get_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

get_bfs.exit.lor.lhs.false_crit_edge:             ; preds = %get_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %get_bfs.exit.lor.lhs.false_crit_edge, %any_active.exit.lor.lhs.false_crit_edge, %get_other_dai.exit.i7.i.i.lor.lhs.false_crit_edge
  %tobool6.not = icmp eq ptr %cond.i, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true7

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %bfs = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 3
  %67 = ptrtoint ptr %bfs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool8.not = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %div)
  %cmp11.not = icmp eq i32 %68, %div
  %or.cond38 = or i1 %tobool8.not, %cmp11.not
  br i1 %or.cond38, label %land.lhs.true7.if.end_crit_edge, label %land.lhs.true7.if.then_crit_edge

land.lhs.true7.if.then_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7.if.then_crit_edge, %get_bfs.exit.if.then_crit_edge
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %70, i32 noundef 5) #7
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 4
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.40, i32 noundef 991) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %bfs15 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 3
  %73 = ptrtoint ptr %bfs15 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div, ptr %bfs15, align 4
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 4
  %call.i40 = tail call i32 @__pm_runtime_idle(ptr noundef %75, i32 noundef 5) #7
  br label %cleanup

do.end20:                                         ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %dev22 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.42, i32 noundef %div_id) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ 0, %if.end ], [ -22, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant_regs, align 4
  %lrp_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %lrp_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lrp_off, align 4
  %sdf_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %sdf_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdf_off, align 4
  %mss_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %mss_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mss_off, align 4
  %shl = shl nuw i32 1, %15
  %shl4 = shl i32 3, %13
  %shl5 = shl nuw i32 1, %11
  %and = and i32 %fmt, 15
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb8
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl6 = shl nuw i32 1, %13
  %or7 = or i32 %shl6, %shl5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl10 = shl i32 2, %13
  %or11 = or i32 %shl10, %shl5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  %tmp.0 = phi i32 [ %or11, %sw.bb8 ], [ %or7, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %and15 = and i32 %fmt, 3840
  %19 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and15, label %do.end23 [
    i32 0, label %sw.epilog.sw.epilog26_crit_edge
    i32 512, label %sw.bb16
  ]

sw.epilog.sw.epilog26_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog26

sw.bb16:                                          ; preds = %sw.epilog
  %and17 = and i32 %tmp.0, %shl5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl5, -1
  %and18 = and i32 %tmp.0, %neg
  br label %sw.epilog26

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %tmp.0, %shl5
  br label %sw.epilog26

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.47) #10
  br label %cleanup

sw.epilog26:                                      ; preds = %if.else, %if.then, %sw.epilog.sw.epilog26_crit_edge
  %tmp.1 = phi i32 [ %and18, %if.then ], [ %or19, %if.else ], [ %tmp.0, %sw.epilog.sw.epilog26_crit_edge ]
  %22 = trunc i32 %fmt to i16
  %trunc = and i16 %22, -4096
  %23 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %trunc, label %do.end38 [
    i16 4096, label %sw.bb28
    i16 16384, label %sw.bb30
  ]

sw.bb28:                                          ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #9
  %or29 = or i32 %tmp.1, %shl
  br label %sw.epilog41

sw.bb30:                                          ; preds = %sw.epilog26
  %rclk_srcrate = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %rclk_srcrate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rclk_srcrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb30.sw.epilog41_crit_edge

sw.bb30.sw.epilog41_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41

land.lhs.true:                                    ; preds = %sw.bb30
  %clk_data = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 15
  %26 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_data, align 4
  %cmp31 = icmp eq ptr %27, null
  br i1 %cmp31, label %if.then32, label %land.lhs.true.sw.epilog41_crit_edge

land.lhs.true.sw.epilog41_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 @i2s_set_sysclk(ptr noundef %dai, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog41

do.end38:                                         ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.50) #10
  br label %cleanup

sw.epilog41:                                      ; preds = %if.then32, %land.lhs.true.sw.epilog41_crit_edge, %sw.bb30.sw.epilog41_crit_edge, %sw.bb28
  %tmp.2 = phi i32 [ %tmp.1, %if.then32 ], [ %tmp.1, %land.lhs.true.sw.epilog41_crit_edge ], [ %tmp.1, %sw.bb30.sw.epilog41_crit_edge ], [ %or29, %sw.bb28 ]
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i.i, label %sw.epilog41.lor.rhs.i_crit_edge, label %tx_active.exit.i.i

sw.epilog41.lor.rhs.i_crit_edge:                  ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i.i:                               ; preds = %sw.epilog41
  %priv.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %36 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i.i.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !209
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %42 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.not.i.i = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.not.i.i, label %this_active.exit.i, label %tx_active.exit.i.i.land.lhs.true59_crit_edge

tx_active.exit.i.i.land.lhs.true59_crit_edge:     ; preds = %tx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true59

this_active.exit.i:                               ; preds = %tx_active.exit.i.i
  %46 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i5.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr.i5.i.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %51 = and i32 %50, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.i.i.not.i = icmp eq i32 %51, 0
  br i1 %tobool2.i.i.not.i, label %this_active.exit.i.lor.rhs.i_crit_edge, label %this_active.exit.i.land.lhs.true59_crit_edge

this_active.exit.i.land.lhs.true59_crit_edge:     ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true59

this_active.exit.i.lor.rhs.i_crit_edge:           ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %this_active.exit.i.lor.rhs.i_crit_edge, %sw.epilog41.lor.rhs.i_crit_edge
  %pri_dai.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %52 = ptrtoint ptr %pri_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri_dai.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i.i, label %get_other_dai.exit.i.i.i, label %lor.rhs.i.other_rx_active.exit.i.i_crit_edge

lor.rhs.i.other_rx_active.exit.i.i_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i:                         ; preds = %lor.rhs.i
  %sec_dai.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %54 = ptrtoint ptr %sec_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sec_dai.i.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i2.i.i.i, label %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge, label %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge

get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge: ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge:   ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

other_rx_active.exit.i.i:                         ; preds = %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge
  %cond.i5.i.i.i = phi ptr [ %55, %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge ], [ %53, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge ]
  %priv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i, i32 0, i32 12
  %56 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr.i.i.i.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %61 = and i32 %60, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.i.i.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool2.i.i.not.i.i, label %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, label %other_rx_active.exit.i.i.land.lhs.true59_crit_edge

other_rx_active.exit.i.i.land.lhs.true59_crit_edge: ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true59

other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge:   ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge
  %62 = ptrtoint ptr %pri_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri_dai.i.i.i.i, align 4
  %tobool.not.i.i4.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i4.i.i, label %get_other_dai.exit.i7.i.i, label %lor.rhs.i.i.any_active.exit_crit_edge

lor.rhs.i.i.any_active.exit_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i:                        ; preds = %lor.rhs.i.i
  %sec_dai.i.i5.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %64 = ptrtoint ptr %sec_dai.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sec_dai.i.i5.i.i, align 4
  %tobool.not.i2.i6.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i2.i6.i.i, label %get_other_dai.exit.i7.i.i.if.end74_crit_edge, label %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge

get_other_dai.exit.i7.i.i.any_active.exit_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i.if.end74_crit_edge:     ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

any_active.exit:                                  ; preds = %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge, %lor.rhs.i.i.any_active.exit_crit_edge
  %cond.i5.i8.i.i = phi ptr [ %65, %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge ], [ %63, %lor.rhs.i.i.any_active.exit_crit_edge ]
  %priv.i.i9.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 12
  %66 = ptrtoint ptr %priv.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i.i9.i.i, align 4
  %addr.i.i10.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %addr.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr.i.i10.i.i, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !209
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %drv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drv.i.i.i.i.i, align 4
  %id.i.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp.i.i.i.i.i = icmp eq i32 %75, 2
  %active.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i.i = and i32 %active.0.v.i.i.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i)
  %tobool6.i.i.i.i.not = icmp eq i32 %active.0.i.i.i.i, 0
  br i1 %tobool6.i.i.i.i.not, label %any_active.exit.if.end74_crit_edge, label %any_active.exit.land.lhs.true59_crit_edge

any_active.exit.land.lhs.true59_crit_edge:        ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true59

any_active.exit.if.end74_crit_edge:               ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true59:                                  ; preds = %any_active.exit.land.lhs.true59_crit_edge, %other_rx_active.exit.i.i.land.lhs.true59_crit_edge, %this_active.exit.i.land.lhs.true59_crit_edge, %tx_active.exit.i.i.land.lhs.true59_crit_edge
  %or60 = or i32 %shl4, %shl5
  %or61 = or i32 %or60, %shl
  %and62 = and i32 %35, %or61
  call void @__sanitizer_cov_trace_cmp4(i32 %and62, i32 %tmp.2)
  %cmp63.not = icmp eq i32 %and62, %tmp.2
  br i1 %cmp63.not, label %land.lhs.true59.if.end74_crit_edge, label %if.then65

land.lhs.true59.if.end74_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then65:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call49) #7
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  %call.i148 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 5) #7
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %dev73 = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.45, i32 noundef 705) #10
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true59.if.end74_crit_edge, %any_active.exit.if.end74_crit_edge, %get_other_dai.exit.i7.i.i.if.end74_crit_edge
  %or75 = or i32 %shl4, %shl5
  %or76 = or i32 %or75, %shl
  %neg77 = xor i32 %or76, -1
  %and78 = and i32 %35, %neg77
  %or79 = or i32 %and78, %tmp.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or79)
  %81 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr, align 4
  %add.ptr84 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %80) #7, !srcloc !212
  %and85 = and i32 %tmp.2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86 = icmp ne i32 %and85, 0
  %slave_mode = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 18
  %frombool = zext i1 %tobool86 to i8
  %83 = ptrtoint ptr %slave_mode to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool, ptr %slave_mode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call49) #7
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  %call.i149 = tail call i32 @__pm_runtime_idle(ptr noundef %85, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then65, %do.end38, %do.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end23 ], [ -22, %do.end38 ], [ -11, %if.then65 ], [ 0, %if.end74 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %pri_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %8 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %10 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %entry.get_other_dai.exit_crit_edge ]
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %pcm_lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcm_lock) #7
  %mode = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %mode, align 4
  %tobool.not.i.i = icmp eq ptr %cond.i, null
  br i1 %tobool.not.i.i, label %get_other_dai.exit.if.else_crit_edge, label %land.lhs.true.i.i

get_other_dai.exit.if.else_crit_edge:             ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i:                                ; preds = %get_other_dai.exit
  %mode.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 6
  %14 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i.i, align 4
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %.not = icmp eq i32 %16, 3
  br i1 %.not, label %if.then, label %land.lhs.true.i.i.if.else_crit_edge

land.lhs.true.i.i.if.else_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %or, -3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i.i.if.else_crit_edge, %get_other_dai.exit.if.else_crit_edge
  %or12 = or i32 %13, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or12, %if.else ], [ %and, %if.then ]
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %mode, align 4
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i.i, label %if.end.lor.rhs.i_crit_edge, label %tx_active.exit.i.i

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i.i:                               ; preds = %if.end
  %priv.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %18 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !209
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %24 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.not.i.i = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.not.i.i, label %this_active.exit.i, label %tx_active.exit.i.i.if.end20_crit_edge

tx_active.exit.i.i.if.end20_crit_edge:            ; preds = %tx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

this_active.exit.i:                               ; preds = %tx_active.exit.i.i
  %28 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i.i.i, align 4
  %addr.i5.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i5.i.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %33 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.i.i.not.i = icmp eq i32 %33, 0
  br i1 %tobool2.i.i.not.i, label %this_active.exit.i.lor.rhs.i_crit_edge, label %this_active.exit.i.if.end20_crit_edge

this_active.exit.i.if.end20_crit_edge:            ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

this_active.exit.i.lor.rhs.i_crit_edge:           ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %this_active.exit.i.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  %34 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i.i, label %get_other_dai.exit.i.i.i, label %lor.rhs.i.other_rx_active.exit.i.i_crit_edge

lor.rhs.i.other_rx_active.exit.i.i_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i:                         ; preds = %lor.rhs.i
  %sec_dai.i.i.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %36 = ptrtoint ptr %sec_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sec_dai.i.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i2.i.i.i, label %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge, label %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge

get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge: ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge:   ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

other_rx_active.exit.i.i:                         ; preds = %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge
  %cond.i5.i.i.i = phi ptr [ %37, %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge ], [ %35, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge ]
  %priv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i, i32 0, i32 12
  %38 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i.i.i.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.i.i.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool2.i.i.not.i.i, label %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, label %other_rx_active.exit.i.i.if.end20_crit_edge

other_rx_active.exit.i.i.if.end20_crit_edge:      ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge:   ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge
  %44 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i4.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i4.i.i, label %get_other_dai.exit.i7.i.i, label %lor.rhs.i.i.any_active.exit_crit_edge

lor.rhs.i.i.any_active.exit_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i:                        ; preds = %lor.rhs.i.i
  %sec_dai.i.i5.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %46 = ptrtoint ptr %sec_dai.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sec_dai.i.i5.i.i, align 4
  %tobool.not.i2.i6.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i2.i6.i.i, label %get_other_dai.exit.i7.i.i.land.lhs.true_crit_edge, label %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge

get_other_dai.exit.i7.i.i.any_active.exit_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i.land.lhs.true_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

any_active.exit:                                  ; preds = %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge, %lor.rhs.i.i.any_active.exit_crit_edge
  %cond.i5.i8.i.i = phi ptr [ %47, %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge ], [ %45, %lor.rhs.i.i.any_active.exit_crit_edge ]
  %priv.i.i9.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %priv.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i.i9.i.i, align 4
  %addr.i.i10.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %addr.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr.i.i10.i.i, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !209
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %drv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %drv.i.i.i.i.i, align 4
  %id.i.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp.i.i.i.i.i = icmp eq i32 %57, 2
  %active.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i.i = and i32 %active.0.v.i.i.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i)
  %tobool6.i.i.i.i.not = icmp eq i32 %active.0.i.i.i.i, 0
  br i1 %tobool6.i.i.i.i.not, label %any_active.exit.land.lhs.true_crit_edge, label %any_active.exit.if.end20_crit_edge

any_active.exit.if.end20_crit_edge:               ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

any_active.exit.land.lhs.true_crit_edge:          ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %any_active.exit.land.lhs.true_crit_edge, %get_other_dai.exit.i7.i.i.land.lhs.true_crit_edge
  %quirks = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 13
  %58 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quirks, align 4
  %and14 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %land.lhs.true.if.end20_crit_edge, label %do.body16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %priv19 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 12
  %60 = ptrtoint ptr %priv19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv19, align 4
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 128) #7, !srcloc !212
  br label %if.end20

if.end20:                                         ; preds = %do.body16, %land.lhs.true.if.end20_crit_edge, %any_active.exit.if.end20_crit_edge, %other_rx_active.exit.i.i.if.end20_crit_edge, %this_active.exit.i.if.end20_crit_edge, %tx_active.exit.i.i.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcm_lock, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2s_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %pri_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 4
  %8 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 5
  %10 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.false.i ], [ %9, %entry.get_other_dai.exit_crit_edge ]
  %pcm_lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcm_lock) #7
  %mode = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %and9 = and i32 %13, -4
  store i32 %and9, ptr %mode, align 4
  %tobool.not.i22 = icmp eq ptr %cond.i, null
  br i1 %tobool.not.i22, label %get_other_dai.exit.if.end_crit_edge, label %land.lhs.true.i

get_other_dai.exit.if.end_crit_edge:              ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %get_other_dai.exit
  %mode.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 6
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 4
  %or = or i32 %17, 2
  store i32 %or, ptr %mode.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i.if.end_crit_edge, %get_other_dai.exit.if.end_crit_edge
  %rfs = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 2
  %18 = ptrtoint ptr %rfs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rfs, align 4
  %bfs = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 3
  %19 = ptrtoint ptr %bfs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %bfs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcm_lock, i32 noundef %call5) #7
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end, !prof !243

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 728, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %drv.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %11 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv.i, align 4
  %id.i185 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %id.i185 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i186 = icmp eq i32 %14, 2
  %spec.select = select i1 %cmp.i186, i32 0, i32 196608
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %16, label %do.end45 [
    i32 6, label %sw.bb
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb29
    i32 1, label %sw.bb33
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %addr_width = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 8, i32 1
  %20 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %addr_width, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %addr_width31 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 9, i32 1
  %21 = ptrtoint ptr %addr_width31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %addr_width31, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %stream34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp35 = icmp eq i32 %23, 0
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %addr_width38 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 8, i32 1
  %24 = ptrtoint ptr %addr_width38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %addr_width38, align 4
  br label %sw.epilog

if.else39:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %addr_width41 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 9, i32 1
  %25 = ptrtoint ptr %addr_width41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %addr_width41, align 4
  br label %sw.epilog

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.54, i32 noundef %16) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.else39, %if.then36, %if.else, %if.then30, %sw.bb, %if.end.sw.epilog_crit_edge
  %val.1 = phi i32 [ 0, %if.then36 ], [ 0, %if.else39 ], [ 0, %if.then30 ], [ 0, %if.else ], [ 65536, %if.end.sw.epilog_crit_edge ], [ 196608, %sw.bb ]
  %28 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv.i, align 4
  %id.i189 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %id.i189 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i190 = icmp eq i32 %31, 2
  %mask.1.v = select i1 %cmp.i190, i32 201326592, i32 50331648
  %mask.1 = or i32 %mask.1.v, %spec.select
  %tobool.not.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i, label %sw.epilog.is_manager.exit_crit_edge, label %land.lhs.true.i.i

sw.epilog.is_manager.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_manager.exit

land.lhs.true.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 6
  %32 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i.i, align 4
  %34 = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %.not = icmp eq i32 %34, 3
  %or56238 = or i32 %mask.1, 24576
  %spec.select251 = select i1 %.not, i32 %or56238, i32 %mask.1
  br label %is_manager.exit

is_manager.exit:                                  ; preds = %land.lhs.true.i.i, %sw.epilog.is_manager.exit_crit_edge
  %35 = phi i32 [ %mask.1, %sw.epilog.is_manager.exit_crit_edge ], [ %spec.select251, %land.lhs.true.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %is_manager.exit.if.then.i.i.i_crit_edge

is_manager.exit.if.then.i.i.i_crit_edge:          ; preds = %is_manager.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %is_manager.exit.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %is_manager.exit.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %37, %is_manager.exit.if.then.i.i.i_crit_edge ], [ %40, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !244
  %add.i.i.i = or i32 %38, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %is_manager.exit
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i = icmp eq i32 %40, 0
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
  %41 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call1.i, label %do.end95 [
    i32 8, label %sw.bb59
    i32 16, label %params_width.exit.do.body101_crit_edge
    i32 24, label %sw.bb81
  ]

params_width.exit.do.body101_crit_edge:           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

sw.bb59:                                          ; preds = %params_width.exit
  %42 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv.i, align 4
  %id.i192 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %id.i192 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i193 = icmp eq i32 %45, 2
  %val.2.v = select i1 %cmp.i193, i32 67108864, i32 16777216
  %val.2 = or i32 %val.2.v, %val.1
  br i1 %tobool.not.i.i, label %sw.bb59.do.body101_crit_edge, label %land.lhs.true.i.i198

sw.bb59.do.body101_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

land.lhs.true.i.i198:                             ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i.i195 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 6
  %46 = ptrtoint ptr %mode.i.i195 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode.i.i195, align 4
  %48 = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %.not250 = icmp eq i32 %48, 3
  %or68241 = or i32 %val.2, 8192
  %spec.select252 = select i1 %.not250, i32 %or68241, i32 %val.2
  br label %do.body101

sw.bb81:                                          ; preds = %params_width.exit
  %49 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drv.i, align 4
  %id.i220 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %id.i220 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i221 = icmp eq i32 %52, 2
  %val.4.v = select i1 %cmp.i221, i32 134217728, i32 33554432
  %val.4 = or i32 %val.4.v, %val.1
  br i1 %tobool.not.i.i, label %sw.bb81.do.body101_crit_edge, label %land.lhs.true.i.i226

sw.bb81.do.body101_crit_edge:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

land.lhs.true.i.i226:                             ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i.i223 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 6
  %53 = ptrtoint ptr %mode.i.i223 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode.i.i223, align 4
  %55 = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %.not249 = icmp eq i32 %55, 3
  %or90244 = or i32 %val.4, 16384
  %spec.select253 = select i1 %.not249, i32 %or90244, i32 %val.4
  br label %do.body101

do.end95:                                         ; preds = %params_width.exit
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i234 = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i234, label %for.inc.i.i, label %do.end95.if.then.i.i_crit_edge

do.end95.if.then.i.i_crit_edge:                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %do.end95.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %do.end95.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %59, %do.end95.if.then.i.i_crit_edge ], [ %62, %for.inc.i.i.if.then.i.i_crit_edge ]
  %60 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !244
  %add.i.i = or i32 %60, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %do.end95
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.1.i.i = icmp eq i32 %62, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i.i) #10
  br label %cleanup

do.body101:                                       ; preds = %land.lhs.true.i.i226, %sw.bb81.do.body101_crit_edge, %land.lhs.true.i.i198, %sw.bb59.do.body101_crit_edge, %params_width.exit.do.body101_crit_edge
  %val.5 = phi i32 [ %val.2, %sw.bb59.do.body101_crit_edge ], [ %val.1, %params_width.exit.do.body101_crit_edge ], [ %val.4, %sw.bb81.do.body101_crit_edge ], [ %spec.select252, %land.lhs.true.i.i198 ], [ %spec.select253, %land.lhs.true.i.i226 ]
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %63 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %neg = xor i32 %35, -1
  %and = and i32 %66, %neg
  %or113 = or i32 %and, %val.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %or113)
  %68 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr, align 4
  %add.ptr118 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %67) #7, !srcloc !212
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call105) #7
  %dma_playback120 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 8
  %dma_capture121 = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 9
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %70 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dma_playback120, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %71 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dma_capture121, ptr %capture_dma_data.i, align 4
  %arrayidx.i.i235 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i235, align 4
  %frmclk = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 1
  %74 = ptrtoint ptr %frmclk to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %frmclk, align 4
  %arrayidx = getelementptr %struct.samsung_i2s_priv, ptr %3, i32 0, i32 14, i32 1
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %tobool123.not = icmp eq ptr %76, null
  %cmp.i236 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %or.cond248 = or i1 %tobool123.not, %cmp.i236
  br i1 %or.cond248, label %do.body101.cleanup_crit_edge, label %if.then125

do.body101.cleanup_crit_edge:                     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then125:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = tail call i32 @clk_get_rate(ptr noundef nonnull %76) #7
  %rclk_srcrate = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 8
  %77 = ptrtoint ptr %rclk_srcrate to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call126, ptr %rclk_srcrate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %do.body101.cleanup_crit_edge, %params_format.exit, %do.end45
  %retval.0 = phi i32 [ -22, %do.end45 ], [ -22, %params_format.exit ], [ 0, %if.then125 ], [ 0, %do.body101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %19, -1
  %arrayidx.i = getelementptr %struct.i2s_dai, ptr %17, i32 %sub.i
  %20 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge79
    i32 4, label %entry.sw.bb_crit_edge80
    i32 0, label %entry.do.body18_crit_edge
    i32 5, label %entry.do.body18_crit_edge81
    i32 3, label %entry.do.body18_crit_edge82
  ]

entry.do.body18_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

entry.do.body18_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

entry.sw.bb_crit_edge80:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge79:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge79, %entry.sw.bb_crit_edge80
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %lock = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call10 = tail call fastcc i32 @config_setup(ptr noundef %arrayidx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2s_rxctrl(ptr noundef %arrayidx.i, i32 noundef 1)
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2s_txctrl(ptr noundef %arrayidx.i, i32 noundef 1)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %cleanup

do.body18:                                        ; preds = %entry.do.body18_crit_edge, %entry.do.body18_crit_edge81, %entry.do.body18_crit_edge82
  %lock24 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 16
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock24) #7
  br i1 %cmp, label %if.then32, label %if.else33

if.then32:                                        ; preds = %do.body18
  tail call fastcc void @i2s_rxctrl(ptr noundef %arrayidx.i, i32 noundef 0)
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %if.then32.if.end34_crit_edge, label %if.end.i

if.then32.if.end34_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end.i:                                         ; preds = %if.then32
  %drv.i.i = getelementptr %struct.i2s_dai, ptr %17, i32 %sub.i, i32 7
  %21 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 2
  %priv.i = getelementptr %struct.i2s_dai, ptr %17, i32 %sub.i, i32 12
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 4
  %addr.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr.i, align 4
  %..i = select i1 %cmp.i.i, i32 24, i32 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %30 = or i32 %29, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #7, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %31 = load i32, ptr @loops_per_jiffy, align 4
  %div9.i = udiv i32 %31, 10000
  %dec36.i = add nsw i32 %div9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.i)
  %tobool10.not37.i = icmp eq i32 %dec36.i, 0
  br i1 %tobool10.not37.i, label %if.end.i.do.body20.i_crit_edge, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  br label %do.end15.i

if.end.i.do.body20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i

do.end15.i:                                       ; preds = %do.end15.i.do.end15.i_crit_edge, %if.end.i.do.end15.i_crit_edge
  %dec38.i = phi i32 [ %dec.i, %do.end15.i.do.end15.i_crit_edge ], [ %dec36.i, %if.end.i.do.end15.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !220
  %dec.i = add i32 %dec38.i, -1
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %do.end15.i.do.body20.i_crit_edge, label %do.end15.i.do.end15.i_crit_edge

do.end15.i.do.end15.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i

do.end15.i.do.body20.i_crit_edge:                 ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.end15.i.do.body20.i_crit_edge, %if.end.i.do.body20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %33 = and i32 %32, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #7, !srcloc !212
  br label %if.end34

if.else33:                                        ; preds = %do.body18
  tail call fastcc void @i2s_txctrl(ptr noundef %arrayidx.i, i32 noundef 0)
  %tobool.not.i58 = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i58, label %if.else33.if.end34_crit_edge, label %if.end.i70

if.else33.if.end34_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end.i70:                                       ; preds = %if.else33
  %drv.i.i59 = getelementptr %struct.i2s_dai, ptr %17, i32 %sub.i, i32 7
  %34 = ptrtoint ptr %drv.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv.i.i59, align 4
  %id.i.i60 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %id.i.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i.i61 = icmp eq i32 %37, 2
  %priv.i62 = getelementptr %struct.i2s_dai, ptr %17, i32 %sub.i, i32 12
  %38 = ptrtoint ptr %priv.i62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i62, align 4
  %addr.i63 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %addr.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i63, align 4
  %..i64 = select i1 %cmp.i.i61, i32 24, i32 8
  %add.ptr.i65 = getelementptr i8, ptr %41, i32 %..i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %43 = or i32 %42, 8388608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %43) #7, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %44 = load i32, ptr @loops_per_jiffy, align 4
  %div9.i67 = udiv i32 %44, 10000
  %dec36.i68 = add nsw i32 %div9.i67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36.i68)
  %tobool10.not37.i69 = icmp eq i32 %dec36.i68, 0
  br i1 %tobool10.not37.i69, label %if.end.i70.do.body20.i76_crit_edge, label %if.end.i70.do.end15.i74_crit_edge

if.end.i70.do.end15.i74_crit_edge:                ; preds = %if.end.i70
  br label %do.end15.i74

if.end.i70.do.body20.i76_crit_edge:               ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i76

do.end15.i74:                                     ; preds = %do.end15.i74.do.end15.i74_crit_edge, %if.end.i70.do.end15.i74_crit_edge
  %dec38.i71 = phi i32 [ %dec.i72, %do.end15.i74.do.end15.i74_crit_edge ], [ %dec36.i68, %if.end.i70.do.end15.i74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !220
  %dec.i72 = add i32 %dec38.i71, -1
  %tobool10.not.i73 = icmp eq i32 %dec.i72, 0
  br i1 %tobool10.not.i73, label %do.end15.i74.do.body20.i76_crit_edge, label %do.end15.i74.do.end15.i74_crit_edge

do.end15.i74.do.end15.i74_crit_edge:              ; preds = %do.end15.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i74

do.end15.i74.do.body20.i76_crit_edge:             ; preds = %do.end15.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20.i76

do.body20.i76:                                    ; preds = %do.end15.i74.do.body20.i76_crit_edge, %if.end.i70.do.body20.i76_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  %46 = and i32 %45, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %46) #7, !srcloc !212
  br label %if.end34

if.end34:                                         ; preds = %do.body20.i76, %if.else33.if.end34_crit_edge, %do.body20.i, %if.then32.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call26) #7
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %call.i78 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end14, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end34 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_delay(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dai1.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai1.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %sub.i = add i32 %7, -1
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end, !prof !243

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1014, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %11, 15
  br label %if.end41

if.else:                                          ; preds = %if.end
  %drv.i = getelementptr %struct.i2s_dai, ptr %5, i32 %sub.i, i32 7
  %19 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv.i, align 4
  %id.i48 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %id.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i49 = icmp eq i32 %22, 2
  br i1 %cmp.i49, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr, align 4
  %add.ptr31 = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !209
  %26 = lshr i32 %25, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %and36 = and i32 %26, 127
  br label %if.end41

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %variant_regs = getelementptr inbounds %struct.samsung_i2s_priv, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %variant_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %variant_regs, align 4
  %ftx0cnt_off = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %ftx0cnt_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ftx0cnt_off, align 4
  %shr38 = lshr i32 %11, %30
  %and39 = and i32 %shr38, 127
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then27, %if.then25
  %delay.0 = phi i32 [ %and, %if.then25 ], [ %and36, %if.then27 ], [ %and39, %if.else37 ]
  ret i32 %delay.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_setup(ptr noundef readonly %i2s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 12
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pri_dai.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 4
  %2 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.get_other_dai.exit_crit_edge

entry.get_other_dai.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_other_dai.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec_dai.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %4 = ptrtoint ptr %sec_dai.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sec_dai.i, align 4
  br label %get_other_dai.exit

get_other_dai.exit:                               ; preds = %cond.false.i, %entry.get_other_dai.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.false.i ], [ %3, %entry.get_other_dai.exit_crit_edge ]
  %addr.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !209
  %9 = lshr i32 %8, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  %and.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %switch.selectcmp.i = icmp eq i32 %and.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 16, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %switch.selectcmp4.i = icmp eq i32 %and.i, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 48, i32 %switch.select.i
  %bfs3 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 3
  %10 = ptrtoint ptr %bfs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bfs3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %get_other_dai.exit.if.end.thread152_crit_edge

get_other_dai.exit.if.end.thread152_crit_edge:    ; preds = %get_other_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread152

land.lhs.true:                                    ; preds = %get_other_dai.exit
  %tobool4.not = icmp eq ptr %cond.i, null
  br i1 %tobool4.not, label %land.lhs.true.if.end.thread_crit_edge, label %if.end

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end:                                           ; preds = %land.lhs.true
  %bfs5 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 3
  %12 = ptrtoint ptr %bfs5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bfs5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end.if.end.thread_crit_edge, label %if.end.if.end.thread152_crit_edge

if.end.if.end.thread152_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread152

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge
  br label %if.end.thread152

if.end.thread152:                                 ; preds = %if.end.thread, %if.end.if.end.thread152_crit_edge, %get_other_dai.exit.if.end.thread152_crit_edge
  %14 = phi i32 [ %switch.select5.i, %if.end.thread ], [ %13, %if.end.if.end.thread152_crit_edge ], [ %11, %get_other_dai.exit.if.end.thread152_crit_edge ]
  %rfs9 = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 2
  %15 = ptrtoint ptr %rfs9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rfs9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %if.end.thread152.if.end15_crit_edge

if.end.thread152.if.end15_crit_edge:              ; preds = %if.end.thread152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end.thread152
  %tobool12.not = icmp eq ptr %cond.i, null
  br i1 %tobool12.not, label %land.lhs.true11.if.then22_crit_edge, label %if.then13

land.lhs.true11.if.then22_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  %rfs14 = getelementptr inbounds %struct.i2s_dai, ptr %cond.i, i32 0, i32 2
  %17 = ptrtoint ptr %rfs14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rfs14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.thread152.if.end15_crit_edge
  %rfs.0 = phi i32 [ %16, %if.end.thread152.if.end15_crit_edge ], [ %18, %if.then13 ]
  %19 = zext i32 %rfs.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %rfs.0, label %if.end15.if.end28_crit_edge [
    i32 256, label %if.end15.land.lhs.true17_crit_edge
    i32 512, label %if.end15.land.lhs.true17_crit_edge163
    i32 0, label %if.end15.if.then22_crit_edge
  ]

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.end15.land.lhs.true17_crit_edge163:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

if.end15.land.lhs.true17_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true17:                                  ; preds = %if.end15.land.lhs.true17_crit_edge, %if.end15.land.lhs.true17_crit_edge163
  br i1 %switch.selectcmp4.i, label %do.end, label %land.lhs.true17.if.end28_crit_edge

land.lhs.true17.if.end28_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end:                                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2s, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %rfs.0) #10
  br label %cleanup

if.then22:                                        ; preds = %if.end15.if.then22_crit_edge, %land.lhs.true11.if.then22_crit_edge
  %22 = add i32 %14, -16
  %switch.and = and i32 %22, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %23 = select i1 %switch.selectcmp, i32 256, i32 384
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %land.lhs.true17.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  %rfs.1 = phi i32 [ %rfs.0, %if.end15.if.end28_crit_edge ], [ %23, %if.then22 ], [ %rfs.0, %land.lhs.true17.if.end28_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %i2s, null
  br i1 %tobool.not.i.i.i, label %if.end28.lor.rhs.i_crit_edge, label %tx_active.exit.i.i

if.end28.lor.rhs.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

tx_active.exit.i.i:                               ; preds = %if.end28
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  %addr.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !209
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 7
  %30 = ptrtoint ptr %drv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 2
  %active.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i = and i32 %active.0.v.i.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i)
  %tobool6.i.not.i.i = icmp eq i32 %active.0.i.i.i, 0
  br i1 %tobool6.i.not.i.i, label %this_active.exit.i, label %tx_active.exit.i.i.land.lhs.true30_crit_edge

tx_active.exit.i.i.land.lhs.true30_crit_edge:     ; preds = %tx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

this_active.exit.i:                               ; preds = %tx_active.exit.i.i
  %34 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1, align 4
  %addr.i5.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %addr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i5.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %39 = and i32 %38, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.i.i.not.i = icmp eq i32 %39, 0
  br i1 %tobool2.i.i.not.i, label %this_active.exit.i.lor.rhs.i_crit_edge, label %this_active.exit.i.land.lhs.true30_crit_edge

this_active.exit.i.land.lhs.true30_crit_edge:     ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

this_active.exit.i.lor.rhs.i_crit_edge:           ; preds = %this_active.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %this_active.exit.i.lor.rhs.i_crit_edge, %if.end28.lor.rhs.i_crit_edge
  %40 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i.i, label %get_other_dai.exit.i.i.i, label %lor.rhs.i.other_rx_active.exit.i.i_crit_edge

lor.rhs.i.other_rx_active.exit.i.i_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i:                         ; preds = %lor.rhs.i
  %sec_dai.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %42 = ptrtoint ptr %sec_dai.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sec_dai.i.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i2.i.i.i, label %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge, label %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge

get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge: ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %other_rx_active.exit.i.i

get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge:   ; preds = %get_other_dai.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

other_rx_active.exit.i.i:                         ; preds = %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge
  %cond.i5.i.i.i = phi ptr [ %43, %get_other_dai.exit.i.i.i.other_rx_active.exit.i.i_crit_edge ], [ %41, %lor.rhs.i.other_rx_active.exit.i.i_crit_edge ]
  %priv.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i.i.i, i32 0, i32 12
  %44 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr.i.i.i.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %49 = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.i.i.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool2.i.i.not.i.i, label %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, label %other_rx_active.exit.i.i.land.lhs.true30_crit_edge

other_rx_active.exit.i.i.land.lhs.true30_crit_edge: ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge:   ; preds = %other_rx_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %other_rx_active.exit.i.i.lor.rhs.i.i_crit_edge, %get_other_dai.exit.i.i.i.lor.rhs.i.i_crit_edge
  %50 = ptrtoint ptr %pri_dai.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri_dai.i, align 4
  %tobool.not.i.i4.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i4.i.i, label %get_other_dai.exit.i7.i.i, label %lor.rhs.i.i.any_active.exit_crit_edge

lor.rhs.i.i.any_active.exit_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i:                        ; preds = %lor.rhs.i.i
  %sec_dai.i.i5.i.i = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 5
  %52 = ptrtoint ptr %sec_dai.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sec_dai.i.i5.i.i, align 4
  %tobool.not.i2.i6.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i2.i6.i.i, label %get_other_dai.exit.i7.i.i.if.end42_crit_edge, label %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge

get_other_dai.exit.i7.i.i.any_active.exit_crit_edge: ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %any_active.exit

get_other_dai.exit.i7.i.i.if.end42_crit_edge:     ; preds = %get_other_dai.exit.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

any_active.exit:                                  ; preds = %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge, %lor.rhs.i.i.any_active.exit_crit_edge
  %cond.i5.i8.i.i = phi ptr [ %53, %get_other_dai.exit.i7.i.i.any_active.exit_crit_edge ], [ %51, %lor.rhs.i.i.any_active.exit_crit_edge ]
  %priv.i.i9.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %priv.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i.i9.i.i, align 4
  %addr.i.i10.i.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %addr.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %addr.i.i10.i.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !209
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %drv.i.i.i.i.i = getelementptr inbounds %struct.i2s_dai, ptr %cond.i5.i8.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %drv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %drv.i.i.i.i.i, align 4
  %id.i.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i.i.i.i.i = icmp eq i32 %63, 2
  %active.0.v.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 262144, i32 4
  %active.0.i.i.i.i = and i32 %active.0.v.i.i.i.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active.0.i.i.i.i)
  %tobool6.i.i.i.i.not = icmp eq i32 %active.0.i.i.i.i, 0
  br i1 %tobool6.i.i.i.i.not, label %any_active.exit.if.end42_crit_edge, label %any_active.exit.land.lhs.true30_crit_edge

any_active.exit.land.lhs.true30_crit_edge:        ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30

any_active.exit.if.end42_crit_edge:               ; preds = %any_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true30:                                  ; preds = %any_active.exit.land.lhs.true30_crit_edge, %other_rx_active.exit.i.i.land.lhs.true30_crit_edge, %this_active.exit.i.land.lhs.true30_crit_edge, %tx_active.exit.i.i.land.lhs.true30_crit_edge
  %64 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv1, align 4
  %addr.i108 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %addr.i108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #7, !srcloc !209
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  %variant_regs.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %65, i32 0, i32 12
  %70 = ptrtoint ptr %variant_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant_regs.i, align 4
  %rfs_off.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %rfs_off.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rfs_off.i, align 4
  %shr.i = lshr i32 %69, %73
  %rfs_mask.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %71, i32 0, i32 9
  %74 = ptrtoint ptr %rfs_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rfs_mask.i, align 4
  %and.i110 = and i32 %shr.i, %75
  %switch.tableidx = add i32 %and.i110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %76 = icmp ult i32 %switch.tableidx, 7
  br i1 %76, label %switch.lookup, label %land.lhs.true30.get_rfs.exit_crit_edge

land.lhs.true30.get_rfs.exit_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_rfs.exit

switch.lookup:                                    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.config_setup, i32 0, i32 %switch.tableidx
  %77 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %77)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_rfs.exit

get_rfs.exit:                                     ; preds = %switch.lookup, %land.lhs.true30.get_rfs.exit_crit_edge
  %retval.0.i111 = phi i32 [ %switch.load, %switch.lookup ], [ 256, %land.lhs.true30.get_rfs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i111, i32 %rfs.1)
  %cmp32.not = icmp eq i32 %retval.0.i111, %rfs.1
  br i1 %cmp32.not, label %lor.lhs.false33, label %get_rfs.exit.do.end39_crit_edge

get_rfs.exit.do.end39_crit_edge:                  ; preds = %get_rfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

lor.lhs.false33:                                  ; preds = %get_rfs.exit
  %78 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv1, align 4
  %addr.i113 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %addr.i113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %addr.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %81, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #7, !srcloc !209
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  %variant_regs.i115 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %79, i32 0, i32 12
  %84 = ptrtoint ptr %variant_regs.i115 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %variant_regs.i115, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %shr.i116 = lshr i32 %83, %87
  %bfs_mask.i = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %85, i32 0, i32 8
  %88 = ptrtoint ptr %bfs_mask.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bfs_mask.i, align 4
  %and.i117 = and i32 %shr.i116, %89
  %switch.tableidx160 = add i32 %and.i117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx160)
  %90 = icmp ult i32 %switch.tableidx160, 8
  br i1 %90, label %switch.lookup159, label %lor.lhs.false33.get_bfs.exit_crit_edge

lor.lhs.false33.get_bfs.exit_crit_edge:           ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bfs.exit

switch.lookup159:                                 ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep161 = getelementptr inbounds [8 x i32], ptr @switch.table.config_setup.84, i32 0, i32 %switch.tableidx160
  %91 = ptrtoint ptr %switch.gep161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %switch.load162 = load i32, ptr %switch.gep161, align 4
  br label %get_bfs.exit

get_bfs.exit:                                     ; preds = %switch.lookup159, %lor.lhs.false33.get_bfs.exit_crit_edge
  %retval.0.i125 = phi i32 [ %switch.load162, %switch.lookup159 ], [ 32, %lor.lhs.false33.get_bfs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i125, i32 %14)
  %cmp35.not = icmp eq i32 %retval.0.i125, %14
  br i1 %cmp35.not, label %get_bfs.exit.if.end42_crit_edge, label %get_bfs.exit.do.end39_crit_edge

get_bfs.exit.do.end39_crit_edge:                  ; preds = %get_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

get_bfs.exit.if.end42_crit_edge:                  ; preds = %get_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end39:                                         ; preds = %get_bfs.exit.do.end39_crit_edge, %get_rfs.exit.do.end39_crit_edge
  %92 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2s, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.60, i32 noundef 907) #10
  br label %cleanup

if.end42:                                         ; preds = %get_bfs.exit.if.end42_crit_edge, %any_active.exit.if.end42_crit_edge, %get_other_dai.exit.i7.i.i.if.end42_crit_edge
  %94 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv1, align 4
  %addr.i127 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %95, i32 0, i32 17
  %96 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %addr.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %97, i32 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #7, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  %quirks.i = getelementptr inbounds %struct.samsung_i2s_priv, ptr %95, i32 0, i32 13
  %99 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %quirks.i, align 4
  %and.i129 = and i32 %100, 16
  %variant_regs.i130 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %95, i32 0, i32 12
  %101 = ptrtoint ptr %variant_regs.i130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %variant_regs.i130, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i131 = icmp eq i32 %and.i129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %14)
  %cmp.i = icmp ugt i32 %14, 48
  %or.cond.i = and i1 %cmp.i, %tobool.not.i131
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2s, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65) #10
  br label %set_bfs.exit

if.end.i:                                         ; preds = %if.end42
  %107 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  %bfs_mask.i132 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %102, i32 0, i32 8
  %108 = ptrtoint ptr %bfs_mask.i132 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bfs_mask.i132, align 4
  %shl.i = shl i32 %109, %104
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %107, %neg.i
  %110 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %14, label %do.end32.i [
    i32 48, label %sw.bb.i
    i32 32, label %if.end.i.do.body35.i_crit_edge
    i32 24, label %sw.bb9.i133
    i32 16, label %sw.bb12.i
    i32 64, label %sw.bb15.i
    i32 96, label %sw.bb18.i
    i32 128, label %sw.bb21.i
    i32 192, label %sw.bb24.i
    i32 256, label %sw.bb27.i
  ]

if.end.i.do.body35.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl5.i = shl nuw i32 1, %104
  %or.i = or i32 %and4.i, %shl5.i
  br label %do.body35.i

sw.bb9.i133:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl10.i = shl i32 3, %104
  %or11.i = or i32 %and4.i, %shl10.i
  br label %do.body35.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl13.i = shl i32 2, %104
  %or14.i = or i32 %and4.i, %shl13.i
  br label %do.body35.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl16.i = shl i32 4, %104
  %or17.i = or i32 %and4.i, %shl16.i
  br label %do.body35.i

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl19.i = shl i32 5, %104
  %or20.i = or i32 %and4.i, %shl19.i
  br label %do.body35.i

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl22.i = shl i32 6, %104
  %or23.i = or i32 %and4.i, %shl22.i
  br label %do.body35.i

sw.bb24.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl25.i = shl i32 7, %104
  %or26.i = or i32 %and4.i, %shl25.i
  br label %do.body35.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl28.i = shl i32 8, %104
  %or29.i = or i32 %and4.i, %shl28.i
  br label %do.body35.i

do.end32.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2s, align 4
  %dev34.i = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i, ptr noundef nonnull @.str.68) #10
  br label %set_bfs.exit

do.body35.i:                                      ; preds = %sw.bb27.i, %sw.bb24.i, %sw.bb21.i, %sw.bb18.i, %sw.bb15.i, %sw.bb12.i, %sw.bb9.i133, %sw.bb.i, %if.end.i.do.body35.i_crit_edge
  %mod.0.i = phi i32 [ %or29.i, %sw.bb27.i ], [ %or26.i, %sw.bb24.i ], [ %or23.i, %sw.bb21.i ], [ %or20.i, %sw.bb18.i ], [ %or17.i, %sw.bb15.i ], [ %or14.i, %sw.bb12.i ], [ %or11.i, %sw.bb9.i133 ], [ %or.i, %sw.bb.i ], [ %and4.i, %if.end.i.do.body35.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %mod.0.i) #7
  %114 = ptrtoint ptr %addr.i127 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %addr.i127, align 4
  %add.ptr39.i = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %113) #7, !srcloc !212
  br label %set_bfs.exit

set_bfs.exit:                                     ; preds = %do.body35.i, %do.end32.i, %do.end.i
  %116 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv1, align 4
  %addr.i135 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %117, i32 0, i32 17
  %118 = ptrtoint ptr %addr.i135 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %addr.i135, align 4
  %add.ptr.i136 = getelementptr i8, ptr %119, i32 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #7, !srcloc !209
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  %variant_regs.i137 = getelementptr inbounds %struct.samsung_i2s_priv, ptr %117, i32 0, i32 12
  %122 = ptrtoint ptr %variant_regs.i137 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %variant_regs.i137, align 4
  %rfs_off.i138 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %rfs_off.i138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rfs_off.i138, align 4
  %rfs_mask.i139 = getelementptr inbounds %struct.samsung_i2s_variant_regs, ptr %123, i32 0, i32 9
  %126 = ptrtoint ptr %rfs_mask.i139 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rfs_mask.i139, align 4
  %shl.i140 = shl i32 %127, %125
  %neg.i141 = xor i32 %shl.i140, -1
  %and.i142 = and i32 %121, %neg.i141
  %128 = zext i32 %rfs.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %rfs.1, label %set_bfs.exit.set_rfs.exit_crit_edge [
    i32 192, label %sw.bb.i144
    i32 96, label %sw.bb5.i145
    i32 128, label %sw.bb8.i146
    i32 64, label %sw.bb11.i
    i32 768, label %sw.bb14.i
    i32 512, label %sw.bb17.i
    i32 384, label %sw.bb20.i
  ]

set_bfs.exit.set_rfs.exit_crit_edge:              ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_rfs.exit

sw.bb.i144:                                       ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl4.i = shl i32 7, %125
  %or.i143 = or i32 %and.i142, %shl4.i
  br label %set_rfs.exit

sw.bb5.i145:                                      ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl6.i = shl i32 6, %125
  %or7.i = or i32 %and.i142, %shl6.i
  br label %set_rfs.exit

sw.bb8.i146:                                      ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl9.i = shl i32 5, %125
  %or10.i = or i32 %and.i142, %shl9.i
  br label %set_rfs.exit

sw.bb11.i:                                        ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl12.i = shl i32 4, %125
  %or13.i = or i32 %and.i142, %shl12.i
  br label %set_rfs.exit

sw.bb14.i:                                        ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl15.i = shl i32 3, %125
  %or16.i = or i32 %and.i142, %shl15.i
  br label %set_rfs.exit

sw.bb17.i:                                        ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl18.i = shl nuw i32 1, %125
  %or19.i = or i32 %and.i142, %shl18.i
  br label %set_rfs.exit

sw.bb20.i:                                        ; preds = %set_bfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shl21.i = shl i32 2, %125
  %or22.i = or i32 %and.i142, %shl21.i
  br label %set_rfs.exit

set_rfs.exit:                                     ; preds = %sw.bb20.i, %sw.bb17.i, %sw.bb14.i, %sw.bb11.i, %sw.bb8.i146, %sw.bb5.i145, %sw.bb.i144, %set_bfs.exit.set_rfs.exit_crit_edge
  %mod.0.i147 = phi i32 [ %or22.i, %sw.bb20.i ], [ %or19.i, %sw.bb17.i ], [ %or16.i, %sw.bb14.i ], [ %or13.i, %sw.bb11.i ], [ %or10.i, %sw.bb8.i146 ], [ %or7.i, %sw.bb5.i145 ], [ %or.i143, %sw.bb.i144 ], [ %and.i142, %set_bfs.exit.set_rfs.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  tail call void @arm_heavy_mb() #7
  %129 = tail call i32 @llvm.bswap.i32(i32 %mod.0.i147) #7
  %130 = ptrtoint ptr %addr.i135 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %addr.i135, align 4
  %add.ptr26.i = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %129) #7, !srcloc !212
  %slave_mode = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 18
  %132 = ptrtoint ptr %slave_mode to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %slave_mode, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool43.not = icmp eq i8 %133, 0
  br i1 %tobool43.not, label %if.end45, label %set_rfs.exit.cleanup_crit_edge

set_rfs.exit.cleanup_crit_edge:                   ; preds = %set_rfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %set_rfs.exit
  %quirks = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 13
  %134 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %quirks, align 4
  %and = and i32 %135, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then47, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %rclk_srcrate = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 8
  %136 = ptrtoint ptr %rclk_srcrate to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rclk_srcrate, align 4
  %frmclk = getelementptr inbounds %struct.i2s_dai, ptr %i2s, i32 0, i32 1
  %138 = ptrtoint ptr %frmclk to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %frmclk, align 4
  %div = udiv i32 %137, %139
  %div48 = udiv i32 %div, %rfs.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @arm_heavy_mb() #7
  %sub = shl i32 %div48, 8
  %shl = add i32 %sub, -256
  %or = or i32 %shl, 32768
  %140 = tail call i32 @llvm.bswap.i32(i32 %or)
  %141 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %addr.i, align 4
  %add.ptr = getelementptr i8, ptr %142, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %140) #7, !srcloc !212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_setup, %if.then57)) #7
          to label %cleanup [label %if.then57], !srcloc !257

if.then57:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2s, align 4
  %dev59 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %rclk_srcrate to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rclk_srcrate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_setup.__UNIQUE_ID_ddebug241, ptr noundef %dev59, ptr noundef nonnull @.str.64, i32 noundef %146, i32 noundef %div48, i32 noundef %rfs.1, i32 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then47, %if.end45.cleanup_crit_edge, %set_rfs.exit.cleanup_crit_edge, %do.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -11, %do.end39 ], [ 0, %set_rfs.exit.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.then47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !209
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !258
  %suspend_i2smod = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %suspend_i2smod to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %suspend_i2smod, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !209
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  %suspend_i2scon = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %suspend_i2scon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %suspend_i2scon, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !209
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  %suspend_i2spsr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %suspend_i2spsr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %suspend_i2spsr, align 4
  %op_clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %op_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  %clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %op_clk = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %op_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_clk, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3:                                         ; preds = %if.end
  %call.i34 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i38, label %if.then3.if.then7_crit_edge

if.then3.if.then7_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.i38:                                       ; preds = %if.then3
  %call1.i36 = tail call i32 @clk_enable(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool2.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool2.not.i37, label %if.end.i38.do.body_crit_edge, label %if.then3.i39

if.end.i38.do.body_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3.i39:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %5) #7
  br label %if.then7

if.then7:                                         ; preds = %if.then3.i39, %if.then3.if.then7_crit_edge
  %retval.0.i40.ph = phi i32 [ %call1.i36, %if.then3.i39 ], [ %call.i34, %if.then3.if.then7_crit_edge ]
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %cleanup

do.body:                                          ; preds = %if.end.i38.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %suspend_i2scon = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %suspend_i2scon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspend_i2scon, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %addr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  tail call void @arm_heavy_mb() #7
  %suspend_i2smod = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %suspend_i2smod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspend_i2smod, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %suspend_i2spsr = getelementptr inbounds %struct.samsung_i2s_priv, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %suspend_i2spsr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %suspend_i2spsr, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr, align 4
  %add.ptr20 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %20) #7, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then7, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i40.ph, %if.then7 ], [ 0, %do.body ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_snd_soc_i2s__242_1699_samsung_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_i2s__242_1699_samsung_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/i2s.c", i32 1699, i32 1}
!2 = !{ptr @__exitcall_samsung_i2s_driver_exit, !1, !"__exitcall_samsung_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/i2s.c", i32 1702, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/i2s.c", i32 1703, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias245, !8, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/i2s.c", i32 1704, i32 1}
!9 = !{ptr @__UNIQUE_ID_file246, !10, !"__UNIQUE_ID_file246", i1 false, i1 false}
!10 = !{!"../sound/soc/samsung/i2s.c", i32 1705, i32 1}
!11 = !{ptr @__UNIQUE_ID_license247, !10, !"__UNIQUE_ID_license247", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/i2s.c", i32 1693, i32 11}
!14 = !{ptr @samsung_i2s_driver, !15, !"samsung_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/i2s.c", i32 1688, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/i2s.c", i32 1409, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @samsung_i2s_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @samsung_i2s_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @samsung_i2s_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/i2s.c", i32 1425, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @samsung_i2s_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../sound/soc/samsung/i2s.c", i32 1426, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/samsung/i2s.c", i32 1435, i32 32}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/i2s.c", i32 1438, i32 5}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @samsung_i2s_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @samsung_i2s_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/samsung/i2s.c", i32 1450, i32 39}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/samsung/i2s.c", i32 1452, i32 3}
!41 = !{ptr @samsung_i2s_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @samsung_i2s_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/samsung/i2s.c", i32 1458, i32 3}
!45 = !{ptr @samsung_i2s_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @samsung_i2s_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/samsung/i2s.c", i32 1463, i32 36}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/samsung/i2s.c", i32 1464, i32 35}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/samsung/i2s.c", i32 1481, i32 37}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/samsung/i2s.c", i32 1507, i32 3}
!55 = !{ptr @samsung_i2s_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @samsung_i2s_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/samsung/i2s.c", i32 1155, i32 52}
!59 = !{ptr @i2s_alloc_dais.dai_names, !60, !"dai_names", i1 false, i1 false}
!60 = !{!"../sound/soc/samsung/i2s.c", i32 1155, i32 21}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/samsung/i2s.c", i32 1156, i32 40}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/samsung/i2s.c", i32 1157, i32 12}
!65 = !{ptr @i2s_alloc_dais.stream_names, !66, !"stream_names", i1 false, i1 false}
!66 = !{!"../sound/soc/samsung/i2s.c", i32 1156, i32 21}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/samsung/i2s.c", i32 1200, i32 33}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/i2s.c", i32 533, i32 4}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @i2s_set_sysclk._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @i2s_set_sysclk._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/samsung/i2s.c", i32 570, i32 7}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/samsung/i2s.c", i32 573, i32 7}
!78 = !{ptr @i2s_set_sysclk._entry.35, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../sound/soc/samsung/i2s.c", i32 591, i32 4}
!80 = !{ptr @i2s_set_sysclk._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/samsung/i2s.c", i32 604, i32 3}
!83 = !{ptr @i2s_set_sysclk._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @i2s_set_sysclk._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @samsung_i2s_dai_ops, !86, !"samsung_i2s_dai_ops", i1 false, i1 false}
!86 = !{!"../sound/soc/samsung/i2s.c", i32 1107, i32 37}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/samsung/i2s.c", i32 990, i32 4}
!89 = !{ptr @i2s_set_clkdiv._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @i2s_set_clkdiv._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/samsung/i2s.c", i32 998, i32 3}
!93 = !{ptr @i2s_set_clkdiv._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @i2s_set_clkdiv._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/samsung/i2s.c", i32 652, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @i2s_set_fmt._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @i2s_set_fmt._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/samsung/i2s.c", i32 670, i32 3}
!102 = !{ptr @i2s_set_fmt._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @i2s_set_fmt._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/samsung/i2s.c", i32 689, i32 3}
!106 = !{ptr @i2s_set_fmt._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @i2s_set_fmt._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @i2s_set_fmt._entry.52, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../sound/soc/samsung/i2s.c", i32 704, i32 3}
!110 = !{ptr @i2s_set_fmt._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/samsung/i2s.c", i32 754, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @i2s_hw_params._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @i2s_hw_params._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/samsung/i2s.c", i32 793, i32 3}
!118 = !{ptr @i2s_hw_params._entry.56, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @i2s_hw_params._entry_ptr.58, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/samsung/i2s.c", i32 892, i32 3}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @config_setup._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @config_setup._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @config_setup._entry.61, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../sound/soc/samsung/i2s.c", i32 906, i32 3}
!127 = !{ptr @config_setup._entry_ptr.62, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/samsung/i2s.c", i32 921, i32 3}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @config_setup.__UNIQUE_ID_ddebug241, !129, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/samsung/i2s.c", i32 334, i32 3}
!134 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @set_bfs._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @set_bfs._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/samsung/i2s.c", i32 369, i32 3}
!139 = !{ptr @set_bfs._entry.67, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @set_bfs._entry_ptr.69, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/samsung/i2s.c", i32 1342, i32 57}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/samsung/i2s.c", i32 1362, i32 3}
!145 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @i2s_create_secondary_device._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @i2s_create_secondary_device._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @samsung_i2s_component, !149, !"samsung_i2s_component", i1 false, i1 false}
!149 = !{!"../sound/soc/samsung/i2s.c", i32 1135, i32 46}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/samsung/i2s.c", i32 1120, i32 2}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/samsung/i2s.c", i32 1121, i32 2}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/samsung/i2s.c", i32 1124, i32 2}
!156 = !{ptr @samsung_i2s_widgets, !157, !"samsung_i2s_widgets", i1 false, i1 false}
!157 = !{!"../sound/soc/samsung/i2s.c", i32 1118, i32 41}
!158 = !{ptr @samsung_i2s_dapm_routes, !159, !"samsung_i2s_dapm_routes", i1 false, i1 false}
!159 = !{!"../sound/soc/samsung/i2s.c", i32 1127, i32 40}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/samsung/i2s.c", i32 1265, i32 40}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/samsung/i2s.c", i32 1265, i32 49}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/samsung/i2s.c", i32 1265, i32 61}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/samsung/i2s.c", i32 1275, i32 38}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/samsung/i2s.c", i32 1288, i32 53}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/samsung/i2s.c", i32 1328, i32 3}
!172 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @i2s_register_clock_provider._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @i2s_register_clock_provider._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @exynos_i2s_match, !176, !"exynos_i2s_match", i1 false, i1 false}
!176 = !{!"../sound/soc/samsung/i2s.c", i32 1659, i32 34}
!177 = !{ptr @i2sv3_dai_type, !178, !"i2sv3_dai_type", i1 false, i1 false}
!178 = !{!"../sound/soc/samsung/i2s.c", i32 1616, i32 42}
!179 = !{ptr @i2sv3_regs, !180, !"i2sv3_regs", i1 false, i1 false}
!180 = !{!"../sound/soc/samsung/i2s.c", i32 1560, i32 46}
!181 = !{ptr @i2sv5_dai_type, !182, !"i2sv5_dai_type", i1 false, i1 false}
!182 = !{!"../sound/soc/samsung/i2s.c", i32 1622, i32 42}
!183 = !{ptr @i2sv6_dai_type, !184, !"i2sv6_dai_type", i1 false, i1 false}
!184 = !{!"../sound/soc/samsung/i2s.c", i32 1629, i32 42}
!185 = !{ptr @i2sv6_regs, !186, !"i2sv6_regs", i1 false, i1 false}
!186 = !{!"../sound/soc/samsung/i2s.c", i32 1574, i32 46}
!187 = !{ptr @i2sv7_dai_type, !188, !"i2sv7_dai_type", i1 false, i1 false}
!188 = !{!"../sound/soc/samsung/i2s.c", i32 1636, i32 42}
!189 = !{ptr @i2sv7_regs, !190, !"i2sv7_regs", i1 false, i1 false}
!190 = !{!"../sound/soc/samsung/i2s.c", i32 1588, i32 46}
!191 = !{ptr @i2sv5_dai_type_i2s1, !192, !"i2sv5_dai_type_i2s1", i1 false, i1 false}
!192 = !{!"../sound/soc/samsung/i2s.c", i32 1643, i32 42}
!193 = !{ptr @i2sv5_i2s1_regs, !194, !"i2sv5_i2s1_regs", i1 false, i1 false}
!194 = !{!"../sound/soc/samsung/i2s.c", i32 1602, i32 46}
!195 = !{ptr @samsung_i2s_pm, !196, !"samsung_i2s_pm", i1 false, i1 false}
!196 = !{!"../sound/soc/samsung/i2s.c", i32 1681, i32 32}
!197 = !{ptr @samsung_i2s_driver_ids, !198, !"samsung_i2s_driver_ids", i1 false, i1 false}
!198 = !{!"../sound/soc/samsung/i2s.c", i32 1649, i32 40}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
!209 = !{i64 5026125}
!210 = !{i64 2155290529}
!211 = !{i64 2155290768}
!212 = !{i64 5025707}
!213 = !{i64 2148227901}
!214 = !{i64 712724, i64 712749, i64 712771, i64 712787, i64 712799, i64 712819, i64 712843, i64 712859, i64 712871}
!215 = !{i64 2148228089}
!216 = !{i64 2155281343}
!217 = !{i64 2155243618}
!218 = !{i64 2155244473}
!219 = !{i64 2155244818}
!220 = !{i64 2155244660}
!221 = !{i64 2155245687}
!222 = !{i64 2155246544}
!223 = !{i64 2155282509}
!224 = !{i64 2155239107}
!225 = !{i64 2155239569}
!226 = !{i64 2155229953}
!227 = !{i64 2155228752}
!228 = !{i64 2155239874}
!229 = !{i64 2155240271}
!230 = !{i64 2155240650}
!231 = !{i64 2155241280}
!232 = !{i64 2155241742}
!233 = !{i64 2155242025}
!234 = !{i64 2155242404}
!235 = !{i64 2155247405}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{i64 2155253700}
!238 = !{i64 2155253917}
!239 = !{i64 2155233704}
!240 = !{i64 2155260072}
!241 = !{i64 2155261917}
!242 = !{i64 2155268133}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{i32 0, i32 33}
!245 = !{i64 2155267104}
!246 = !{i64 2155267321}
!247 = !{i64 2155279789}
!248 = !{i64 2155281079}
!249 = !{i64 2155238645}
!250 = !{i64 2155231987}
!251 = !{i64 2155234359}
!252 = !{i64 2155237796}
!253 = !{i64 2155232642}
!254 = !{i64 2155232875}
!255 = !{i8 0, i8 2}
!256 = !{i64 2155272301}
!257 = !{i64 2148796147, i64 2148796152, i64 2148796165, i64 2148796209, i64 2148796243, i64 2148796264}
!258 = !{i64 2155286364}
!259 = !{i64 2155286850}
!260 = !{i64 2155287336}
!261 = !{i64 2155287570}
!262 = !{i64 2155288029}
!263 = !{i64 2155288488}
