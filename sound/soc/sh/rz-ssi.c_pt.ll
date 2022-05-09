; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rz-ssi.c_pt.bc'
source_filename = "../sound/soc/sh/rz-ssi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rz_ssi_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, %struct.rz_ssi_stream, %struct.rz_ssi_stream, i32, i32, i32, i8, i8, i8 }
%struct.rz_ssi_stream = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_rz_ssi__241_1075_rz_ssi_driver_init6 = internal global ptr @rz_ssi_driver_init, section ".initcall6.init", align 4
@rz_ssi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rz_ssi_probe, ptr @rz_ssi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rz_ssi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rz_ssi_driver_exit = internal global ptr @rz_ssi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [48 x i8] c"snd_soc_rz_ssi.file=sound/soc/sh/snd-soc-rz-ssi\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [30 x i8] c"snd_soc_rz_ssi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [77 x i8] c"snd_soc_rz_ssi.description=Renesas RZ/G2L ASoC Serial Sound Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [60 x i8] c"snd_soc_rz_ssi.author=Biju Das <biju.das.jz@bp.renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rz-ssi-pcm-audio\00", [47 x i8] zeroinitializer }, align 32
@rz_ssi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rz-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssi_sfr\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_clk1\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no audio clk1\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_clk2\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no audio clk2\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no audio clk1 or audio clk2\00", [36 x i8] zeroinitializer }, align 32
@rz_ssi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 966, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA not available, using PIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rz_ssi_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/soc/sh/rz-ssi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rz_ssi_probe._entry_ptr = internal global ptr @rz_ssi_probe._entry, section ".printk_index", align 4
@rz_ssi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 970, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMA enabled\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rz_ssi_probe._entry_ptr.16 = internal global ptr @rz_ssi_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"int_req\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to get SSI int_req IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq request error (int_req)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get SSI dma_tx IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"irq request error (dma_tx)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dma_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get SSI dma_rx IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"irq request error (dma_rx)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pm_runtime_resume_and_get failed\0A\00", [62 x i8] zeroinitializer }, align 32
@rz_ssi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ssi->lock\00", [21 x i8] zeroinitializer }, align 32
@rz_ssi_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.42, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_pcm_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rz_ssi_soc_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.43, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rz_ssi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.10, i32 1041, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register snd component\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rz_ssi_probe._entry_ptr.31 = internal global ptr @rz_ssi_probe._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rt\00", [29 x i8] zeroinitializer }, align 32
@rz_ssi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.10, i32 624, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dmaengine_prep_slave_single() fail\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rz_ssi_dma_transfer\00", [44 x i8] zeroinitializer }, align 32
@rz_ssi_dma_transfer._entry_ptr = internal global ptr @rz_ssi_dma_transfer._entry, section ".printk_index", align 4
@rz_ssi_dma_transfer._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.10, i32 632, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmaengine_submit() fail\0A\00", [39 x i8] zeroinitializer }, align 32
@rz_ssi_dma_transfer._entry_ptr.39 = internal global ptr @rz_ssi_dma_transfer._entry.37, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rz_ssi_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.10, i32 377, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for SSI idle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rz_ssi_stop\00", [20 x i8] zeroinitializer }, align 32
@rz_ssi_stop._entry_ptr = internal global ptr @rz_ssi_stop._entry, section ".printk_index", align 4
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rz-ssi\00", [25 x i8] zeroinitializer }, align 32
@rz_ssi_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 32768, i32 32, i32 8192, i32 1, i32 32, i32 64 }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rz-ssi-dai\00", [21 x i8] zeroinitializer }, align 32
@rz_ssi_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rz_ssi_dai_hw_params, ptr null, ptr null, ptr @rz_ssi_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rz_ssi_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.10, i32 777, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Codec should be clk and frame consumer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rz_ssi_dai_set_fmt\00", [45 x i8] zeroinitializer }, align 32
@rz_ssi_dai_set_fmt._entry_ptr = internal global ptr @rz_ssi_dai_set_fmt._entry, section ".printk_index", align 4
@rz_ssi_dai_set_fmt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.10, i32 813, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Only I2S mode is supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@rz_ssi_dai_set_fmt._entry_ptr.48 = internal global ptr @rz_ssi_dai_set_fmt._entry.46, section ".printk_index", align 4
@rz_ssi_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.10, i32 831, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported sample width: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rz_ssi_dai_hw_params\00", [43 x i8] zeroinitializer }, align 32
@rz_ssi_dai_hw_params._entry_ptr = internal global ptr @rz_ssi_dai_hw_params._entry, section ".printk_index", align 4
@rz_ssi_dai_hw_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.10, i32 837, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Number of channels not matched: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rz_ssi_dai_hw_params._entry_ptr.53 = internal global ptr @rz_ssi_dai_hw_params._entry.51, section ".printk_index", align 4
@rz_ssi_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.10, i32 288, ptr @.str.30, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Rate not divisible by audio clock source\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rz_ssi_clk_setup\00", [47 x i8] zeroinitializer }, align 32
@rz_ssi_clk_setup._entry_ptr = internal global ptr @rz_ssi_clk_setup._entry, section ".printk_index", align 4
@rz_ssi_stream_quit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.10, i32 237, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"overrun = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rz_ssi_stream_quit\00", [45 x i8] zeroinitializer }, align 32
@rz_ssi_stream_quit._entry_ptr = internal global ptr @rz_ssi_stream_quit._entry, section ".printk_index", align 4
@rz_ssi_stream_quit._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.10, i32 240, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"underrun = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rz_ssi_stream_quit._entry_ptr.60 = internal global ptr @rz_ssi_stream_quit._entry.58, section ".printk_index", align 4
@switch.table.rz_ssi_dai_set_fmt = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\01\01", [27 x i8] zeroinitializer }, align 32
@switch.table.rz_ssi_dai_set_fmt.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\01\00\01", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 4, i64 6, i64 8, i64 12, i64 16, i64 24, i64 32, i64 48, i64 64, i64 96, i64 4294967168, i64 4294967295]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"rz_ssi_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1066, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1068, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"rz_ssi_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1060, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 937, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 941, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 945, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 948, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 951, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 954, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 959, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 966, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 970, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 979, i32 47 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 982, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 988, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 992, i32 47 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 995, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1002, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1004, i32 47 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1007, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1014, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1027, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1030, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"rz_ssi_soc_component\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 912, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"rz_ssi_soc_dai\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 893, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1041, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 678, i32 47 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 682, i32 46 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 687, i32 48 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 624, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 632, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 377, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 913, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"rz_ssi_pcm_hardware\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 851, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 895, i32 13 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"rz_ssi_dai_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 845, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 777, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 813, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 830, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 836, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 288, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 237, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [25 x i8] c"../sound/soc/sh/rz-ssi.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 240, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [32 x i8] c"switch.table.rz_ssi_dai_set_fmt\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [35 x i8] c"switch.table.rz_ssi_dai_set_fmt.61\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_rz_ssi_driver_exit, ptr @__initcall__kmod_snd_soc_rz_ssi__241_1075_rz_ssi_driver_init6, ptr @rz_ssi_clk_setup._entry, ptr @rz_ssi_clk_setup._entry_ptr, ptr @rz_ssi_dai_hw_params._entry, ptr @rz_ssi_dai_hw_params._entry.51, ptr @rz_ssi_dai_hw_params._entry_ptr, ptr @rz_ssi_dai_hw_params._entry_ptr.53, ptr @rz_ssi_dai_set_fmt._entry, ptr @rz_ssi_dai_set_fmt._entry.46, ptr @rz_ssi_dai_set_fmt._entry_ptr, ptr @rz_ssi_dai_set_fmt._entry_ptr.48, ptr @rz_ssi_dma_transfer._entry, ptr @rz_ssi_dma_transfer._entry.37, ptr @rz_ssi_dma_transfer._entry_ptr, ptr @rz_ssi_dma_transfer._entry_ptr.39, ptr @rz_ssi_driver_exit, ptr @rz_ssi_probe._entry, ptr @rz_ssi_probe._entry.13, ptr @rz_ssi_probe._entry.28, ptr @rz_ssi_probe._entry_ptr, ptr @rz_ssi_probe._entry_ptr.16, ptr @rz_ssi_probe._entry_ptr.31, ptr @rz_ssi_stop._entry, ptr @rz_ssi_stop._entry_ptr, ptr @rz_ssi_stream_quit._entry, ptr @rz_ssi_stream_quit._entry.58, ptr @rz_ssi_stream_quit._entry_ptr, ptr @rz_ssi_stream_quit._entry_ptr.60, ptr @rz_ssi_driver, ptr @.str, ptr @rz_ssi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rz_ssi_probe.__key, ptr @.str.27, ptr @rz_ssi_soc_component, ptr @rz_ssi_soc_dai, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rz_ssi_pcm_hardware, ptr @.str.43, ptr @rz_ssi_dai_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @switch.table.rz_ssi_dai_set_fmt, ptr @switch.table.rz_ssi_dai_set_fmt.61], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_soc_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dma_transfer._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dai_set_fmt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_dai_hw_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_stream_quit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rz_ssi_stream_quit._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rz_ssi_dai_set_fmt to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rz_ssi_dai_set_fmt.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rz_ssi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rz_ssi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rz_ssi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !146
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 4
  %dev3 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev3, align 4
  %call4 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %phys = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %phys, align 4
  %call12 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %clk = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %clk, align 4
  %cmp.i275 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call20 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %sfr_clk = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %sfr_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %sfr_clk, align 4
  %cmp.i276 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call28 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %cmp.i277 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i277, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call28 to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call35 = call i32 @clk_get_rate(ptr noundef %call28) #9
  %audio_clk_1 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %audio_clk_1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call35, ptr %audio_clk_1, align 4
  %call37 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %cmp.i278 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call37 to i32
  %call42 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %call44 = call i32 @clk_get_rate(ptr noundef %call37) #9
  %audio_clk_2 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 15
  %17 = ptrtoint ptr %audio_clk_2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call44, ptr %audio_clk_2, align 4
  %18 = ptrtoint ptr %audio_clk_1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audio_clk_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool48.not = icmp eq i32 %call44, 0
  %or.cond = select i1 %tobool46.not, i1 %tobool48.not, i1 false
  br i1 %or.cond, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -22, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end43
  %spec.select = select i1 %tobool46.not, i32 %call44, i32 %19
  %audio_mck = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %audio_mck to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %audio_mck, align 4
  %call58 = call fastcc i32 @rz_ssi_dma_request(ptr noundef nonnull %call.i, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %do.end, label %do.end64

do.end:                                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %if.end70

do.end64:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %do.end
  %rz_ssi_dma_transfer.sink297 = phi ptr [ @rz_ssi_pio_send, %do.end ], [ @rz_ssi_dma_transfer, %do.end64 ]
  %rz_ssi_dma_transfer.sink = phi ptr [ @rz_ssi_pio_recv, %do.end ], [ @rz_ssi_dma_transfer, %do.end64 ]
  %21 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 11, i32 11
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rz_ssi_dma_transfer.sink297, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 12, i32 11
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rz_ssi_dma_transfer.sink, ptr %23, align 4
  %playback71 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %playback71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %playback71, align 4
  %capture72 = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 12
  %26 = ptrtoint ptr %capture72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %capture72, align 4
  %call74 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #9
  %irq_int = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %irq_int to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call74, ptr %irq_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp76 = icmp slt i32 %call74, 0
  br i1 %cmp76, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end70
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end80.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %29, %if.end80.dev_name.exit_crit_edge ]
  %call.i279 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call74, ptr noundef nonnull @rz_ssi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %cmp86 = icmp slt i32 %call.i279, 0
  br i1 %cmp86, label %if.then87, label %if.end90

if.then87:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i279, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end90:                                         ; preds = %dev_name.exit
  %dma_ch.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 11, i32 10
  %32 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_ch.i, align 4
  %tobool.not.i280 = icmp eq ptr %33, null
  br i1 %tobool.not.i280, label %if.end90.if.then92_crit_edge, label %land.rhs.i

if.end90.if.then92_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then92

land.rhs.i:                                       ; preds = %if.end90
  %dma_rt.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 18
  %34 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dma_rt.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i, label %rz_ssi_is_dma_enabled.exit, label %land.rhs.i.if.end127_crit_edge

land.rhs.i.if.end127_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

rz_ssi_is_dma_enabled.exit:                       ; preds = %land.rhs.i
  %dma_ch2.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 12, i32 10
  %36 = ptrtoint ptr %dma_ch2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_ch2.i, align 4
  %tobool3.i.not = icmp eq ptr %37, null
  br i1 %tobool3.i.not, label %rz_ssi_is_dma_enabled.exit.if.then92_crit_edge, label %rz_ssi_is_dma_enabled.exit.if.end127_crit_edge

rz_ssi_is_dma_enabled.exit.if.end127_crit_edge:   ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

rz_ssi_is_dma_enabled.exit.if.then92_crit_edge:   ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then92

if.then92:                                        ; preds = %rz_ssi_is_dma_enabled.exit.if.then92_crit_edge, %if.end90.if.then92_crit_edge
  %call93 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #9
  %irq_tx = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %irq_tx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call93, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp95 = icmp slt i32 %call93, 0
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end99:                                         ; preds = %if.then92
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i282 = icmp eq ptr %40, null
  br i1 %tobool.not.i282, label %if.end.i283, label %if.end99.dev_name.exit285_crit_edge

if.end99.dev_name.exit285_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit285

if.end.i283:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit285

dev_name.exit285:                                 ; preds = %if.end.i283, %if.end99.dev_name.exit285_crit_edge
  %retval.0.i284 = phi ptr [ %42, %if.end.i283 ], [ %40, %if.end99.dev_name.exit285_crit_edge ]
  %call.i286 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call93, ptr noundef nonnull @rz_ssi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i284, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %cmp105 = icmp slt i32 %call.i286, 0
  br i1 %cmp105, label %if.then106, label %if.end109

if.then106:                                       ; preds = %dev_name.exit285
  call void @__sanitizer_cov_trace_pc() #11
  %call108 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i286, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end109:                                        ; preds = %dev_name.exit285
  %call110 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.23) #9
  %irq_rx = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %irq_rx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call110, ptr %irq_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp112 = icmp slt i32 %call110, 0
  br i1 %cmp112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %call115 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end116:                                        ; preds = %if.end109
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i288 = icmp eq ptr %45, null
  br i1 %tobool.not.i288, label %if.end.i289, label %if.end116.dev_name.exit291_crit_edge

if.end116.dev_name.exit291_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit291

if.end.i289:                                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  br label %dev_name.exit291

dev_name.exit291:                                 ; preds = %if.end.i289, %if.end116.dev_name.exit291_crit_edge
  %retval.0.i290 = phi ptr [ %47, %if.end.i289 ], [ %45, %if.end116.dev_name.exit291_crit_edge ]
  %call.i292 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call110, ptr noundef nonnull @rz_ssi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i290, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp122 = icmp slt i32 %call.i292, 0
  br i1 %cmp122, label %if.then123, label %dev_name.exit291.if.end127_crit_edge

dev_name.exit291.if.end127_crit_edge:             ; preds = %dev_name.exit291
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then123:                                       ; preds = %dev_name.exit291
  call void @__sanitizer_cov_trace_pc() #11
  %call125 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i292, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end127:                                        ; preds = %dev_name.exit291.if.end127_crit_edge, %rz_ssi_is_dma_enabled.exit.if.end127_crit_edge, %land.rhs.i.if.end127_crit_edge
  %call.i293 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rstc = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i293, ptr %rstc, align 4
  %cmp.i294 = icmp ugt ptr %call.i293, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i294, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call.i293 to i32
  br label %cleanup

if.end135:                                        ; preds = %if.end127
  %call137 = call i32 @reset_control_deassert(ptr noundef %call.i293) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call140 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then142, label %do.body149

if.then142:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev3, align 4
  call void @__pm_runtime_disable(ptr noundef %51, i1 noundef zeroext true) #9
  %52 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rstc, align 4
  %call145 = call i32 @reset_control_assert(ptr noundef %53) #9
  %54 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev3, align 4
  %call147 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %55, i32 noundef %call140, ptr noundef nonnull @.str.26) #9
  br label %cleanup

do.body149:                                       ; preds = %if.end135
  %lock = getelementptr inbounds %struct.rz_ssi_priv, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @rz_ssi_probe.__key, i16 noundef signext 3) #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call155 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rz_ssi_soc_component, ptr noundef nonnull @rz_ssi_soc_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %do.body149.cleanup_crit_edge

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then157:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rz_ssi_release_dma_channels(ptr noundef nonnull %call.i)
  %57 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev3, align 4
  %call.i295 = call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 5) #9
  %59 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev3, align 4
  call void @__pm_runtime_disable(ptr noundef %60, i1 noundef zeroext true) #9
  %61 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rstc, align 4
  %call162 = call i32 @reset_control_assert(ptr noundef %62) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then157, %do.body149.cleanup_crit_edge, %if.then142, %if.then132, %if.then123, %if.then113, %if.then106, %if.then96, %if.then87, %if.then77, %if.then49, %if.then39, %if.then30, %if.then23, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %11, %if.then15 ], [ %13, %if.then23 ], [ %call33, %if.then30 ], [ %call42, %if.then39 ], [ %call79, %if.then77 ], [ %call89, %if.then87 ], [ %49, %if.then132 ], [ %call147, %if.then142 ], [ %call98, %if.then96 ], [ %call108, %if.then106 ], [ %call115, %if.then113 ], [ %call125, %if.then123 ], [ %call51, %if.then49 ], [ -12, %entry.cleanup_crit_edge ], [ %call155, %if.then157 ], [ %call155, %do.body149.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dma_ch.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %1, i32 0, i32 11, i32 10
  %2 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_ch.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %if.then.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %entry
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma_ch.i, align 4
  %dma_rt.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dma_rt.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.i = icmp eq i8 %6, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then6.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dma_rt.i, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %dma_ch9.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %1, i32 0, i32 12, i32 10
  %8 = ptrtoint ptr %dma_ch9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_ch9.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %if.end8.i.rz_ssi_release_dma_channels.exit_crit_edge, label %if.then11.i

if.end8.i.rz_ssi_release_dma_channels.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_release_dma_channels.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %dma_ch9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_ch9.i, align 4
  br label %rz_ssi_release_dma_channels.exit

rz_ssi_release_dma_channels.exit:                 ; preds = %if.then11.i, %if.end8.i.rz_ssi_release_dma_channels.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.rz_ssi_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #9
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #9
  %rstc = getelementptr inbounds %struct.rz_ssi_priv, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rstc, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %16) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rz_ssi_dma_request(ptr nocapture noundef %ssi, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %cfg.i78 = alloca %struct.dma_slave_config, align 4
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  %dma_ch = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 11, i32 10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spec.store.select, ptr %dma_ch, align 4
  %call6 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  %dma_ch7 = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 12, i32 10
  %cmp.i76 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.store.select117 = select i1 %cmp.i76, ptr null, ptr %call6
  %1 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spec.store.select117, ptr %dma_ch7, align 4
  %2 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_ch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_ch7, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.then11.i_crit_edge

land.lhs.true.if.then11.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then20:                                        ; preds = %land.lhs.true
  %call21 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  %6 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %dma_ch, align 4
  %cmp.i77 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %no_dma.thread, label %if.end31

no_dma.thread:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dma_ch, align 4
  br label %if.end8.i

if.end31:                                         ; preds = %if.then20
  %dma_rt = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %8 = ptrtoint ptr %dma_rt to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dma_rt, align 2
  %tobool.not.i = icmp eq ptr %call21, null
  br i1 %tobool.not.i, label %if.end31.no_dma_crit_edge, label %if.end31.land.rhs.i_crit_edge

if.end31.land.rhs.i_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end31.no_dma_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_dma

land.rhs.i:                                       ; preds = %if.end31.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %9 = phi ptr [ %call21, %if.end31.land.rhs.i_crit_edge ], [ %3, %entry.land.rhs.i_crit_edge ]
  %dma_rt.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %10 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_rt.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %rz_ssi_is_dma_enabled.exit, label %land.rhs.i.land.lhs.true38_crit_edge

land.rhs.i.land.lhs.true38_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true38

rz_ssi_is_dma_enabled.exit:                       ; preds = %land.rhs.i
  %12 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_ch7, align 4
  %tobool3.i.not = icmp eq ptr %13, null
  br i1 %tobool3.i.not, label %rz_ssi_is_dma_enabled.exit.no_dma_crit_edge, label %rz_ssi_is_dma_enabled.exit.land.lhs.true38_crit_edge

rz_ssi_is_dma_enabled.exit.land.lhs.true38_crit_edge: ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true38

rz_ssi_is_dma_enabled.exit.no_dma_crit_edge:      ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_dma

land.lhs.true38:                                  ; preds = %rz_ssi_is_dma_enabled.exit.land.lhs.true38_crit_edge, %land.rhs.i.land.lhs.true38_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #9
  %14 = getelementptr inbounds i8, ptr %cfg.i, i32 20
  %15 = call ptr @memset(ptr %14, i32 0, i32 28)
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cfg.i, align 4
  %phys.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 6
  %17 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys.i, align 4
  %add.i = add i32 %18, 24
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %19 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %add2.i = add i32 %18, 28
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %20 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add2.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %21 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %22 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %dst_addr_width.i, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %rz_ssi_dma_slave_config.exit.thread, label %rz_ssi_dma_slave_config.exit

rz_ssi_dma_slave_config.exit.thread:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  br label %no_dma

rz_ssi_dma_slave_config.exit:                     ; preds = %land.lhs.true38
  %call.i.i = call i32 %26(ptr noundef nonnull %9, ptr noundef nonnull %cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %rz_ssi_dma_slave_config.exit.no_dma_crit_edge, label %if.end43

rz_ssi_dma_slave_config.exit.no_dma_crit_edge:    ; preds = %rz_ssi_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_dma

if.end43:                                         ; preds = %rz_ssi_dma_slave_config.exit
  %27 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %dma_ch7, align 4
  %tobool46.not = icmp eq ptr %.pr, null
  br i1 %tobool46.not, label %if.end43.return_crit_edge, label %land.lhs.true47

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true47:                                  ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i78) #9
  %28 = getelementptr inbounds i8, ptr %cfg.i78, i32 20
  %29 = call ptr @memset(ptr %28, i32 0, i32 28)
  %30 = ptrtoint ptr %cfg.i78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %cfg.i78, align 4
  %31 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys.i, align 4
  %add.i80 = add i32 %32, 24
  %dst_addr.i81 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i78, i32 0, i32 2
  %33 = ptrtoint ptr %dst_addr.i81 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i80, ptr %dst_addr.i81, align 4
  %add2.i82 = add i32 %32, 28
  %src_addr.i83 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i78, i32 0, i32 1
  %34 = ptrtoint ptr %src_addr.i83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add2.i82, ptr %src_addr.i83, align 4
  %src_addr_width.i84 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i78, i32 0, i32 3
  %35 = ptrtoint ptr %src_addr_width.i84 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %src_addr_width.i84, align 4
  %dst_addr_width.i85 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i78, i32 0, i32 4
  %36 = ptrtoint ptr %dst_addr_width.i85 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %dst_addr_width.i85, align 4
  %37 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pr, align 4
  %device_config.i.i86 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %device_config.i.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_config.i.i86, align 4
  %tobool.not.i.i87 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i87, label %rz_ssi_dma_slave_config.exit91.thread, label %rz_ssi_dma_slave_config.exit91

rz_ssi_dma_slave_config.exit91.thread:            ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i78) #9
  br label %no_dma

rz_ssi_dma_slave_config.exit91:                   ; preds = %land.lhs.true47
  %call.i.i88 = call i32 %40(ptr noundef nonnull %.pr, ptr noundef nonnull %cfg.i78) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %cmp51 = icmp slt i32 %call.i.i88, 0
  br i1 %cmp51, label %rz_ssi_dma_slave_config.exit91.no_dma_crit_edge, label %rz_ssi_dma_slave_config.exit91.return_crit_edge

rz_ssi_dma_slave_config.exit91.return_crit_edge:  ; preds = %rz_ssi_dma_slave_config.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

rz_ssi_dma_slave_config.exit91.no_dma_crit_edge:  ; preds = %rz_ssi_dma_slave_config.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_dma

no_dma:                                           ; preds = %rz_ssi_dma_slave_config.exit91.no_dma_crit_edge, %rz_ssi_dma_slave_config.exit91.thread, %rz_ssi_dma_slave_config.exit.no_dma_crit_edge, %rz_ssi_dma_slave_config.exit.thread, %rz_ssi_is_dma_enabled.exit.no_dma_crit_edge, %if.end31.no_dma_crit_edge
  %41 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr109.pr = load ptr, ptr %dma_ch, align 4
  %tobool.not.i93 = icmp eq ptr %.pr109.pr, null
  br i1 %tobool.not.i93, label %no_dma.if.end8.i_crit_edge, label %if.then.i

no_dma.if.end8.i_crit_edge:                       ; preds = %no_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %no_dma
  call void @dma_release_channel(ptr noundef nonnull %.pr109.pr) #9
  %42 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %dma_ch, align 4
  %dma_rt.i94 = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %43 = ptrtoint ptr %dma_rt.i94 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dma_rt.i94, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool5.not.i = icmp eq i8 %44, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then6.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %dma_rt.i94 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %dma_rt.i94, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i.if.end8.i_crit_edge, %no_dma.if.end8.i_crit_edge, %no_dma.thread
  %46 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr115 = load ptr, ptr %dma_ch7, align 4
  %tobool10.not.i = icmp eq ptr %.pr115, null
  br i1 %tobool10.not.i, label %if.end8.i.return_crit_edge, label %if.end8.i.if.then11.i_crit_edge

if.end8.i.if.then11.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.end8.i.return_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then11.i:                                      ; preds = %if.end8.i.if.then11.i_crit_edge, %land.lhs.true.if.then11.i_crit_edge
  %47 = phi ptr [ %.pr115, %if.end8.i.if.then11.i_crit_edge ], [ %5, %land.lhs.true.if.then11.i_crit_edge ]
  call void @dma_release_channel(ptr noundef nonnull %47) #9
  %48 = ptrtoint ptr %dma_ch7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %dma_ch7, align 4
  br label %return

return:                                           ; preds = %if.then11.i, %if.end8.i.return_crit_edge, %rz_ssi_dma_slave_config.exit91.return_crit_edge, %if.end43.return_crit_edge
  %retval.0 = phi i32 [ 0, %rz_ssi_dma_slave_config.exit91.return_crit_edge ], [ 0, %if.end43.return_crit_edge ], [ -19, %if.end8.i.return_crit_edge ], [ -19, %if.then11.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_pio_send(ptr noundef %ssi, ptr nocapture noundef %strm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 1
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %lock.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %rz_ssi_stream_is_valid.exit.thread, label %rz_ssi_stream_is_valid.exit

rz_ssi_stream_is_valid.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %cleanup

rz_ssi_stream_is_valid.exit:                      ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime.i, align 4
  %tobool6.i.not = icmp eq ptr %7, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br i1 %tobool6.i.not, label %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, label %if.end

rz_ssi_stream_is_valid.exit.cleanup_crit_edge:    ; preds = %rz_ssi_stream_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rz_ssi_stream_is_valid.exit
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size, align 4
  %buffer_pos = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 6
  %10 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_pos, align 4
  %rem = urem i32 %11, %9
  %sub = sub i32 %9, %rem
  %fifo_sample_size = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 2
  %12 = ptrtoint ptr %fifo_sample_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_sample_size, align 4
  %14 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssi, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool9.not57 = icmp eq i32 %sub, 0
  br i1 %tobool9.not57, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %and = and i32 %16, 63
  %sub8 = sub i32 %13, %and
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %frames_left.160 = phi i32 [ %sub, %land.rhs.lr.ph ], [ %dec, %while.body.land.rhs_crit_edge ]
  %samples.059 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %while.body.land.rhs_crit_edge ]
  %sample_space.058 = phi i32 [ %sub8, %land.rhs.lr.ph ], [ %sub13, %while.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_space.058, i32 %18)
  %cmp10.not = icmp ult i32 %sample_space.058, %18
  br i1 %cmp10.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add = add i32 %18, %samples.059
  %sub13 = sub i32 %sample_space.058, %18
  %dec = add i32 %frames_left.160, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %samples.0.lcssa = phi i32 [ %samples.059, %land.rhs.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples.0.lcssa)
  %cmp14 = icmp eq i32 %samples.0.lcssa, 0
  br i1 %cmp14, label %while.end.cleanup_crit_edge, label %if.end16

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %while.end
  %channels18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples.0.lcssa)
  %cmp1962 = icmp sgt i32 %samples.0.lcssa, 0
  br i1 %cmp1962, label %for.body.preheader, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end16
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %21 = ptrtoint ptr %channels18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels18, align 8
  %23 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_pos, align 4
  %mul = mul i32 %22, %24
  %add.ptr = getelementptr i16, ptr %20, i32 %mul
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %buf.064 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i16, ptr %buf.064, i32 1
  %25 = ptrtoint ptr %buf.064 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buf.064, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = zext i16 %27 to i32
  %29 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ssi, align 4
  %add.ptr.i53 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %28) #9, !srcloc !151
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %samples.0.lcssa
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %31 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ssi, align 4
  %add.ptr.i54 = getelementptr i8, ptr %32, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %34 = and i32 %33, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ssi, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %34) #9, !srcloc !151
  %37 = ptrtoint ptr %channels18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channels18, align 8
  %div = udiv i32 %samples.0.lcssa, %38
  %39 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %substream1, align 4
  %running.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 7
  %41 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i55 = icmp eq i32 %42, 0
  %tobool2.not.i = icmp eq ptr %40, null
  %or.cond.i = select i1 %tobool.not.i55, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %for.end.cleanup_crit_edge, label %lor.lhs.false3.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %for.end
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %runtime4.i, align 4
  %tobool5.not.i = icmp eq ptr %44, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %45 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buffer_pos, align 4
  %add.i = add i32 %46, %div
  store i32 %add.i, ptr %buffer_pos, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %44, i32 0, i32 18
  %47 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %48)
  %cmp.i = icmp ugt i32 %add.i, %48
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end22.i_crit_edge, !prof !154

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 397, i32 noundef 9, ptr noundef null) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %if.end.i.if.end22.i_crit_edge
  %49 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buffer_pos, align 4
  %51 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp31.i = icmp eq i32 %50, %52
  br i1 %cmp31.i, label %if.then32.i, label %if.end22.i.if.end34.i_crit_edge

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %buffer_pos, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end22.i.if.end34.i_crit_edge
  %54 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_pos, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %44, i32 0, i32 16
  %56 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %period_size.i, align 4
  %div.i = udiv i32 %55, %57
  %period_counter.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 4
  %58 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %period_counter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %div.i)
  %cmp36.not.i = icmp eq i32 %59, %div.i
  br i1 %cmp36.not.i, label %if.end34.i.cleanup_crit_edge, label %if.then37.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %substream1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %61) #9
  %62 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div.i, ptr %period_counter.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37.i, %if.end34.i.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.thread
  %retval.0 = phi i32 [ -22, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ -22, %rz_ssi_stream_is_valid.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %lor.lhs.false3.i.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ 0, %if.then37.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_pio_recv(ptr noundef %ssi, ptr nocapture noundef %strm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 10
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %call2.i88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 4
  %tobool.not.i89 = icmp eq ptr %3, null
  br i1 %tobool.not.i89, label %entry.rz_ssi_stream_is_valid.exit.thread_crit_edge, label %rz_ssi_stream_is_valid.exit.lr.ph

entry.rz_ssi_stream_is_valid.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_stream_is_valid.exit.thread

rz_ssi_stream_is_valid.exit.lr.ph:                ; preds = %entry
  %buffer_pos = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 6
  %running.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 7
  %period_counter.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 4
  %runtime.i108 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime.i108 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime.i108, align 4
  %tobool6.i.not109 = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i88) #9
  br i1 %tobool6.i.not109, label %rz_ssi_stream_is_valid.exit.lr.ph.cleanup_crit_edge, label %rz_ssi_stream_is_valid.exit.lr.ph.if.end_crit_edge

rz_ssi_stream_is_valid.exit.lr.ph.if.end_crit_edge: ; preds = %rz_ssi_stream_is_valid.exit.lr.ph
  br label %if.end

rz_ssi_stream_is_valid.exit.lr.ph.cleanup_crit_edge: ; preds = %rz_ssi_stream_is_valid.exit.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rz_ssi_stream_is_valid.exit.thread:               ; preds = %if.then27.rz_ssi_stream_is_valid.exit.thread_crit_edge, %entry.rz_ssi_stream_is_valid.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i88, %entry.rz_ssi_stream_is_valid.exit.thread_crit_edge ], [ %call2.i, %if.then27.rz_ssi_stream_is_valid.exit.thread_crit_edge ]
  %6 = xor i1 %tobool.not.i89, true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.lcssa) #9
  br label %cleanup

rz_ssi_stream_is_valid.exit:                      ; preds = %if.then27
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %70, i32 0, i32 11
  %7 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.i, align 4
  %tobool6.i.not = icmp eq ptr %8, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br i1 %tobool6.i.not, label %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, label %rz_ssi_stream_is_valid.exit.if.end_crit_edge

rz_ssi_stream_is_valid.exit.if.end_crit_edge:     ; preds = %rz_ssi_stream_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

rz_ssi_stream_is_valid.exit.cleanup_crit_edge:    ; preds = %rz_ssi_stream_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rz_ssi_stream_is_valid.exit.if.end_crit_edge, %rz_ssi_stream_is_valid.exit.lr.ph.if.end_crit_edge
  %ret.known.tr91110 = phi i1 [ true, %rz_ssi_stream_is_valid.exit.if.end_crit_edge ], [ false, %rz_ssi_stream_is_valid.exit.lr.ph.if.end_crit_edge ]
  %9 = phi ptr [ %68, %rz_ssi_stream_is_valid.exit.if.end_crit_edge ], [ %1, %rz_ssi_stream_is_valid.exit.lr.ph.if.end_crit_edge ]
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime2, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_size, align 4
  %14 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_pos, align 4
  %rem = urem i32 %15, %13
  %sub = sub i32 %13, %rem
  %16 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssi, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool8.not75 = icmp eq i32 %sub, 0
  br i1 %tobool8.not75, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %19 = lshr i32 %18, 16
  %and = and i32 %19, 63
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %samples.078 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %while.body.land.rhs_crit_edge ]
  %frames_left.177 = phi i32 [ %sub, %land.rhs.lr.ph ], [ %dec, %while.body.land.rhs_crit_edge ]
  %fifo_samples.076 = phi i32 [ %and, %land.rhs.lr.ph ], [ %sub12, %while.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fifo_samples.076, i32 %21)
  %cmp9.not = icmp ult i32 %fifo_samples.076, %21
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add = add i32 %21, %samples.078
  %sub12 = sub i32 %fifo_samples.076, %21
  %dec = add i32 %frames_left.177, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %fifo_samples.0.lcssa.ph = phi i32 [ %fifo_samples.076, %land.rhs.while.end_crit_edge ], [ %sub12, %while.body.while.end_crit_edge ]
  %samples.0.lcssa.ph = phi i32 [ %samples.078, %land.rhs.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples.0.lcssa.ph)
  %cmp13 = icmp eq i32 %samples.0.lcssa.ph, 0
  br i1 %cmp13, label %while.end.cleanup_crit_edge, label %if.end15

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %channels17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples.0.lcssa.ph)
  %cmp1885 = icmp sgt i32 %samples.0.lcssa.ph, 0
  br i1 %cmp1885, label %for.body.preheader, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end15
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 50
  %22 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_area, align 4
  %24 = ptrtoint ptr %channels17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels17, align 8
  %26 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_pos, align 4
  %mul = mul i32 %25, %27
  %add.ptr = getelementptr i16, ptr %23, i32 %mul
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %buf.086 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %28 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ssi, align 4
  %add.ptr.i64 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !148
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %shr20 = lshr i32 %31, 16
  %conv = trunc i32 %shr20 to i16
  %incdec.ptr = getelementptr i16, ptr %buf.086, i32 1
  %32 = ptrtoint ptr %buf.086 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %buf.086, align 2
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %samples.0.lcssa.ph
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end15.for.end_crit_edge
  %33 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ssi, align 4
  %add.ptr.i65 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %36 = and i32 %35, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ssi, align 4
  %add.ptr3.i = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %36) #9, !srcloc !151
  %39 = ptrtoint ptr %channels17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channels17, align 8
  %div = udiv i32 %samples.0.lcssa.ph, %40
  %41 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %substream1, align 4
  %43 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i66 = icmp eq i32 %44, 0
  %tobool2.not.i = icmp eq ptr %42, null
  %or.cond.i = select i1 %tobool.not.i66, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %for.end.rz_ssi_pointer_update.exit_crit_edge, label %lor.lhs.false3.i

for.end.rz_ssi_pointer_update.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_pointer_update.exit

lor.lhs.false3.i:                                 ; preds = %for.end
  %runtime4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %42, i32 0, i32 11
  %45 = ptrtoint ptr %runtime4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %runtime4.i, align 4
  %tobool5.not.i = icmp eq ptr %46, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.rz_ssi_pointer_update.exit_crit_edge, label %if.end.i

lor.lhs.false3.i.rz_ssi_pointer_update.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_pointer_update.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %47 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_pos, align 4
  %add.i = add i32 %48, %div
  store i32 %add.i, ptr %buffer_pos, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 18
  %49 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %50)
  %cmp.i = icmp ugt i32 %add.i, %50
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end22.i_crit_edge, !prof !154

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 397, i32 noundef 9, ptr noundef null) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %if.end.i.if.end22.i_crit_edge
  %51 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buffer_pos, align 4
  %53 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp31.i = icmp eq i32 %52, %54
  br i1 %cmp31.i, label %if.then32.i, label %if.end22.i.if.end34.i_crit_edge

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %buffer_pos, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end22.i.if.end34.i_crit_edge
  %56 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buffer_pos, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 16
  %58 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %period_size.i, align 4
  %div.i = udiv i32 %57, %59
  %60 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %period_counter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %div.i)
  %cmp36.not.i = icmp eq i32 %61, %div.i
  br i1 %cmp36.not.i, label %if.end34.i.rz_ssi_pointer_update.exit_crit_edge, label %if.then37.i

if.end34.i.rz_ssi_pointer_update.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_pointer_update.exit

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %substream1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %63) #9
  %64 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div.i, ptr %period_counter.i, align 4
  br label %rz_ssi_pointer_update.exit

rz_ssi_pointer_update.exit:                       ; preds = %if.then37.i, %if.end34.i.rz_ssi_pointer_update.exit_crit_edge, %lor.lhs.false3.i.rz_ssi_pointer_update.exit_crit_edge, %for.end.rz_ssi_pointer_update.exit_crit_edge
  br i1 %cmp9.not, label %rz_ssi_pointer_update.exit.cleanup_crit_edge, label %land.lhs.true

rz_ssi_pointer_update.exit.cleanup_crit_edge:     ; preds = %rz_ssi_pointer_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %rz_ssi_pointer_update.exit
  %65 = ptrtoint ptr %channels17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %channels17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %fifo_samples.0.lcssa.ph, i32 %66)
  %cmp25.not = icmp ult i32 %fifo_samples.0.lcssa.ph, %66
  br i1 %cmp25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true
  %67 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %substream1, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %69 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %substream1, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.then27.rz_ssi_stream_is_valid.exit.thread_crit_edge, label %rz_ssi_stream_is_valid.exit

if.then27.rz_ssi_stream_is_valid.exit.thread_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_stream_is_valid.exit.thread

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %rz_ssi_pointer_update.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.thread, %rz_ssi_stream_is_valid.exit.lr.ph.cleanup_crit_edge
  %ret.known.tr72 = phi i1 [ %6, %rz_ssi_stream_is_valid.exit.thread ], [ false, %rz_ssi_stream_is_valid.exit.lr.ph.cleanup_crit_edge ], [ %ret.known.tr91110, %if.end.cleanup_crit_edge ], [ %ret.known.tr91110, %rz_ssi_pointer_update.exit.cleanup_crit_edge ], [ %ret.known.tr91110, %land.lhs.true.cleanup_crit_edge ], [ %ret.known.tr91110, %while.end.cleanup_crit_edge ], [ true, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -22, %rz_ssi_stream_is_valid.exit.thread ], [ -22, %rz_ssi_stream_is_valid.exit.lr.ph.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %rz_ssi_pointer_update.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ -22, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge ]
  %current.ret.tr68 = select i1 %ret.known.tr72, i32 0, i32 %retval.0
  ret i32 %current.ret.tr68
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_dma_transfer(ptr noundef %ssi, ptr noundef %strm) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 1
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %lock.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %rz_ssi_stream_is_valid.exit.thread, label %rz_ssi_stream_is_valid.exit

rz_ssi_stream_is_valid.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %cleanup

rz_ssi_stream_is_valid.exit:                      ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime.i, align 4
  %tobool6.i.not = icmp eq ptr %5, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br i1 %tobool6.i.not, label %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, label %if.end

rz_ssi_stream_is_valid.exit.cleanup_crit_edge:    ; preds = %rz_ssi_stream_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rz_ssi_stream_is_valid.exit
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp = icmp eq i32 %11, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %cond = select i1 %cmp.i, i32 1, i32 2
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_size, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 8
  %dma_buffer_pos = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 3
  %18 = ptrtoint ptr %dma_buffer_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_buffer_pos, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %20 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %21, %19
  %div1.i = lshr i32 %mul.i, 3
  %add = add i32 %div1.i, %17
  %mul.i56 = mul i32 %21, %15
  %div1.i57 = lshr i32 %mul.i56, 3
  %dma_ch = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 10
  %22 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_ch, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %24 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %26 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #9
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %24, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div1.i57, ptr %25, align 4
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %if.end4.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end4.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 39
  %31 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end4.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  br label %do.end

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %32(ptr noundef nonnull %23, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %cond, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %dmaengine_prep_slave_single.exit.do.end_crit_edge, label %if.end11

dmaengine_prep_slave_single.exit.do.end_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_single.exit.do.end_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %dev = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end11:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rz_ssi_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %strm, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_submit.i, align 4
  %call.i59 = call i32 %38(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp13 = icmp slt i32 %call.i59, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev18 = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 3
  %39 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dma_buffer_pos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_buffer_pos, align 4
  %add21 = add i32 %42, %15
  store i32 %add21, ptr %dma_buffer_pos, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 18
  %43 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %44)
  %cmp23.not = icmp ult i32 %add21, %44
  %spec.store.select = select i1 %cmp23.not, i32 %add21, i32 0
  %45 = ptrtoint ptr %dma_buffer_pos to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %dma_buffer_pos, align 4
  %46 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_ch, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 50
  %50 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_issue_pending.i, align 4
  call void %51(ptr noundef %47) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %do.end, %if.end.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge, %rz_ssi_stream_is_valid.exit.thread
  %retval.0 = phi i32 [ -5, %do.end17 ], [ 0, %if.end19 ], [ -12, %do.end ], [ -22, %rz_ssi_stream_is_valid.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %rz_ssi_stream_is_valid.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %playback = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 11
  %substream = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  %substream2 = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %capture = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  %strm.0 = phi ptr [ %capture, %if.then4 ], [ %playback, %entry.if.end7_crit_edge ]
  %irq_int = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 7
  %8 = ptrtoint ptr %irq_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_int, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp = icmp eq i32 %9, %irq
  br i1 %cmp, label %if.then8, label %if.end7.if.end36_crit_edge

if.end7.if.end36_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then8:                                         ; preds = %if.end7
  %and = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then8.if.end11_crit_edge, label %if.then10

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %uerr_num = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 8
  %10 = ptrtoint ptr %uerr_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uerr_num, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %uerr_num, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %and12 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %oerr_num = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 9
  %12 = ptrtoint ptr %oerr_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oerr_num, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, ptr %oerr_num, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %and17 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %uerr_num20 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 8
  %14 = ptrtoint ptr %uerr_num20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uerr_num20, align 4
  %inc21 = add i32 %15, 1
  store i32 %inc21, ptr %uerr_num20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %and23 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %oerr_num26 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 9
  %16 = ptrtoint ptr %oerr_num26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oerr_num26, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr %oerr_num26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %and29 = and i32 %3, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end36_crit_edge, label %if.then31

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rz_ssi_stop(ptr noundef %data, ptr noundef %strm.0)
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr.i86 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %21 = and i32 %20, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr3.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %21) #9, !srcloc !151
  %transfer = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 11
  %24 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer, align 4
  %call33 = tail call i32 %25(ptr noundef %data, ptr noundef %strm.0) #9
  tail call fastcc void @rz_ssi_start(ptr noundef %data, ptr noundef %strm.0)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28.if.end36_crit_edge, %if.end7.if.end36_crit_edge
  %running = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 7
  %26 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not = icmp eq i32 %27, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %irq_tx = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 8
  %28 = ptrtoint ptr %irq_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %irq)
  %cmp40 = icmp eq i32 %29, %irq
  br i1 %cmp40, label %if.then41, label %if.end39.if.end45_crit_edge

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %transfer42 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 11
  %30 = ptrtoint ptr %transfer42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer42, align 4
  %call44 = tail call i32 %31(ptr noundef %data, ptr noundef %playback) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end39.if.end45_crit_edge
  %irq_rx = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 9
  %32 = ptrtoint ptr %irq_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %irq)
  %cmp46 = icmp eq i32 %33, %irq
  br i1 %cmp46, label %if.then47, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %transfer48 = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm.0, i32 0, i32 11
  %34 = ptrtoint ptr %transfer48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer48, align 4
  %capture49 = getelementptr inbounds %struct.rz_ssi_priv, ptr %data, i32 0, i32 12
  %call50 = tail call i32 %35(ptr noundef %data, ptr noundef %capture49) #9
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %add.ptr.i87 = getelementptr i8, ptr %37, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %39 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %add.ptr3.i89 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i89, i32 %39) #9, !srcloc !151
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !156
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !157
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rz_ssi_release_dma_channels(ptr nocapture noundef %ssi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ch = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 11, i32 10
  %0 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ch, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call void @dma_release_channel(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma_ch, align 4
  %dma_rt = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %3 = ptrtoint ptr %dma_rt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dma_rt, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then.if.end8_crit_edge, label %if.then6

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dma_rt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %dma_rt, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %dma_ch9 = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 12, i32 10
  %6 = ptrtoint ptr %dma_ch9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_ch9, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  %8 = ptrtoint ptr %dma_ch9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_ch9, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8.if.end16_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rz_ssi_dma_complete(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.rz_ssi_stream, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %substream = getelementptr inbounds %struct.rz_ssi_stream, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end.i

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %buffer_pos.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_pos.i, align 4
  %add.i = add i32 %9, %7
  store i32 %add.i, ptr %buffer_pos.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.i = icmp ugt i32 %add.i, %11
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end22.i_crit_edge, !prof !154

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 397, i32 noundef 9, ptr noundef null) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %if.end.i.if.end22.i_crit_edge
  %12 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_pos.i, align 4
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp31.i = icmp eq i32 %13, %15
  br i1 %cmp31.i, label %if.then32.i, label %if.end22.i.if.end34.i_crit_edge

if.end22.i.if.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buffer_pos.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end22.i.if.end34.i_crit_edge
  %17 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_pos.i, align 4
  %19 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %period_size, align 4
  %div.i = udiv i32 %18, %20
  %period_counter.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %data, i32 0, i32 4
  %21 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period_counter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div.i)
  %cmp36.not.i = icmp eq i32 %22, %div.i
  br i1 %cmp36.not.i, label %if.end34.i.rz_ssi_pointer_update.exit_crit_edge, label %if.then37.i

if.end34.i.rz_ssi_pointer_update.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_pointer_update.exit

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %24) #9
  %25 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %period_counter.i, align 4
  br label %rz_ssi_pointer_update.exit

rz_ssi_pointer_update.exit:                       ; preds = %if.then37.i, %if.end34.i.rz_ssi_pointer_update.exit_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call = tail call i32 @rz_ssi_dma_transfer(ptr noundef %27, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %rz_ssi_pointer_update.exit, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rz_ssi_stop(ptr nocapture noundef readonly %ssi, ptr nocapture noundef %strm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %running, align 4
  %1 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ssi, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %4 = and i32 %3, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ssi, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #9, !srcloc !151
  %dma_ch.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 11, i32 10
  %7 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_ch.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %dma_rt.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %9 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma_rt.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %rz_ssi_is_dma_enabled.exit, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rz_ssi_is_dma_enabled.exit:                       ; preds = %land.rhs.i
  %dma_ch2.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 12, i32 10
  %11 = ptrtoint ptr %dma_ch2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_ch2.i, align 4
  %tobool3.i.not = icmp eq ptr %12, null
  br i1 %tobool3.i.not, label %rz_ssi_is_dma_enabled.exit.if.end_crit_edge, label %rz_ssi_is_dma_enabled.exit.if.then_crit_edge

rz_ssi_is_dma_enabled.exit.if.then_crit_edge:     ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rz_ssi_is_dma_enabled.exit.if.end_crit_edge:      ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rz_ssi_is_dma_enabled.exit.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %dma_ch = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 10
  %13 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_ch, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i1 = icmp eq ptr %18, null
  br i1 %tobool.not.i1, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %18(ptr noundef %14) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %rz_ssi_is_dma_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssi, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %22 = and i32 %21, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ssi, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !151
  %25 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ssi, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %28 = and i32 %27, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ssi, align 4
  %add.ptr3.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %28) #9, !srcloc !151
  %31 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ssi, align 4
  %add.ptr.i4 = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %34 = and i32 %33, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ssi, align 4
  %add.ptr3.i6 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i6, i32 %34) #9, !srcloc !151
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %if.end
  %dec11 = phi i32 [ 99, %if.end ], [ %dec, %if.end5.while.body_crit_edge ]
  %37 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ssi, align 4
  %add.ptr.i7 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not = icmp eq i32 %40, 0
  br i1 %tobool3.not, label %if.end5, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end5:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #9
  %dec = add nsw i32 %dec11, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.critedge:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 3
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.40) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end.critedge, %while.body.if.end8_crit_edge
  %44 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ssi, align 4
  %add.ptr.i8 = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %47 = or i32 %46, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ssi, align 4
  %add.ptr3.i9 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i9, i32 %47) #9, !srcloc !151
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rz_ssi_start(ptr nocapture noundef readonly %ssi, ptr nocapture noundef %strm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %4 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssi, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %7 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ssi, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %dma_ch.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 11, i32 10
  %10 = ptrtoint ptr %dma_ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_ch.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %land.rhs.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.rhs.i:                                       ; preds = %entry
  %dma_rt.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 18
  %12 = ptrtoint ptr %dma_rt.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_rt.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %rz_ssi_is_dma_enabled.exit, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rz_ssi_is_dma_enabled.exit:                       ; preds = %land.rhs.i
  %dma_ch2.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %ssi, i32 0, i32 12, i32 10
  %14 = ptrtoint ptr %dma_ch2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_ch2.i, align 4
  %tobool3.i.not = icmp eq ptr %15, null
  br i1 %tobool3.i.not, label %rz_ssi_is_dma_enabled.exit.if.else_crit_edge, label %rz_ssi_is_dma_enabled.exit.if.then_crit_edge

rz_ssi_is_dma_enabled.exit.if.then_crit_edge:     ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rz_ssi_is_dma_enabled.exit.if.else_crit_edge:     ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %rz_ssi_is_dma_enabled.exit.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssi, align 4
  %add.ptr.i1 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 0) #9, !srcloc !151
  br label %if.end

if.else:                                          ; preds = %rz_ssi_is_dma_enabled.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %fifo_sample_size = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 2
  %18 = ptrtoint ptr %fifo_sample_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_sample_size, align 4
  %div = sdiv i32 %19, 2
  %sub = shl i32 %div, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %shl = add i32 %sub, 2031616
  %20 = and i32 %shl, 2031616
  %21 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ssi, align 4
  %add.ptr.i2 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %20) #9, !srcloc !151
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = and i32 %9, -251658241
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %cond = select i1 %cmp.i, i32 2, i32 1
  %ssicr.0.v = select i1 %cmp.i, i32 805306368, i32 201326592
  %ssicr.0 = or i32 %25, %ssicr.0.v
  %ssifcr.0.v = select i1 %cmp.i, i32 9, i32 6
  %ssifcr.0 = or i32 %24, %ssifcr.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %ssicr.0) #9
  %27 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ssi, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %ssifcr.0) #9
  %30 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ssi, align 4
  %add.ptr.i3 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %29) #9, !srcloc !151
  %32 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ssi, align 4
  %add.ptr.i4 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %35 = and i32 %34, -61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ssi, align 4
  %add.ptr3.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %35) #9, !srcloc !151
  %running = getelementptr inbounds %struct.rz_ssi_stream, ptr %strm, i32 0, i32 7
  %38 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %running, align 4
  %or13 = or i32 %ssicr.0, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %or13) #9
  %40 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ssi, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !151
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %7, i32 noundef 32768, i32 noundef 32768) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @rz_ssi_pcm_hardware) #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rz_ssi_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
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
  %playback.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %9, i32 0, i32 11
  %stream1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  %capture.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %9, i32 0, i32 12
  %spec.select.i = select i1 %cmp.not.i, ptr %playback.i, ptr %capture.i
  %buffer_pos = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 6
  %12 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_pos, align 4
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.epilog, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %entry
  %and1 = lshr i32 %fmt, 8
  %4 = and i32 %and1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %switch.hole_check, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rz_ssi_dai_set_fmt, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %7)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep34 = getelementptr inbounds [5 x i8], ptr @switch.table.rz_ssi_dai_set_fmt.61, i32 0, i32 %4
  %8 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load1_noabort(i32 %8)
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %bckp_rise9 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %bckp_rise9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.load, ptr %bckp_rise9, align 1
  %lrckp_fsync_fall10 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %lrckp_fsync_fall10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %switch.load35, ptr %lrckp_fsync_fall10, align 4
  %and13 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and13)
  %cond20 = icmp eq i32 %and13, 1
  br i1 %cond20, label %switch.lookup.cleanup_crit_edge, label %switch.lookup.cleanup.sink.split_crit_edge

switch.lookup.cleanup.sink.split_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %switch.lookup.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.44, %entry.cleanup.sink.split_crit_edge ], [ @.str.47, %switch.lookup.cleanup.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.47.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %intervals.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %intervals.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intervals.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.not = icmp eq i32 %5, 16
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.49, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3.not = icmp eq i32 %7, 2
  br i1 %cmp3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.52, i32 noundef %7) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx.i.i22 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i22, align 4
  %mul1.i = shl i32 %13, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 65536) #9, !srcloc !151
  %audio_clk_1.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %audio_clk_1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audio_clk_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end9.if.end9.i_crit_edge, label %land.lhs.true.i

if.end9.if.end9.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end9
  %audio_clk_2.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 15
  %20 = ptrtoint ptr %audio_clk_2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audio_clk_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = urem i32 %19, %mul1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  %audio_mck8.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 13
  %..i = select i1 %tobool4.not.i, i32 %19, i32 %21
  %22 = ptrtoint ptr %audio_mck8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %..i, ptr %audio_mck8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end9.if.end9.i_crit_edge
  %audio_mck10.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %audio_mck10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %audio_mck10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %19)
  %cmp.i = icmp eq i32 %24, %19
  %spec.select.i = select i1 %cmp.i, i32 1073758208, i32 16384
  %bckp_rise.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 17
  %25 = ptrtoint ptr %bckp_rise.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bckp_rise.i, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not.i = icmp eq i8 %26, 0
  %or17.i = or i32 %spec.select.i, 8192
  %ssicr.1.i = select i1 %tobool15.not.i, i32 %spec.select.i, i32 %or17.i
  %lrckp_fsync_fall.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 16
  %27 = ptrtoint ptr %lrckp_fsync_fall.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lrckp_fsync_fall.i, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool19.not.i = icmp eq i8 %28, 0
  %or21.i = or i32 %ssicr.1.i, 4096
  %ssicr.2.i = select i1 %tobool19.not.i, i32 %ssicr.1.i, i32 %or21.i
  %div24.i = udiv i32 %24, %mul1.i
  %29 = zext i32 %div24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div24.i, label %do.end.i [
    i32 1, label %if.end9.i.if.end33.i_crit_edge
    i32 2, label %if.end33.fold.split.i
    i32 4, label %if.end33.fold.split77.i
    i32 8, label %if.end33.fold.split78.i
    i32 16, label %if.end33.fold.split79.i
    i32 32, label %if.end33.fold.split80.i
    i32 64, label %if.end33.fold.split81.i
    i32 -128, label %if.end33.fold.split82.i
    i32 6, label %if.end33.fold.split83.i
    i32 12, label %if.end33.fold.split84.i
    i32 24, label %if.end33.fold.split85.i
    i32 48, label %if.end33.fold.split86.i
    i32 96, label %if.end33.fold.split87.i
    i32 -1, label %if.end33.fold.split88.i
  ]

if.end9.i.if.end33.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i24 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end33.fold.split.i:                            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split77.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split78.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split79.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split80.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split81.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split82.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split83.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split84.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split85.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split86.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split87.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.fold.split88.i:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.fold.split88.i, %if.end33.fold.split87.i, %if.end33.fold.split86.i, %if.end33.fold.split85.i, %if.end33.fold.split84.i, %if.end33.fold.split83.i, %if.end33.fold.split82.i, %if.end33.fold.split81.i, %if.end33.fold.split80.i, %if.end33.fold.split79.i, %if.end33.fold.split78.i, %if.end33.fold.split77.i, %if.end33.fold.split.i, %if.end9.i.if.end33.i_crit_edge
  %i.075.lcssa.i = phi i32 [ 0, %if.end9.i.if.end33.i_crit_edge ], [ 16, %if.end33.fold.split.i ], [ 32, %if.end33.fold.split77.i ], [ 48, %if.end33.fold.split78.i ], [ 64, %if.end33.fold.split79.i ], [ 80, %if.end33.fold.split80.i ], [ 96, %if.end33.fold.split81.i ], [ 112, %if.end33.fold.split82.i ], [ 128, %if.end33.fold.split83.i ], [ 144, %if.end33.fold.split84.i ], [ 160, %if.end33.fold.split85.i ], [ 176, %if.end33.fold.split86.i ], [ 192, %if.end33.fold.split87.i ], [ 208, %if.end33.fold.split88.i ]
  %or34.i = or i32 %ssicr.2.i, %i.075.lcssa.i
  %or35.i = or i32 %or34.i, 720896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 50331776) #9, !srcloc !151
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i, %do.end.i, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end.i ], [ 0, %if.end33.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rz_ssi_dai_trigger(ptr noundef %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %playback.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 11
  %stream1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  %capture.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 12
  %spec.select.i = select i1 %cmp.not.i, ptr %playback.i, ptr %capture.i
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %cmd, label %entry.done_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb23
  ]

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %10 = or i32 %9, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #9, !srcloc !151
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %16 = and i32 %15, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr3.i52 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i52, i32 %16) #9, !srcloc !151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #9
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %20 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 1
  %22 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %substream, ptr %substream2.i, align 4
  %sample_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 22
  %23 = ptrtoint ptr %sample_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample_bits.i.i, align 4
  %div1.i.i = lshr i32 %24, 3
  %sample_width.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 5
  %25 = ptrtoint ptr %sample_width.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div1.i.i, ptr %sample_width.i, align 4
  %dma_buffer_pos.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 3
  %26 = ptrtoint ptr %dma_buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dma_buffer_pos.i, align 4
  %period_counter.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 4
  %27 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %period_counter.i, align 4
  %buffer_pos.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 6
  %fifo_sample_size.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 2
  %28 = call ptr @memset(ptr %buffer_pos.i, i32 0, i32 16)
  %29 = ptrtoint ptr %fifo_sample_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %fifo_sample_size.i, align 4
  %dma_rt = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 18
  %30 = ptrtoint ptr %dma_rt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dma_rt, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not = icmp eq i8 %31, 0
  br i1 %tobool3.not, label %sw.bb.if.end12_crit_edge, label %if.then4

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then4:                                         ; preds = %sw.bb
  %32 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  %dma_ch = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 11, i32 10
  %34 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_ch, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #9
  %36 = getelementptr inbounds i8, ptr %cfg.i, i32 20
  %37 = call ptr @memset(ptr %36, i32 0, i32 28)
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i, ptr %cfg.i, align 4
  %phys.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys.i, align 4
  %add.i = add i32 %40, 24
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %41 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %add2.i = add i32 %40, 28
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %42 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add2.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %43 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %44 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %dst_addr_width.i, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %35, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %rz_ssi_dma_slave_config.exit.thread, label %rz_ssi_dma_slave_config.exit

rz_ssi_dma_slave_config.exit.thread:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  br label %if.then8

rz_ssi_dma_slave_config.exit:                     ; preds = %if.then4
  %call.i.i = call i32 %48(ptr noundef %35, ptr noundef nonnull %cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %rz_ssi_dma_slave_config.exit.if.then8_crit_edge, label %rz_ssi_dma_slave_config.exit.if.end12_crit_edge

rz_ssi_dma_slave_config.exit.if.end12_crit_edge:  ; preds = %rz_ssi_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

rz_ssi_dma_slave_config.exit.if.then8_crit_edge:  ; preds = %rz_ssi_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %rz_ssi_dma_slave_config.exit.if.then8_crit_edge, %rz_ssi_dma_slave_config.exit.thread
  %transfer = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 11, i32 11
  %49 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rz_ssi_pio_send, ptr %transfer, align 4
  %transfer10 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 12, i32 11
  %50 = ptrtoint ptr %transfer10 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @rz_ssi_pio_recv, ptr %transfer10, align 4
  %51 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_ch, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.then8.if.end8.i_crit_edge, label %if.then.i

if.then8.if.end8.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then8
  call void @dma_release_channel(ptr noundef nonnull %52) #9
  %53 = ptrtoint ptr %dma_ch to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %dma_ch, align 4
  %54 = ptrtoint ptr %dma_rt to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dma_rt, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool5.not.i = icmp eq i8 %55, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then6.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dma_rt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %dma_rt, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i.if.end8.i_crit_edge, %if.then8.if.end8.i_crit_edge
  %dma_ch9.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 12, i32 10
  %57 = ptrtoint ptr %dma_ch9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_ch9.i, align 4
  %tobool10.not.i = icmp eq ptr %58, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end12_crit_edge, label %if.then11.i

if.end8.i.if.end12_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %58) #9
  %59 = ptrtoint ptr %dma_ch9.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %dma_ch9.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11.i, %if.end8.i.if.end12_crit_edge, %rz_ssi_dma_slave_config.exit.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %dma_ch.i53 = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 11, i32 10
  %60 = ptrtoint ptr %dma_ch.i53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_ch.i53, align 4
  %tobool.not.i54 = icmp eq ptr %61, null
  br i1 %tobool.not.i54, label %if.end12.rz_ssi_is_dma_enabled.exit.thread59_crit_edge, label %land.rhs.i

if.end12.rz_ssi_is_dma_enabled.exit.thread59_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_is_dma_enabled.exit.thread59

land.rhs.i:                                       ; preds = %if.end12
  %62 = ptrtoint ptr %dma_rt to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dma_rt, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool1.not.i = icmp eq i8 %63, 0
  br i1 %tobool1.not.i, label %rz_ssi_is_dma_enabled.exit, label %land.rhs.i.rz_ssi_is_dma_enabled.exit.thread_crit_edge

land.rhs.i.rz_ssi_is_dma_enabled.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_is_dma_enabled.exit.thread

rz_ssi_is_dma_enabled.exit:                       ; preds = %land.rhs.i
  %dma_ch2.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 12, i32 10
  %64 = ptrtoint ptr %dma_ch2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_ch2.i, align 4
  %tobool3.i.not = icmp eq ptr %65, null
  br i1 %tobool3.i.not, label %rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread59_crit_edge, label %rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread_crit_edge

rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread_crit_edge: ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_is_dma_enabled.exit.thread

rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread59_crit_edge: ; preds = %rz_ssi_is_dma_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rz_ssi_is_dma_enabled.exit.thread59

rz_ssi_is_dma_enabled.exit.thread:                ; preds = %rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread_crit_edge, %land.rhs.i.rz_ssi_is_dma_enabled.exit.thread_crit_edge
  br label %rz_ssi_is_dma_enabled.exit.thread59

rz_ssi_is_dma_enabled.exit.thread59:              ; preds = %rz_ssi_is_dma_enabled.exit.thread, %rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread59_crit_edge, %if.end12.rz_ssi_is_dma_enabled.exit.thread59_crit_edge
  %exitcond.not = phi i1 [ true, %if.end12.rz_ssi_is_dma_enabled.exit.thread59_crit_edge ], [ true, %rz_ssi_is_dma_enabled.exit.rz_ssi_is_dma_enabled.exit.thread59_crit_edge ], [ false, %rz_ssi_is_dma_enabled.exit.thread ]
  %transfer17 = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 11
  %66 = ptrtoint ptr %transfer17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %transfer17, align 4
  %call18 = call i32 %67(ptr noundef %3, ptr noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %rz_ssi_is_dma_enabled.exit.thread59.done_crit_edge

rz_ssi_is_dma_enabled.exit.thread59.done_crit_edge: ; preds = %rz_ssi_is_dma_enabled.exit.thread59
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond:                                         ; preds = %rz_ssi_is_dma_enabled.exit.thread59
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.cond
  %68 = ptrtoint ptr %transfer17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transfer17, align 4
  %call18.1 = call i32 %69(ptr noundef %3, ptr noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %for.body.2, label %for.body.1.done_crit_edge

for.body.1.done_crit_edge:                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body.2:                                       ; preds = %for.body.1
  %70 = ptrtoint ptr %transfer17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %transfer17, align 4
  %call18.2 = call i32 %71(ptr noundef %3, ptr noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %for.body.3, label %for.body.2.done_crit_edge

for.body.2.done_crit_edge:                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body.3:                                       ; preds = %for.body.2
  %72 = ptrtoint ptr %transfer17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %transfer17, align 4
  %call18.3 = call i32 %73(ptr noundef %3, ptr noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %tobool19.not.3 = icmp eq i32 %call18.3, 0
  br i1 %tobool19.not.3, label %for.body.3.for.end_crit_edge, label %for.body.3.done_crit_edge

for.body.3.done_crit_edge:                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.3.for.end_crit_edge, %for.cond.for.end_crit_edge
  call fastcc void @rz_ssi_start(ptr noundef %3, ptr noundef %spec.select.i)
  br label %done

sw.bb23:                                          ; preds = %entry
  tail call fastcc void @rz_ssi_stop(ptr noundef %3, ptr noundef %spec.select.i)
  %substream.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 1
  %74 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %substream.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private_data.i.i, align 4
  %dais.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %dais.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dais.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %lock.i = getelementptr inbounds %struct.rz_ssi_priv, ptr %3, i32 0, i32 10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %82 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %substream.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %oerr_num.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 9
  %83 = ptrtoint ptr %oerr_num.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %oerr_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp8.i = icmp sgt i32 %84, 0
  br i1 %cmp8.i, label %do.end12.i, label %sw.bb23.if.end.i_crit_edge

sw.bb23.if.end.i_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end12.i:                                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i56 = getelementptr inbounds %struct.snd_soc_dai, ptr %81, i32 0, i32 2
  %85 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i56, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.56, i32 noundef %84) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end12.i, %sw.bb23.if.end.i_crit_edge
  %uerr_num.i = getelementptr inbounds %struct.rz_ssi_stream, ptr %spec.select.i, i32 0, i32 8
  %87 = ptrtoint ptr %uerr_num.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uerr_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp14.i = icmp sgt i32 %88, 0
  br i1 %cmp14.i, label %do.end19.i, label %if.end.i.done_crit_edge

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev20.i = getelementptr inbounds %struct.snd_soc_dai, ptr %81, i32 0, i32 2
  %89 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.59, i32 noundef %88) #12
  br label %done

done:                                             ; preds = %do.end19.i, %if.end.i.done_crit_edge, %for.end, %for.body.3.done_crit_edge, %for.body.2.done_crit_edge, %for.body.1.done_crit_edge, %rz_ssi_is_dma_enabled.exit.thread59.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %entry.done_crit_edge ], [ 0, %for.end ], [ 0, %if.end.i.done_crit_edge ], [ 0, %do.end19.i ], [ %call18, %rz_ssi_is_dma_enabled.exit.thread59.done_crit_edge ], [ %call18.1, %for.body.1.done_crit_edge ], [ %call18.2, %for.body.2.done_crit_edge ], [ %call18.3, %for.body.3.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_snd_soc_rz_ssi__241_1075_rz_ssi_driver_init6, !1, !"__initcall__kmod_snd_soc_rz_ssi__241_1075_rz_ssi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rz-ssi.c", i32 1075, i32 1}
!2 = !{ptr @__exitcall_rz_ssi_driver_exit, !1, !"__exitcall_rz_ssi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file242, !4, !"__UNIQUE_ID_file242", i1 false, i1 false}
!4 = !{!"../sound/soc/sh/rz-ssi.c", i32 1077, i32 1}
!5 = !{ptr @__UNIQUE_ID_license243, !4, !"__UNIQUE_ID_license243", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description244, !7, !"__UNIQUE_ID_description244", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rz-ssi.c", i32 1078, i32 1}
!8 = !{ptr @__UNIQUE_ID_author245, !9, !"__UNIQUE_ID_author245", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rz-ssi.c", i32 1079, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rz-ssi.c", i32 1068, i32 11}
!12 = !{ptr @rz_ssi_driver, !13, !"rz_ssi_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rz-ssi.c", i32 1066, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rz-ssi.c", i32 937, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/rz-ssi.c", i32 941, i32 42}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/rz-ssi.c", i32 945, i32 39}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sh/rz-ssi.c", i32 948, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sh/rz-ssi.c", i32 951, i32 39}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sh/rz-ssi.c", i32 954, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sh/rz-ssi.c", i32 959, i32 10}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sh/rz-ssi.c", i32 966, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rz_ssi_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @rz_ssi_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sh/rz-ssi.c", i32 970, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rz_ssi_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rz_ssi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sh/rz-ssi.c", i32 979, i32 47}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/sh/rz-ssi.c", i32 982, i32 10}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sh/rz-ssi.c", i32 988, i32 10}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sh/rz-ssi.c", i32 992, i32 47}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sh/rz-ssi.c", i32 995, i32 11}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sh/rz-ssi.c", i32 1002, i32 11}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sh/rz-ssi.c", i32 1004, i32 47}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sh/rz-ssi.c", i32 1007, i32 11}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sh/rz-ssi.c", i32 1014, i32 11}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sh/rz-ssi.c", i32 1027, i32 39}
!61 = !{ptr @rz_ssi_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../sound/soc/sh/rz-ssi.c", i32 1030, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sh/rz-ssi.c", i32 1041, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rz_ssi_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rz_ssi_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sh/rz-ssi.c", i32 678, i32 47}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/sh/rz-ssi.c", i32 682, i32 46}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/sh/rz-ssi.c", i32 687, i32 48}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/sh/rz-ssi.c", i32 624, i32 3}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rz_ssi_dma_transfer._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rz_ssi_dma_transfer._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sh/rz-ssi.c", i32 632, i32 3}
!82 = !{ptr @rz_ssi_dma_transfer._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rz_ssi_dma_transfer._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sh/rz-ssi.c", i32 377, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rz_ssi_stop._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rz_ssi_stop._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sh/rz-ssi.c", i32 913, i32 11}
!91 = !{ptr @rz_ssi_soc_component, !92, !"rz_ssi_soc_component", i1 false, i1 false}
!92 = !{!"../sound/soc/sh/rz-ssi.c", i32 912, i32 46}
!93 = !{ptr @rz_ssi_pcm_hardware, !94, !"rz_ssi_pcm_hardware", i1 false, i1 false}
!94 = !{!"../sound/soc/sh/rz-ssi.c", i32 851, i32 38}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sh/rz-ssi.c", i32 895, i32 13}
!97 = !{ptr @rz_ssi_soc_dai, !98, !"rz_ssi_soc_dai", i1 false, i1 false}
!98 = !{!"../sound/soc/sh/rz-ssi.c", i32 893, i32 34}
!99 = !{ptr @rz_ssi_dai_ops, !100, !"rz_ssi_dai_ops", i1 false, i1 false}
!100 = !{!"../sound/soc/sh/rz-ssi.c", i32 845, i32 37}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sh/rz-ssi.c", i32 777, i32 3}
!103 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rz_ssi_dai_set_fmt._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rz_ssi_dai_set_fmt._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sh/rz-ssi.c", i32 813, i32 3}
!108 = !{ptr @rz_ssi_dai_set_fmt._entry.46, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rz_ssi_dai_set_fmt._entry_ptr.48, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sh/rz-ssi.c", i32 830, i32 3}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rz_ssi_dai_hw_params._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @rz_ssi_dai_hw_params._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/sh/rz-ssi.c", i32 836, i32 3}
!117 = !{ptr @rz_ssi_dai_hw_params._entry.51, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @rz_ssi_dai_hw_params._entry_ptr.53, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"ckdv", i1 false, i1 false}
!120 = !{!"../sound/soc/sh/rz-ssi.c", i32 246, i32 12}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/sh/rz-ssi.c", i32 288, i32 3}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rz_ssi_clk_setup._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rz_ssi_clk_setup._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/sh/rz-ssi.c", i32 237, i32 3}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rz_ssi_stream_quit._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rz_ssi_stream_quit._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/sh/rz-ssi.c", i32 240, i32 3}
!133 = !{ptr @rz_ssi_stream_quit._entry.58, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rz_ssi_stream_quit._entry_ptr.60, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @rz_ssi_of_match, !136, !"rz_ssi_of_match", i1 false, i1 false}
!136 = !{!"../sound/soc/sh/rz-ssi.c", i32 1060, i32 34}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i8 0, i8 2}
!148 = !{i64 6324710}
!149 = !{i64 2155025994}
!150 = !{i64 2155025333}
!151 = !{i64 6324292}
!152 = !{i64 2155026476}
!153 = !{i64 2155026691}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{i64 2148265054}
!156 = !{i64 749877, i64 749902, i64 749924, i64 749940, i64 749952, i64 749972, i64 749996, i64 750012, i64 750024}
!157 = !{i64 2148265242}
