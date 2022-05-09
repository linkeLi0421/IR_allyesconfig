; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra30_i2s.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra30_i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.tegra30_i2s_soc_data = type { ptr }
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
%struct.tegra30_i2s = type { ptr, %struct.snd_soc_dai_driver, i32, ptr, i32, i32, [8 x i8], %struct.snd_dmaengine_dai_dma_data, i32, i32, [8 x i8], %struct.snd_dmaengine_dai_dma_data, ptr, %struct.snd_dmaengine_pcm_config }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.tegra30_ahub_cif_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_snd_soc_tegra30_i2s__242_567_tegra30_i2s_driver_init6 = internal global ptr @tegra30_i2s_driver_init, section ".initcall6.init", align 4
@tegra30_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra30_i2s_platform_probe, ptr @tegra30_i2s_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra30_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra30_i2s_driver_exit = internal global ptr @tegra30_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [63 x i8] c"snd_soc_tegra30_i2s.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [56 x i8] c"snd_soc_tegra30_i2s.description=Tegra30 I2S ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [61 x i8] c"snd_soc_tegra30_i2s.file=sound/soc/tegra/snd-soc-tegra30-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [32 x i8] c"snd_soc_tegra30_i2s.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [47 x i8] c"snd_soc_tegra30_i2s.alias=platform:tegra30-i2s\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra30-i2s\00", [20 x i8] zeroinitializer }, align 32
@tegra30_i2s_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_i2s_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_i2s_config }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra30_i2s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_runtime_suspend, ptr @tegra30_i2s_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra30_i2s_platform_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/tegra/tegra30_i2s.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr = internal global ptr @tegra30_i2s_platform_probe._entry, section ".printk_index", align 4
@tegra30_i2s_dai_template = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra30_i2s_probe, ptr null, ptr null, ptr null, ptr @tegra30_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.32, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,ahub-cif-ids\00", [44 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't retrieve i2s clock\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.9 = internal global ptr @tegra30_i2s_platform_probe._entry.7, section ".printk_index", align 4
@tegra30_i2s_platform_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra30_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra30_i2s_wr_rd_reg, ptr @tegra30_i2s_wr_rd_reg, ptr @tegra30_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 84, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tegra30_i2s:455:(&tegra30_i2s_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.13 = internal global ptr @tegra30_i2s_platform_probe._entry.11, section ".printk_index", align 4
@tegra30_i2s_platform_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not alloc TX FIFO: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.16 = internal global ptr @tegra30_i2s_platform_probe._entry.14, section ".printk_index", align 4
@tegra30_i2s_platform_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not route TX FIFO: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.19 = internal global ptr @tegra30_i2s_platform_probe._entry.17, section ".printk_index", align 4
@tegra30_i2s_platform_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not alloc RX FIFO: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.22 = internal global ptr @tegra30_i2s_platform_probe._entry.20, section ".printk_index", align 4
@tegra30_i2s_platform_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.24 = internal global ptr @tegra30_i2s_platform_probe._entry.23, section ".printk_index", align 4
@tegra30_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.27 = internal global ptr @tegra30_i2s_platform_probe._entry.25, section ".printk_index", align 4
@tegra30_i2s_platform_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register PCM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra30_i2s_platform_probe._entry_ptr.30 = internal global ptr @tegra30_i2s_platform_probe._entry.28, section ".printk_index", align 4
@tegra30_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_set_fmt, ptr null, ptr @tegra30_i2s_set_tdm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_hw_params, ptr null, ptr null, ptr @tegra30_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@tegra30_i2s_set_tdm.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_soc_tegra30_i2s\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra30_i2s_set_tdm\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: txmask=0x%08x rxmask=0x%08x slots=%d width=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra30_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't set I2S clock rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra30_i2s_hw_params\00", [42 x i8] zeroinitializer }, align 32
@tegra30_i2s_hw_params._entry_ptr = internal global ptr @tegra30_i2s_hw_params._entry, section ".printk_index", align 4
@tegra124_i2s_config = internal constant { %struct.tegra30_i2s_soc_data, [28 x i8] } { %struct.tegra30_i2s_soc_data { ptr @tegra124_ahub_set_cif }, [28 x i8] zeroinitializer }, align 32
@tegra30_i2s_config = internal constant { %struct.tegra30_i2s_soc_data, [28 x i8] } { %struct.tegra30_i2s_soc_data { ptr @tegra30_ahub_set_cif }, [28 x i8] zeroinitializer }, align 32
@tegra30_i2s_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 57, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra30_i2s_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@tegra30_i2s_runtime_resume._entry_ptr = internal global ptr @tegra30_i2s_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"tegra30_i2s_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 558, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 560, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"tegra30_i2s_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 400, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"tegra30_i2s_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 551, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 423, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"tegra30_i2s_dai_template\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 313, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 433, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 443, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"tegra30_i2s_regmap_config\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 381, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 454, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 457, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 472, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 478, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 489, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 495, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"tegra30_i2s_component\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 333, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 502, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 511, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"tegra30_i2s_dai_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 306, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 323, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 316, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 275, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 170, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"tegra124_i2s_config\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 396, i32 42 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"tegra30_i2s_config\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 392, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [33 x i8] c"../sound/soc/tegra/tegra30_i2s.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 57, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_tegra30_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_tegra30_i2s__242_567_tegra30_i2s_driver_init6, ptr @tegra30_i2s_driver_exit, ptr @tegra30_i2s_hw_params._entry, ptr @tegra30_i2s_hw_params._entry_ptr, ptr @tegra30_i2s_platform_probe._entry, ptr @tegra30_i2s_platform_probe._entry.11, ptr @tegra30_i2s_platform_probe._entry.14, ptr @tegra30_i2s_platform_probe._entry.17, ptr @tegra30_i2s_platform_probe._entry.20, ptr @tegra30_i2s_platform_probe._entry.23, ptr @tegra30_i2s_platform_probe._entry.25, ptr @tegra30_i2s_platform_probe._entry.28, ptr @tegra30_i2s_platform_probe._entry.7, ptr @tegra30_i2s_platform_probe._entry_ptr, ptr @tegra30_i2s_platform_probe._entry_ptr.13, ptr @tegra30_i2s_platform_probe._entry_ptr.16, ptr @tegra30_i2s_platform_probe._entry_ptr.19, ptr @tegra30_i2s_platform_probe._entry_ptr.22, ptr @tegra30_i2s_platform_probe._entry_ptr.24, ptr @tegra30_i2s_platform_probe._entry_ptr.27, ptr @tegra30_i2s_platform_probe._entry_ptr.30, ptr @tegra30_i2s_platform_probe._entry_ptr.9, ptr @tegra30_i2s_runtime_resume._entry, ptr @tegra30_i2s_runtime_resume._entry_ptr, ptr @tegra30_i2s_driver, ptr @.str, ptr @tegra30_i2s_of_match, ptr @tegra30_i2s_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra30_i2s_dai_template, ptr @.str.6, ptr @.str.8, ptr @tegra30_i2s_platform_probe._key, ptr @tegra30_i2s_regmap_config, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @tegra30_i2s_component, ptr @.str.26, ptr @.str.29, ptr @tegra30_i2s_dai_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tegra124_i2s_config, ptr @tegra30_i2s_config, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_dai_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_platform_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_i2s_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2s_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra30_i2s_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra30_i2s_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cif_ids = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cif_ids) #8
  %0 = ptrtoint ptr %cif_ids to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cif_ids, align 4, !annotation !104
  %1 = getelementptr inbounds [2 x i32], ptr %cif_ids, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !104
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 328, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call.i, align 8
  %dai = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %dai, ptr @tegra30_i2s_dai_template, i32 168)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end7.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %dai, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i202 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %cif_ids, i32 noundef 2, i32 noundef 0) #8
  %13 = call i32 @llvm.smin.i32(i32 %call.i202, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp = icmp slt i32 %call.i202, 0
  br i1 %cmp, label %dev_name.exit.cleanup_crit_edge, label %if.end15

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %14 = ptrtoint ptr %cif_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cif_ids, align 4
  %playback_i2s_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %playback_i2s_cif to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %playback_i2s_cif, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %capture_i2s_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %capture_i2s_cif to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %capture_i2s_cif, align 8
  %call18 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk_i2s = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call18, ptr %clk_i2s, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %21 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_i2s, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %call29 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i203 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call35 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call29, ptr noundef nonnull @tegra30_i2s_regmap_config, ptr noundef nonnull @tegra30_i2s_platform_probe._key, ptr noundef nonnull @.str.10) #8
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call35, ptr %regmap, align 8
  %cmp.i204 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 8
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  call void @regcache_cache_only(ptr noundef %call35, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %playback_dma_data = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 11
  %addr_width = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %maxburst, align 4
  %playback_fifo_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 9
  %playback_dma_chan = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 10
  %call51 = call i32 @tegra30_ahub_allocate_tx_fifo(ptr noundef %playback_fifo_cif, ptr noundef %playback_dma_chan, i32 noundef 8, ptr noundef %playback_dma_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call51) #11
  br label %err_pm_disable

if.end58:                                         ; preds = %if.end45
  %31 = ptrtoint ptr %playback_i2s_cif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %playback_i2s_cif, align 4
  %33 = ptrtoint ptr %playback_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %playback_fifo_cif, align 8
  %call61 = call i32 @tegra30_ahub_set_rx_cif_source(i32 noundef %32, i32 noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call61) #11
  br label %err_free_tx_fifo

if.end68:                                         ; preds = %if.end58
  %capture_dma_data = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 7
  %addr_width69 = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %addr_width69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %addr_width69, align 4
  %maxburst71 = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %maxburst71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %maxburst71, align 8
  %capture_fifo_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 5
  %capture_dma_chan = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 6
  %call75 = call i32 @tegra30_ahub_allocate_rx_fifo(ptr noundef %capture_fifo_cif, ptr noundef %capture_dma_chan, i32 noundef 8, ptr noundef %capture_dma_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call75) #11
  br label %err_unroute_tx_fifo

if.end82:                                         ; preds = %if.end68
  %37 = ptrtoint ptr %capture_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capture_fifo_cif, align 4
  %39 = ptrtoint ptr %capture_i2s_cif to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capture_i2s_cif, align 8
  %call85 = call i32 @tegra30_ahub_set_rx_cif_source(i32 noundef %38, i32 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call85) #11
  br label %err_free_rx_fifo

if.end92:                                         ; preds = %if.end82
  %call95 = call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @tegra30_i2s_component, ptr noundef %dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call95) #11
  br label %err_unroute_rx_fifo

if.end102:                                        ; preds = %if.end92
  %dma_config = getelementptr inbounds %struct.tegra30_i2s, ptr %call.i, i32 0, i32 13
  %call108 = call i32 @tegra_pcm_platform_register_with_chan_names(ptr noundef %dev, ptr noundef %dma_config, ptr noundef %playback_dma_chan, ptr noundef %capture_dma_chan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end102.cleanup_crit_edge, label %do.end113

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end113:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call108) #11
  call void @snd_soc_unregister_component(ptr noundef %dev) #8
  br label %err_unroute_rx_fifo

err_unroute_rx_fifo:                              ; preds = %do.end113, %do.end100
  %ret.0 = phi i32 [ -12, %do.end100 ], [ %call108, %do.end113 ]
  %41 = ptrtoint ptr %capture_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capture_fifo_cif, align 4
  %call118 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %42) #8
  br label %err_free_rx_fifo

err_free_rx_fifo:                                 ; preds = %err_unroute_rx_fifo, %do.end90
  %ret.1 = phi i32 [ %call85, %do.end90 ], [ %ret.0, %err_unroute_rx_fifo ]
  %43 = ptrtoint ptr %capture_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capture_fifo_cif, align 4
  %call120 = call i32 @tegra30_ahub_free_rx_fifo(i32 noundef %44) #8
  br label %err_unroute_tx_fifo

err_unroute_tx_fifo:                              ; preds = %err_free_rx_fifo, %do.end80
  %ret.2 = phi i32 [ %call75, %do.end80 ], [ %ret.1, %err_free_rx_fifo ]
  %45 = ptrtoint ptr %playback_i2s_cif to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %playback_i2s_cif, align 4
  %call122 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %46) #8
  br label %err_free_tx_fifo

err_free_tx_fifo:                                 ; preds = %err_unroute_tx_fifo, %do.end66
  %ret.3 = phi i32 [ %call61, %do.end66 ], [ %ret.2, %err_unroute_tx_fifo ]
  %47 = ptrtoint ptr %playback_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %playback_fifo_cif, align 8
  %call124 = call i32 @tegra30_ahub_free_tx_fifo(i32 noundef %48) #8
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_free_tx_fifo, %do.end56
  %ret.4 = phi i32 [ %call51, %do.end56 ], [ %ret.3, %err_free_tx_fifo ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end102.cleanup_crit_edge, %do.end41, %if.then31, %do.end24, %dev_name.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102.cleanup_crit_edge ], [ %13, %dev_name.exit.cleanup_crit_edge ], [ %23, %do.end24 ], [ %24, %if.then31 ], [ %28, %do.end41 ], [ %ret.4, %err_pm_disable ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cif_ids) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_platform_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @tegra_pcm_platform_unregister(ptr noundef %dev) #8
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #8
  %capture_fifo_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %capture_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_fifo_cif, align 4
  %call3 = tail call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %3) #8
  %4 = ptrtoint ptr %capture_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_fifo_cif, align 4
  %call5 = tail call i32 @tegra30_ahub_free_rx_fifo(i32 noundef %5) #8
  %playback_i2s_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %playback_i2s_cif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %playback_i2s_cif, align 4
  %call6 = tail call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %7) #8
  %playback_fifo_cif = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %playback_fifo_cif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %playback_fifo_cif, align 8
  %call7 = tail call i32 @tegra30_ahub_free_tx_fifo(i32 noundef %9) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_allocate_tx_fifo(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_set_rx_cif_source(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_allocate_rx_fifo(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_platform_register_with_chan_names(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_free_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_free_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra30_i2s_probe(ptr nocapture noundef %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %capture_dma_data = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 7
  %capture_dma_data1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %4 = ptrtoint ptr %capture_dma_data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %capture_dma_data, ptr %capture_dma_data1, align 4
  %playback_dma_data = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 11
  %playback_dma_data2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %5 = ptrtoint ptr %playback_dma_data2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %playback_dma_data, ptr %playback_dma_data2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cond = icmp eq i32 %and, 0
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.epilog.cleanup_crit_edge [
    i16 16384, label %sw.bb
    i16 4096, label %sw.epilog.sw.epilog4_crit_edge
  ]

sw.epilog.sw.epilog4_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.epilog4:                                       ; preds = %sw.bb, %sw.epilog.sw.epilog4_crit_edge
  %val.0 = phi i32 [ 0, %sw.epilog.sw.epilog4_crit_edge ], [ 1024, %sw.bb ]
  %and6 = and i32 %fmt, 15
  %6 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and6, label %sw.epilog4.cleanup_crit_edge [
    i32 4, label %sw.bb7
    i32 5, label %sw.bb10
    i32 1, label %sw.epilog4.sw.epilog23_crit_edge
    i32 2, label %sw.epilog4.sw.epilog23_crit_edge49
    i32 3, label %sw.epilog4.sw.epilog23_crit_edge50
  ]

sw.epilog4.sw.epilog23_crit_edge50:               ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.epilog4.sw.epilog23_crit_edge49:               ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.epilog4.sw.epilog23_crit_edge:                 ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.epilog4.cleanup_crit_edge:                     ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %val.0, 4096
  br label %sw.epilog23

sw.bb10:                                          ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %val.0, 4608
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb10, %sw.bb7, %sw.epilog4.sw.epilog23_crit_edge, %sw.epilog4.sw.epilog23_crit_edge49, %sw.epilog4.sw.epilog23_crit_edge50
  %val.1 = phi i32 [ %or12, %sw.bb10 ], [ %or8, %sw.bb7 ], [ %val.0, %sw.epilog4.sw.epilog23_crit_edge ], [ %val.0, %sw.epilog4.sw.epilog23_crit_edge49 ], [ %val.0, %sw.epilog4.sw.epilog23_crit_edge50 ]
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 30208, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog23, %sw.epilog4.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog23 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_set_tdm(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra30_i2s_set_tdm.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra30_i2s_set_tdm, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !105

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra30_i2s_set_tdm.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl4 = shl i32 %rx_mask, 8
  %or = or i32 %shl4, %tx_mask
  %sub = shl i32 %slots, 16
  %shl5 = add i32 %sub, -65536
  %or6 = or i32 %or, %shl5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 524287, i32 noundef %or6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 12, i32 noundef -16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call.i23 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %cif_conf = alloca %struct.tegra30_ahub_cif_conf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cif_conf) #8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i60 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %if.end.params_format.exit_crit_edge ], [ %9, %for.inc.i.i.params_format.exit_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !106
  %add.i.i = or i32 %10, %i.09.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i)
  %cond = icmp eq i32 %add.i.i, 2
  br i1 %cond, label %sw.bb, label %params_format.exit.cleanup_crit_edge

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %arrayidx.i.i61 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i61, align 4
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %14, 5
  %mul8 = mul i32 %mul, %16
  %mul9 = shl i32 %14, 1
  %mul8.frozen = freeze i32 %mul8
  %mul9.frozen = freeze i32 %mul9
  %div = sdiv i32 %mul8.frozen, %mul9.frozen
  %sub = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub)
  %17 = icmp ugt i32 %sub, 2047
  br i1 %17, label %sw.bb.cleanup_crit_edge, label %if.end13

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  %clk_i2s = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_i2s, align 4
  %call14 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %mul8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %call14) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = mul i32 %div, %mul9.frozen
  %rem.decomposed = sub i32 %mul8.frozen, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool18.not = icmp eq i32 %rem.decomposed, 0
  %or = or i32 %sub, 4096
  %spec.select = select i1 %tobool18.not, i32 %sub, i32 %or
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 8
  %call22 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 4, i32 noundef %spec.select) #8
  %23 = ptrtoint ptr %cif_conf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cif_conf, align 4
  %audio_channels = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 1
  %24 = ptrtoint ptr %audio_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %audio_channels, align 4
  %client_channels = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 2
  %25 = ptrtoint ptr %client_channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %client_channels, align 4
  %audio_bits = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 3
  %26 = ptrtoint ptr %audio_bits to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %audio_bits, align 4
  %client_bits = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 4
  %27 = ptrtoint ptr %client_bits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %client_bits, align 4
  %expand = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 5
  %28 = ptrtoint ptr %expand to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %expand, align 4
  %stereo_conv = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 6
  %29 = ptrtoint ptr %stereo_conv to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %stereo_conv, align 4
  %replicate = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 7
  %30 = ptrtoint ptr %replicate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %replicate, align 4
  %truncate = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 9
  %31 = ptrtoint ptr %truncate to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %truncate, align 4
  %mono_conv = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 10
  %32 = ptrtoint ptr %mono_conv to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mono_conv, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp23 = icmp eq i32 %34, 0
  %spec.select65 = zext i1 %cmp23 to i32
  %spec.select66 = select i1 %cmp23, i32 20, i32 24
  %35 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %cif_conf, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select65, ptr %35, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 8
  call void %40(ptr noundef %42, i32 noundef %spec.select66, ptr noundef nonnull %cif_conf) #8
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 8
  %call29 = call i32 @regmap_write(ptr noundef %44, i32 noundef 8, i32 noundef 65537) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %sw.bb.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cif_conf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge21
    i32 6, label %entry.sw.bb_crit_edge22
    i32 0, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge23
    i32 5, label %entry.sw.bb1_crit_edge24
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %playback_fifo_cif.i = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %playback_fifo_cif.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playback_fifo_cif.i, align 8
  %call.i = tail call i32 @tegra30_ahub_enable_tx_fifo(i32 noundef %8) #8
  %regmap.i = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %capture_fifo_cif.i = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %capture_fifo_cif.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capture_fifo_cif.i, align 4
  %call.i11 = tail call i32 @tegra30_ahub_enable_rx_fifo(i32 noundef %12) #8
  %regmap.i12 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i12, align 8
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3 = icmp eq i32 %16, 0
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %playback_fifo_cif.i14 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %playback_fifo_cif.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %playback_fifo_cif.i14, align 8
  %call.i15 = tail call i32 @tegra30_ahub_disable_tx_fifo(i32 noundef %18) #8
  %regmap.i16 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i16, align 8
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else5:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i18 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %regmap.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i18, align 8
  %call.i.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %capture_fifo_cif.i20 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %capture_fifo_cif.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capture_fifo_cif.i20, align 4
  %call1.i = tail call i32 @tegra30_ahub_disable_rx_fifo(i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %if.then4, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.else5 ], [ 0, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_enable_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_enable_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_disable_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_disable_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra30_i2s_wr_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %0)
  %switch = icmp ult i32 %0, 22
  ret i1 %switch
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra30_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -36
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pcm_platform_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra124_ahub_set_cif(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_ahub_set_cif(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  %clk_i2s = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_i2s, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_i2s = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_i2s, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regmap = getelementptr inbounds %struct.tegra30_i2s, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  tail call void @regcache_mark_dirty(ptr noundef %7) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call4 = tail call i32 @regcache_sync(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %disable_clocks

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

disable_clocks:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %clk_i2s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_i2s, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_clocks, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call4, %disable_clocks ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra30_i2s__242_567_tegra30_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra30_i2s__242_567_tegra30_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 567, i32 1}
!2 = !{ptr @__exitcall_tegra30_i2s_driver_exit, !1, !"__exitcall_tegra30_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_description244, !6, !"__UNIQUE_ID_description244", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 570, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 571, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias247, !11, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 572, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 560, i32 11}
!14 = !{ptr @tegra30_i2s_driver, !15, !"tegra30_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 558, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 423, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra30_i2s_platform_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra30_i2s_platform_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 433, i32 7}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 443, i32 3}
!28 = !{ptr @tegra30_i2s_platform_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tegra30_i2s_platform_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 454, i32 16}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 457, i32 3}
!35 = !{ptr @tegra30_i2s_platform_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 472, i32 3}
!39 = !{ptr @tegra30_i2s_platform_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 478, i32 3}
!43 = !{ptr @tegra30_i2s_platform_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 489, i32 3}
!47 = !{ptr @tegra30_i2s_platform_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @tegra30_i2s_platform_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 495, i32 3}
!51 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 502, i32 3}
!54 = !{ptr @tegra30_i2s_platform_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 511, i32 3}
!58 = !{ptr @tegra30_i2s_platform_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra30_i2s_platform_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 323, i32 18}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 316, i32 18}
!64 = !{ptr @tegra30_i2s_dai_template, !65, !"tegra30_i2s_dai_template", i1 false, i1 false}
!65 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 313, i32 40}
!66 = !{ptr @tegra30_i2s_dai_ops, !67, !"tegra30_i2s_dai_ops", i1 false, i1 false}
!67 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 306, i32 37}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 275, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tegra30_i2s_set_tdm.__UNIQUE_ID_ddebug241, !69, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 170, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tegra30_i2s_hw_params._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tegra30_i2s_hw_params._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @tegra30_i2s_regmap_config, !79, !"tegra30_i2s_regmap_config", i1 false, i1 false}
!79 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 381, i32 35}
!80 = !{ptr @tegra30_i2s_component, !81, !"tegra30_i2s_component", i1 false, i1 false}
!81 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 333, i32 46}
!82 = !{ptr @tegra30_i2s_of_match, !83, !"tegra30_i2s_of_match", i1 false, i1 false}
!83 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 400, i32 34}
!84 = !{ptr @tegra124_i2s_config, !85, !"tegra124_i2s_config", i1 false, i1 false}
!85 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 396, i32 42}
!86 = !{ptr @tegra30_i2s_config, !87, !"tegra30_i2s_config", i1 false, i1 false}
!87 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 392, i32 42}
!88 = !{ptr @tegra30_i2s_pm_ops, !89, !"tegra30_i2s_pm_ops", i1 false, i1 false}
!89 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 551, i32 32}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/tegra/tegra30_i2s.c", i32 57, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra30_i2s_runtime_resume._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tegra30_i2s_runtime_resume._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148735114, i64 2148735119, i64 2148735132, i64 2148735176, i64 2148735210, i64 2148735231}
!106 = !{i32 0, i32 33}
