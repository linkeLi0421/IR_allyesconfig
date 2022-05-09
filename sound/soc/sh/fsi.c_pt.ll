; ModuleID = '/llk/IR_all_yes/sound/soc/sh/fsi.c_pt.bc'
source_filename = "../sound/soc/sh/fsi.c"
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.fsi_stream_handler = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsi_core = type { i32, i32, i32, i32, i32, i32 }
%struct.sh_fsi_platform_info = type { %struct.sh_fsi_port_info, %struct.sh_fsi_port_info }
%struct.sh_fsi_port_info = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fsi_master = type { ptr, %struct.fsi_priv, %struct.fsi_priv, ptr, %struct.spinlock }
%struct.fsi_priv = type { ptr, i32, ptr, %struct.fsi_stream, %struct.fsi_stream, %struct.fsi_clk, i32, i24 }
%struct.fsi_stream = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.fsi_clk = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__initcall__kmod_snd_soc_fsi__256_2102_fsi_driver_init6 = internal global ptr @fsi_driver_init, section ".initcall6.init", align 4
@fsi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsi_probe, ptr @fsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pm_ops, ptr null, ptr null }, ptr @fsi_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsi_driver_exit = internal global ptr @fsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file257 = internal constant [42 x i8] c"snd_soc_fsi.file=sound/soc/sh/snd-soc-fsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [27 x i8] c"snd_soc_fsi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [55 x i8] c"snd_soc_fsi.description=SuperH onchip FSI audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [69 x i8] c"snd_soc_fsi.author=Kuninori Morimoto <morimoto.kuninori@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [41 x i8] c"snd_soc_fsi.alias=platform:fsi-pcm-audio\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsi-pcm-audio\00", [18 x i8] zeroinitializer }, align 32
@fsi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh_fsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsi1_core }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh_fsi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsi2_core }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fsi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsi_suspend, ptr @fsi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsi_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh_fsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fsi1_core to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsia\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsib\00", [27 x i8] zeroinitializer }, align 32
@fsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown fsi device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/soc/sh/fsi.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr = internal global ptr @fsi_probe._entry, section ".printk_index", align 4
@fsi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Not enough FSI platform resources.\0A\00", [60 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.10 = internal global ptr @fsi_probe._entry.8, section ".printk_index", align 4
@fsi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1958, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to ioremap FSI registers.\0A\00", [62 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.13 = internal global ptr @fsi_probe._entry.11, section ".printk_index", align 4
@fsi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&master->lock\00", [18 x i8] zeroinitializer }, align 32
@fsi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1975, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSIA stream probe failed\0A\00", [38 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.17 = internal global ptr @fsi_probe._entry.15, section ".printk_index", align 4
@fsi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1988, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSIB stream probe failed\0A\00", [38 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.20 = internal global ptr @fsi_probe._entry.18, section ".printk_index", align 4
@fsi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 1998, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq request err\0A\00", [47 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.23 = internal global ptr @fsi_probe._entry.21, section ".printk_index", align 4
@fsi_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.44, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pcm_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsi_soc_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.45, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.46, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@fsi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 2005, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot snd component register\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_probe._entry_ptr.26 = internal global ptr @fsi_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spdif-connection\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stream-mode-support\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"use-internal-clock\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s,%s\00", [26 x i8] zeroinitializer }, align 32
@fsi_of_parse.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_soc_fsi\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsi_of_parse\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s flags : %lx\0A\00", [16 x i8] zeroinitializer }, align 32
@fsi_pio_push_handler = internal global { %struct.fsi_stream_handler, [40 x i8] } { %struct.fsi_stream_handler { ptr @fsi_pio_push_init, ptr null, ptr null, ptr @fsi_pio_push, ptr null, ptr @fsi_pio_start_stop }, [40 x i8] zeroinitializer }, align 32
@fsi_pio_pop_handler = internal global { %struct.fsi_stream_handler, [40 x i8] } { %struct.fsi_stream_handler { ptr @fsi_pio_pop_init, ptr null, ptr null, ptr @fsi_pio_pop, ptr null, ptr @fsi_pio_start_stop }, [40 x i8] zeroinitializer }, align 32
@fsi_dma_push_handler = internal global { %struct.fsi_stream_handler, [40 x i8] } { %struct.fsi_stream_handler { ptr @fsi_dma_init, ptr null, ptr @fsi_dma_probe, ptr @fsi_dma_transfer, ptr @fsi_dma_remove, ptr @fsi_dma_push_start_stop }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@fsi_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 1401, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switch handler (dma => pio)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsi_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsi_dma_probe._entry_ptr = internal global ptr @fsi_dma_probe._entry, section ".printk_index", align 4
@fsi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dmaengine_prep_dma_cyclic() fail\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsi_dma_transfer\00", [47 x i8] zeroinitializer }, align 32
@fsi_dma_transfer._entry_ptr = internal global ptr @fsi_dma_transfer._entry, section ".printk_index", align 4
@fsi_dma_transfer._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 1313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_submit() fail\0A\00", [46 x i8] zeroinitializer }, align 32
@fsi_dma_transfer._entry_ptr.43 = internal global ptr @fsi_dma_transfer._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsi\00", [28 x i8] zeroinitializer }, align 32
@fsi_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 1, i32 32, i32 256 }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsia-dai\00", [23 x i8] zeroinitializer }, align 32
@fsi_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_startup, ptr @fsi_dai_shutdown, ptr @fsi_dai_hw_params, ptr null, ptr null, ptr @fsi_dai_trigger, ptr null, ptr null, ptr @fsi_dai_formats, i32 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsib-dai\00", [23 x i8] zeroinitializer }, align 32
@fsi_dai_formats = internal global { i64, [24 x i8] } { i64 64424509450, [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xcka\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xckb\00", [27 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 753, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get xck clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsi_clk_init\00", [19 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr = internal global ptr @fsi_clk_init._entry, section ".printk_index", align 4
@fsi_clk_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 757, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpu doesn't support xck clock\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr.53 = internal global ptr @fsi_clk_init._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icka\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ickb\00", [27 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.5, i32 766, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get ick clock\0A\00", [43 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr.58 = internal global ptr @fsi_clk_init._entry.56, section ".printk_index", align 4
@fsi_clk_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.5, i32 770, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpu doesn't support ick clock\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr.61 = internal global ptr @fsi_clk_init._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"diva\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"divb\00", [27 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.50, ptr @.str.5, i32 779, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get div clock\0A\00", [43 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr.66 = internal global ptr @fsi_clk_init._entry.64, section ".printk_index", align 4
@fsi_clk_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.50, ptr @.str.5, i32 783, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cpu doesn't support div clock\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_clk_init._entry_ptr.69 = internal global ptr @fsi_clk_init._entry.67, section ".printk_index", align 4
@fsi_clk_set_rate_cpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 964, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported rate\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_clk_set_rate_cpg\00", [43 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_cpg._entry_ptr = internal global ptr @fsi_clk_set_rate_cpg._entry, section ".printk_index", align 4
@fsi_clk_set_rate_cpg._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s failed\00", [22 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_cpg._entry_ptr.74 = internal global ptr @fsi_clk_set_rate_cpg._entry.72, section ".printk_index", align 4
@fsi_clk_set_rate_cpg._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.5, i32 1015, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ick clock failed\0A\00", [46 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_cpg._entry_ptr.77 = internal global ptr @fsi_clk_set_rate_cpg._entry.75, section ".printk_index", align 4
@fsi_clk_set_rate_cpg._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.5, i32 1021, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"div clock failed\0A\00", [46 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_cpg._entry_ptr.80 = internal global ptr @fsi_clk_set_rate_cpg._entry.78, section ".printk_index", align 4
@fsi_clk_set_rate_cpg.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.71, ptr @.str.5, ptr @.str.81, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ick/div = %ld/%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@fsi_clk_set_ackbpf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 854, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported rate (%d/%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsi_clk_set_ackbpf\00", [45 x i8] zeroinitializer }, align 32
@fsi_clk_set_ackbpf._entry_ptr = internal global ptr @fsi_clk_set_ackbpf._entry, section ".printk_index", align 4
@fsi_clk_set_ackbpf._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported ackmd (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@fsi_clk_set_ackbpf._entry_ptr.86 = internal global ptr @fsi_clk_set_ackbpf._entry.84, section ".printk_index", align 4
@fsi_clk_set_ackbpf._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.5, i32 901, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported bpfmd (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@fsi_clk_set_ackbpf._entry_ptr.89 = internal global ptr @fsi_clk_set_ackbpf._entry.87, section ".printk_index", align 4
@fsi_clk_set_ackbpf.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.83, ptr @.str.5, ptr @.str.90, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACKMD/BPFMD = %d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsi_clk_set_rate_external._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 926, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported clock rate\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsi_clk_set_rate_external\00", [38 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_external._entry_ptr = internal global ptr @fsi_clk_set_rate_external._entry, section ".printk_index", align 4
@fsi_clk_set_rate_external.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.92, ptr @.str.5, ptr @.str.93, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"external/rate = %ld/%ld\0A\00", [39 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_external._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.92, ptr @.str.5, i32 940, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@fsi_clk_set_rate_external._entry_ptr.95 = internal global ptr @fsi_clk_set_rate_external._entry.94, section ".printk_index", align 4
@fsi_format_bus_setup.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.96, ptr @.str.5, ptr @.str.97, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_format_bus_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"24bit bus / package in front\0A\00", [34 x i8] zeroinitializer }, align 32
@fsi_format_bus_setup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.96, ptr @.str.5, ptr @.str.98, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"16bit bus / stream mode\0A\00", [39 x i8] zeroinitializer }, align 32
@fsi_format_bus_setup.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.96, ptr @.str.5, ptr @.str.99, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"24bit bus / package in back\0A\00", [35 x i8] zeroinitializer }, align 32
@fsi_fifo_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.100, ptr @.str.5, ptr @.str.101, i8 1, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsi_fifo_init\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fifo = %d words\0A\00", [47 x i8] zeroinitializer }, align 32
@fsi_fifo_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.100, ptr @.str.5, ptr @.str.102, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d channel %d store\0A\00", [43 x i8] zeroinitializer }, align 32
@fsi_stream_quit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"over_run = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsi_stream_quit\00", [16 x i8] zeroinitializer }, align 32
@fsi_stream_quit._entry_ptr = internal global ptr @fsi_stream_quit._entry, section ".printk_index", align 4
@fsi_stream_quit._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.5, i32 552, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"under_run = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@fsi_stream_quit._entry_ptr.107 = internal global ptr @fsi_stream_quit._entry.105, section ".printk_index", align 4
@fsi1_core = internal constant { %struct.fsi_core, [40 x i8] } { %struct.fsi_core { i32 1, i32 512, i32 516, i32 520, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@fsi2_core = internal constant { %struct.fsi_core, [40 x i8] } { %struct.fsi_core { i32 2, i32 500, i32 504, i32 508, i32 384, i32 416 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.112 = internal global [7 x i64] [i64 5, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.113 = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"fsi_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2091, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2093, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"fsi_of_match\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1900, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"fsi_pm_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2086, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"fsi_id_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1907, i32 40 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1929, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1930, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1941, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1948, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1958, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1964, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1975, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1988, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1998, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"fsi_soc_component\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1816, i32 46 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"fsi_soc_dai\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1781, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 2005, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1838, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1839, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1840, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1844, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1850, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [21 x i8] c"fsi_pio_push_handler\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1220, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"fsi_pio_pop_handler\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1226, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"fsi_dma_push_handler\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1421, i32 34 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1370, i32 54 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1370, i32 61 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1401, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1305, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1313, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1817, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"fsi_pcm_hardware\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1724, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1783, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant [12 x i8] c"fsi_dai_ops\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1710, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1799, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"fsi_dai_formats\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1702, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 751, i32 45 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 751, i32 54 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 753, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 757, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 764, i32 46 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 764, i32 55 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 766, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 770, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 777, i32 46 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 777, i32 55 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 779, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 783, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 964, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 972, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1015, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1021, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1025, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 854, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 876, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 901, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 905, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 926, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 936, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 940, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 640, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 645, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 651, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1446, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1469, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 549, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 552, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [10 x i8] c"fsi1_core\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1880, i32 30 }
@___asan_gen_.449 = private unnamed_addr constant [10 x i8] c"fsi2_core\00", align 1
@___asan_gen_.450 = private constant [22 x i8] c"../sound/soc/sh/fsi.c\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1889, i32 30 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_fsi_driver_exit, ptr @__initcall__kmod_snd_soc_fsi__256_2102_fsi_driver_init6, ptr @fsi_clk_init._entry, ptr @fsi_clk_init._entry.51, ptr @fsi_clk_init._entry.56, ptr @fsi_clk_init._entry.59, ptr @fsi_clk_init._entry.64, ptr @fsi_clk_init._entry.67, ptr @fsi_clk_init._entry_ptr, ptr @fsi_clk_init._entry_ptr.53, ptr @fsi_clk_init._entry_ptr.58, ptr @fsi_clk_init._entry_ptr.61, ptr @fsi_clk_init._entry_ptr.66, ptr @fsi_clk_init._entry_ptr.69, ptr @fsi_clk_set_ackbpf._entry, ptr @fsi_clk_set_ackbpf._entry.84, ptr @fsi_clk_set_ackbpf._entry.87, ptr @fsi_clk_set_ackbpf._entry_ptr, ptr @fsi_clk_set_ackbpf._entry_ptr.86, ptr @fsi_clk_set_ackbpf._entry_ptr.89, ptr @fsi_clk_set_rate_cpg._entry, ptr @fsi_clk_set_rate_cpg._entry.72, ptr @fsi_clk_set_rate_cpg._entry.75, ptr @fsi_clk_set_rate_cpg._entry.78, ptr @fsi_clk_set_rate_cpg._entry_ptr, ptr @fsi_clk_set_rate_cpg._entry_ptr.74, ptr @fsi_clk_set_rate_cpg._entry_ptr.77, ptr @fsi_clk_set_rate_cpg._entry_ptr.80, ptr @fsi_clk_set_rate_external._entry, ptr @fsi_clk_set_rate_external._entry.94, ptr @fsi_clk_set_rate_external._entry_ptr, ptr @fsi_clk_set_rate_external._entry_ptr.95, ptr @fsi_dma_probe._entry, ptr @fsi_dma_probe._entry_ptr, ptr @fsi_dma_transfer._entry, ptr @fsi_dma_transfer._entry.41, ptr @fsi_dma_transfer._entry_ptr, ptr @fsi_dma_transfer._entry_ptr.43, ptr @fsi_driver_exit, ptr @fsi_probe._entry, ptr @fsi_probe._entry.11, ptr @fsi_probe._entry.15, ptr @fsi_probe._entry.18, ptr @fsi_probe._entry.21, ptr @fsi_probe._entry.24, ptr @fsi_probe._entry.8, ptr @fsi_probe._entry_ptr, ptr @fsi_probe._entry_ptr.10, ptr @fsi_probe._entry_ptr.13, ptr @fsi_probe._entry_ptr.17, ptr @fsi_probe._entry_ptr.20, ptr @fsi_probe._entry_ptr.23, ptr @fsi_probe._entry_ptr.26, ptr @fsi_stream_quit._entry, ptr @fsi_stream_quit._entry.105, ptr @fsi_stream_quit._entry_ptr, ptr @fsi_stream_quit._entry_ptr.107, ptr @fsi_driver, ptr @.str, ptr @fsi_of_match, ptr @fsi_pm_ops, ptr @fsi_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @fsi_probe.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @fsi_soc_component, ptr @fsi_soc_dai, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fsi_pio_push_handler, ptr @fsi_pio_pop_handler, ptr @fsi_dma_push_handler, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @fsi_pcm_hardware, ptr @.str.45, ptr @fsi_dai_ops, ptr @.str.46, ptr @fsi_dai_formats, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @fsi1_core, ptr @fsi2_core], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_soc_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_pio_push_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_pio_pop_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dma_push_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dma_transfer._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_dai_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_cpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_cpg._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_cpg._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_cpg._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_ackbpf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_ackbpf._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_ackbpf._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_external._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_clk_set_rate_external._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_stream_quit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_stream_quit._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi1_core to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi2_core to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %info = alloca %struct.sh_fsi_platform_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #11
  %2 = getelementptr inbounds %struct.sh_fsi_port_info, ptr %info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sh_fsi_platform_info, ptr %info, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sh_fsi_platform_info, ptr %info, i32 0, i32 1, i32 1
  %5 = call ptr @memset(ptr %info, i32 0, i32 24)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  call fastcc void @fsi_of_parse(ptr noundef nonnull @.str.1, ptr noundef nonnull %1, ptr noundef nonnull %info, ptr noundef %dev)
  call fastcc void @fsi_of_parse(ptr noundef nonnull @.str.2, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %dev)
  br label %if.end13

if.else:                                          ; preds = %entry
  %id_entry4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %id_entry4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_entry4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.else.if.end_crit_edge, label %if.then6

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = inttoptr i32 %9 to ptr
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else.if.end_crit_edge
  %core.0 = phi ptr [ %10, %if.then6 ], [ null, %if.else.if.end_crit_edge ]
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data, align 8
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = call ptr @memcpy(ptr %info, ptr %12, i32 24)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge, %if.then
  %core.1 = phi ptr [ %call, %if.then ], [ %core.0, %if.then9 ], [ %core.0, %if.end.if.end13_crit_edge ]
  %tobool14.not = icmp eq ptr %core.1, null
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %tobool20.not = icmp eq ptr %call18, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp = icmp slt i32 %call19, 1
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #11
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %14 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call18, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call18, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  %call34 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %15, i32 noundef %add.i) #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %call.i, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %core43 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %core43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %core.1, ptr %core43, align 4
  %lock = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @fsi_probe.__key, i16 noundef signext 3) #11
  %fsia = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = ptrtoint ptr %fsia to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %fsia, align 4
  %23 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call18, align 4
  %phys = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys, align 4
  %master51 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %master51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %master51, align 4
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %info, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end42.if.end.i_crit_edge, label %if.then.i

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %spdif.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i = load i32, ptr %spdif.i, align 4
  %bf.set.i = or i32 %bf.load.i, 8192
  store i32 %bf.set.i, ptr %spdif.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end42.if.end.i_crit_edge
  %and2.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %clk_cpg.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %clk_cpg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load5.i = load i32, ptr %clk_cpg.i, align 4
  %bf.set7.i = or i32 %bf.load5.i, 16384
  store i32 %bf.set7.i, ptr %clk_cpg.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %and10.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.fsi_port_info_init.exit_crit_edge, label %if.then12.i

if.end8.i.fsi_port_info_init.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_port_info_init.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %enable_stream.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %enable_stream.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load13.i = load i32, ptr %enable_stream.i, align 4
  %bf.set15.i = or i32 %bf.load13.i, 4096
  store i32 %bf.set15.i, ptr %enable_stream.i, align 4
  br label %fsi_port_info_init.exit

fsi_port_info_init.exit:                          ; preds = %if.then12.i, %if.end8.i.fsi_port_info_init.exit_crit_edge
  %handler.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 3, i32 10
  %32 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fsi_pio_push_handler, ptr %handler.i, align 4
  %priv.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 3, i32 11
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %fsia, ptr %priv.i, align 4
  %handler2.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 4, i32 10
  %34 = ptrtoint ptr %handler2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fsi_pio_pop_handler, ptr %handler2.i, align 4
  %priv4.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 4, i32 11
  %35 = ptrtoint ptr %priv4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fsia, ptr %priv4.i, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i180 = icmp eq i32 %37, 0
  br i1 %tobool.not.i180, label %fsi_port_info_init.exit.fsi_handler_init.exit_crit_edge, label %if.then.i181

fsi_port_info_init.exit.fsi_handler_init.exit_crit_edge: ; preds = %fsi_port_info_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_handler_init.exit

if.then.i181:                                     ; preds = %fsi_port_info_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dma_id.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 3, i32 13
  %38 = ptrtoint ptr %dma_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma_id.i, align 4
  %39 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fsi_dma_push_handler, ptr %handler.i, align 4
  br label %fsi_handler_init.exit

fsi_handler_init.exit:                            ; preds = %if.then.i181, %fsi_port_info_init.exit.fsi_handler_init.exit_crit_edge
  %playback.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handler.i, align 4
  %probe.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %probe.i, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %fsi_handler_init.exit.cond.end6.i_crit_edge, label %cond.false3.i

fsi_handler_init.exit.cond.end6.i_crit_edge:      ; preds = %fsi_handler_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i

cond.false3.i:                                    ; preds = %fsi_handler_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i184 = tail call i32 %43(ptr noundef %fsia, ptr noundef nonnull %playback.i, ptr noundef %dev) #11
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.false3.i, %fsi_handler_init.exit.cond.end6.i_crit_edge
  %cond7.i = phi i32 [ %call.i184, %cond.false3.i ], [ 0, %fsi_handler_init.exit.cond.end6.i_crit_edge ]
  %capture.i = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %handler2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handler2.i, align 4
  %probe12.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %probe12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %probe12.i, align 4
  %tobool13.not.i = icmp eq ptr %47, null
  br i1 %tobool13.not.i, label %cond.end6.i.fsi_stream_probe.exit_crit_edge, label %cond.end21.i

cond.end6.i.fsi_stream_probe.exit_crit_edge:      ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_probe.exit

cond.end21.i:                                     ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call i32 %47(ptr noundef %fsia, ptr noundef nonnull %capture.i, ptr noundef %dev) #11
  %48 = tail call i32 @llvm.smin.i32(i32 %call18.i, i32 0)
  br label %fsi_stream_probe.exit

fsi_stream_probe.exit:                            ; preds = %cond.end21.i, %cond.end6.i.fsi_stream_probe.exit_crit_edge
  %49 = phi i32 [ %48, %cond.end21.i ], [ 0, %cond.end6.i.fsi_stream_probe.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond7.i)
  %cmp46.i = icmp slt i32 %cond7.i, 0
  %retval.0.i = select i1 %cmp46.i, i32 %cond7.i, i32 %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp56 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %fsi_stream_probe.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end62:                                         ; preds = %fsi_stream_probe.exit
  %fsib = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 64
  %52 = ptrtoint ptr %fsib to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %fsib, align 4
  %53 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call18, align 4
  %add = add i32 %54, 64
  %phys66 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %phys66 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %phys66, align 4
  %master67 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %master67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %master67, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %3, align 4
  %and.i185 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool.not.i186 = icmp eq i32 %and.i185, 0
  br i1 %tobool.not.i186, label %if.end62.if.end.i193_crit_edge, label %if.then.i190

if.end62.if.end.i193_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i193

if.then.i190:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %spdif.i187 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 7
  %59 = ptrtoint ptr %spdif.i187 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load.i188 = load i32, ptr %spdif.i187, align 4
  %bf.set.i189 = or i32 %bf.load.i188, 8192
  store i32 %bf.set.i189, ptr %spdif.i187, align 4
  br label %if.end.i193

if.end.i193:                                      ; preds = %if.then.i190, %if.end62.if.end.i193_crit_edge
  %and2.i191 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i191)
  %tobool3.not.i192 = icmp eq i32 %and2.i191, 0
  br i1 %tobool3.not.i192, label %if.end.i193.if.end8.i200_crit_edge, label %if.then4.i197

if.end.i193.if.end8.i200_crit_edge:               ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i200

if.then4.i197:                                    ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #13
  %clk_cpg.i194 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 7
  %60 = ptrtoint ptr %clk_cpg.i194 to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load5.i195 = load i32, ptr %clk_cpg.i194, align 4
  %bf.set7.i196 = or i32 %bf.load5.i195, 16384
  store i32 %bf.set7.i196, ptr %clk_cpg.i194, align 4
  br label %if.end8.i200

if.end8.i200:                                     ; preds = %if.then4.i197, %if.end.i193.if.end8.i200_crit_edge
  %and10.i198 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i198)
  %tobool11.not.i199 = icmp eq i32 %and10.i198, 0
  br i1 %tobool11.not.i199, label %if.end8.i200.fsi_port_info_init.exit205_crit_edge, label %if.then12.i204

if.end8.i200.fsi_port_info_init.exit205_crit_edge: ; preds = %if.end8.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_port_info_init.exit205

if.then12.i204:                                   ; preds = %if.end8.i200
  call void @__sanitizer_cov_trace_pc() #13
  %enable_stream.i201 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 7
  %61 = ptrtoint ptr %enable_stream.i201 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load13.i202 = load i32, ptr %enable_stream.i201, align 4
  %bf.set15.i203 = or i32 %bf.load13.i202, 4096
  store i32 %bf.set15.i203, ptr %enable_stream.i201, align 4
  br label %fsi_port_info_init.exit205

fsi_port_info_init.exit205:                       ; preds = %if.then12.i204, %if.end8.i200.fsi_port_info_init.exit205_crit_edge
  %handler.i206 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 3, i32 10
  %62 = ptrtoint ptr %handler.i206 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @fsi_pio_push_handler, ptr %handler.i206, align 4
  %priv.i207 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 3, i32 11
  %63 = ptrtoint ptr %priv.i207 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %fsib, ptr %priv.i207, align 4
  %handler2.i208 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 4, i32 10
  %64 = ptrtoint ptr %handler2.i208 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fsi_pio_pop_handler, ptr %handler2.i208, align 4
  %priv4.i209 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 4, i32 11
  %65 = ptrtoint ptr %priv4.i209 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %fsib, ptr %priv4.i209, align 4
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i211 = icmp eq i32 %67, 0
  br i1 %tobool.not.i211, label %fsi_port_info_init.exit205.fsi_handler_init.exit215_crit_edge, label %if.then.i213

fsi_port_info_init.exit205.fsi_handler_init.exit215_crit_edge: ; preds = %fsi_port_info_init.exit205
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_handler_init.exit215

if.then.i213:                                     ; preds = %fsi_port_info_init.exit205
  call void @__sanitizer_cov_trace_pc() #13
  %dma_id.i212 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 3, i32 13
  %68 = ptrtoint ptr %dma_id.i212 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dma_id.i212, align 4
  %69 = ptrtoint ptr %handler.i206 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @fsi_dma_push_handler, ptr %handler.i206, align 4
  br label %fsi_handler_init.exit215

fsi_handler_init.exit215:                         ; preds = %if.then.i213, %fsi_port_info_init.exit205.fsi_handler_init.exit215_crit_edge
  %playback.i216 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %handler.i206 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handler.i206, align 4
  %probe.i218 = getelementptr inbounds %struct.fsi_stream_handler, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %probe.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %probe.i218, align 4
  %tobool1.not.i219 = icmp eq ptr %73, null
  br i1 %tobool1.not.i219, label %fsi_handler_init.exit215.cond.end6.i224_crit_edge, label %cond.false3.i221

fsi_handler_init.exit215.cond.end6.i224_crit_edge: ; preds = %fsi_handler_init.exit215
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i224

cond.false3.i221:                                 ; preds = %fsi_handler_init.exit215
  call void @__sanitizer_cov_trace_pc() #13
  %call.i220 = tail call i32 %73(ptr noundef %fsib, ptr noundef nonnull %playback.i216, ptr noundef %dev) #11
  br label %cond.end6.i224

cond.end6.i224:                                   ; preds = %cond.false3.i221, %fsi_handler_init.exit215.cond.end6.i224_crit_edge
  %cond7.i222 = phi i32 [ %call.i220, %cond.false3.i221 ], [ 0, %fsi_handler_init.exit215.cond.end6.i224_crit_edge ]
  %capture.i223 = getelementptr inbounds %struct.fsi_master, ptr %call.i, i32 0, i32 2, i32 4
  %74 = ptrtoint ptr %handler2.i208 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %handler2.i208, align 4
  %probe12.i226 = getelementptr inbounds %struct.fsi_stream_handler, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %probe12.i226 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %probe12.i226, align 4
  %tobool13.not.i227 = icmp eq ptr %77, null
  br i1 %tobool13.not.i227, label %cond.end6.i224.fsi_stream_probe.exit236_crit_edge, label %cond.end21.i233

cond.end6.i224.fsi_stream_probe.exit236_crit_edge: ; preds = %cond.end6.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_probe.exit236

cond.end21.i233:                                  ; preds = %cond.end6.i224
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i230 = tail call i32 %77(ptr noundef %fsib, ptr noundef nonnull %capture.i223, ptr noundef %dev) #11
  %78 = tail call i32 @llvm.smin.i32(i32 %call18.i230, i32 0)
  br label %fsi_stream_probe.exit236

fsi_stream_probe.exit236:                         ; preds = %cond.end21.i233, %cond.end6.i224.fsi_stream_probe.exit236_crit_edge
  %79 = phi i32 [ %78, %cond.end21.i233 ], [ 0, %cond.end6.i224.fsi_stream_probe.exit236_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond7.i222)
  %cmp46.i234 = icmp slt i32 %cond7.i222, 0
  %retval.0.i235 = select i1 %cmp46.i234, i32 %cond7.i222, i32 %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i235)
  %cmp72 = icmp slt i32 %retval.0.i235, 0
  br i1 %cmp72, label %do.end76, label %if.end78

do.end76:                                         ; preds = %fsi_stream_probe.exit236
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %exit_fsia

if.end78:                                         ; preds = %fsi_stream_probe.exit236
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i237 = icmp eq ptr %82, null
  br i1 %tobool.not.i237, label %if.end.i238, label %if.end78.dev_name.exit_crit_edge

if.end78.dev_name.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i238:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i238, %if.end78.dev_name.exit_crit_edge
  %retval.0.i239 = phi ptr [ %84, %if.end.i238 ], [ %82, %if.end78.dev_name.exit_crit_edge ]
  %call.i240 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call19, ptr noundef nonnull @fsi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i239, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool85.not = icmp eq i32 %call.i240, 0
  br i1 %tobool85.not, label %if.end91, label %dev_name.exit.exit_fsib_crit_edge

dev_name.exit.exit_fsib_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fsib

if.end91:                                         ; preds = %dev_name.exit
  %call93 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsi_soc_component, ptr noundef nonnull @fsi_soc_dai, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end91.exit_fsib_crit_edge, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end91.exit_fsib_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fsib

exit_fsib:                                        ; preds = %if.end91.exit_fsib_crit_edge, %dev_name.exit.exit_fsib_crit_edge
  %.str.25.sink = phi ptr [ @.str.22, %dev_name.exit.exit_fsib_crit_edge ], [ @.str.25, %if.end91.exit_fsib_crit_edge ]
  %ret.0 = phi i32 [ %call.i240, %dev_name.exit.exit_fsib_crit_edge ], [ %call93, %if.end91.exit_fsib_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %85 = ptrtoint ptr %handler.i206 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handler.i206, align 4
  %remove.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i243 = icmp eq ptr %88, null
  br i1 %tobool1.not.i243, label %exit_fsib.cond.end6.i247_crit_edge, label %cond.false3.i245

exit_fsib.cond.end6.i247_crit_edge:               ; preds = %exit_fsib
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i247

cond.false3.i245:                                 ; preds = %exit_fsib
  call void @__sanitizer_cov_trace_pc() #13
  %call.i244 = tail call i32 %88(ptr noundef %fsib, ptr noundef nonnull %playback.i216) #11
  br label %cond.end6.i247

cond.end6.i247:                                   ; preds = %cond.false3.i245, %exit_fsib.cond.end6.i247_crit_edge
  %89 = ptrtoint ptr %handler2.i208 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handler2.i208, align 4
  %remove12.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %remove12.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %remove12.i, align 4
  %tobool13.not.i249 = icmp eq ptr %92, null
  br i1 %tobool13.not.i249, label %cond.end6.i247.exit_fsia_crit_edge, label %cond.false15.i

cond.end6.i247.exit_fsia_crit_edge:               ; preds = %cond.end6.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fsia

cond.false15.i:                                   ; preds = %cond.end6.i247
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i250 = tail call i32 %92(ptr noundef %fsib, ptr noundef nonnull %capture.i223) #11
  br label %exit_fsia

exit_fsia:                                        ; preds = %cond.false15.i, %cond.end6.i247.exit_fsia_crit_edge, %do.end76
  %ret.1 = phi i32 [ %retval.0.i235, %do.end76 ], [ %ret.0, %cond.end6.i247.exit_fsia_crit_edge ], [ %ret.0, %cond.false15.i ]
  %93 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handler.i, align 4
  %remove.i254 = getelementptr inbounds %struct.fsi_stream_handler, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %remove.i254 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %remove.i254, align 4
  %tobool1.not.i255 = icmp eq ptr %96, null
  br i1 %tobool1.not.i255, label %exit_fsia.cond.end6.i259_crit_edge, label %cond.false3.i257

exit_fsia.cond.end6.i259_crit_edge:               ; preds = %exit_fsia
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i259

cond.false3.i257:                                 ; preds = %exit_fsia
  call void @__sanitizer_cov_trace_pc() #13
  %call.i256 = tail call i32 %96(ptr noundef %fsia, ptr noundef nonnull %playback.i) #11
  br label %cond.end6.i259

cond.end6.i259:                                   ; preds = %cond.false3.i257, %exit_fsia.cond.end6.i259_crit_edge
  %97 = ptrtoint ptr %handler2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handler2.i, align 4
  %remove12.i261 = getelementptr inbounds %struct.fsi_stream_handler, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %remove12.i261 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %remove12.i261, align 4
  %tobool13.not.i262 = icmp eq ptr %100, null
  br i1 %tobool13.not.i262, label %cond.end6.i259.cleanup_crit_edge, label %cond.false15.i264

cond.end6.i259.cleanup_crit_edge:                 ; preds = %cond.end6.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false15.i264:                                ; preds = %cond.end6.i259
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i263 = tail call i32 %100(ptr noundef %fsia, ptr noundef nonnull %capture.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.false15.i264, %cond.end6.i259.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %do.end60, %do.end40, %if.end26.cleanup_crit_edge, %do.end24, %do.end
  %retval.0 = phi i32 [ -19, %do.end24 ], [ %retval.0.i, %do.end60 ], [ -6, %do.end40 ], [ -19, %do.end ], [ -12, %if.end26.cleanup_crit_edge ], [ %call93, %if.end91.cleanup_crit_edge ], [ %ret.1, %cond.end6.i259.cleanup_crit_edge ], [ %ret.1, %cond.false15.i264 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %fsia = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %handler.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 10
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 4
  %remove.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %entry.cond.end6.i_crit_edge, label %cond.false3.i

entry.cond.end6.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i

cond.false3.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %playback.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3
  %call.i = tail call i32 %5(ptr noundef %fsia, ptr noundef nonnull %playback.i) #11
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.false3.i, %entry.cond.end6.i_crit_edge
  %handler11.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 10
  %6 = ptrtoint ptr %handler11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler11.i, align 4
  %remove12.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %remove12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove12.i, align 4
  %tobool13.not.i = icmp eq ptr %9, null
  br i1 %tobool13.not.i, label %cond.end6.i.fsi_stream_remove.exit_crit_edge, label %cond.false15.i

cond.end6.i.fsi_stream_remove.exit_crit_edge:     ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_remove.exit

cond.false15.i:                                   ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %capture.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4
  %call18.i = tail call i32 %9(ptr noundef %fsia, ptr noundef nonnull %capture.i) #11
  br label %fsi_stream_remove.exit

fsi_stream_remove.exit:                           ; preds = %cond.false15.i, %cond.end6.i.fsi_stream_remove.exit_crit_edge
  %fsib = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2
  %handler.i7 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 10
  %10 = ptrtoint ptr %handler.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i7, align 4
  %remove.i8 = getelementptr inbounds %struct.fsi_stream_handler, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %remove.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remove.i8, align 4
  %tobool1.not.i9 = icmp eq ptr %13, null
  br i1 %tobool1.not.i9, label %fsi_stream_remove.exit.cond.end6.i13_crit_edge, label %cond.false3.i11

fsi_stream_remove.exit.cond.end6.i13_crit_edge:   ; preds = %fsi_stream_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i13

cond.false3.i11:                                  ; preds = %fsi_stream_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  %playback.i6 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3
  %call.i10 = tail call i32 %13(ptr noundef %fsib, ptr noundef nonnull %playback.i6) #11
  br label %cond.end6.i13

cond.end6.i13:                                    ; preds = %cond.false3.i11, %fsi_stream_remove.exit.cond.end6.i13_crit_edge
  %handler11.i14 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 10
  %14 = ptrtoint ptr %handler11.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler11.i14, align 4
  %remove12.i15 = getelementptr inbounds %struct.fsi_stream_handler, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %remove12.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remove12.i15, align 4
  %tobool13.not.i16 = icmp eq ptr %17, null
  br i1 %tobool13.not.i16, label %cond.end6.i13.fsi_stream_remove.exit19_crit_edge, label %cond.false15.i18

cond.end6.i13.fsi_stream_remove.exit19_crit_edge: ; preds = %cond.end6.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_remove.exit19

cond.false15.i18:                                 ; preds = %cond.end6.i13
  call void @__sanitizer_cov_trace_pc() #13
  %capture.i12 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4
  %call18.i17 = tail call i32 %17(ptr noundef %fsib, ptr noundef nonnull %capture.i12) #11
  br label %fsi_stream_remove.exit19

fsi_stream_remove.exit19:                         ; preds = %cond.false15.i18, %cond.end6.i13.fsi_stream_remove.exit19_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_of_parse(ptr noundef %name, ptr noundef %np, ptr nocapture noundef %info, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %prop = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %prop) #11
  %0 = call ptr @memset(ptr %prop, i32 255, i32 128)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prop, ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.27)
  %call3 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull %prop, ptr noundef null) #11
  %tobool.not = icmp ne ptr %call3, null
  %spec.select = zext i1 %tobool.not to i32
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prop, ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.28)
  %call3.1 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull %prop, ptr noundef null) #11
  %tobool.not.1 = icmp eq ptr %call3.1, null
  %or.1 = or i32 %spec.select, 2
  %flags.1.1 = select i1 %tobool.not.1, i32 %spec.select, i32 %or.1
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prop, ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.29)
  %call3.2 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull %prop, ptr noundef null) #11
  %tobool.not.2 = icmp eq ptr %call3.2, null
  %or.2 = or i32 %flags.1.1, 4
  %flags.1.2 = select i1 %tobool.not.2, i32 %flags.1.1, i32 %or.2
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %flags.1.2, ptr %info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_of_parse.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_of_parse, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !238

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_of_parse.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %prop) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %int_st.i = getelementptr inbounds %struct.fsi_core, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %int_st.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_st.i, align 4
  %lock.i.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !239
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 532
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  %and.i.i.i = and i32 %9, 16777199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i.i.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i) #11
  %call2.i39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr.i40 = getelementptr i8, ptr %11, i32 532
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #11, !srcloc !239
  %or.i.i = and i32 %12, 16777199
  %and.i.i.i42 = or i32 %or.i.i, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %and.i.i.i42) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i39) #11
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %playback = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 3
  %priv.i.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 3, i32 11
  %13 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  %tobool1.not.i = icmp eq ptr %playback, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %cond.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.false.i:                                     ; preds = %if.then
  %handler.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 3, i32 10
  %15 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handler.i, align 4
  %transfer.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %transfer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transfer.i, align 4
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %cond.false.i.if.end_crit_edge, label %cond.false4.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.false4.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 %18(ptr noundef nonnull %14, ptr noundef nonnull %playback) #11
  br label %if.end

if.end:                                           ; preds = %cond.false4.i, %cond.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %playback5 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 3
  %priv.i.i43 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 3, i32 11
  %19 = ptrtoint ptr %priv.i.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i43, align 4
  %tobool.not.i44 = icmp eq ptr %20, null
  %tobool1.not.i45 = icmp eq ptr %playback5, null
  %or.cond125 = select i1 %tobool.not.i44, i1 true, i1 %tobool1.not.i45
  br i1 %or.cond125, label %if.then4.if.end7_crit_edge, label %cond.false.i50

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.false.i50:                                   ; preds = %if.then4
  %handler.i47 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 3, i32 10
  %21 = ptrtoint ptr %handler.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i47, align 4
  %transfer.i48 = getelementptr inbounds %struct.fsi_stream_handler, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %transfer.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer.i48, align 4
  %tobool2.not.i49 = icmp eq ptr %24, null
  br i1 %tobool2.not.i49, label %cond.false.i50.if.end7_crit_edge, label %cond.false4.i52

cond.false.i50.if.end7_crit_edge:                 ; preds = %cond.false.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.false4.i52:                                  ; preds = %cond.false.i50
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i51 = tail call i32 %24(ptr noundef nonnull %20, ptr noundef nonnull %playback5) #11
  br label %if.end7

if.end7:                                          ; preds = %cond.false4.i52, %cond.false.i50.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and8 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  %capture = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 4
  %priv.i.i55 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 4, i32 11
  %25 = ptrtoint ptr %priv.i.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i.i55, align 4
  %tobool.not.i56 = icmp eq ptr %26, null
  %tobool1.not.i57 = icmp eq ptr %capture, null
  %or.cond126 = select i1 %tobool.not.i56, i1 true, i1 %tobool1.not.i57
  br i1 %or.cond126, label %if.then10.if.end13_crit_edge, label %cond.false.i62

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

cond.false.i62:                                   ; preds = %if.then10
  %handler.i59 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 4, i32 10
  %27 = ptrtoint ptr %handler.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handler.i59, align 4
  %transfer.i60 = getelementptr inbounds %struct.fsi_stream_handler, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %transfer.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer.i60, align 4
  %tobool2.not.i61 = icmp eq ptr %30, null
  br i1 %tobool2.not.i61, label %cond.false.i62.if.end13_crit_edge, label %cond.false4.i64

cond.false.i62.if.end13_crit_edge:                ; preds = %cond.false.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

cond.false4.i64:                                  ; preds = %cond.false.i62
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i63 = tail call i32 %30(ptr noundef nonnull %26, ptr noundef nonnull %capture) #11
  br label %if.end13

if.end13:                                         ; preds = %cond.false4.i64, %cond.false.i62.if.end13_crit_edge, %if.then10.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %and14 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  %capture18 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 4
  %priv.i.i67 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 4, i32 11
  %31 = ptrtoint ptr %priv.i.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i.i67, align 4
  %tobool.not.i68 = icmp eq ptr %32, null
  %tobool1.not.i69 = icmp eq ptr %capture18, null
  %or.cond127 = select i1 %tobool.not.i68, i1 true, i1 %tobool1.not.i69
  br i1 %or.cond127, label %if.then16.if.end20_crit_edge, label %cond.false.i74

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

cond.false.i74:                                   ; preds = %if.then16
  %handler.i71 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 4, i32 10
  %33 = ptrtoint ptr %handler.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handler.i71, align 4
  %transfer.i72 = getelementptr inbounds %struct.fsi_stream_handler, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %transfer.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer.i72, align 4
  %tobool2.not.i73 = icmp eq ptr %36, null
  br i1 %tobool2.not.i73, label %cond.false.i74.if.end20_crit_edge, label %cond.false4.i76

cond.false.i74.if.end20_crit_edge:                ; preds = %cond.false.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

cond.false4.i76:                                  ; preds = %cond.false.i74
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i75 = tail call i32 %36(ptr noundef nonnull %32, ptr noundef nonnull %capture18) #11
  br label %if.end20

if.end20:                                         ; preds = %cond.false4.i76, %cond.false.i74.if.end20_crit_edge, %if.then16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %fsia21 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1
  %37 = ptrtoint ptr %fsia21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fsia21, align 4
  %add.ptr.i79 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #11, !srcloc !239
  %40 = ptrtoint ptr %fsia21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fsia21, align 4
  %add.ptr2.i = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !239
  %and.i = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i80, label %if.end20.if.end.i81_crit_edge, label %if.then.i

if.end20.if.end.i81_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i81

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 3, i32 8
  %43 = ptrtoint ptr %oerr_num.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oerr_num.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %oerr_num.i, align 4
  br label %if.end.i81

if.end.i81:                                       ; preds = %if.then.i, %if.end20.if.end.i81_crit_edge
  %and4.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i81.if.end9.i_crit_edge, label %if.then6.i

if.end.i81.if.end9.i_crit_edge:                   ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 3, i32 7
  %45 = ptrtoint ptr %uerr_num.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %uerr_num.i, align 4
  %inc8.i = add i32 %46, 1
  store i32 %inc8.i, ptr %uerr_num.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i81.if.end9.i_crit_edge
  %and10.i = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num13.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 4, i32 8
  %47 = ptrtoint ptr %oerr_num13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oerr_num13.i, align 4
  %inc14.i = add i32 %48, 1
  store i32 %inc14.i, ptr %oerr_num13.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %and16.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.fsi_count_fifo_err.exit_crit_edge, label %if.then18.i

if.end15.i.fsi_count_fifo_err.exit_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_count_fifo_err.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num20.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 4, i32 7
  %49 = ptrtoint ptr %uerr_num20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uerr_num20.i, align 4
  %inc21.i = add i32 %50, 1
  store i32 %inc21.i, ptr %uerr_num20.i, align 4
  br label %fsi_count_fifo_err.exit

fsi_count_fifo_err.exit:                          ; preds = %if.then18.i, %if.end15.i.fsi_count_fifo_err.exit_crit_edge
  %51 = ptrtoint ptr %fsia21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fsia21, align 4
  %add.ptr24.i = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #11, !srcloc !240
  %53 = ptrtoint ptr %fsia21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fsia21, align 4
  %add.ptr26.i = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 0) #11, !srcloc !240
  %fsib22 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2
  %55 = ptrtoint ptr %fsib22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fsib22, align 4
  %add.ptr.i82 = getelementptr i8, ptr %56, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #11, !srcloc !239
  %58 = ptrtoint ptr %fsib22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fsib22, align 4
  %add.ptr2.i83 = getelementptr i8, ptr %59, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i83) #11, !srcloc !239
  %and.i84 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %fsi_count_fifo_err.exit.if.end.i91_crit_edge, label %if.then.i88

fsi_count_fifo_err.exit.if.end.i91_crit_edge:     ; preds = %fsi_count_fifo_err.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i91

if.then.i88:                                      ; preds = %fsi_count_fifo_err.exit
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num.i86 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 3, i32 8
  %61 = ptrtoint ptr %oerr_num.i86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oerr_num.i86, align 4
  %inc.i87 = add i32 %62, 1
  store i32 %inc.i87, ptr %oerr_num.i86, align 4
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.then.i88, %fsi_count_fifo_err.exit.if.end.i91_crit_edge
  %and4.i89 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i89)
  %tobool5.not.i90 = icmp eq i32 %and4.i89, 0
  br i1 %tobool5.not.i90, label %if.end.i91.if.end9.i97_crit_edge, label %if.then6.i94

if.end.i91.if.end9.i97_crit_edge:                 ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i97

if.then6.i94:                                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num.i92 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 3, i32 7
  %63 = ptrtoint ptr %uerr_num.i92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %uerr_num.i92, align 4
  %inc8.i93 = add i32 %64, 1
  store i32 %inc8.i93, ptr %uerr_num.i92, align 4
  br label %if.end9.i97

if.end9.i97:                                      ; preds = %if.then6.i94, %if.end.i91.if.end9.i97_crit_edge
  %and10.i95 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i95)
  %tobool11.not.i96 = icmp eq i32 %and10.i95, 0
  br i1 %tobool11.not.i96, label %if.end9.i97.if.end15.i103_crit_edge, label %if.then12.i100

if.end9.i97.if.end15.i103_crit_edge:              ; preds = %if.end9.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i103

if.then12.i100:                                   ; preds = %if.end9.i97
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num13.i98 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 4, i32 8
  %65 = ptrtoint ptr %oerr_num13.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %oerr_num13.i98, align 4
  %inc14.i99 = add i32 %66, 1
  store i32 %inc14.i99, ptr %oerr_num13.i98, align 4
  br label %if.end15.i103

if.end15.i103:                                    ; preds = %if.then12.i100, %if.end9.i97.if.end15.i103_crit_edge
  %and16.i101 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i101)
  %tobool17.not.i102 = icmp eq i32 %and16.i101, 0
  br i1 %tobool17.not.i102, label %if.end15.i103.fsi_count_fifo_err.exit109_crit_edge, label %if.then18.i106

if.end15.i103.fsi_count_fifo_err.exit109_crit_edge: ; preds = %if.end15.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_count_fifo_err.exit109

if.then18.i106:                                   ; preds = %if.end15.i103
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num20.i104 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 4, i32 7
  %67 = ptrtoint ptr %uerr_num20.i104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %uerr_num20.i104, align 4
  %inc21.i105 = add i32 %68, 1
  store i32 %inc21.i105, ptr %uerr_num20.i104, align 4
  br label %fsi_count_fifo_err.exit109

fsi_count_fifo_err.exit109:                       ; preds = %if.then18.i106, %if.end15.i103.fsi_count_fifo_err.exit109_crit_edge
  %69 = ptrtoint ptr %fsib22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fsib22, align 4
  %add.ptr24.i107 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i107, i32 0) #11, !srcloc !240
  %71 = ptrtoint ptr %fsib22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fsib22, align 4
  %add.ptr26.i108 = getelementptr i8, ptr %72, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i108, i32 0) #11, !srcloc !240
  %master.i.i = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %master.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %fsia21 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fsia21, align 4
  %cmp.i7.not.i.i = icmp eq ptr %76, %78
  %core.i110 = getelementptr inbounds %struct.fsi_master, ptr %74, i32 0, i32 3
  %79 = ptrtoint ptr %core.i110 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %core.i110, align 4
  %int_st.i111 = getelementptr inbounds %struct.fsi_core, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %int_st.i111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %int_st.i111, align 4
  %lock.i.i112 = getelementptr inbounds %struct.fsi_master, ptr %74, i32 0, i32 4
  %call2.i.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i112) #11
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %74, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %84, i32 %82
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i114) #11, !srcloc !239
  %neg.i.i.i = select i1 %cmp.i7.not.i.i, i32 16777198, i32 16772863
  %and.i.i.i115 = and i32 %85, %neg.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 %and.i.i.i115) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i112, i32 noundef %call2.i.i113) #11
  %master.i.i116 = getelementptr inbounds %struct.fsi_master, ptr %data, i32 0, i32 2, i32 2
  %86 = ptrtoint ptr %master.i.i116 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %master.i.i116, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %fsib22 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fsib22, align 4
  %cmp.i7.not.i.i117 = icmp eq ptr %89, %91
  %core.i118 = getelementptr inbounds %struct.fsi_master, ptr %87, i32 0, i32 3
  %92 = ptrtoint ptr %core.i118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %core.i118, align 4
  %int_st.i119 = getelementptr inbounds %struct.fsi_core, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %int_st.i119 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %int_st.i119, align 4
  %lock.i.i120 = getelementptr inbounds %struct.fsi_master, ptr %87, i32 0, i32 4
  %call2.i.i121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i120) #11
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %87, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %97, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #11, !srcloc !239
  %neg.i.i.i123 = select i1 %cmp.i7.not.i.i117, i32 16777198, i32 16772863
  %and.i.i.i124 = and i32 %98, %neg.i.i.i123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122, i32 %and.i.i.i124) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i120, i32 noundef %call2.i.i121) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_pio_push_init(ptr nocapture noundef readonly %fsi, ptr nocapture noundef writeonly %io) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_stream.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %0 = ptrtoint ptr %enable_stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %enable_stream.i, align 4
  %1 = lshr i32 %bf.load.i, 11
  %2 = and i32 %1, 2
  %3 = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_pio_push(ptr noundef %fsi, ptr noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buff_sample_capa = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %buff_sample_capa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buff_sample_capa, align 4
  %buff_sample_pos = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %buff_sample_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buff_sample_pos, align 4
  %fifo_sample_capa = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 1
  %4 = ptrtoint ptr %fifo_sample_capa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_sample_capa, align 4
  %playback.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not.i = icmp eq ptr %playback.i.i, %io
  %6 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsi, align 4
  br i1 %cmp.i.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  br label %fsi_get_current_fifo_samples.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !239
  br label %fsi_get_current_fifo_samples.exit

fsi_get_current_fifo_samples.exit:                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %8, %cond.true.i ], [ %9, %cond.false.i ]
  %sub = sub i32 %1, %3
  %shr.i = lshr i32 %cond.i, 8
  %and.i = and i32 %shr.i, 511
  %chan_num.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %10 = ptrtoint ptr %chan_num.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i = load i32, ptr %chan_num.i.i, align 4
  %bf.ashr.i.i = ashr i32 %bf.load.i.i, 16
  %mul.i.i = mul nsw i32 %bf.ashr.i.i, %and.i
  %sub1 = sub i32 %5, %mul.i.i
  %11 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub1)
  %call2 = tail call fastcc i32 @fsi_pio_transfer(ptr noundef %fsi, ptr noundef %io, ptr noundef nonnull @fsi_pio_push16, ptr noundef nonnull @fsi_pio_push32, i32 noundef %11)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_pio_start_stop(ptr noundef readonly %fsi, ptr noundef readnone %io, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsi, align 4
  %cmp.i = icmp eq ptr %3, %5
  %cond = select i1 %cmp.i, i32 1, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %playback.i.i.i17 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not.i.i18 = icmp eq ptr %playback.i.i.i17, %io
  %cond.i.i21 = select i1 %cmp.i.not.i.i18, i32 0, i32 4
  %cond4.i.i22 = select i1 %cmp.i.not.i.i18, i32 8, i32 12
  %shift.0.i.i23 = select i1 %cmp.i, i32 %cond.i.i21, i32 %cond4.i.i22
  %shl.i24 = shl nuw nsw i32 1, %shift.0.i.i23
  %core.i25 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %core.i25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i25, align 4
  %imsk.i26 = getelementptr inbounds %struct.fsi_core, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %imsk.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imsk.i26, align 4
  %lock.i.i27 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call2.i.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i27) #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #11
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.masked.i = and i32 %12, 16777215
  %and.i.i.i.i = or i32 %.masked.i, %shl.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %and.i.i.i.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i27, i32 noundef %call2.i.i28) #11
  %13 = ptrtoint ptr %core.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i25, align 4
  %iemsk.i = getelementptr inbounds %struct.fsi_core, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %iemsk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iemsk.i, align 4
  %call2.i11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i27) #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #11, !srcloc !239
  %.masked17.i = and i32 %19, 16777215
  %and.i.i.i16.i = or i32 %.masked17.i, %shl.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %and.i.i.i16.i) #11, !srcloc !240
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i = xor i32 %shl.i24, 16777215
  %and.i.i.i.i30 = and i32 %12, %and.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %and.i.i.i.i30) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i27, i32 noundef %call2.i.i28) #11
  %20 = ptrtoint ptr %core.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i25, align 4
  %iemsk.i31 = getelementptr inbounds %struct.fsi_core, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %iemsk.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iemsk.i31, align 4
  %call2.i9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i27) #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #11, !srcloc !239
  %and.i.i.i13.i = and i32 %26, %and.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %and.i.i.i13.i) #11, !srcloc !240
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2.i9.i.sink = phi i32 [ %call2.i9.i, %if.else ], [ %call2.i11.i, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i27, i32 noundef %call2.i9.i.sink) #11
  %clk_master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %27 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %clk_master.i, align 4
  %28 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not = icmp eq i32 %28, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool2.not, i32 0, i32 %cond
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 528
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  %and.i.i = xor i32 %cond, 16777215
  %and.i.i.masked = and i32 %and.i.i, %31
  %and.i.i.i32 = or i32 %and.i.i.masked, %spec.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i.i.i32) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_pio_transfer(ptr noundef %fsi, ptr nocapture noundef %io, ptr nocapture noundef readonly %run16, ptr nocapture noundef readonly %run32, i32 noundef %samples) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i.i, align 4
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fsi_stream_is_working.exit.thread, label %fsi_stream_is_working.exit

fsi_stream_is_working.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br label %cleanup

fsi_stream_is_working.exit:                       ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime.i, align 4
  %tobool7.i.not = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool7.i.not, label %fsi_stream_is_working.exit.cleanup_crit_edge, label %if.end

fsi_stream_is_working.exit.cleanup_crit_edge:     ; preds = %fsi_stream_is_working.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %fsi_stream_is_working.exit
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_area.i, align 4
  %buff_sample_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 3
  %12 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buff_sample_pos.i, align 4
  %sample_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 22
  %14 = ptrtoint ptr %sample_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sample_bits.i.i, align 4
  %mul.i.i = mul i32 %15, %13
  %div1.i.i = lshr i32 %mul.i.i, 3
  %add.ptr.i = getelementptr i8, ptr %11, i32 %div1.i.i
  %sample_width = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 6
  %16 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample_width, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 4, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %run32.sink = phi ptr [ %run32, %sw.bb2 ], [ %run16, %if.end.sw.epilog_crit_edge ]
  tail call void %run32.sink(ptr noundef %fsi, ptr noundef %add.ptr.i, i32 noundef %samples) #11
  %19 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buff_sample_pos.i, align 4
  %add.i = add i32 %20, %samples
  store i32 %add.i, ptr %buff_sample_pos.i, align 4
  %period_samples.i = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 4
  %21 = ptrtoint ptr %period_samples.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period_samples.i, align 4
  %period_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 5
  %23 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period_pos.i, align 4
  %add2.i = add i32 %24, 1
  %mul.i = mul i32 %add2.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul.i)
  %cmp.not.i = icmp slt i32 %add.i, %mul.i
  br i1 %cmp.not.i, label %sw.epilog.cleanup_crit_edge, label %if.then.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime4.i, align 4
  %29 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add2.i, ptr %period_pos.i, align 4
  %periods.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 17
  %30 = ptrtoint ptr %periods.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %periods.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %31)
  %cmp7.not.i = icmp ult i32 %add2.i, %31
  br i1 %cmp7.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then8.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %buff_sample_pos.i, align 4
  %33 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %period_pos.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  tail call void @snd_pcm_period_elapsed(ptr noundef %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fsi_stream_is_working.exit.cleanup_crit_edge, %fsi_stream_is_working.exit.thread
  %retval.0 = phi i32 [ -22, %fsi_stream_is_working.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %fsi_stream_is_working.exit.thread ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_pio_push16(ptr nocapture noundef readonly %fsi, ptr nocapture noundef readonly %_buf, i32 noundef %samples) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_stream.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %0 = ptrtoint ptr %enable_stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %enable_stream.i, align 4
  %1 = and i32 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond2.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %div = sdiv i32 %samples, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %samples)
  %cmp22 = icmp sgt i32 %samples, 1
  br i1 %cmp22, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond2.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp324 = icmp sgt i32 %samples, 0
  br i1 %cmp324, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.if.end_crit_edge

for.cond2.preheader.if.end_crit_edge:             ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %arrayidx = getelementptr i32, ptr %_buf, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %5, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and.i) #11, !srcloc !240
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.125 = phi i32 [ %inc9, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %6 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsi, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 36
  %add.ptr7 = getelementptr i16, ptr %_buf, i32 %i.125
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr7, align 2
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %shl) #11, !srcloc !240
  %inc9 = add nuw nsw i32 %i.125, 1
  %exitcond27.not = icmp eq i32 %inc9, %samples
  br i1 %exitcond27.not, label %for.body4.if.end_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body4.if.end_crit_edge, %for.body.if.end_crit_edge, %for.cond2.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_pio_push32(ptr nocapture noundef readonly %fsi, ptr nocapture noundef readonly %_buf, i32 noundef %samples) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp4 = icmp sgt i32 %samples, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %add.ptr1 = getelementptr i32, ptr %_buf, i32 %i.05
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %and.i = and i32 %3, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and.i) #11, !srcloc !240
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %samples
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsi_pio_pop_init(ptr nocapture noundef readnone %fsi, ptr nocapture noundef writeonly %io) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_option = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %bus_option to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bus_option, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_pio_pop(ptr noundef %fsi, ptr noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %playback.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not.i = icmp eq ptr %playback.i.i, %io
  %0 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi, align 4
  br i1 %cmp.i.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  br label %fsi_get_current_fifo_samples.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3.i = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !239
  br label %fsi_get_current_fifo_samples.exit

fsi_get_current_fifo_samples.exit:                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %2, %cond.true.i ], [ %3, %cond.false.i ]
  %shr.i = lshr i32 %cond.i, 8
  %and.i = and i32 %shr.i, 511
  %chan_num.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %4 = ptrtoint ptr %chan_num.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %chan_num.i.i, align 4
  %bf.ashr.i.i = ashr i32 %bf.load.i.i, 16
  %mul.i.i = mul nsw i32 %bf.ashr.i.i, %and.i
  %buff_sample_capa = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 2
  %5 = ptrtoint ptr %buff_sample_capa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buff_sample_capa, align 4
  %buff_sample_pos = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 3
  %7 = ptrtoint ptr %buff_sample_pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buff_sample_pos, align 4
  %sub = sub i32 %6, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %mul.i.i, i32 %sub)
  %call1 = tail call fastcc i32 @fsi_pio_transfer(ptr noundef %fsi, ptr noundef %io, ptr noundef nonnull @fsi_pio_pop16, ptr noundef nonnull @fsi_pio_pop32, i32 noundef %9)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_pio_pop16(ptr nocapture noundef readonly %fsi, ptr nocapture noundef writeonly %_buf, i32 noundef %samples) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp4 = icmp sgt i32 %samples, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %shr = lshr i32 %2, 8
  %conv = trunc i32 %shr to i16
  %add.ptr1 = getelementptr i16, ptr %_buf, i32 %i.05
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %add.ptr1, align 2
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %samples
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_pio_pop32(ptr nocapture noundef readonly %fsi, ptr nocapture noundef writeonly %_buf, i32 noundef %samples) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp4 = icmp sgt i32 %samples, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %add.ptr1 = getelementptr i32, ptr %_buf, i32 %i.05
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr1, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %samples
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsi_dma_init(ptr nocapture noundef readnone %fsi, ptr nocapture noundef writeonly %io) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_option = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %bus_option to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %bus_option, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dma_probe(ptr noundef %fsi, ptr noundef %io, ptr noundef %dev) #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not = icmp eq ptr %playback.i, %io
  %cond = select i1 %cmp.i.not, ptr @.str.34, ptr @.str.35
  %call.i = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %cond) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %chan = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 12
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spec.select.i, ptr %chan, align 4
  %tobool3.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool3.not, label %entry.if.then18_crit_edge, label %if.then

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #11
  %1 = getelementptr inbounds i8, ptr %cfg, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 44)
  %phys = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 1
  %3 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys, align 4
  br i1 %cmp.i.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %4, 36
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add7 = add i32 %4, 32
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add7, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %src_addr_width.sink = phi ptr [ %src_addr_width, %if.else ], [ %dst_addr_width, %if.then5 ]
  %storemerge = phi i32 [ 2, %if.else ], [ 1, %if.then5 ]
  %7 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %src_addr_width.sink, align 4
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %cfg, align 4
  %9 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec.select.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.if.end15.thread49_crit_edge, label %dmaengine_slave_config.exit

if.end.if.end15.thread49_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.thread49

dmaengine_slave_config.exit:                      ; preds = %if.end
  %call.i41 = call i32 %12(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp = icmp slt i32 %call.i41, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.if.end15.thread49_crit_edge, label %if.end15

dmaengine_slave_config.exit.if.end15.thread49_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.thread49

if.end15.thread49:                                ; preds = %dmaengine_slave_config.exit.if.end15.thread49_crit_edge, %if.end.if.end15.thread49_crit_edge
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  call void @dma_release_channel(ptr noundef %14) #11
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %chan, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  br label %if.then18

if.end15:                                         ; preds = %dmaengine_slave_config.exit
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.pr = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  %tobool17.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool17.not, label %if.end15.if.then18_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %if.end15.if.then18_crit_edge, %if.end15.thread49, %entry.if.then18_crit_edge
  br i1 %cmp.i.not, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %handler = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3, i32 10
  %17 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fsi_pio_push_handler, ptr %handler, align 4
  br label %do.end

if.else21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %handler22 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 4, i32 10
  %18 = ptrtoint ptr %handler22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fsi_pio_pop_handler, ptr %handler22, align 4
  br label %do.end

do.end:                                           ; preds = %if.else21, %if.then20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  %handler.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i, align 4
  %probe.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %probe.i, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %do.end.cond.end6.i_crit_edge, label %cond.false3.i

do.end.cond.end6.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6.i

cond.false3.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i43 = call i32 %22(ptr noundef %fsi, ptr noundef nonnull %playback.i, ptr noundef %dev) #11
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.false3.i, %do.end.cond.end6.i_crit_edge
  %cond7.i = phi i32 [ %call.i43, %cond.false3.i ], [ 0, %do.end.cond.end6.i_crit_edge ]
  %handler11.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 4, i32 10
  %23 = ptrtoint ptr %handler11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler11.i, align 4
  %probe12.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %probe12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %probe12.i, align 4
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %cond.end6.i.fsi_stream_probe.exit_crit_edge, label %cond.end21.i

cond.end6.i.fsi_stream_probe.exit_crit_edge:      ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_probe.exit

cond.end21.i:                                     ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %capture.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 4
  %call18.i = call i32 %26(ptr noundef %fsi, ptr noundef nonnull %capture.i, ptr noundef %dev) #11
  %27 = call i32 @llvm.smin.i32(i32 %call18.i, i32 0)
  br label %fsi_stream_probe.exit

fsi_stream_probe.exit:                            ; preds = %cond.end21.i, %cond.end6.i.fsi_stream_probe.exit_crit_edge
  %28 = phi i32 [ %27, %cond.end21.i ], [ 0, %cond.end6.i.fsi_stream_probe.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond7.i)
  %cmp46.i = icmp slt i32 %cond7.i, 0
  %retval.0.i45 = select i1 %cmp46.i, i32 %cond7.i, i32 %28
  br label %cleanup

cleanup:                                          ; preds = %fsi_stream_probe.exit, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i45, %fsi_stream_probe.exit ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dma_transfer(ptr noundef readonly %fsi, ptr noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not = icmp eq ptr %playback.i, %io
  %. = select i1 %cmp.i.not, i32 1, i32 2
  %chan = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 12
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 51
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %17, %15
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 16
  %18 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size.i, align 4
  %mul.i.i46 = mul i32 %19, %17
  %div1.i.i47 = lshr i32 %mul.i.i46, 3
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 40
  %22 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %23(ptr noundef nonnull %9, i32 noundef %13, i32 noundef %div1.i.i, i32 noundef %div1.i.i47, i32 noundef %., i32 noundef 3) #11
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, label %if.end9

dmaengine_prep_dma_cyclic.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_cyclic.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.39) #14
  br label %fsi_dma_transfer_err

if.end9:                                          ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fsi_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %io, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_submit.i, align 4
  %call.i48 = tail call i32 %29(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp = icmp slt i32 %call.i48, 0
  br i1 %cmp, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev15 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.42) #14
  br label %fsi_dma_transfer_err

if.end16:                                         ; preds = %if.end9
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 50
  %36 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %37(ptr noundef %33) #11
  br i1 %cmp.i.not, label %if.end16.fsi_dma_transfer_err_crit_edge, label %if.then19

if.end16.fsi_dma_transfer_err_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_dma_transfer_err

if.then19:                                        ; preds = %if.end16
  %38 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %and = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then19.fsi_dma_transfer_err_crit_edge, label %if.then22

if.then19.fsi_dma_transfer_err_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_dma_transfer_err

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fsi, align 4
  %add.ptr24 = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !239
  %or.i = and i32 %43, 16777214
  %and.i.i = or i32 %or.i, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %and.i.i) #11, !srcloc !240
  %44 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fsi, align 4
  %add.ptr26 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #11, !srcloc !240
  br label %fsi_dma_transfer_err

fsi_dma_transfer_err:                             ; preds = %if.then22, %if.then19.fsi_dma_transfer_err_crit_edge, %if.end16.fsi_dma_transfer_err_crit_edge, %do.end14, %do.end
  %ret.0 = phi i32 [ -5, %do.end14 ], [ -5, %do.end ], [ 0, %if.then19.fsi_dma_transfer_err_crit_edge ], [ 0, %if.then22 ], [ 0, %if.end16.fsi_dma_transfer_err_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dma_remove(ptr noundef %fsi, ptr noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %entry.cond.end6_crit_edge, label %cond.false

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6

cond.false:                                       ; preds = %entry
  %handler = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 10
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 4
  %start_stop = getelementptr inbounds %struct.fsi_stream_handler, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %start_stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_stop, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %cond.false.cond.end6_crit_edge, label %cond.false3

cond.false.cond.end6_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end6

cond.false3:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %fsi, ptr noundef nonnull %io, i32 noundef 0) #11
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false3, %cond.false.cond.end6_crit_edge, %entry.cond.end6_crit_edge
  %chan = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 12
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %cond.end6.if.end_crit_edge, label %if.then

cond.end6.if.end_crit_edge:                       ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end6.if.end_crit_edge
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dma_push_start_stop(ptr nocapture noundef readonly %fsi, ptr nocapture noundef readonly %io, i32 noundef %start) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsi, align 4
  %cmp.i.not = icmp eq ptr %3, %5
  %cond = select i1 %cmp.i.not, i32 1, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool2.not = icmp eq i32 %start, 0
  %not.tobool2.not = xor i1 %tobool2.not, true
  %cond3 = zext i1 %not.tobool2.not to i32
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %and.i = and i32 %6, 16777214
  %or.i = or i32 %and.i, %cond3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or.i) #11, !srcloc !240
  %chan = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 12
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_all.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %12(ptr noundef %8) #11
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %entry.dmaengine_terminate_all.exit_crit_edge
  %clk_master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %13 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %clk_master.i, align 4
  %14 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %dmaengine_terminate_all.exit.if.end_crit_edge, label %if.then

dmaengine_terminate_all.exit.if.end_crit_edge:    ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool2.not, i32 0, i32 %cond
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 528
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  %and.i.i15 = xor i32 %cond, 16777215
  %and.i.i15.masked = and i32 %and.i.i15, %17
  %and.i.i.i = or i32 %and.i.i15.masked, %spec.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i.i.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %dmaengine_terminate_all.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_dma_complete(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.fsi_stream, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %period_samples = getelementptr inbounds %struct.fsi_stream, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %period_samples to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_samples, align 4
  %buff_sample_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buff_sample_pos.i, align 4
  %add.i = add i32 %5, %3
  store i32 %add.i, ptr %buff_sample_pos.i, align 4
  %period_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_pos.i, align 4
  %add2.i = add i32 %7, 1
  %mul.i = mul i32 %add2.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul.i)
  %cmp.not.i = icmp slt i32 %add.i, %mul.i
  br i1 %cmp.not.i, label %entry.fsi_pointer_update.exit_crit_edge, label %if.then.i

entry.fsi_pointer_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_pointer_update.exit

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime4.i, align 4
  %12 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add2.i, ptr %period_pos.i, align 4
  %periods.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 17
  %13 = ptrtoint ptr %periods.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %periods.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %14)
  %cmp7.not.i = icmp ult i32 %add2.i, %14
  br i1 %cmp7.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then8.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buff_sample_pos.i, align 4
  %16 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %period_pos.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  tail call void @snd_pcm_period_elapsed(ptr noundef %9) #11
  br label %fsi_pointer_update.exit

fsi_pointer_update.exit:                          ; preds = %if.end.i, %entry.fsi_pointer_update.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr2.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !239
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %fsi_pointer_update.exit.if.end.i4_crit_edge, label %if.then.i3

fsi_pointer_update.exit.if.end.i4_crit_edge:      ; preds = %fsi_pointer_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i4

if.then.i3:                                       ; preds = %fsi_pointer_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num.i = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %oerr_num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oerr_num.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %oerr_num.i, align 4
  br label %if.end.i4

if.end.i4:                                        ; preds = %if.then.i3, %fsi_pointer_update.exit.if.end.i4_crit_edge
  %and4.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i4.if.end9.i_crit_edge, label %if.then6.i

if.end.i4.if.end9.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num.i = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 3, i32 7
  %25 = ptrtoint ptr %uerr_num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uerr_num.i, align 4
  %inc8.i = add i32 %26, 1
  store i32 %inc8.i, ptr %uerr_num.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i4.if.end9.i_crit_edge
  %and10.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end15.i_crit_edge, label %if.then12.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %oerr_num13.i = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %oerr_num13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oerr_num13.i, align 4
  %inc14.i = add i32 %28, 1
  store i32 %inc14.i, ptr %oerr_num13.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end15.i_crit_edge
  %and16.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.fsi_count_fifo_err.exit_crit_edge, label %if.then18.i

if.end15.i.fsi_count_fifo_err.exit_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_count_fifo_err.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %uerr_num20.i = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 4, i32 7
  %29 = ptrtoint ptr %uerr_num20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uerr_num20.i, align 4
  %inc21.i = add i32 %30, 1
  store i32 %inc21.i, ptr %uerr_num20.i, align 4
  br label %fsi_count_fifo_err.exit

fsi_count_fifo_err.exit:                          ; preds = %if.then18.i, %if.end15.i.fsi_count_fifo_err.exit_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr24.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #11, !srcloc !240
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr26.i = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 0) #11, !srcloc !240
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %snd_card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %7, i32 noundef 32768, i32 noundef 32768) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @fsi_pcm_hardware) #11
  %call2 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #11
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %fsia.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 1
  %fsib.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr %fsia.i.i, ptr %fsib.i.i
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 0
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 3
  %capture.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 4
  %cond.i = select i1 %cmp.i.not.i, ptr %playback.i, ptr %capture.i
  %buff_sample_pos = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 3
  %14 = ptrtoint ptr %buff_sample_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buff_sample_pos, align 4
  %chan_num.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %chan_num.i, align 4
  %bf.ashr.i = ashr i32 %bf.load.i, 16
  %div.i = sdiv i32 %15, %bf.ashr.i
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %fsia.i = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1
  %fsib.i = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %fsia.i, ptr %fsib.i
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %clk_master = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %clk_master to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %clk_master, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %clk_master, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %and1 = lshr i32 %fmt, 8
  %9 = and i32 %and1, 15
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %9, label %sw.default28 [
    i32 2, label %sw.bb2
    i32 3, label %sw.bb9
    i32 4, label %sw.bb18
  ]

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bit_clk_inv = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %11 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load3 = load i32, ptr %bit_clk_inv, align 4
  %bf.clear7 = and i32 %bf.load3, -3073
  %bf.set8 = or i32 %bf.clear7, 1024
  store i32 %bf.set8, ptr %bit_clk_inv, align 4
  br label %sw.epilog37

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bit_clk_inv10 = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %12 = ptrtoint ptr %bit_clk_inv10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load11 = load i32, ptr %bit_clk_inv10, align 4
  %bf.set13 = and i32 %bf.load11, -3073
  %bf.clear16 = or i32 %bf.set13, 2048
  store i32 %bf.clear16, ptr %bit_clk_inv10, align 4
  br label %sw.epilog37

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bit_clk_inv19 = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %bit_clk_inv19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load20 = load i32, ptr %bit_clk_inv19, align 4
  %bf.set26 = or i32 %bf.load20, 3072
  store i32 %bf.set26, ptr %bit_clk_inv19, align 4
  br label %sw.epilog37

sw.default28:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bit_clk_inv29 = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %14 = ptrtoint ptr %bit_clk_inv29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load30 = load i32, ptr %bit_clk_inv29, align 4
  %bf.clear35 = and i32 %bf.load30, -3073
  store i32 %bf.clear35, ptr %bit_clk_inv29, align 4
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.default28, %sw.bb18, %sw.bb9, %sw.bb2
  %clk_master.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 7
  %15 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %clk_master.i, align 4
  %16 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %sw.epilog37.if.end46_crit_edge, label %if.then

sw.epilog37.if.end46_crit_edge:                   ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then:                                          ; preds = %sw.epilog37
  %17 = and i32 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fsi_clk_init(ptr noundef %19, ptr noundef %retval.0.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @fsi_clk_set_rate_cpg)
  br label %if.end46

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fsi_clk_init(ptr noundef %19, ptr noundef %retval.0.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @fsi_clk_set_rate_external)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then42, %sw.epilog37.if.end46_crit_edge
  %20 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i75 = load i32, ptr %clk_master.i, align 4
  %21 = and i32 %bf.load.i75, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool48.not = icmp eq i32 %21, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.end46
  %master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i.i, align 4
  %core.i.i = getelementptr inbounds %struct.fsi_master, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i78 = icmp slt i32 %27, 2
  br i1 %cmp.i78, label %if.then49.cleanup_crit_edge, label %if.then49.cleanup.sink.split_crit_edge

if.then49.cleanup.sink.split_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else51:                                        ; preds = %if.end46
  %and52 = and i32 %fmt, 15
  %28 = zext i32 %and52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %and52, label %if.else51.cleanup_crit_edge [
    i32 1, label %if.else51.cleanup.sink.split_crit_edge
    i32 3, label %sw.bb2.i
  ]

if.else51.cleanup.sink.split_crit_edge:           ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2.i, %if.else51.cleanup.sink.split_crit_edge, %if.then49.cleanup.sink.split_crit_edge
  %.sink.i.sink = phi i32 [ 288, %if.then49.cleanup.sink.split_crit_edge ], [ 32, %sw.bb2.i ], [ 48, %if.else51.cleanup.sink.split_crit_edge ]
  %fmt3.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i, i32 0, i32 6
  %29 = ptrtoint ptr %fmt3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i.sink, ptr %fmt3.i, align 4
  %bf.clear.i83 = and i32 %bf.load.i75, 65535
  %bf.set.i84 = or i32 %bf.clear.i83, 131072
  %30 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set.i84, ptr %clk_master.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else51.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then49.cleanup_crit_edge ], [ -22, %if.else51.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %fsia.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 1
  %fsib.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr %fsia.i.i, ptr %fsib.i.i
  %rate1.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rate1.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fsi_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %fsia.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 1
  %fsib.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr %fsia.i.i, ptr %fsib.i.i
  %rate1.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rate1.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %dai) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %fsia.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 1
  %fsib.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr %fsia.i.i, ptr %fsib.i.i
  %clk_master.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %clk_master.i, align 4
  %13 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %rate1.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rate1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_dai_trigger(ptr noundef %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %fsia.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 1
  %fsib.i.i = getelementptr inbounds %struct.fsi_master, ptr %9, i32 0, i32 2
  %retval.0.i.i = select i1 %cmp.i.i, ptr %fsia.i.i, ptr %fsib.i.i
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 0
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 3
  %capture.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 4
  %cond.i = select i1 %cmp.i.not.i, ptr %playback.i, ptr %capture.i
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.then21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %15 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1.i, align 4
  %master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master.i.i, align 4
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %18, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %19 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %substream, ptr %cond.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %20 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buffer_size.i, align 4
  %chan_num.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %chan_num.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i.i = load i32, ptr %chan_num.i.i, align 4
  %bf.ashr.i.i = ashr i32 %bf.load.i.i, 16
  %mul.i.i = mul i32 %bf.ashr.i.i, %21
  %buff_sample_capa.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 2
  %23 = ptrtoint ptr %buff_sample_capa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i.i, ptr %buff_sample_capa.i, align 4
  %buff_sample_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 3
  %24 = ptrtoint ptr %buff_sample_pos.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %buff_sample_pos.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 16
  %25 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_size.i, align 4
  %bf.load.i40.i = load i32, ptr %chan_num.i.i, align 4
  %bf.ashr.i41.i = ashr i32 %bf.load.i40.i, 16
  %mul.i42.i = mul i32 %bf.ashr.i41.i, %26
  %period_samples.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 4
  %27 = ptrtoint ptr %period_samples.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i42.i, ptr %period_samples.i, align 4
  %period_pos.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 5
  %28 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %period_pos.i, align 4
  %sample_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 22
  %29 = ptrtoint ptr %sample_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sample_bits.i.i, align 4
  %div1.i.i = lshr i32 %30, 3
  %sample_width.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 6
  %31 = ptrtoint ptr %sample_width.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div1.i.i, ptr %sample_width.i, align 4
  %bus_option.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 9
  %32 = ptrtoint ptr %bus_option.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bus_option.i, align 4
  %oerr_num.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 8
  %33 = ptrtoint ptr %oerr_num.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %oerr_num.i, align 4
  %uerr_num.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 7
  %34 = ptrtoint ptr %uerr_num.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %uerr_num.i, align 4
  %tobool.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool.not.i, label %sw.bb.fsi_stream_init.exit_crit_edge, label %cond.false.i

sw.bb.fsi_stream_init.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_init.exit

cond.false.i:                                     ; preds = %sw.bb
  %handler.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 10
  %35 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool11.not.i = icmp eq ptr %38, null
  br i1 %tobool11.not.i, label %cond.false.i.fsi_stream_init.exit_crit_edge, label %cond.false13.i

cond.false.i.fsi_stream_init.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_init.exit

cond.false13.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call i32 %38(ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i) #11
  br label %fsi_stream_init.exit

fsi_stream_init.exit:                             ; preds = %cond.false13.i, %cond.false.i.fsi_stream_init.exit_crit_edge, %sw.bb.fsi_stream_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #11
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %call2 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %retval.0.i.i, ptr noundef %cond.i, ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp ne i32 %call2, 0
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.not.i
  %call2.mux = select i1 %tobool3.not, i32 %call2, i32 -19
  br i1 %brmerge, label %fsi_stream_init.exit.sw.epilog_crit_edge, label %cond.false

fsi_stream_init.exit.sw.epilog_crit_edge:         ; preds = %fsi_stream_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false:                                       ; preds = %fsi_stream_init.exit
  %handler = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 10
  %41 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handler, align 4
  %start_stop = getelementptr inbounds %struct.fsi_stream_handler, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %start_stop to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %start_stop, align 4
  %tobool6.not = icmp eq ptr %44, null
  br i1 %tobool6.not, label %cond.false.if.then16_crit_edge, label %if.end14

cond.false.if.then16_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.end14:                                         ; preds = %cond.false
  %call11 = tail call i32 %44(ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool15.not = icmp eq i32 %call11, 0
  br i1 %tobool15.not, label %if.end14.if.then16_crit_edge, label %if.end14.sw.epilog_crit_edge

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %cond.false.if.then16_crit_edge
  %priv.i.i = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 11
  %45 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i.i, align 4
  %tobool.not.i65 = icmp eq ptr %46, null
  br i1 %tobool.not.i65, label %if.then16.sw.epilog_crit_edge, label %cond.false.i67

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false.i67:                                   ; preds = %if.then16
  %47 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handler, align 4
  %transfer.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %transfer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %transfer.i, align 4
  %tobool2.not.i = icmp eq ptr %50, null
  br i1 %tobool2.not.i, label %cond.false.i67.sw.epilog_crit_edge, label %cond.false4.i

cond.false.i67.sw.epilog_crit_edge:               ; preds = %cond.false.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false4.i:                                    ; preds = %cond.false.i67
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 %50(ptr noundef nonnull %46, ptr noundef nonnull %cond.i) #11
  br label %sw.epilog

if.then21:                                        ; preds = %entry
  %clk_master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %clk_master.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i.i68 = load i32, ptr %clk_master.i.i, align 4
  %52 = and i32 %bf.load.i.i68, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i69 = icmp eq i32 %52, 0
  br i1 %tobool.not.i69, label %if.then21.fsi_hw_shutdown.exit_crit_edge, label %if.then.i

if.then21.fsi_hw_shutdown.exit_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_hw_shutdown.exit

if.then.i:                                        ; preds = %if.then21
  %set_rate.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 4
  %53 = ptrtoint ptr %set_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_rate.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.then.i.fsi_hw_shutdown.exit_crit_edge, label %fsi_clk_is_valid.exit.i.i

if.then.i.fsi_hw_shutdown.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_hw_shutdown.exit

fsi_clk_is_valid.exit.i.i:                        ; preds = %if.then.i
  %rate.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 5
  %55 = ptrtoint ptr %rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool2.i.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool2.i.not.i.i, label %fsi_clk_is_valid.exit.i.i.fsi_hw_shutdown.exit_crit_edge, label %if.end.i.i

fsi_clk_is_valid.exit.i.i.fsi_hw_shutdown.exit_crit_edge: ; preds = %fsi_clk_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_hw_shutdown.exit

if.end.i.i:                                       ; preds = %fsi_clk_is_valid.exit.i.i
  %count.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 6
  %57 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %58, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i70 = icmp eq i32 %58, 1
  br i1 %cmp.i.i70, label %if.then2.i.i, label %if.end.i.i.fsi_hw_shutdown.exit_crit_edge

if.end.i.i.fsi_hw_shutdown.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_hw_shutdown.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %xck.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %xck.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xck.i.i, align 4
  tail call void @clk_disable(ptr noundef %60) #11
  %ick.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 2
  %61 = ptrtoint ptr %ick.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ick.i.i, align 4
  tail call void @clk_disable(ptr noundef %62) #11
  %div.i.i = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %div.i.i, align 4
  tail call void @clk_disable(ptr noundef %64) #11
  br label %fsi_hw_shutdown.exit

fsi_hw_shutdown.exit:                             ; preds = %if.then2.i.i, %if.end.i.i.fsi_hw_shutdown.exit_crit_edge, %fsi_clk_is_valid.exit.i.i.fsi_hw_shutdown.exit_crit_edge, %if.then.i.fsi_hw_shutdown.exit_crit_edge, %if.then21.fsi_hw_shutdown.exit_crit_edge
  %retval.0.i71 = phi i32 [ 0, %if.then21.fsi_hw_shutdown.exit_crit_edge ], [ -22, %fsi_clk_is_valid.exit.i.i.fsi_hw_shutdown.exit_crit_edge ], [ 0, %if.then2.i.i ], [ 0, %if.end.i.i.fsi_hw_shutdown.exit_crit_edge ], [ -22, %if.then.i.fsi_hw_shutdown.exit_crit_edge ]
  %tobool25.not = icmp eq ptr %cond.i, null
  br i1 %tobool25.not, label %fsi_hw_shutdown.exit.cond.end38_crit_edge, label %cond.false27

fsi_hw_shutdown.exit.cond.end38_crit_edge:        ; preds = %fsi_hw_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end38

cond.false27:                                     ; preds = %fsi_hw_shutdown.exit
  %handler28 = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 10
  %65 = ptrtoint ptr %handler28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %handler28, align 4
  %start_stop29 = getelementptr inbounds %struct.fsi_stream_handler, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %start_stop29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %start_stop29, align 4
  %tobool30.not = icmp eq ptr %68, null
  br i1 %tobool30.not, label %cond.false27.cond.end38_crit_edge, label %cond.false32

cond.false27.cond.end38_crit_edge:                ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end38

cond.false32:                                     ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 %68(ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i, i32 noundef 0) #11
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false32, %cond.false27.cond.end38_crit_edge, %fsi_hw_shutdown.exit.cond.end38_crit_edge
  %69 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cond.i, align 4
  %private_data.i.i72 = getelementptr inbounds %struct.snd_pcm_substream, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %private_data.i.i72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private_data.i.i72, align 4
  %dais.i.i73 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %dais.i.i73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dais.i.i73, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %master.i.i74 = getelementptr inbounds %struct.fsi_priv, ptr %retval.0.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %master.i.i74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %master.i.i74, align 4
  %lock.i75 = getelementptr inbounds %struct.fsi_master, ptr %78, i32 0, i32 4
  %call4.i76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i75) #11
  %oerr_num.i77 = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 8
  %79 = ptrtoint ptr %oerr_num.i77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %oerr_num.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp7.i = icmp sgt i32 %80, 0
  br i1 %cmp7.i, label %do.end11.i, label %cond.end38.if.end.i79_crit_edge

cond.end38.if.end.i79_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i79

do.end11.i:                                       ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %76, i32 0, i32 2
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.103, i32 noundef %80) #14
  br label %if.end.i79

if.end.i79:                                       ; preds = %do.end11.i, %cond.end38.if.end.i79_crit_edge
  %uerr_num.i78 = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 7
  %83 = ptrtoint ptr %uerr_num.i78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uerr_num.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp13.i = icmp sgt i32 %84, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end.i79.if.end21.i_crit_edge

if.end.i79.if.end21.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

do.end18.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  %dev19.i = getelementptr inbounds %struct.snd_soc_dai, ptr %76, i32 0, i32 2
  %85 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.106, i32 noundef %84) #14
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end18.i, %if.end.i79.if.end21.i_crit_edge
  br i1 %tobool25.not, label %if.end21.i.fsi_stream_quit.exit_crit_edge, label %cond.false.i82

if.end21.i.fsi_stream_quit.exit_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_quit.exit

cond.false.i82:                                   ; preds = %if.end21.i
  %handler.i81 = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 10
  %87 = ptrtoint ptr %handler.i81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handler.i81, align 4
  %quit.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %quit.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %quit.i, align 4
  %tobool22.not.i = icmp eq ptr %90, null
  br i1 %tobool22.not.i, label %cond.false.i82.fsi_stream_quit.exit_crit_edge, label %cond.false24.i

cond.false.i82.fsi_stream_quit.exit_crit_edge:    ; preds = %cond.false.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsi_stream_quit.exit

cond.false24.i:                                   ; preds = %cond.false.i82
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = tail call i32 %90(ptr noundef %retval.0.i.i, ptr noundef nonnull %cond.i) #11
  br label %fsi_stream_quit.exit

fsi_stream_quit.exit:                             ; preds = %cond.false24.i, %cond.false.i82.fsi_stream_quit.exit_crit_edge, %if.end21.i.fsi_stream_quit.exit_crit_edge
  %91 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %cond.i, align 4
  %buff_sample_capa.i83 = getelementptr inbounds %struct.fsi_stream, ptr %cond.i, i32 0, i32 2
  %92 = call ptr @memset(ptr %buff_sample_capa.i83, i32 0, i32 32)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i75, i32 noundef %call4.i76) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %fsi_stream_quit.exit, %cond.false4.i, %cond.false.i67.sw.epilog_crit_edge, %if.then16.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge, %fsi_stream_init.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.3 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i71, %fsi_stream_quit.exit ], [ %call11, %if.end14.sw.epilog_crit_edge ], [ -5, %if.then16.sw.epilog_crit_edge ], [ %call7.i, %cond.false4.i ], [ 0, %cond.false.i67.sw.epilog_crit_edge ], [ %call2.mux, %fsi_stream_init.exit.sw.epilog_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_clk_init(ptr noundef %dev, ptr nocapture noundef %fsi, i32 noundef %xck, i32 noundef %div, ptr noundef %set_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clock1 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5
  %master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsi, align 4
  %cmp.i = icmp eq ptr %3, %5
  %xck2 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %xck2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xck2, align 4
  %ick3 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %ick3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ick3, align 4
  %div4 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %div4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %div4, align 4
  %rate = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rate, align 4
  %count = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 6
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count, align 4
  %set_rate5 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %set_rate5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %set_rate, ptr %set_rate5, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %12 = ptrtoint ptr %clock1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %clock1, align 4
  %cmp.i1 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xck)
  %tobool.not = icmp eq i32 %xck, 0
  br i1 %tobool.not, label %if.end.if.then26_crit_edge, label %if.then9

if.end.if.then26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then9:                                         ; preds = %if.end
  %cond = select i1 %cmp.i, ptr @.str.47, ptr @.str.48
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %cond) #11
  %13 = ptrtoint ptr %xck2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %xck2, align 4
  %cmp.i2 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.then9.cleanup.sink.split_crit_edge, label %if.end16

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.then9
  %14 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock1, align 4
  %cmp = icmp eq ptr %call11, %15
  br i1 %cmp, label %if.end16.cleanup.sink.split_crit_edge, label %if.end16.if.then26_crit_edge

if.end16.if.then26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then26:                                        ; preds = %if.end16.if.then26_crit_edge, %if.end.if.then26_crit_edge
  %cond28 = select i1 %cmp.i, ptr @.str.54, ptr @.str.55
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %cond28) #11
  %16 = ptrtoint ptr %ick3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %ick3, align 4
  %cmp.i3 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %if.then26.cleanup.sink.split_crit_edge, label %if.end37

if.then26.cleanup.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.then26
  %17 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clock1, align 4
  %cmp40 = icmp eq ptr %call29, %18
  br i1 %cmp40, label %if.end37.cleanup.sink.split_crit_edge, label %if.end46

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %tobool47.not = icmp eq i32 %div, 0
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %if.then48

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  %cond50 = select i1 %cmp.i, ptr @.str.62, ptr @.str.63
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %cond50) #11
  %19 = ptrtoint ptr %div4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call51, ptr %div4, align 4
  %cmp.i4 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %if.then48.cleanup.sink.split_crit_edge, label %if.end59

if.then48.cleanup.sink.split_crit_edge:           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end59:                                         ; preds = %if.then48
  %20 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clock1, align 4
  %cmp62 = icmp eq ptr %call51, %21
  br i1 %cmp62, label %if.end59.cleanup.sink.split_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.cleanup.sink.split_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end59.cleanup.sink.split_crit_edge, %if.then48.cleanup.sink.split_crit_edge, %if.end37.cleanup.sink.split_crit_edge, %if.then26.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge
  %.str.68.sink = phi ptr [ @.str.49, %if.then9.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.57, %if.then26.cleanup.sink.split_crit_edge ], [ @.str.60, %if.end37.cleanup.sink.split_crit_edge ], [ @.str.65, %if.then48.cleanup.sink.split_crit_edge ], [ @.str.68, %if.end59.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.68.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end59.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_clk_set_rate_cpg(ptr noundef %dev, ptr nocapture noundef readonly %fsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ick1 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %ick1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ick1, align 4
  %div3 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %div3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div3, align 4
  %rate5 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate5, align 4
  %rem = urem i32 12288000, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %tobool.not, i32 12288000, i32 0
  %rem6 = urem i32 11289600, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6)
  %tobool7.not = icmp eq i32 %rem6, 0
  %target.1 = select i1 %tobool7.not, i32 11289600, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target.1)
  %tobool10.not = icmp eq i32 %target.1, 0
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %chan_num = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %6 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %chan_num, align 4
  %7 = ashr i32 %bf.load, 11
  %mul = and i32 %7, -32
  %div13 = udiv i32 %target.1, %5
  %call = tail call fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %dev, ptr noundef %fsi, i32 noundef %div13, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end17, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71) #14
  br label %cleanup

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %if.end12.for.body_crit_edge
  %adj.0108 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 1, %if.end12.for.body_crit_edge ]
  %best_act.0107 = phi i32 [ %best_act.1, %if.end23.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %best_cout.0106 = phi i32 [ %best_cout.1, %if.end23.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %min.0105 = phi i32 [ %9, %if.end23.for.body_crit_edge ], [ -1, %if.end12.for.body_crit_edge ]
  %mul20 = mul i32 %adj.0108, %target.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %mul20)
  %cmp21 = icmp ugt i32 %mul20, 100000000
  br i1 %cmp21, label %for.body.for.end_crit_edge, label %if.end23

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end23:                                         ; preds = %for.body
  %call24 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %mul20) #11
  %div25 = udiv i32 %call24, %adj.0108
  %sub = sub i32 %div25, %target.1
  %8 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %min.0105)
  %cmp28 = icmp ult i32 %8, %min.0105
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %min.0105)
  %best_cout.1 = select i1 %cmp28, i32 %call24, i32 %best_cout.0106
  %best_act.1 = select i1 %cmp28, i32 %div25, i32 %best_act.0107
  %inc = add nuw nsw i32 %adj.0108, 1
  %exitcond.not = icmp eq i32 %inc, 65535
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.body.for.end_crit_edge
  %best_cout.0.lcssa = phi i32 [ %best_cout.0106, %for.body.for.end_crit_edge ], [ %best_cout.1, %if.end23.for.end_crit_edge ]
  %best_act.0.lcssa = phi i32 [ %best_act.0107, %for.body.for.end_crit_edge ], [ %best_act.1, %if.end23.for.end_crit_edge ]
  %call31 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %best_cout.0.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end37

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #14
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %call38 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef %best_act.0.lcssa) #11
  %call39 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %call38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %do.body46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79) #14
  br label %cleanup

do.body46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_clk_set_rate_cpg.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_clk_set_rate_cpg, %if.then52)) #11
          to label %cleanup [label %if.then52], !srcloc !238

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = tail call i32 @clk_get_rate(ptr noundef %1) #11
  %call54 = tail call i32 @clk_get_rate(ptr noundef %3) #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_clk_set_rate_cpg.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %call53, i32 noundef %call54) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body46, %do.end44, %do.end36, %do.end17, %do.end
  %retval.0 = phi i32 [ %call, %do.end17 ], [ -5, %do.end36 ], [ -5, %do.end44 ], [ -22, %do.end ], [ %call39, %if.then52 ], [ %call39, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_clk_set_rate_external(ptr noundef %dev, ptr nocapture noundef readonly %fsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xck1 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %xck1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xck1, align 4
  %ick3 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %ick3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ick3, align 4
  %rate5 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate5, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #11
  %call.frozen = freeze i32 %call
  %.frozen = freeze i32 %5
  %div = udiv i32 %call.frozen, %.frozen
  %6 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %call.frozen, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @clk_set_parent(ptr noundef %3, ptr noundef %1) #11
  %call7 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %call) #11
  %chan_num = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %7 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %chan_num, align 4
  %8 = ashr i32 %bf.load, 11
  %mul = and i32 %8, -32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_clk_set_rate_external.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_clk_set_rate_external, %if.then13)) #11
          to label %do.end16 [label %if.then13], !srcloc !238

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_clk_set_rate_external.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %call, i32 noundef %5) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end
  %call17 = tail call fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %dev, ptr noundef %fsi, i32 noundef %div, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.92) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call17, %do.end21 ], [ %call17, %do.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %dev, ptr nocapture noundef readonly %fsi, i32 noundef %ackmd, i32 noundef %bpfmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %bpfmd, i32 %ackmd)
  %cmp = icmp sgt i32 %bpfmd, %ackmd
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %ackmd, i32 noundef %bpfmd) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %ackmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %ackmd, label %do.end11 [
    i32 512, label %if.end.sw.epilog_crit_edge
    i32 256, label %sw.bb1
    i32 128, label %sw.bb3
    i32 64, label %sw.bb5
    i32 32, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %ackmd) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %if.end.sw.epilog_crit_edge
  %data.0 = phi i32 [ 16384, %sw.bb7 ], [ 12288, %sw.bb5 ], [ 8192, %sw.bb3 ], [ 4096, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %1 = zext i32 %bpfmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %bpfmd, label %do.end27 [
    i32 32, label %sw.epilog.do.body29_crit_edge
    i32 64, label %sw.bb14
    i32 128, label %sw.bb16
    i32 256, label %sw.bb18
    i32 512, label %sw.bb20
    i32 16, label %sw.bb22
  ]

sw.epilog.do.body29_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or15 = or i32 %data.0, 256
  br label %do.body29

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or17 = or i32 %data.0, 512
  br label %do.body29

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or19 = or i32 %data.0, 768
  br label %do.body29

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or21 = or i32 %data.0, 1024
  br label %do.body29

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or23 = or i32 %data.0, 1792
  br label %do.body29

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %bpfmd) #14
  br label %cleanup

do.body29:                                        ; preds = %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.epilog.do.body29_crit_edge
  %data.1 = phi i32 [ %or23, %sw.bb22 ], [ %or21, %sw.bb20 ], [ %or19, %sw.bb18 ], [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %data.0, %sw.epilog.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_clk_set_ackbpf.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_clk_set_ackbpf, %if.then32)) #11
          to label %do.end35 [label %if.then32], !srcloc !238

if.then32:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_clk_set_ackbpf.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %ackmd, i32 noundef %bpfmd) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body29
  %2 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %and.i = and i32 %4, 16746751
  %and1.i = and i32 %data.1, 30464
  %or.i = or i32 %and.i, %and1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or.i) #11, !srcloc !240
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end27, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end27 ], [ 0, %do.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_hw_startup(ptr noundef %fsi, ptr noundef %io, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %0 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %clk_master.i, align 4
  %1 = and i32 %bf.load.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 17
  %2 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsi, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !239
  %and.i = and i32 %4, 16777198
  %or.i = or i32 %and.i, %spec.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or.i) #11, !srcloc !240
  %5 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %clk_master.i, align 4
  %6 = lshr i32 %bf.load, 11
  %.lobit = and i32 %6, 1
  %7 = lshr i32 %bf.load, 6
  %8 = and i32 %7, 16
  %9 = or i32 %8, %.lobit
  %10 = and i32 %bf.load, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  %shl = shl nuw nsw i32 %9, 8
  %data.3 = select i1 %tobool12.not, i32 %9, i32 %shl
  %11 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fsi, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %data.3) #11, !srcloc !240
  %13 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i63 = load i32, ptr %clk_master.i, align 4
  %14 = and i32 %bf.load.i63, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %entry.if.end22_crit_edge, label %if.then19

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %entry
  %master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %15 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fsi, align 4
  %cmp.i.not.i = icmp eq ptr %18, %20
  %core.i = getelementptr inbounds %struct.fsi_master, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core.i, align 4
  br i1 %cmp.i.not.i, label %cond.true3.i, label %cond.false4.i

cond.true3.i:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %a_mclk.i = getelementptr inbounds %struct.fsi_core, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %a_mclk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %a_mclk.i, align 4
  %lock.i.i = getelementptr inbounds %struct.fsi_master, ptr %16, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %16, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !239
  %or.i.i.i = and i32 %27, 16777198
  %and.i.i.i.i = or i32 %or.i.i.i, 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i.i.i.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  br label %fsi_spdif_clk_ctrl.exit

cond.false4.i:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %b_mclk.i = getelementptr inbounds %struct.fsi_core, ptr %22, i32 0, i32 5
  %28 = ptrtoint ptr %b_mclk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_mclk.i, align 4
  %lock.i2.i = getelementptr inbounds %struct.fsi_master, ptr %16, i32 0, i32 4
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i2.i) #11
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %16, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %31, i32 %29
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #11, !srcloc !239
  %or.i.i6.i = and i32 %32, 16777198
  %and.i.i.i7.i = or i32 %or.i.i6.i, 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %and.i.i.i7.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i2.i, i32 noundef %call2.i3.i) #11
  br label %fsi_spdif_clk_ctrl.exit

fsi_spdif_clk_ctrl.exit:                          ; preds = %cond.false4.i, %cond.true3.i
  %33 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fsi, align 4
  %add.ptr21 = getelementptr i8, ptr %34, i32 48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !239
  %or.i67 = and i32 %35, 16777199
  %and.i.i68 = or i32 %or.i67, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and.i.i68) #11, !srcloc !240
  br label %if.end22

if.end22:                                         ; preds = %fsi_spdif_clk_ctrl.exit, %entry.if.end22_crit_edge
  %sample_width = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 6
  %36 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sample_width, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %37, label %if.end22.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb23
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %bus_option = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 9
  %39 = ptrtoint ptr %bus_option to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_option, align 4
  %and = and i32 %40, 15
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %bus_option24 = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 9
  %41 = ptrtoint ptr %bus_option24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_option24, align 4
  %shr25 = lshr i32 %42, 4
  %and26 = and i32 %shr25, 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb, %if.end22.sw.epilog_crit_edge
  %data.4 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ %and26, %sw.bb23 ], [ %and, %sw.bb ]
  tail call fastcc void @fsi_format_bus_setup(ptr noundef %fsi, ptr noundef %io, i32 noundef %data.4, ptr noundef %dev)
  %playback.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i.not.i.i = icmp eq ptr %playback.i.i.i, %io
  %master.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %43 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fsi, align 4
  %cmp.i7.not.i.i = icmp eq ptr %46, %48
  %cond.i.i = select i1 %cmp.i.not.i.i, i32 0, i32 4
  %cond4.i.i = select i1 %cmp.i.not.i.i, i32 8, i32 12
  %shift.0.i.i = select i1 %cmp.i7.not.i.i, i32 %cond.i.i, i32 %cond4.i.i
  %shl.i = shl nuw nsw i32 1, %shift.0.i.i
  %core.i69 = getelementptr inbounds %struct.fsi_master, ptr %44, i32 0, i32 3
  %49 = ptrtoint ptr %core.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i69, align 4
  %imsk.i = getelementptr inbounds %struct.fsi_core, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %imsk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %imsk.i, align 4
  %lock.i.i70 = getelementptr inbounds %struct.fsi_master, ptr %44, i32 0, i32 4
  %call2.i.i71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i70) #11
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %44, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %54, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #11, !srcloc !239
  %and.i.i.i = xor i32 %shl.i, 16777215
  %and.i.i.i.i73 = and i32 %55, %and.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %and.i.i.i.i73) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i70, i32 noundef %call2.i.i71) #11
  %56 = ptrtoint ptr %core.i69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %core.i69, align 4
  %iemsk.i = getelementptr inbounds %struct.fsi_core, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %iemsk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iemsk.i, align 4
  %call2.i9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i70) #11
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %44, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %61, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #11, !srcloc !239
  %and.i.i.i13.i = and i32 %62, %and.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %and.i.i.i13.i) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i70, i32 noundef %call2.i9.i) #11
  %63 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fsi, align 4
  %cmp.i7.not.i.i75 = icmp eq ptr %66, %68
  %core.i76 = getelementptr inbounds %struct.fsi_master, ptr %64, i32 0, i32 3
  %69 = ptrtoint ptr %core.i76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %core.i76, align 4
  %int_st.i = getelementptr inbounds %struct.fsi_core, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %int_st.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %int_st.i, align 4
  %lock.i.i77 = getelementptr inbounds %struct.fsi_master, ptr %64, i32 0, i32 4
  %call2.i.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i77) #11
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %64, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %74, i32 %72
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #11, !srcloc !239
  %neg.i.i.i = select i1 %cmp.i7.not.i.i75, i32 16777198, i32 16772863
  %and.i.i.i80 = and i32 %75, %neg.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 %and.i.i.i80) #11, !srcloc !240
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i77, i32 noundef %call2.i.i78) #11
  tail call fastcc void @fsi_fifo_init(ptr noundef %fsi, ptr noundef %io, ptr noundef %dev)
  %76 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i82 = load i32, ptr %clk_master.i, align 4
  %77 = and i32 %bf.load.i82, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool28.not = icmp eq i32 %77, 0
  br i1 %tobool28.not, label %sw.epilog.cleanup_crit_edge, label %if.then29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %sw.epilog
  %set_rate.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 4
  %78 = ptrtoint ptr %set_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rate.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.then29.cleanup_crit_edge, label %fsi_clk_is_valid.exit.i

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fsi_clk_is_valid.exit.i:                          ; preds = %if.then29
  %rate.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 5
  %80 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool2.i.not.i = icmp eq i32 %81, 0
  br i1 %tobool2.i.not.i, label %fsi_clk_is_valid.exit.i.cleanup_crit_edge, label %if.end.i

fsi_clk_is_valid.exit.i.cleanup_crit_edge:        ; preds = %fsi_clk_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %fsi_clk_is_valid.exit.i
  %count.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 6
  %82 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i = icmp eq i32 %83, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = tail call i32 %79(ptr noundef %dev, ptr noundef %fsi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %rate.i.i, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %xck.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %xck.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xck.i, align 4
  %call7.i = tail call i32 @clk_enable(ptr noundef %86) #11
  %ick.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 2
  %87 = ptrtoint ptr %ick.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ick.i, align 4
  %call8.i = tail call i32 @clk_enable(ptr noundef %88) #11
  %div.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 3
  %89 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %div.i, align 4
  %call9.i = tail call i32 @clk_enable(ptr noundef %90) #11
  %91 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %if.end.i.cleanup_crit_edge, %fsi_clk_is_valid.exit.i.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %call3.i, %if.then5.i ], [ -22, %fsi_clk_is_valid.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end6.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_format_bus_setup(ptr noundef readonly %fsi, ptr noundef readnone %io, i32 noundef %bus, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i = icmp eq ptr %playback.i, %io
  %fmt2 = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 6
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt2, align 4
  %core.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end52

if.then:                                          ; preds = %entry
  %8 = zext i32 %bus to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %bus, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_format_bus_setup, %if.then8)) #11
          to label %sw.epilog [label %if.then8], !srcloc !238

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_format_bus_setup.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.97) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %or10 = or i32 %3, 1048576
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_format_bus_setup, %if.then24)) #11
          to label %sw.epilog [label %if.then24], !srcloc !238

if.then24:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_format_bus_setup.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.98) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_format_bus_setup, %if.then43)) #11
          to label %sw.epilog [label %if.then43], !srcloc !238

if.then43:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_format_bus_setup.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.99) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then43, %sw.default, %if.then24, %sw.bb9, %if.then8, %sw.bb
  %dma.0 = phi i32 [ 16, %if.then43 ], [ 32, %if.then24 ], [ 0, %if.then8 ], [ 0, %sw.bb ], [ 32, %sw.bb9 ], [ 16, %sw.default ]
  %fmt.0 = phi i32 [ %3, %if.then43 ], [ %or10, %if.then24 ], [ %3, %if.then8 ], [ %3, %sw.bb ], [ %or10, %sw.bb9 ], [ %3, %sw.default ]
  %9 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fsi, align 4
  br i1 %cmp.i, label %if.end52.thread93, label %if.end52.thread

if.end52.thread93:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %dma.0) #11, !srcloc !240
  br label %if.then54

if.end52.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr50 = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %dma.0) #11, !srcloc !240
  br label %if.else57

if.end52:                                         ; preds = %entry
  br i1 %cmp.i, label %if.end52.if.then54_crit_edge, label %if.end52.if.else57_crit_edge

if.end52.if.else57_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else57

if.end52.if.then54_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.then54:                                        ; preds = %if.end52.if.then54_crit_edge, %if.end52.thread93
  %fmt.196 = phi i32 [ %fmt.0, %if.end52.thread93 ], [ %3, %if.end52.if.then54_crit_edge ]
  %11 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fsi, align 4
  %and.i85 = and i32 %fmt.196, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %and.i85) #11, !srcloc !240
  br label %if.end60

if.else57:                                        ; preds = %if.end52.if.else57_crit_edge, %if.end52.thread
  %fmt.192 = phi i32 [ %fmt.0, %if.end52.thread ], [ %3, %if.end52.if.else57_crit_edge ]
  %13 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsi, align 4
  %add.ptr59 = getelementptr i8, ptr %14, i32 12
  %and.i86 = and i32 %fmt.192, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %and.i86) #11, !srcloc !240
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_fifo_init(ptr noundef readonly %fsi, ptr noundef writeonly %io, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %playback.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 3
  %cmp.i = icmp eq ptr %playback.i, %io
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !239
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fsi, align 4
  %cmp.i7.not.i = icmp eq ptr %8, %10
  %cond.i = select i1 %cmp.i, i32 0, i32 4
  %cond4.i = select i1 %cmp.i, i32 8, i32 12
  %shift.0.i = select i1 %cmp.i7.not.i, i32 %cond.i, i32 %cond4.i
  %shr = lshr i32 %4, %shift.0.i
  %and = and i32 %shr, 7
  %shl = shl nuw nsw i32 256, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_fifo_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_fifo_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !238

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_fifo_init.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.101, i32 noundef %shl) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chan_num = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %11 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %chan_num, align 4
  %bf.ashr = ashr i32 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %bf.load)
  %cmp64 = icmp ugt i32 %bf.load, 131071
  br i1 %cmp64, label %do.end.for.body_crit_edge, label %do.end.do.body9_crit_edge

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.066 = phi i32 [ %shl8, %for.body.for.body_crit_edge ], [ 1, %do.end.for.body_crit_edge ]
  %frame_capa.065 = phi i32 [ %12, %for.body.for.body_crit_edge ], [ %shl, %do.end.for.body_crit_edge ]
  %12 = lshr i32 %frame_capa.065, 1
  %shl8 = shl i32 %i.066, 1
  %cmp = icmp ult i32 %shl8, %bf.ashr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body9_crit_edge

for.body.do.body9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body9:                                         ; preds = %for.body.do.body9_crit_edge, %do.end.do.body9_crit_edge
  %frame_capa.0.lcssa = phi i32 [ %shl, %do.end.do.body9_crit_edge ], [ %12, %for.body.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_fifo_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_fifo_init, %if.then21)) #11
          to label %do.end27 [label %if.then21], !srcloc !238

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load23 = load i32, ptr %chan_num, align 4
  %bf.ashr24 = ashr i32 %bf.load23, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_fifo_init.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %bf.ashr24, i32 noundef %frame_capa.0.lcssa) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body9
  %14 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %chan_num, align 4
  %bf.ashr.i = ashr i32 %bf.load.i, 16
  %mul.i = mul nsw i32 %bf.ashr.i, %frame_capa.0.lcssa
  %fifo_sample_capa = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 1
  %15 = ptrtoint ptr %fifo_sample_capa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %fifo_sample_capa, align 4
  %16 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fsi, align 4
  br i1 %cmp.i, label %if.then30, label %if.else

if.then30:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #11, !srcloc !240
  %18 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fsi, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #11, !srcloc !239
  %or.i = and i32 %20, 16777214
  %and.i.i = or i32 %or.i, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %and.i.i) #11, !srcloc !240
  br label %if.end37

if.else:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr34 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 1048576) #11, !srcloc !240
  %21 = ptrtoint ptr %fsi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fsi, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #11, !srcloc !239
  %or.i60 = and i32 %23, 16777214
  %and.i.i61 = or i32 %or.i60, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %and.i.i61) #11, !srcloc !240
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fsia1 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %fsib2 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2
  %playback = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3
  tail call fastcc void @__fsi_suspend(ptr noundef %fsia1, ptr noundef %playback)
  %capture = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4
  tail call fastcc void @__fsi_suspend(ptr noundef %fsia1, ptr noundef %capture)
  %playback3 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3
  tail call fastcc void @__fsi_suspend(ptr noundef %fsib2, ptr noundef %playback3)
  %capture4 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4
  tail call fastcc void @__fsi_suspend(ptr noundef %fsib2, ptr noundef %capture4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fsia1 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %fsib2 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2
  %playback = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3
  %master.i.i.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %4 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %fsi_stream_is_working.exit.thread.i, label %fsi_stream_is_working.exit.i

fsi_stream_is_working.exit.thread.i:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #11
  br label %__fsi_resume.exit

fsi_stream_is_working.exit.i:                     ; preds = %entry
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime.i.i, align 4
  %tobool7.i.not.i = icmp eq ptr %7, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #11
  br i1 %tobool7.i.not.i, label %fsi_stream_is_working.exit.i.__fsi_resume.exit_crit_edge, label %if.end.i

fsi_stream_is_working.exit.i.__fsi_resume.exit_crit_edge: ; preds = %fsi_stream_is_working.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit

if.end.i:                                         ; preds = %fsi_stream_is_working.exit.i
  %call1.i = tail call fastcc i32 @fsi_hw_startup(ptr noundef %fsia1, ptr noundef %playback, ptr noundef %dev) #11
  %tobool2.not.i = icmp eq ptr %playback, null
  br i1 %tobool2.not.i, label %if.end.i.__fsi_resume.exit_crit_edge, label %cond.false.i

if.end.i.__fsi_resume.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit

cond.false.i:                                     ; preds = %if.end.i
  %handler.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 10
  %8 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i, align 4
  %start_stop.i = getelementptr inbounds %struct.fsi_stream_handler, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %start_stop.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %start_stop.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %cond.false.i.__fsi_resume.exit_crit_edge, label %cond.false5.i

cond.false.i.__fsi_resume.exit_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit

cond.false5.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 %11(ptr noundef %fsia1, ptr noundef nonnull %playback, i32 noundef 1) #11
  br label %__fsi_resume.exit

__fsi_resume.exit:                                ; preds = %cond.false5.i, %cond.false.i.__fsi_resume.exit_crit_edge, %if.end.i.__fsi_resume.exit_crit_edge, %fsi_stream_is_working.exit.i.__fsi_resume.exit_crit_edge, %fsi_stream_is_working.exit.thread.i
  %capture = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i.i.i, align 4
  %lock.i.i17 = getelementptr inbounds %struct.fsi_master, ptr %13, i32 0, i32 4
  %call3.i.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i17) #11
  %14 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %capture, align 4
  %tobool.not.i.i19 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i19, label %fsi_stream_is_working.exit.thread.i20, label %fsi_stream_is_working.exit.i23

fsi_stream_is_working.exit.thread.i20:            ; preds = %__fsi_resume.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i17, i32 noundef %call3.i.i18) #11
  br label %__fsi_resume.exit33

fsi_stream_is_working.exit.i23:                   ; preds = %__fsi_resume.exit
  %runtime.i.i21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %runtime.i.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime.i.i21, align 4
  %tobool7.i.not.i22 = icmp eq ptr %17, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i17, i32 noundef %call3.i.i18) #11
  br i1 %tobool7.i.not.i22, label %fsi_stream_is_working.exit.i23.__fsi_resume.exit33_crit_edge, label %if.end.i26

fsi_stream_is_working.exit.i23.__fsi_resume.exit33_crit_edge: ; preds = %fsi_stream_is_working.exit.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit33

if.end.i26:                                       ; preds = %fsi_stream_is_working.exit.i23
  %call1.i24 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %fsia1, ptr noundef %capture, ptr noundef %dev) #11
  %tobool2.not.i25 = icmp eq ptr %capture, null
  br i1 %tobool2.not.i25, label %if.end.i26.__fsi_resume.exit33_crit_edge, label %cond.false.i30

if.end.i26.__fsi_resume.exit33_crit_edge:         ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit33

cond.false.i30:                                   ; preds = %if.end.i26
  %handler.i27 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 10
  %18 = ptrtoint ptr %handler.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i27, align 4
  %start_stop.i28 = getelementptr inbounds %struct.fsi_stream_handler, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %start_stop.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %start_stop.i28, align 4
  %tobool3.not.i29 = icmp eq ptr %21, null
  br i1 %tobool3.not.i29, label %cond.false.i30.__fsi_resume.exit33_crit_edge, label %cond.false5.i32

cond.false.i30.__fsi_resume.exit33_crit_edge:     ; preds = %cond.false.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit33

cond.false5.i32:                                  ; preds = %cond.false.i30
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i31 = tail call i32 %21(ptr noundef %fsia1, ptr noundef nonnull %capture, i32 noundef 1) #11
  br label %__fsi_resume.exit33

__fsi_resume.exit33:                              ; preds = %cond.false5.i32, %cond.false.i30.__fsi_resume.exit33_crit_edge, %if.end.i26.__fsi_resume.exit33_crit_edge, %fsi_stream_is_working.exit.i23.__fsi_resume.exit33_crit_edge, %fsi_stream_is_working.exit.thread.i20
  %playback3 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3
  %master.i.i.i34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %master.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i.i.i34, align 4
  %lock.i.i35 = getelementptr inbounds %struct.fsi_master, ptr %23, i32 0, i32 4
  %call3.i.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i35) #11
  %24 = ptrtoint ptr %playback3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %playback3, align 4
  %tobool.not.i.i37 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i37, label %fsi_stream_is_working.exit.thread.i38, label %fsi_stream_is_working.exit.i41

fsi_stream_is_working.exit.thread.i38:            ; preds = %__fsi_resume.exit33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i35, i32 noundef %call3.i.i36) #11
  br label %__fsi_resume.exit51

fsi_stream_is_working.exit.i41:                   ; preds = %__fsi_resume.exit33
  %runtime.i.i39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %runtime.i.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime.i.i39, align 4
  %tobool7.i.not.i40 = icmp eq ptr %27, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i35, i32 noundef %call3.i.i36) #11
  br i1 %tobool7.i.not.i40, label %fsi_stream_is_working.exit.i41.__fsi_resume.exit51_crit_edge, label %if.end.i44

fsi_stream_is_working.exit.i41.__fsi_resume.exit51_crit_edge: ; preds = %fsi_stream_is_working.exit.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit51

if.end.i44:                                       ; preds = %fsi_stream_is_working.exit.i41
  %call1.i42 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %fsib2, ptr noundef %playback3, ptr noundef %dev) #11
  %tobool2.not.i43 = icmp eq ptr %playback3, null
  br i1 %tobool2.not.i43, label %if.end.i44.__fsi_resume.exit51_crit_edge, label %cond.false.i48

if.end.i44.__fsi_resume.exit51_crit_edge:         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit51

cond.false.i48:                                   ; preds = %if.end.i44
  %handler.i45 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 10
  %28 = ptrtoint ptr %handler.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handler.i45, align 4
  %start_stop.i46 = getelementptr inbounds %struct.fsi_stream_handler, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %start_stop.i46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %start_stop.i46, align 4
  %tobool3.not.i47 = icmp eq ptr %31, null
  br i1 %tobool3.not.i47, label %cond.false.i48.__fsi_resume.exit51_crit_edge, label %cond.false5.i50

cond.false.i48.__fsi_resume.exit51_crit_edge:     ; preds = %cond.false.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit51

cond.false5.i50:                                  ; preds = %cond.false.i48
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i49 = tail call i32 %31(ptr noundef %fsib2, ptr noundef nonnull %playback3, i32 noundef 1) #11
  br label %__fsi_resume.exit51

__fsi_resume.exit51:                              ; preds = %cond.false5.i50, %cond.false.i48.__fsi_resume.exit51_crit_edge, %if.end.i44.__fsi_resume.exit51_crit_edge, %fsi_stream_is_working.exit.i41.__fsi_resume.exit51_crit_edge, %fsi_stream_is_working.exit.thread.i38
  %capture4 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %master.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i.i.i34, align 4
  %lock.i.i53 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 4
  %call3.i.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i53) #11
  %34 = ptrtoint ptr %capture4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %capture4, align 4
  %tobool.not.i.i55 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i55, label %fsi_stream_is_working.exit.thread.i56, label %fsi_stream_is_working.exit.i59

fsi_stream_is_working.exit.thread.i56:            ; preds = %__fsi_resume.exit51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i53, i32 noundef %call3.i.i54) #11
  br label %__fsi_resume.exit69

fsi_stream_is_working.exit.i59:                   ; preds = %__fsi_resume.exit51
  %runtime.i.i57 = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %runtime.i.i57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime.i.i57, align 4
  %tobool7.i.not.i58 = icmp eq ptr %37, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i53, i32 noundef %call3.i.i54) #11
  br i1 %tobool7.i.not.i58, label %fsi_stream_is_working.exit.i59.__fsi_resume.exit69_crit_edge, label %if.end.i62

fsi_stream_is_working.exit.i59.__fsi_resume.exit69_crit_edge: ; preds = %fsi_stream_is_working.exit.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit69

if.end.i62:                                       ; preds = %fsi_stream_is_working.exit.i59
  %call1.i60 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %fsib2, ptr noundef %capture4, ptr noundef %dev) #11
  %tobool2.not.i61 = icmp eq ptr %capture4, null
  br i1 %tobool2.not.i61, label %if.end.i62.__fsi_resume.exit69_crit_edge, label %cond.false.i66

if.end.i62.__fsi_resume.exit69_crit_edge:         ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit69

cond.false.i66:                                   ; preds = %if.end.i62
  %handler.i63 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 10
  %38 = ptrtoint ptr %handler.i63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handler.i63, align 4
  %start_stop.i64 = getelementptr inbounds %struct.fsi_stream_handler, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %start_stop.i64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %start_stop.i64, align 4
  %tobool3.not.i65 = icmp eq ptr %41, null
  br i1 %tobool3.not.i65, label %cond.false.i66.__fsi_resume.exit69_crit_edge, label %cond.false5.i68

cond.false.i66.__fsi_resume.exit69_crit_edge:     ; preds = %cond.false.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fsi_resume.exit69

cond.false5.i68:                                  ; preds = %cond.false.i66
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i67 = tail call i32 %41(ptr noundef %fsib2, ptr noundef nonnull %capture4, i32 noundef 1) #11
  br label %__fsi_resume.exit69

__fsi_resume.exit69:                              ; preds = %cond.false5.i68, %cond.false.i66.__fsi_resume.exit69_crit_edge, %if.end.i62.__fsi_resume.exit69_crit_edge, %fsi_stream_is_working.exit.i59.__fsi_resume.exit69_crit_edge, %fsi_stream_is_working.exit.thread.i56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fsi_suspend(ptr noundef %fsi, ptr noundef %io) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i.i, align 4
  %lock.i = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fsi_stream_is_working.exit.thread, label %fsi_stream_is_working.exit

fsi_stream_is_working.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br label %return

fsi_stream_is_working.exit:                       ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime.i, align 4
  %tobool7.i.not = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool7.i.not, label %fsi_stream_is_working.exit.return_crit_edge, label %if.end

fsi_stream_is_working.exit.return_crit_edge:      ; preds = %fsi_stream_is_working.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %fsi_stream_is_working.exit
  %tobool1.not = icmp eq ptr %io, null
  br i1 %tobool1.not, label %if.end.cond.end8_crit_edge, label %cond.false

if.end.cond.end8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end8

cond.false:                                       ; preds = %if.end
  %handler = getelementptr inbounds %struct.fsi_stream, ptr %io, i32 0, i32 10
  %6 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler, align 4
  %start_stop = getelementptr inbounds %struct.fsi_stream_handler, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %start_stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start_stop, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %cond.false.cond.end8_crit_edge, label %cond.false4

cond.false.cond.end8_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end8

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 %9(ptr noundef %fsi, ptr noundef nonnull %io, i32 noundef 0) #11
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false4, %cond.false.cond.end8_crit_edge, %if.end.cond.end8_crit_edge
  %clk_master.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 7
  %10 = ptrtoint ptr %clk_master.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i = load i32, ptr %clk_master.i.i, align 4
  %11 = and i32 %bf.load.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i1 = icmp eq i32 %11, 0
  br i1 %tobool.not.i1, label %cond.end8.return_crit_edge, label %if.then.i

cond.end8.return_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %cond.end8
  %set_rate.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %set_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_rate.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.then.i.return_crit_edge, label %fsi_clk_is_valid.exit.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fsi_clk_is_valid.exit.i.i:                        ; preds = %if.then.i
  %rate.i.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool2.i.not.i.i, label %fsi_clk_is_valid.exit.i.i.return_crit_edge, label %if.end.i.i

fsi_clk_is_valid.exit.i.i.return_crit_edge:       ; preds = %fsi_clk_is_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.i:                                       ; preds = %fsi_clk_is_valid.exit.i.i
  %count.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %17, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %xck.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %xck.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xck.i.i, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  %ick.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %ick.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ick.i.i, align 4
  tail call void @clk_disable(ptr noundef %21) #11
  %div.i.i = getelementptr inbounds %struct.fsi_priv, ptr %fsi, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %div.i.i, align 4
  tail call void @clk_disable(ptr noundef %23) #11
  br label %return

return:                                           ; preds = %if.then2.i.i, %if.end.i.i.return_crit_edge, %fsi_clk_is_valid.exit.i.i.return_crit_edge, %if.then.i.return_crit_edge, %cond.end8.return_crit_edge, %fsi_stream_is_working.exit.return_crit_edge, %fsi_stream_is_working.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !223, !225, !227}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @__initcall__kmod_snd_soc_fsi__256_2102_fsi_driver_init6, !1, !"__initcall__kmod_snd_soc_fsi__256_2102_fsi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/fsi.c", i32 2102, i32 1}
!2 = !{ptr @__exitcall_fsi_driver_exit, !1, !"__exitcall_fsi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file257, !4, !"__UNIQUE_ID_file257", i1 false, i1 false}
!4 = !{!"../sound/soc/sh/fsi.c", i32 2104, i32 1}
!5 = !{ptr @__UNIQUE_ID_license258, !4, !"__UNIQUE_ID_license258", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description259, !7, !"__UNIQUE_ID_description259", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/fsi.c", i32 2105, i32 1}
!8 = !{ptr @__UNIQUE_ID_author260, !9, !"__UNIQUE_ID_author260", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/fsi.c", i32 2106, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias261, !11, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/fsi.c", i32 2107, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/fsi.c", i32 2093, i32 11}
!14 = !{ptr @fsi_driver, !15, !"fsi_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/fsi.c", i32 2091, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/fsi.c", i32 1929, i32 16}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/fsi.c", i32 1930, i32 16}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sh/fsi.c", i32 1941, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fsi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @fsi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sh/fsi.c", i32 1948, i32 3}
!30 = !{ptr @fsi_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fsi_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sh/fsi.c", i32 1958, i32 3}
!34 = !{ptr @fsi_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fsi_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @fsi_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../sound/soc/sh/fsi.c", i32 1964, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/sh/fsi.c", i32 1975, i32 3}
!41 = !{ptr @fsi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fsi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/sh/fsi.c", i32 1988, i32 3}
!45 = !{ptr @fsi_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fsi_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sh/fsi.c", i32 1998, i32 3}
!49 = !{ptr @fsi_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @fsi_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sh/fsi.c", i32 2005, i32 3}
!53 = !{ptr @fsi_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @fsi_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sh/fsi.c", i32 1838, i32 5}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sh/fsi.c", i32 1839, i32 5}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sh/fsi.c", i32 1840, i32 5}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sh/fsi.c", i32 1844, i32 17}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sh/fsi.c", i32 1850, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fsi_of_parse.__UNIQUE_ID_ddebug255, !64, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!68 = !{ptr @fsi_pio_push_handler, !69, !"fsi_pio_push_handler", i1 false, i1 false}
!69 = !{!"../sound/soc/sh/fsi.c", i32 1220, i32 34}
!70 = !{ptr @fsi_pio_pop_handler, !71, !"fsi_pio_pop_handler", i1 false, i1 false}
!71 = !{!"../sound/soc/sh/fsi.c", i32 1226, i32 34}
!72 = !{ptr @fsi_dma_push_handler, !73, !"fsi_dma_push_handler", i1 false, i1 false}
!73 = !{!"../sound/soc/sh/fsi.c", i32 1421, i32 34}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sh/fsi.c", i32 1370, i32 54}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sh/fsi.c", i32 1370, i32 61}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sh/fsi.c", i32 1401, i32 3}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fsi_dma_probe._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @fsi_dma_probe._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sh/fsi.c", i32 1305, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @fsi_dma_transfer._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @fsi_dma_transfer._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sh/fsi.c", i32 1313, i32 3}
!91 = !{ptr @fsi_dma_transfer._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @fsi_dma_transfer._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sh/fsi.c", i32 1817, i32 11}
!95 = !{ptr @fsi_soc_component, !96, !"fsi_soc_component", i1 false, i1 false}
!96 = !{!"../sound/soc/sh/fsi.c", i32 1816, i32 46}
!97 = !{ptr @fsi_pcm_hardware, !98, !"fsi_pcm_hardware", i1 false, i1 false}
!98 = !{!"../sound/soc/sh/fsi.c", i32 1724, i32 38}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sh/fsi.c", i32 1783, i32 13}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sh/fsi.c", i32 1799, i32 13}
!103 = !{ptr @fsi_soc_dai, !104, !"fsi_soc_dai", i1 false, i1 false}
!104 = !{!"../sound/soc/sh/fsi.c", i32 1781, i32 34}
!105 = !{ptr @fsi_dai_ops, !106, !"fsi_dai_ops", i1 false, i1 false}
!106 = !{!"../sound/soc/sh/fsi.c", i32 1710, i32 37}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sh/fsi.c", i32 751, i32 45}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/sh/fsi.c", i32 751, i32 54}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/sh/fsi.c", i32 753, i32 4}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fsi_clk_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @fsi_clk_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sh/fsi.c", i32 757, i32 4}
!118 = !{ptr @fsi_clk_init._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @fsi_clk_init._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/sh/fsi.c", i32 764, i32 46}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sh/fsi.c", i32 764, i32 55}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/sh/fsi.c", i32 766, i32 4}
!126 = !{ptr @fsi_clk_init._entry.56, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @fsi_clk_init._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/sh/fsi.c", i32 770, i32 4}
!130 = !{ptr @fsi_clk_init._entry.59, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @fsi_clk_init._entry_ptr.61, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/sh/fsi.c", i32 777, i32 46}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/sh/fsi.c", i32 777, i32 55}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/sh/fsi.c", i32 779, i32 4}
!138 = !{ptr @fsi_clk_init._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @fsi_clk_init._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/sh/fsi.c", i32 783, i32 4}
!142 = !{ptr @fsi_clk_init._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @fsi_clk_init._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/sh/fsi.c", i32 964, i32 3}
!146 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @fsi_clk_set_rate_cpg._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @fsi_clk_set_rate_cpg._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/sh/fsi.c", i32 972, i32 3}
!151 = !{ptr @fsi_clk_set_rate_cpg._entry.72, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @fsi_clk_set_rate_cpg._entry_ptr.74, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/sh/fsi.c", i32 1015, i32 3}
!155 = !{ptr @fsi_clk_set_rate_cpg._entry.75, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @fsi_clk_set_rate_cpg._entry_ptr.77, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/sh/fsi.c", i32 1021, i32 3}
!159 = !{ptr @fsi_clk_set_rate_cpg._entry.78, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @fsi_clk_set_rate_cpg._entry_ptr.80, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/sh/fsi.c", i32 1025, i32 2}
!163 = !{ptr @fsi_clk_set_rate_cpg.__UNIQUE_ID_ddebug248, !162, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/sh/fsi.c", i32 854, i32 3}
!166 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @fsi_clk_set_ackbpf._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @fsi_clk_set_ackbpf._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/sh/fsi.c", i32 876, i32 3}
!171 = !{ptr @fsi_clk_set_ackbpf._entry.84, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @fsi_clk_set_ackbpf._entry_ptr.86, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/sh/fsi.c", i32 901, i32 3}
!175 = !{ptr @fsi_clk_set_ackbpf._entry.87, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @fsi_clk_set_ackbpf._entry_ptr.89, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/sh/fsi.c", i32 905, i32 2}
!179 = !{ptr @fsi_clk_set_ackbpf.__UNIQUE_ID_ddebug246, !178, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/sh/fsi.c", i32 926, i32 3}
!182 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @fsi_clk_set_rate_external._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @fsi_clk_set_rate_external._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/sh/fsi.c", i32 936, i32 2}
!187 = !{ptr @fsi_clk_set_rate_external.__UNIQUE_ID_ddebug247, !186, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!188 = !{ptr @fsi_clk_set_rate_external._entry.94, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../sound/soc/sh/fsi.c", i32 940, i32 3}
!190 = !{ptr @fsi_clk_set_rate_external._entry_ptr.95, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/sh/fsi.c", i32 640, i32 4}
!193 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug243, !192, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!195 = !{ptr @.str.98, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/sh/fsi.c", i32 645, i32 4}
!197 = !{ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug244, !196, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/sh/fsi.c", i32 651, i32 4}
!200 = !{ptr @fsi_format_bus_setup.__UNIQUE_ID_ddebug245, !199, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/sh/fsi.c", i32 1446, i32 2}
!203 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @fsi_fifo_init.__UNIQUE_ID_ddebug253, !202, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/sh/fsi.c", i32 1469, i32 2}
!207 = !{ptr @fsi_fifo_init.__UNIQUE_ID_ddebug254, !206, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/sh/fsi.c", i32 549, i32 3}
!210 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @fsi_stream_quit._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @fsi_stream_quit._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/sh/fsi.c", i32 552, i32 3}
!215 = !{ptr @fsi_stream_quit._entry.105, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @fsi_stream_quit._entry_ptr.107, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @fsi_dai_formats, !218, !"fsi_dai_formats", i1 false, i1 false}
!218 = !{!"../sound/soc/sh/fsi.c", i32 1702, i32 12}
!219 = !{ptr @fsi_of_match, !220, !"fsi_of_match", i1 false, i1 false}
!220 = !{!"../sound/soc/sh/fsi.c", i32 1900, i32 34}
!221 = !{ptr @fsi1_core, !222, !"fsi1_core", i1 false, i1 false}
!222 = !{!"../sound/soc/sh/fsi.c", i32 1880, i32 30}
!223 = !{ptr @fsi2_core, !224, !"fsi2_core", i1 false, i1 false}
!224 = !{!"../sound/soc/sh/fsi.c", i32 1889, i32 30}
!225 = !{ptr @fsi_pm_ops, !226, !"fsi_pm_ops", i1 false, i1 false}
!226 = !{!"../sound/soc/sh/fsi.c", i32 2086, i32 32}
!227 = !{ptr @fsi_id_table, !228, !"fsi_id_table", i1 false, i1 false}
!228 = !{!"../sound/soc/sh/fsi.c", i32 1907, i32 40}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{i64 2148801475, i64 2148801480, i64 2148801493, i64 2148801537, i64 2148801571, i64 2148801592}
!239 = !{i64 6269689}
!240 = !{i64 6269271}
