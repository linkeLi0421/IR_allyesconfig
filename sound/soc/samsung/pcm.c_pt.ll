; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/pcm.c_pt.bc'
source_filename = "../sound/soc/samsung/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c_pcm_info = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
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

@__initcall__kmod_snd_soc_pcm__245_600_s3c_pcm_driver_init6 = internal global ptr @s3c_pcm_driver_init, section ".initcall6.init", align 4
@s3c_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c_pcm_dev_probe, ptr @s3c_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c_pcm_driver_exit = internal global ptr @s3c_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [63 x i8] c"snd_soc_pcm.author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [50 x i8] c"snd_soc_pcm.description=S3C PCM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [47 x i8] c"snd_soc_pcm.file=sound/soc/samsung/snd-soc-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"snd_soc_pcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [39 x i8] c"snd_soc_pcm.alias=platform:samsung-pcm\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pcm\00", [20 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"id %d out of range\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_pcm_dev_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/samsung/pcm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr = internal global ptr @s3c_pcm_dev_probe._entry, section ".printk_index", align 4
@s3c_pcm_dev_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr.8 = internal global ptr @s3c_pcm_dev_probe._entry.6, section ".printk_index", align 4
@s3c_pcm = internal global { [2 x %struct.s3c_pcm_info], [40 x i8] } zeroinitializer, align 32
@s3c_pcm_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcm->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio-bus\00", [22 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get audio-bus clock\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr.13 = internal global ptr @s3c_pcm_dev_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get pcm clock\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr.17 = internal global ptr @s3c_pcm_dev_probe._entry.15, section ".printk_index", align 4
@s3c_pcm_stereo_in = internal global { [2 x %struct.snd_dmaengine_dai_dma_data], [56 x i8] } { [2 x %struct.snd_dmaengine_dai_dma_data] [%struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }, %struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }], [56 x i8] zeroinitializer }, align 32
@s3c_pcm_stereo_out = internal global { [2 x %struct.snd_dmaengine_dai_dma_data], [56 x i8] } { [2 x %struct.snd_dmaengine_dai_dma_data] [%struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }, %struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }], [56 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get register DMA: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr.20 = internal global ptr @s3c_pcm_dev_probe._entry.18, section ".printk_index", align 4
@s3c_pcm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.24, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@s3c_pcm_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.25, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @s3c_pcm_dai_probe, ptr null, ptr null, ptr null, ptr @s3c_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.26, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @s3c_pcm_dai_probe, ptr null, ptr null, ptr null, ptr @s3c_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get register DAI: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_pcm_dev_probe._entry_ptr.23 = internal global ptr @s3c_pcm_dev_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c-pcm\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-pcm.0\00", [18 x i8] zeroinitializer }, align 32
@s3c_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @s3c_pcm_set_sysclk, ptr null, ptr @s3c_pcm_set_clkdiv, ptr null, ptr @s3c_pcm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_pcm_hw_params, ptr null, ptr null, ptr @s3c_pcm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-pcm.1\00", [18 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_soc_pcm\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_pcm_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Entered %s\0A\00", [20 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported clock inversion!\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt._entry_ptr = internal global ptr @s3c_pcm_set_fmt._entry, section ".printk_index", align 4
@s3c_pcm_set_fmt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported master/slave format!\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt._entry_ptr.33 = internal global ptr @s3c_pcm_set_fmt._entry.31, section ".printk_index", align 4
@s3c_pcm_set_fmt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid Clock gating request!\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt._entry_ptr.36 = internal global ptr @s3c_pcm_set_fmt._entry.34, section ".printk_index", align 4
@s3c_pcm_set_fmt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported data format!\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c_pcm_set_fmt._entry_ptr.39 = internal global ptr @s3c_pcm_set_fmt._entry.37, section ".printk_index", align 4
@s3c_pcm_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.40, ptr @.str.3, ptr @.str.29, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_pcm_hw_params\00", [46 x i8] zeroinitializer }, align 32
@s3c_pcm_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PCMSOURCE_CLK-%lu SCLK=%ufs SCLK_DIV=%d SYNC_DIV=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c_pcm_trigger.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.3, ptr @.str.29, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_pcm_trigger\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"s3c_pcm_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 592, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 596, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 496, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 503, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"s3c_pcm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 152, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 510, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 519, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 521, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 531, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 533, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"s3c_pcm_stereo_in\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 143, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"s3c_pcm_stereo_out\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 134, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 557, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"s3c_pcm_component\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 482, i32 46 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"s3c_pcm_dai\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 471, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 566, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 483, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 473, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"s3c_pcm_dai_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 435, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 477, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 327, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 338, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 348, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 361, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 376, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 271, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 311, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [27 x i8] c"../sound/soc/samsung/pcm.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 223, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_s3c_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_pcm__245_600_s3c_pcm_driver_init6, ptr @s3c_pcm_dev_probe._entry, ptr @s3c_pcm_dev_probe._entry.11, ptr @s3c_pcm_dev_probe._entry.15, ptr @s3c_pcm_dev_probe._entry.18, ptr @s3c_pcm_dev_probe._entry.21, ptr @s3c_pcm_dev_probe._entry.6, ptr @s3c_pcm_dev_probe._entry_ptr, ptr @s3c_pcm_dev_probe._entry_ptr.13, ptr @s3c_pcm_dev_probe._entry_ptr.17, ptr @s3c_pcm_dev_probe._entry_ptr.20, ptr @s3c_pcm_dev_probe._entry_ptr.23, ptr @s3c_pcm_dev_probe._entry_ptr.8, ptr @s3c_pcm_driver_exit, ptr @s3c_pcm_set_fmt._entry, ptr @s3c_pcm_set_fmt._entry.31, ptr @s3c_pcm_set_fmt._entry.34, ptr @s3c_pcm_set_fmt._entry.37, ptr @s3c_pcm_set_fmt._entry_ptr, ptr @s3c_pcm_set_fmt._entry_ptr.33, ptr @s3c_pcm_set_fmt._entry_ptr.36, ptr @s3c_pcm_set_fmt._entry_ptr.39, ptr @s3c_pcm_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @s3c_pcm, ptr @s3c_pcm_dev_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @s3c_pcm_stereo_in, ptr @s3c_pcm_stereo_out, ptr @.str.19, ptr @s3c_pcm_component, ptr @s3c_pcm_dai, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @s3c_pcm_dai_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_stereo_in to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_stereo_out to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dev_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_set_fmt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_set_fmt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pcm_set_fmt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_pcm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_pcm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem_res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_res) #7
  %0 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem_res, align 4, !annotation !108
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp ugt i32 %2, 1
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true6

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call = tail call i32 %6(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end14_crit_edge, label %do.end12

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end12:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8
  %dev17 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev17, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.9, ptr noundef nonnull @s3c_pcm_dev_probe.__key, i16 noundef signext 3) #7
  %sclk_per_fs = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 3
  %10 = ptrtoint ptr %sclk_per_fs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %sclk_per_fs, align 4
  %call22 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem_res) #7
  %regs = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  %call30 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %cclk = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 6
  %13 = ptrtoint ptr %cclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call30, ptr %cclk, align 4
  %cmp.i173 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %14 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cclk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %call.i = call i32 @clk_prepare(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  %call1.i = call i32 @clk_enable(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end45, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call30) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %driver_data.i, align 4
  %call48 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %pclk = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 5
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call48, ptr %pclk, align 4
  %cmp.i174 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %err_dis_cclk

if.end58:                                         ; preds = %if.end45
  %call.i175 = call i32 @clk_prepare(ptr noundef %call48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i176, label %if.end.i179, label %if.end58.err_dis_cclk_crit_edge

if.end58.err_dis_cclk_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dis_cclk

if.end.i179:                                      ; preds = %if.end58
  %call1.i177 = call i32 @clk_enable(ptr noundef %call48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %tobool2.not.i178 = icmp eq i32 %call1.i177, 0
  br i1 %tobool2.not.i178, label %if.end63, label %if.then3.i180

if.then3.i180:                                    ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call48) #7
  br label %err_dis_cclk

if.end63:                                         ; preds = %if.end.i179
  %22 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_res, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add = add i32 %25, 12
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %arrayidx65 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %arrayidx65, align 4
  %29 = load i32, ptr %23, align 4
  %add67 = add i32 %29, 8
  %30 = load i32, ptr %id, align 4
  %arrayidx69 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add67, ptr %arrayidx69, align 4
  br i1 %tobool.not, label %if.end63.if.end78_crit_edge, label %if.then72

if.end63.if.end78_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then72:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %dma_capture = getelementptr inbounds %struct.s3c_audio_pdata, ptr %4, i32 0, i32 3
  %32 = ptrtoint ptr %dma_capture to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_capture, align 4
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %filter_data = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %35, i32 3
  %36 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %filter_data, align 4
  %dma_playback = getelementptr inbounds %struct.s3c_audio_pdata, ptr %4, i32 0, i32 2
  %37 = ptrtoint ptr %dma_playback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_playback, align 4
  %39 = load i32, ptr %id, align 4
  %filter_data77 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %39, i32 3
  %40 = ptrtoint ptr %filter_data77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %filter_data77, align 4
  %dma_filter = getelementptr inbounds %struct.s3c_audio_pdata, ptr %4, i32 0, i32 1
  %41 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_filter, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end63.if.end78_crit_edge
  %filter.0 = phi ptr [ %42, %if.then72 ], [ null, %if.end63.if.end78_crit_edge ]
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %arrayidx80 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %44
  %dma_capture81 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 8
  %45 = ptrtoint ptr %dma_capture81 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx80, ptr %dma_capture81, align 4
  %46 = load i32, ptr %id, align 4
  %arrayidx83 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %46
  %dma_playback84 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %8, i32 7
  %47 = ptrtoint ptr %dma_playback84 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx83, ptr %dma_playback84, align 4
  %call86 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %dev, ptr noundef %filter.0, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call86) #10
  br label %err_dis_pclk

if.end93:                                         ; preds = %if.end78
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  %arrayidx97 = getelementptr [2 x %struct.snd_soc_dai_driver], ptr @s3c_pcm_dai, i32 0, i32 %49
  %call98 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @s3c_pcm_component, ptr noundef %arrayidx97, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end93.cleanup_crit_edge, label %do.end103

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end103:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call98) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %err_dis_pclk

err_dis_pclk:                                     ; preds = %do.end103, %do.end91
  %ret.0 = phi i32 [ %call86, %do.end91 ], [ %call98, %do.end103 ]
  %50 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %51) #7
  call void @clk_unprepare(ptr noundef %51) #7
  br label %err_dis_cclk

err_dis_cclk:                                     ; preds = %err_dis_pclk, %if.then3.i180, %if.end58.err_dis_cclk_crit_edge, %do.end54
  %ret.1 = phi i32 [ %21, %do.end54 ], [ %ret.0, %err_dis_pclk ], [ %call1.i177, %if.then3.i180 ], [ %call.i175, %if.end58.err_dis_cclk_crit_edge ]
  %52 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cclk, align 4
  call void @clk_disable(ptr noundef %53) #7
  call void @clk_unprepare(ptr noundef %53) #7
  br label %cleanup

cleanup:                                          ; preds = %err_dis_cclk, %if.end93.cleanup_crit_edge, %if.then3.i, %if.end40.cleanup_crit_edge, %do.end36, %if.then25, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ %12, %if.then25 ], [ %16, %do.end36 ], [ %ret.1, %err_dis_cclk ], [ 0, %if.end93.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %cclk = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %1, i32 6
  %2 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %pclk = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %1, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c_pcm_dai_probe(ptr nocapture noundef %dai) #5 align 64 {
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
  %dma_playback = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dma_playback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_playback, align 4
  %dma_capture = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dma_capture to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_capture, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %8 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %9 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regs1 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !109
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %7, 262144
  br label %do.body

sw.bb4:                                           ; preds = %entry
  %and = and i32 %7, -262145
  %cclk = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cclk, align 4
  %call5 = tail call i32 @clk_get_rate(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %freq)
  %cmp.not = icmp eq i32 %call5, %freq
  br i1 %cmp.not, label %sw.bb4.do.body_crit_edge, label %if.then

sw.bb4.do.body_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cclk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %freq) #7
  br label %do.body

do.body:                                          ; preds = %if.then, %sw.bb4.do.body_crit_edge, %sw.bb
  %clkctl.0 = phi i32 [ %and, %if.then ], [ %and, %sw.bb4.do.body_crit_edge ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %clkctl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !112
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c_pcm_set_clkdiv(ptr nocapture noundef readonly %cpu_dai, i32 noundef %div_id, i32 noundef %div) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_id)
  %cond = icmp eq i32 %div_id, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sclk_per_fs = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sclk_per_fs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %sclk_per_fs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regs1 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pcm_set_fmt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pcm_set_fmt, %if.then)) #7
          to label %do.body6 [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_pcm_set_fmt.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #7
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !109
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %and = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and)
  %cond = icmp eq i32 %and, 768
  br i1 %cond, label %sw.epilog, label %do.end19

do.end19:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #10
  br label %exit

sw.epilog:                                        ; preds = %do.body6
  %and21 = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and21)
  %cond54 = icmp eq i32 %and21, 16384
  br i1 %cond54, label %sw.epilog27, label %do.end25

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.32) #10
  br label %exit

sw.epilog27:                                      ; preds = %sw.epilog
  %14 = trunc i32 %fmt to i8
  %trunc = and i8 %14, -16
  %15 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc, label %do.end34 [
    i8 16, label %sw.epilog27.sw.epilog36_crit_edge
    i8 0, label %sw.bb29
  ]

sw.epilog27.sw.epilog36_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb29:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

do.end34:                                         ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.35) #10
  br label %exit

sw.epilog36:                                      ; preds = %sw.bb29, %sw.epilog27.sw.epilog36_crit_edge
  %.sink = phi i32 [ 0, %sw.bb29 ], [ 1, %sw.epilog27.sw.epilog36_crit_edge ]
  %idleclk30 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %idleclk30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %idleclk30, align 4
  %and37 = and i32 %fmt, 15
  %19 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and37, label %do.end46 [
    i32 4, label %sw.bb38
    i32 5, label %sw.bb40
  ]

sw.bb38:                                          ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  %or39 = or i32 %9, 24
  br label %do.body49

sw.bb40:                                          ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  %and42 = and i32 %9, -25
  br label %do.body49

do.end46:                                         ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  %dev47 = getelementptr inbounds %struct.s3c_pcm_info, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38) #10
  br label %exit

do.body49:                                        ; preds = %sw.bb40, %sw.bb38
  %ctl.0 = phi i32 [ %and42, %sw.bb40 ], [ %or39, %sw.bb38 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %ctl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %22) #7, !srcloc !112
  br label %exit

exit:                                             ; preds = %do.body49, %do.end46, %do.end34, %do.end25, %do.end19
  %ret.0 = phi i32 [ -22, %do.end34 ], [ -22, %do.end46 ], [ 0, %do.body49 ], [ -22, %do.end25 ], [ -22, %do.end19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call9) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %socdai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regs1 = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pcm_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pcm_hw_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_pcm_hw_params.__UNIQUE_ID_ddebug242, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end.if.then.i.i.i_crit_edge

do.end.if.then.i.i.i_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %15, %do.end.if.then.i.i.i_crit_edge ], [ %18, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !116
  %add.i.i.i = or i32 %16, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i.i = icmp eq i32 %18, 0
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, 16
  br i1 %cond, label %do.body7, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !109
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %and = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %pclk = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 5
  %cclk = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 6
  %clk.0.in = select i1 %tobool18.not, ptr %cclk, ptr %pclk
  %21 = ptrtoint ptr %clk.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %clk.0 = load ptr, ptr %clk.0.in, align 4
  %call21 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #7
  %sclk_per_fs = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %sclk_per_fs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sclk_per_fs, align 4
  %div = udiv i32 %call21, %23
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %div23 = udiv i32 %div, %25
  %div2483 = lshr i32 %div23, 1
  %sub = add nsw i32 %div2483, -1
  %and25 = and i32 %20, -262144
  %and26 = shl i32 %sub, 9
  %shl = and i32 %and26, 261632
  %sub28 = add i32 %23, -1
  %and30 = and i32 %sub28, 511
  %or = or i32 %and30, %and25
  %or32 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or32)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #7, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call10) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pcm_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pcm_hw_params, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !113

if.then50:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 4
  %call52 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #7
  %29 = ptrtoint ptr %sclk_per_fs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sclk_per_fs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_pcm_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %28, ptr noundef nonnull @.str.41, i32 noundef %call52, i32 noundef %30, i32 noundef %sub, i32 noundef %sub28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body7, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pcm_trigger.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pcm_trigger, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c_pcm_trigger.__UNIQUE_ID_ddebug241, ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.42) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.do.body5_crit_edge
    i32 6, label %do.end.do.body5_crit_edge72
    i32 4, label %do.end.do.body5_crit_edge73
    i32 0, label %do.end.do.body20_crit_edge
    i32 5, label %do.end.do.body20_crit_edge74
    i32 3, label %do.end.do.body20_crit_edge75
  ]

do.end.do.body20_crit_edge75:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end.do.body20_crit_edge74:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end.do.body5_crit_edge73:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end.do.body5_crit_edge72:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end.do.body5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %do.end.do.body5_crit_edge, %do.end.do.body5_crit_edge72, %do.end.do.body5_crit_edge73
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp13 = icmp eq i32 %14, 1
  %regs1.i = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1.i, align 4
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %add.ptr5.i = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %19 = and i32 %17, 1558249471
  %20 = or i32 %19, 588251136
  %21 = or i32 %18, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %21) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #7, !srcloc !112
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %24 = and i32 %23, -1172309761
  %25 = or i32 %24, 1166016512
  %26 = or i32 %22, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %25) #7, !srcloc !112
  br label %cleanup.sink.split

do.body20:                                        ; preds = %do.end.do.body20_crit_edge, %do.end.do.body20_crit_edge74, %do.end.do.body20_crit_edge75
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %stream33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %27 = ptrtoint ptr %stream33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp34 = icmp eq i32 %28, 1
  %regs1.i56 = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 2
  %29 = ptrtoint ptr %regs1.i56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs1.i56, align 4
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %do.body20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %add.ptr5.i57 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i57) #7, !srcloc !109
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %34 = and i32 %31, 2145452031
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %and14.i = and i32 %35, -8099
  %and15.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.then36.s3c_pcm_snd_rxctrl.exit_crit_edge

if.then36.s3c_pcm_snd_rxctrl.exit_crit_edge:      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_pcm_snd_rxctrl.exit

if.then17.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i32 %35, -8100
  %idleclk.i = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 4
  %36 = ptrtoint ptr %idleclk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idleclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool19.not.i = icmp eq i32 %37, 0
  %or21.i = or i32 %33, 524288
  %spec.select.i = select i1 %tobool19.not.i, i32 %or21.i, i32 %33
  br label %s3c_pcm_snd_rxctrl.exit

s3c_pcm_snd_rxctrl.exit:                          ; preds = %if.then17.i, %if.then36.s3c_pcm_snd_rxctrl.exit_crit_edge
  %clkctl.0.i = phi i32 [ %33, %if.then36.s3c_pcm_snd_rxctrl.exit_crit_edge ], [ %spec.select.i, %if.then17.i ]
  %ctl.0.i = phi i32 [ %and14.i, %if.then36.s3c_pcm_snd_rxctrl.exit_crit_edge ], [ %and18.i, %if.then17.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %clkctl.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i57, i32 %38) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %ctl.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %39) #7, !srcloc !112
  br label %cleanup.sink.split

if.else37:                                        ; preds = %do.body20
  %add.ptr.i59 = getelementptr i8, ptr %30, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !109
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %43 = and i32 %42, -14681857
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %and14.i60 = and i32 %44, -516165
  %and15.i61 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i61)
  %tobool16.not.i62 = icmp eq i32 %and15.i61, 0
  br i1 %tobool16.not.i62, label %if.then17.i68, label %if.else37.s3c_pcm_snd_txctrl.exit_crit_edge

if.else37.s3c_pcm_snd_txctrl.exit_crit_edge:      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_pcm_snd_txctrl.exit

if.then17.i68:                                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i63 = and i32 %44, -516166
  %idleclk.i64 = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 4
  %45 = ptrtoint ptr %idleclk.i64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idleclk.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not.i65 = icmp eq i32 %46, 0
  %or21.i66 = or i32 %41, 524288
  %spec.select.i67 = select i1 %tobool19.not.i65, i32 %or21.i66, i32 %41
  br label %s3c_pcm_snd_txctrl.exit

s3c_pcm_snd_txctrl.exit:                          ; preds = %if.then17.i68, %if.else37.s3c_pcm_snd_txctrl.exit_crit_edge
  %clkctl.0.i69 = phi i32 [ %41, %if.else37.s3c_pcm_snd_txctrl.exit_crit_edge ], [ %spec.select.i67, %if.then17.i68 ]
  %ctl.0.i70 = phi i32 [ %and14.i60, %if.else37.s3c_pcm_snd_txctrl.exit_crit_edge ], [ %and18.i63, %if.then17.i68 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %clkctl.0.i69) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %47) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %ctl.0.i70) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %48) #7, !srcloc !112
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %s3c_pcm_snd_txctrl.exit, %s3c_pcm_snd_rxctrl.exit, %if.else, %if.then15
  %call8.sink = phi i32 [ %call8, %if.else ], [ %call8, %if.then15 ], [ %call28, %s3c_pcm_snd_txctrl.exit ], [ %call28, %s3c_pcm_snd_rxctrl.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call8.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
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
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_snd_soc_pcm__245_600_s3c_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_pcm__245_600_s3c_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/pcm.c", i32 600, i32 1}
!2 = !{ptr @__exitcall_s3c_pcm_driver_exit, !1, !"__exitcall_s3c_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author246, !4, !"__UNIQUE_ID_author246", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/pcm.c", i32 603, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/pcm.c", i32 604, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/pcm.c", i32 605, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias250, !11, !"__UNIQUE_ID_alias250", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/pcm.c", i32 606, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/pcm.c", i32 596, i32 11}
!14 = !{ptr @s3c_pcm_driver, !15, !"s3c_pcm_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/pcm.c", i32 592, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/pcm.c", i32 496, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c_pcm_dev_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c_pcm_dev_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/pcm.c", i32 503, i32 3}
!26 = !{ptr @s3c_pcm_dev_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3c_pcm_dev_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @s3c_pcm_dev_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/pcm.c", i32 510, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/samsung/pcm.c", i32 519, i32 39}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/samsung/pcm.c", i32 521, i32 3}
!35 = !{ptr @s3c_pcm_dev_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @s3c_pcm_dev_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/samsung/pcm.c", i32 531, i32 39}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/samsung/pcm.c", i32 533, i32 3}
!41 = !{ptr @s3c_pcm_dev_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @s3c_pcm_dev_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/samsung/pcm.c", i32 557, i32 3}
!45 = !{ptr @s3c_pcm_dev_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @s3c_pcm_dev_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/samsung/pcm.c", i32 566, i32 3}
!49 = !{ptr @s3c_pcm_dev_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @s3c_pcm_dev_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @s3c_pcm, !52, !"s3c_pcm", i1 false, i1 false}
!52 = !{!"../sound/soc/samsung/pcm.c", i32 152, i32 28}
!53 = !{ptr @s3c_pcm_stereo_in, !54, !"s3c_pcm_stereo_in", i1 false, i1 false}
!54 = !{!"../sound/soc/samsung/pcm.c", i32 143, i32 42}
!55 = !{ptr @s3c_pcm_stereo_out, !56, !"s3c_pcm_stereo_out", i1 false, i1 false}
!56 = !{!"../sound/soc/samsung/pcm.c", i32 134, i32 42}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/samsung/pcm.c", i32 483, i32 11}
!59 = !{ptr @s3c_pcm_component, !60, !"s3c_pcm_component", i1 false, i1 false}
!60 = !{!"../sound/soc/samsung/pcm.c", i32 482, i32 46}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/samsung/pcm.c", i32 473, i32 11}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/samsung/pcm.c", i32 477, i32 11}
!65 = !{ptr @s3c_pcm_dai, !66, !"s3c_pcm_dai", i1 false, i1 false}
!66 = !{!"../sound/soc/samsung/pcm.c", i32 471, i32 34}
!67 = !{ptr @s3c_pcm_dai_ops, !68, !"s3c_pcm_dai_ops", i1 false, i1 false}
!68 = !{!"../sound/soc/samsung/pcm.c", i32 435, i32 37}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/pcm.c", i32 327, i32 2}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @s3c_pcm_set_fmt.__UNIQUE_ID_ddebug244, !70, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/samsung/pcm.c", i32 338, i32 3}
!76 = !{ptr @s3c_pcm_set_fmt._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @s3c_pcm_set_fmt._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/samsung/pcm.c", i32 348, i32 3}
!80 = !{ptr @s3c_pcm_set_fmt._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @s3c_pcm_set_fmt._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/samsung/pcm.c", i32 361, i32 3}
!84 = !{ptr @s3c_pcm_set_fmt._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @s3c_pcm_set_fmt._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/samsung/pcm.c", i32 376, i32 3}
!88 = !{ptr @s3c_pcm_set_fmt._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @s3c_pcm_set_fmt._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/samsung/pcm.c", i32 271, i32 2}
!92 = !{ptr @s3c_pcm_hw_params.__UNIQUE_ID_ddebug242, !91, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/samsung/pcm.c", i32 311, i32 2}
!95 = !{ptr @s3c_pcm_hw_params.__UNIQUE_ID_ddebug243, !94, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/samsung/pcm.c", i32 223, i32 2}
!98 = !{ptr @s3c_pcm_trigger.__UNIQUE_ID_ddebug241, !97, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2042871}
!110 = !{i64 2154981297}
!111 = !{i64 2154981544}
!112 = !{i64 2042453}
!113 = !{i64 2148735363, i64 2148735368, i64 2148735381, i64 2148735425, i64 2148735459, i64 2148735480}
!114 = !{i64 2154973637}
!115 = !{i64 2154980656}
!116 = !{i32 0, i32 33}
!117 = !{i64 2154967451}
!118 = !{i64 2154967711}
!119 = !{i64 2154955874}
!120 = !{i64 2154956341}
!121 = !{i64 2154956667}
!122 = !{i64 2154957058}
!123 = !{i64 2154954052}
!124 = !{i64 2154954519}
!125 = !{i64 2154954847}
!126 = !{i64 2154955238}
