; ModuleID = '/llk/IR_all_yes/sound/soc/sprd/sprd-pcm-dma.c_pt.bc'
source_filename = "../sound/soc/sprd/sprd-pcm-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.sprd_pcm_dma_private = type { ptr, ptr, [2 x %struct.sprd_pcm_dma_data], i32, i32 }
%struct.sprd_pcm_dma_data = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.sprd_dma_linklist = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.sprd_pcm_dma_params = type { [2 x i32], [2 x i32], [2 x i32], [2 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_snd_soc_sprd_platform__246_493_sprd_pcm_driver_init6 = internal global ptr @sprd_pcm_driver_init, section ".initcall6.init", align 4
@sprd_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_soc_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_pcm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_pcm_driver_exit = internal global ptr @sprd_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [58 x i8] c"snd_soc_sprd_platform.description=Spreadtrum ASoC PCM DMA\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [64 x i8] c"snd_soc_sprd_platform.file=sound/soc/sprd/snd-soc-sprd-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [37 x i8] c"snd_soc_sprd_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [48 x i8] c"snd_soc_sprd_platform.alias=platform:sprd-audio\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd-pcm-audio\00", [17 x i8] zeroinitializer }, align 32
@sprd_pcm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,pcm-platform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_soc_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"no reserved DMA memory for audio platform device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sprd_soc_platform_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sprd/sprd-pcm-dma.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_soc_platform_probe._entry_ptr = internal global ptr @sprd_soc_platform_probe._entry, section ".printk_index", align 4
@sprd_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.10, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pcm_open, ptr @sprd_pcm_close, ptr null, ptr @sprd_pcm_hw_params, ptr @sprd_pcm_hw_free, ptr null, ptr @sprd_pcm_trigger, ptr null, ptr @sprd_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_platform_compress_ops, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sprd_soc_platform_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register platform:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sprd_soc_platform_probe._entry_ptr.9 = internal global ptr @sprd_soc_platform_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd_pcm_dma\00", [19 x i8] zeroinitializer }, align 32
@sprd_platform_compress_ops = external dso_local constant %struct.snd_compress_ops, align 4
@sprd_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 9175299, i64 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 1, i32 65536, i32 1, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sprd_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no dma parameters setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sprd_pcm_hw_params\00", [45 x i8] zeroinitializer }, align 32
@sprd_pcm_hw_params._entry_ptr = internal global ptr @sprd_pcm_hw_params._entry, section ".printk_index", align 4
@sprd_pcm_hw_params._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 269, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set slave configuration: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_pcm_hw_params._entry_ptr.15 = internal global ptr @sprd_pcm_hw_params._entry.13, section ".printk_index", align 4
@sprd_pcm_hw_params._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 283, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to prepare slave sg\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_pcm_hw_params._entry_ptr.18 = internal global ptr @sprd_pcm_hw_params._entry.16, section ".printk_index", align 4
@sprd_pcm_request_dma_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 167, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid dma channel number:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sprd_pcm_request_dma_channel\00", [35 x i8] zeroinitializer }, align 32
@sprd_pcm_request_dma_channel._entry_ptr = internal global ptr @sprd_pcm_request_dma_channel._entry, section ".printk_index", align 4
@sprd_pcm_request_dma_channel._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 178, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request dma channel:%s\0A\00", [62 x i8] zeroinitializer }, align 32
@sprd_pcm_request_dma_channel._entry_ptr.23 = internal global ptr @sprd_pcm_request_dma_channel._entry.21, section ".printk_index", align 4
@sprd_pcm_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 333, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to submit dma request: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_pcm_trigger\00", [47 x i8] zeroinitializer }, align 32
@sprd_pcm_trigger._entry_ptr = internal global ptr @sprd_pcm_trigger._entry, section ".printk_index", align 4
@sprd_pcm_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 397, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get dma channel %d status\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_pcm_pointer\00", [47 x i8] zeroinitializer }, align 32
@sprd_pcm_pointer._entry_ptr = internal global ptr @sprd_pcm_pointer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"sprd_pcm_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 484, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 486, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"sprd_pcm_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 478, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 467, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"sprd_soc_component\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 448, i32 46 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 473, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 449, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"sprd_pcm_hardware\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 37, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 205, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 268, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 283, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 167, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 177, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 331, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [33 x i8] c"../sound/soc/sprd/sprd-pcm-dma.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 396, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_sprd_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_sprd_platform__246_493_sprd_pcm_driver_init6, ptr @sprd_pcm_driver_exit, ptr @sprd_pcm_hw_params._entry, ptr @sprd_pcm_hw_params._entry.13, ptr @sprd_pcm_hw_params._entry.16, ptr @sprd_pcm_hw_params._entry_ptr, ptr @sprd_pcm_hw_params._entry_ptr.15, ptr @sprd_pcm_hw_params._entry_ptr.18, ptr @sprd_pcm_pointer._entry, ptr @sprd_pcm_pointer._entry_ptr, ptr @sprd_pcm_request_dma_channel._entry, ptr @sprd_pcm_request_dma_channel._entry.21, ptr @sprd_pcm_request_dma_channel._entry_ptr, ptr @sprd_pcm_request_dma_channel._entry_ptr.23, ptr @sprd_pcm_trigger._entry, ptr @sprd_pcm_trigger._entry_ptr, ptr @sprd_soc_platform_probe._entry, ptr @sprd_soc_platform_probe._entry.6, ptr @sprd_soc_platform_probe._entry_ptr, ptr @sprd_soc_platform_probe._entry_ptr.9, ptr @sprd_pcm_driver, ptr @.str, ptr @sprd_pcm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sprd_soc_component, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @sprd_pcm_hardware, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_soc_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_soc_platform_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_hw_params._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_hw_params._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_request_dma_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_request_dma_channel._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pcm_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_pcm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_pcm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_soc_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @sprd_soc_component, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call4) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %pcm2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %4 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm2, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %7, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef 4294967295) #6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %5, i32 noundef 2, ptr noundef %10, i32 noundef 65536, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @sprd_pcm_hardware) #6
  %call3 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 640) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 640) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup39_crit_edge, label %if.end7

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup39_crit_edge, label %if.end11

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end11:                                         ; preds = %if.end7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end11.cleanup39_crit_edge, label %if.end14

if.end11.cleanup39_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end14:                                         ; preds = %if.end11
  %periods_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 11
  %4 = ptrtoint ptr %periods_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %periods_max, align 4
  %mul = shl i32 %5, 6
  %phys = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %call.i79 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #6
  %virt = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i79, ptr %virt, align 4
  %tobool19.not = icmp eq ptr %call.i79, null
  br i1 %tobool19.not, label %if.end14.if.end35_crit_edge, label %for.cond

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

for.cond:                                         ; preds = %if.end14
  %phys.1 = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 1, i32 3
  %call.i79.1 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %phys.1, i32 noundef 3264, i32 noundef 0) #6
  %virt.1 = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %7 = ptrtoint ptr %virt.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i79.1, ptr %virt.1, align 4
  %tobool19.not.1 = icmp eq ptr %call.i79.1, null
  br i1 %tobool19.not.1, label %for.cond24.preheader, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %hw_chan22 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %hw_chan22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %hw_chan22, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %private_data, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %call.i, align 4
  br label %cleanup39

for.cond24.preheader:                             ; preds = %for.cond
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %virt, align 4
  %tobool31.not = icmp eq ptr %.pr, null
  br i1 %tobool31.not, label %for.cond24.preheader.if.end35_crit_edge, label %if.then32

for.cond24.preheader.if.end35_crit_edge:          ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys, align 4
  tail call void @dmam_free_coherent(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %.pr, i32 noundef %13) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.cond24.preheader.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %virt30.1 = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %14 = ptrtoint ptr %virt30.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt30.1, align 4
  %tobool31.not.1 = icmp eq ptr %15, null
  br i1 %tobool31.not.1, label %if.end35.if.end35.1_crit_edge, label %if.then32.1

if.end35.if.end35.1_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.1

if.then32.1:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %phys34.1 = getelementptr %struct.sprd_pcm_dma_private, ptr %call.i, i32 0, i32 2, i32 1, i32 3
  %16 = ptrtoint ptr %phys34.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys34.1, align 4
  tail call void @dmam_free_coherent(ptr noundef %3, i32 noundef %mul, ptr noundef nonnull %15, i32 noundef %17) #6
  br label %if.end35.1

if.end35.1:                                       ; preds = %if.then32.1, %if.end35.if.end35.1_crit_edge
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %call.i) #6
  br label %cleanup39

cleanup39:                                        ; preds = %if.end35.1, %for.cond.1, %if.end11.cleanup39_crit_edge, %if.end7.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ -12, %if.end35.1 ], [ 0, %for.cond.1 ], [ %call3, %entry.cleanup39_crit_edge ], [ %call4, %if.end.cleanup39_crit_edge ], [ %call8, %if.end7.cleanup39_crit_edge ], [ -12, %if.end11.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_close(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %periods_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 11
  %6 = ptrtoint ptr %periods_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %periods_max, align 4
  %mul = shl i32 %7, 6
  %hw_chan = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %virt = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.012, i32 4
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt, align 4
  %phys = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.012, i32 3
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys, align 4
  tail call void @dmam_free_coherent(ptr noundef %5, i32 noundef %mul, ptr noundef %11, i32 noundef %13) #6
  %inc = add nuw nsw i32 %i.012, 1
  %14 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_chan, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_hw_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  %link = alloca %struct.sprd_dma_linklist, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i172 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i172, align 4
  %arrayidx.i.i173 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i173 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i173, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dais, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %17, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %17, i32 0, i32 8
  %cond.in.i = select i1 %cmp, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %18 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.11) #9
  %params6 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %params6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %params6, align 4
  br label %cleanup87

if.end:                                           ; preds = %entry
  %params7 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %params7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %params7, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %if.end
  %24 = ptrtoint ptr %params7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cond.i, ptr %params7, align 4
  %25 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 8
  %dev2.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %29 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2.i, align 4
  %params.i = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i174 = icmp sgt i32 %11, 2
  br i1 %cmp.i174, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp331.i = icmp sgt i32 %11, 0
  br i1 %cmp331.i, label %for.body.i, label %for.cond.preheader.i.if.end15_crit_edge

for.cond.preheader.i.if.end15_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19, i32 noundef %11) #9
  br label %cleanup87

for.cond.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond.not.i = icmp eq i32 %11, 1
  br i1 %exitcond.not.i, label %for.cond.i.if.end15_crit_edge, label %for.body.i.1

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.i.1:                                     ; preds = %for.cond.i
  %arrayidx.i.1 = getelementptr %struct.sprd_pcm_dma_private, ptr %28, i32 0, i32 2, i32 1
  %arrayidx5.i.1 = getelementptr %struct.sprd_pcm_dma_params, ptr %32, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx5.i.1, align 4
  %call.i.i.1 = tail call ptr @dma_request_chan(ptr noundef %30, ptr noundef %34) #6
  %cmp.i.i.i.1 = icmp ugt ptr %call.i.i.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = select i1 %cmp.i.i.i.1, ptr null, ptr %call.i.i.1
  %35 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %spec.select.i.i.1, ptr %arrayidx.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %spec.select.i.i.1, null
  br i1 %tobool.not.i.1, label %for.body.i.1.do.end10.i_crit_edge, label %for.body.i.1.if.end15_crit_edge

for.body.i.1.if.end15_crit_edge:                  ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.i.1.do.end10.i_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

for.body.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx.i = getelementptr %struct.sprd_pcm_dma_private, ptr %28, i32 0, i32 2, i32 0
  %arrayidx5.i = getelementptr %struct.sprd_pcm_dma_params, ptr %32, i32 0, i32 3, i32 0
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.i, align 4
  %call.i.i = tail call ptr @dma_request_chan(ptr noundef %30, ptr noundef %37) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = select i1 %cmp.i.i.i, ptr null, ptr %call.i.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %for.body.i.do.end10.i_crit_edge, label %for.cond.i

for.body.i.do.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %for.body.i.do.end10.i_crit_edge, %for.body.i.1.do.end10.i_crit_edge
  %arrayidx5.i.lcssa = phi ptr [ %arrayidx5.i, %for.body.i.do.end10.i_crit_edge ], [ %arrayidx5.i.1, %for.body.i.1.do.end10.i_crit_edge ]
  %39 = ptrtoint ptr %arrayidx5.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx5.i.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.22, ptr noundef %40) #9
  %41 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime1, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data.i.i, align 8
  %arrayidx.i.i175 = getelementptr %struct.sprd_pcm_dma_private, ptr %44, i32 0, i32 2, i32 0
  %45 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i175, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %do.end10.i.if.end.i.i_crit_edge, label %if.then.i.i

do.end10.i.if.end.i.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %46) #6
  %47 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx.i.i175, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.end10.i.if.end.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.sprd_pcm_dma_private, ptr %44, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.1.i.i, label %if.end.i.i.cleanup87_crit_edge, label %if.then.1.i.i

if.end.i.i.cleanup87_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %49) #6
  %50 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx.1.i.i, align 4
  br label %cleanup87

if.end15:                                         ; preds = %for.body.i.1.if.end15_crit_edge, %for.cond.i.if.end15_crit_edge, %for.cond.preheader.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %div = udiv i32 %7, %9
  %div16 = udiv i32 %7, %11
  %dma_addr_offset = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 4
  %51 = ptrtoint ptr %dma_addr_offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div16, ptr %dma_addr_offset, align 4
  %dev17 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 20) #6
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %if.end15.sg_err_crit_edge, label %devm_kcalloc.exit, !prof !76

if.end15.sg_err_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sg_err

devm_kcalloc.exit:                                ; preds = %if.end15
  %54 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev17, align 4
  %56 = extractvalue { i32, i1 } %52, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %56, i32 noundef 3520) #6
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.sg_err_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.sg_err_crit_edge:               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sg_err

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22196 = icmp sgt i32 %11, 0
  br i1 %cmp22196, label %for.body.lr.ph, label %for.cond.preheader.for.end84_crit_edge

for.cond.preheader.for.end84_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %src_addr37 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %dma_addr38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %dst_addr42 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp45193.not = icmp ugt i32 %9, %7
  %phy_addr = getelementptr inbounds %struct.sprd_dma_linklist, ptr %link, i32 0, i32 1
  %no_period_wakeup = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc82.for.body_crit_edge, %for.body.lr.ph
  %i.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %inc83, %for.inc82.for.body_crit_edge ]
  %arrayidx25 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0197
  %57 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx25, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #6
  %59 = call ptr @memset(ptr %config, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %link) #6
  %60 = call ptr @memset(ptr %link, i32 0, i32 12)
  %arrayidx27 = getelementptr %struct.sprd_pcm_dma_params, ptr %cond.i, i32 0, i32 2, i32 %i.0197
  %61 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx27, align 4
  %63 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %src_maxburst, align 4
  %arrayidx28 = getelementptr %struct.sprd_pcm_dma_params, ptr %cond.i, i32 0, i32 1, i32 %i.0197
  %64 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx28, align 4
  %66 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %src_addr_width, align 4
  %67 = load i32, ptr %arrayidx28, align 4
  %68 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dst_addr_width, align 4
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %dma_addr38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_addr38, align 8
  %71 = ptrtoint ptr %dma_addr_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_addr_offset, align 4
  %mul = mul i32 %72, %i.0197
  %add = add i32 %mul, %70
  %73 = ptrtoint ptr %src_addr37 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add, ptr %src_addr37, align 4
  %arrayidx34 = getelementptr [2 x i32], ptr %cond.i, i32 0, i32 %i.0197
  %74 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx34, align 4
  br label %if.end43

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx36 = getelementptr [2 x i32], ptr %cond.i, i32 0, i32 %i.0197
  %76 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx36, align 4
  %78 = ptrtoint ptr %src_addr37 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %src_addr37, align 4
  %79 = ptrtoint ptr %dma_addr38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_addr38, align 8
  %81 = ptrtoint ptr %dma_addr_offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_addr_offset, align 4
  %mul40 = mul i32 %82, %i.0197
  %add41 = add i32 %mul40, %80
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then32
  %storemerge = phi i32 [ %add41, %if.else ], [ %75, %if.then32 ]
  %dir.0 = phi i32 [ 2, %if.else ], [ 1, %if.then32 ]
  %83 = ptrtoint ptr %dst_addr42 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge, ptr %dst_addr42, align 4
  call void @sg_init_table(ptr noundef nonnull %call5.i.i, i32 noundef %div) #6
  br i1 %cmp45193.not, label %if.end43.for.end_crit_edge, label %for.body47.lr.ph

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body47.lr.ph:                                 ; preds = %if.end43
  %div48 = udiv i32 %9, %11
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.lr.ph
  %sgt.0195 = phi ptr [ %call5.i.i, %for.body47.lr.ph ], [ %incdec.ptr, %for.body47.for.body47_crit_edge ]
  %j.0194 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc, %for.body47.for.body47_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgt.0195, i32 0, i32 4
  %84 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div48, ptr %dma_length, align 4
  %85 = ptrtoint ptr %dma_addr38 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_addr38, align 8
  %87 = ptrtoint ptr %dma_addr_offset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_addr_offset, align 4
  %mul51 = mul i32 %88, %i.0197
  %mul53 = mul i32 %div48, %j.0194
  %add52 = add i32 %86, %mul53
  %add54 = add i32 %add52, %mul51
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgt.0195, i32 0, i32 3
  %89 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add54, ptr %dma_address, align 4
  %inc = add nuw nsw i32 %j.0194, 1
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sgt.0195, i32 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body47.for.end_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

for.body47.for.end_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body47.for.end_crit_edge, %if.end43.for.end_crit_edge
  %virt = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0197, i32 4
  %90 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %virt, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %link, align 4
  %phys = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0197, i32 3
  %94 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phys, align 4
  %96 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %phy_addr, align 4
  %97 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %58, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i177 = icmp eq ptr %100, null
  br i1 %tobool.not.i177, label %for.end.do.end60_crit_edge, label %dmaengine_slave_config.exit

for.end.do.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

dmaengine_slave_config.exit:                      ; preds = %for.end
  %call.i = call i32 %100(ptr noundef %58, ptr noundef nonnull %config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end62, label %dmaengine_slave_config.exit.do.end60_crit_edge

dmaengine_slave_config.exit.do.end60_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.end60:                                         ; preds = %dmaengine_slave_config.exit.do.end60_crit_edge, %for.end.do.end60_crit_edge
  %retval.0.i189 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end60_crit_edge ], [ -38, %for.end.do.end60_crit_edge ]
  %101 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i189) #9
  br label %config_err

if.end62:                                         ; preds = %dmaengine_slave_config.exit
  %103 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %58, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 39
  %105 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_prep_slave_sg, align 4
  %call63 = call ptr %106(ptr noundef %58, ptr noundef nonnull %call5.i.i, i32 noundef %div, i32 noundef %dir.0, i32 noundef 4, ptr noundef nonnull %link) #6
  %desc = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0197, i32 1
  %107 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call63, ptr %desc, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.17) #9
  br label %config_err

if.end71:                                         ; preds = %if.end62
  %110 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load = load i8, ptr %no_period_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool72.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool72.not, label %if.then73, label %if.end71.for.inc82_crit_edge

if.end71.for.inc82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc82

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call63, i32 0, i32 6
  %111 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @sprd_pcm_dma_complete, ptr %callback, align 4
  %112 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %3, ptr %callback_param, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %if.then73, %if.end71.for.inc82_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %link) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #6
  %inc83 = add nuw nsw i32 %i.0197, 1
  %exitcond199.not = icmp eq i32 %inc83, %11
  br i1 %exitcond199.not, label %for.inc82.for.end84_crit_edge, label %for.inc82.for.body_crit_edge

for.inc82.for.body_crit_edge:                     ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end84

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %for.cond.preheader.for.end84_crit_edge
  %115 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev17, align 4
  call void @devm_kfree(ptr noundef %116, ptr noundef nonnull %call5.i.i) #6
  br label %cleanup87

config_err:                                       ; preds = %do.end69, %do.end60
  %ret.0 = phi i32 [ %retval.0.i189, %do.end60 ], [ -12, %do.end69 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %link) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #6
  %117 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev17, align 4
  call void @devm_kfree(ptr noundef %118, ptr noundef nonnull %call5.i.i) #6
  br label %sg_err

sg_err:                                           ; preds = %config_err, %devm_kcalloc.exit.sg_err_crit_edge, %if.end15.sg_err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %config_err ], [ -12, %devm_kcalloc.exit.sg_err_crit_edge ], [ -12, %if.end15.sg_err_crit_edge ]
  %119 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %runtime1, align 4
  %private_data.i179 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %120, i32 0, i32 44
  %121 = ptrtoint ptr %private_data.i179 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %private_data.i179, align 8
  %arrayidx.i180 = getelementptr %struct.sprd_pcm_dma_private, ptr %122, i32 0, i32 2, i32 0
  %123 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i180, align 4
  %tobool.not.i181 = icmp eq ptr %124, null
  br i1 %tobool.not.i181, label %sg_err.if.end.i_crit_edge, label %if.then.i182

sg_err.if.end.i_crit_edge:                        ; preds = %sg_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i182:                                     ; preds = %sg_err
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %124) #6
  %125 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx.i180, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i182, %sg_err.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.sprd_pcm_dma_private, ptr %122, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %127, null
  br i1 %tobool.not.1.i, label %if.end.i.cleanup87_crit_edge, label %if.then.1.i

if.end.i.cleanup87_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %127) #6
  %128 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %cleanup87

cleanup87:                                        ; preds = %if.then.1.i, %if.end.i.cleanup87_crit_edge, %for.end84, %if.then.1.i.i, %if.end.i.i.cleanup87_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ 0, %for.end84 ], [ 0, %do.end ], [ %ret.1, %if.end.i.cleanup87_crit_edge ], [ %ret.1, %if.then.1.i ], [ -19, %if.then.1.i.i ], [ -19, %if.end.i.i.cleanup87_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_hw_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %arrayidx.i = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %5) #6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %8, null
  br i1 %tobool.not.1.i, label %if.end.i.sprd_pcm_release_dma_channel.exit_crit_edge, label %if.then.1.i

if.end.i.sprd_pcm_release_dma_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_pcm_release_dma_channel.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %8) #6
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %sprd_pcm_release_dma_channel.exit

sprd_pcm_release_dma_channel.exit:                ; preds = %if.then.1.i, %if.end.i.sprd_pcm_release_dma_channel.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_trigger(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup59_crit_edge [
    i32 1, label %for.cond.preheader
    i32 6, label %entry.sw.bb8_crit_edge
    i32 4, label %entry.sw.bb8_crit_edge129
    i32 0, label %for.cond26.preheader
    i32 5, label %entry.sw.bb42_crit_edge
    i32 3, label %entry.sw.bb42_crit_edge130
  ]

entry.sw.bb42_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

entry.sw.bb8_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.cond26.preheader:                             ; preds = %entry
  %hw_chan27 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %hw_chan27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_chan27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp28110 = icmp sgt i32 %6, 0
  br i1 %cmp28110, label %for.cond26.preheader.for.body29_crit_edge, label %for.cond26.preheader.cleanup59_crit_edge

for.cond26.preheader.cleanup59_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond.preheader:                               ; preds = %entry
  %hw_chan = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp114 = icmp sgt i32 %8, 0
  br i1 %cmp114, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup59_crit_edge

for.cond.preheader.cleanup59_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0115
  %desc = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0115, i32 1
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %12(ptr noundef nonnull %10) #6
  %cookie = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.0115, i32 2
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool5.not = icmp sgt i32 %call.i, -1
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 50
  %18 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %19(ptr noundef %15) #6
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %call.i) #9
  br label %cleanup59

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0115, 1
  %22 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_chan, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup59_crit_edge

for.inc.cleanup59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge129
  %hw_chan10 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %hw_chan10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_chan10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11112 = icmp sgt i32 %25, 0
  br i1 %cmp11112, label %sw.bb8.for.body12_crit_edge, label %sw.bb8.cleanup59_crit_edge

sw.bb8.cleanup59_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

sw.bb8.for.body12_crit_edge:                      ; preds = %sw.bb8
  br label %for.body12

for.body12:                                       ; preds = %if.end21.for.body12_crit_edge, %sw.bb8.for.body12_crit_edge
  %i.1113 = phi i32 [ %inc23, %if.end21.for.body12_crit_edge ], [ 0, %sw.bb8.for.body12_crit_edge ]
  %arrayidx15 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.1113
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx15, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %for.body12.if.end21_crit_edge, label %if.then18

for.body12.if.end21_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %for.body12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_resume.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %device_resume.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_resume.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then18.if.end21_crit_edge, label %if.then.i

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %call.i93 = tail call i32 %31(ptr noundef nonnull %27) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then18.if.end21_crit_edge, %for.body12.if.end21_crit_edge
  %inc23 = add nuw nsw i32 %i.1113, 1
  %32 = ptrtoint ptr %hw_chan10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_chan10, align 4
  %cmp11 = icmp slt i32 %inc23, %33
  br i1 %cmp11, label %if.end21.for.body12_crit_edge, label %if.end21.cleanup59_crit_edge

if.end21.cleanup59_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end21.for.body12_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

for.body29:                                       ; preds = %if.end38.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %i.2111 = phi i32 [ %inc40, %if.end38.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  %arrayidx32 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.2111
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx32, align 4
  %tobool34.not = icmp eq ptr %35, null
  br i1 %tobool34.not, label %for.body29.if.end38_crit_edge, label %if.then35

for.body29.if.end38_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %for.body29
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 47
  %38 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i94 = icmp eq ptr %39, null
  br i1 %tobool.not.i94, label %if.then35.if.end38_crit_edge, label %if.then.i96

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then.i96:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %call.i95 = tail call i32 %39(ptr noundef nonnull %35) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then.i96, %if.then35.if.end38_crit_edge, %for.body29.if.end38_crit_edge
  %inc40 = add nuw nsw i32 %i.2111, 1
  %40 = ptrtoint ptr %hw_chan27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_chan27, align 4
  %cmp28 = icmp slt i32 %inc40, %41
  br i1 %cmp28, label %if.end38.for.body29_crit_edge, label %if.end38.cleanup59_crit_edge

if.end38.cleanup59_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end38.for.body29_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

sw.bb42:                                          ; preds = %entry.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge130
  %hw_chan44 = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %hw_chan44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_chan44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp45108 = icmp sgt i32 %43, 0
  br i1 %cmp45108, label %sw.bb42.for.body46_crit_edge, label %sw.bb42.cleanup59_crit_edge

sw.bb42.cleanup59_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

sw.bb42.for.body46_crit_edge:                     ; preds = %sw.bb42
  br label %for.body46

for.body46:                                       ; preds = %if.end55.for.body46_crit_edge, %sw.bb42.for.body46_crit_edge
  %i.3109 = phi i32 [ %inc57, %if.end55.for.body46_crit_edge ], [ 0, %sw.bb42.for.body46_crit_edge ]
  %arrayidx49 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.3109
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx49, align 4
  %tobool51.not = icmp eq ptr %45, null
  br i1 %tobool51.not, label %for.body46.if.end55_crit_edge, label %if.then52

for.body46.if.end55_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then52:                                        ; preds = %for.body46
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 45
  %48 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i97 = icmp eq ptr %49, null
  br i1 %tobool.not.i97, label %if.then52.if.end55_crit_edge, label %if.then.i99

if.then52.if.end55_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then.i99:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %call.i98 = tail call i32 %49(ptr noundef nonnull %45) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then.i99, %if.then52.if.end55_crit_edge, %for.body46.if.end55_crit_edge
  %inc57 = add nuw nsw i32 %i.3109, 1
  %50 = ptrtoint ptr %hw_chan44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_chan44, align 4
  %cmp45 = icmp slt i32 %inc57, %51
  br i1 %cmp45, label %if.end55.for.body46_crit_edge, label %if.end55.cleanup59_crit_edge

if.end55.cleanup59_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end55.for.body46_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

cleanup59:                                        ; preds = %if.end55.cleanup59_crit_edge, %sw.bb42.cleanup59_crit_edge, %if.end38.cleanup59_crit_edge, %if.end21.cleanup59_crit_edge, %sw.bb8.cleanup59_crit_edge, %for.inc.cleanup59_crit_edge, %cleanup, %for.cond.preheader.cleanup59_crit_edge, %for.cond26.preheader.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.2 = phi i32 [ %call.i, %cleanup ], [ -22, %entry.cleanup59_crit_edge ], [ 0, %for.cond.preheader.cleanup59_crit_edge ], [ 0, %sw.bb8.cleanup59_crit_edge ], [ 0, %for.cond26.preheader.cleanup59_crit_edge ], [ 0, %sw.bb42.cleanup59_crit_edge ], [ 0, %for.inc.cleanup59_crit_edge ], [ 0, %if.end21.cleanup59_crit_edge ], [ 0, %if.end38.cleanup59_crit_edge ], [ 0, %if.end55.cleanup59_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %pointer = alloca [2 x i32], align 4
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pointer) #6
  %4 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pointer, align 4, !annotation !77
  %5 = getelementptr inbounds [2 x i32], ptr %pointer, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #6
  %7 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %hw_chan = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 3
  %8 = call ptr @memset(ptr %state, i32 255, i32 16)
  %9 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp94 = icmp sgt i32 %10, 0
  br i1 %cmp94, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %dma_addr_offset = getelementptr inbounds %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 4
  %pre_pointer = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sel_max.096 = phi i32 [ 0, %for.body.lr.ph ], [ %sel_max.2.ph, %for.inc.for.body_crit_edge ]
  %bytes_of_pointer.095 = phi i32 [ 0, %for.body.lr.ph ], [ %bytes_of_pointer.2.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.097
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cookie = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.097, i32 2
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cookie, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 49
  %17 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %18(ptr noundef nonnull %12, i32 noundef %14, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp4 = icmp eq i32 %call.i, 3
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr, align 8
  %23 = ptrtoint ptr %dma_addr_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr_offset, align 4
  %mul = mul i32 %24, %i.097
  %25 = add i32 %22, %mul
  %sub7 = sub i32 %20, %25
  %arrayidx8 = getelementptr [2 x i32], ptr %pointer, i32 0, i32 %i.097
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub7, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.097)
  %cmp9 = icmp eq i32 %i.097, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %pre_pointer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pre_pointer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %28)
  %cmp13 = icmp slt i32 %sub7, %28
  %cond = zext i1 %cmp13 to i32
  br label %if.end37

if.else:                                          ; preds = %if.end6
  %pre_pointer15 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.097, i32 5
  %29 = ptrtoint ptr %pre_pointer15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pre_pointer15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %30)
  %cmp16 = icmp slt i32 %sub7, %30
  %cond17 = zext i1 %cmp16 to i32
  %xor = xor i32 %sel_max.096, %cond17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool18.not = icmp eq i32 %xor, 0
  %sub27 = add nsw i32 %i.097, -1
  %arrayidx28 = getelementptr [2 x i32], ptr %pointer, i32 0, i32 %sub27
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  br i1 %tobool18.not, label %if.else25, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call i32 @llvm.smax.i32(i32 %sub7, i32 %32)
  %shl = shl i32 %33, 1
  br label %if.end37

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %34 = call i32 @llvm.smin.i32(i32 %sub7, i32 %32)
  %shl35 = shl i32 %34, 1
  br label %if.end37

if.end37:                                         ; preds = %if.else25, %if.then19, %if.then10
  %bytes_of_pointer.1 = phi i32 [ %sub7, %if.then10 ], [ %shl, %if.then19 ], [ %shl35, %if.else25 ]
  %sel_max.1 = phi i32 [ %cond, %if.then10 ], [ %xor, %if.then19 ], [ 0, %if.else25 ]
  %pre_pointer39 = getelementptr %struct.sprd_pcm_dma_private, ptr %3, i32 0, i32 2, i32 %i.097, i32 5
  %35 = ptrtoint ptr %pre_pointer39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub7, ptr %pre_pointer39, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.26, i32 noundef %i.097) #9
  br label %cleanup44

for.inc:                                          ; preds = %if.end37, %for.body.for.inc_crit_edge
  %bytes_of_pointer.2.ph = phi i32 [ %bytes_of_pointer.095, %for.body.for.inc_crit_edge ], [ %bytes_of_pointer.1, %if.end37 ]
  %sel_max.2.ph = phi i32 [ %sel_max.096, %for.body.for.inc_crit_edge ], [ %sel_max.1, %if.end37 ]
  %inc = add nuw nsw i32 %i.097, 1
  %38 = ptrtoint ptr %hw_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hw_chan, align 4
  %cmp = icmp slt i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %bytes_of_pointer.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %bytes_of_pointer.2.ph, %for.inc.for.end_crit_edge ]
  %mul.i = shl i32 %bytes_of_pointer.0.lcssa, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %40 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %41
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %43)
  %cmp41 = icmp eq i32 %div.i, %43
  %spec.store.select = select i1 %cmp41, i32 0, i32 %div.i
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %cleanup
  %retval.2 = phi i32 [ 0, %cleanup ], [ %spec.store.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pointer) #6
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pcm_dma_complete(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_snd_soc_sprd_platform__246_493_sprd_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_sprd_platform__246_493_sprd_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_sprd_pcm_driver_exit, !1, !"__exitcall_sprd_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 495, i32 1}
!5 = !{ptr @__UNIQUE_ID_file248, !6, !"__UNIQUE_ID_file248", i1 false, i1 false}
!6 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 496, i32 1}
!7 = !{ptr @__UNIQUE_ID_license249, !6, !"__UNIQUE_ID_license249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias250, !9, !"__UNIQUE_ID_alias250", i1 false, i1 false}
!9 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 497, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 486, i32 11}
!12 = !{ptr @sprd_pcm_driver, !13, !"sprd_pcm_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 484, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 467, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sprd_soc_platform_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sprd_soc_platform_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 473, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sprd_soc_platform_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sprd_soc_platform_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 449, i32 11}
!29 = !{ptr @sprd_soc_component, !30, !"sprd_soc_component", i1 false, i1 false}
!30 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 448, i32 46}
!31 = !{ptr @sprd_pcm_hardware, !32, !"sprd_pcm_hardware", i1 false, i1 false}
!32 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 37, i32 38}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 205, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sprd_pcm_hw_params._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sprd_pcm_hw_params._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 268, i32 4}
!40 = !{ptr @sprd_pcm_hw_params._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_pcm_hw_params._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 283, i32 4}
!44 = !{ptr @sprd_pcm_hw_params._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sprd_pcm_hw_params._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 167, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sprd_pcm_request_dma_channel._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sprd_pcm_request_dma_channel._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 177, i32 4}
!53 = !{ptr @sprd_pcm_request_dma_channel._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sprd_pcm_request_dma_channel._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 331, i32 5}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sprd_pcm_trigger._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sprd_pcm_trigger._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 396, i32 4}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sprd_pcm_pointer._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sprd_pcm_pointer._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @sprd_pcm_of_match, !66, !"sprd_pcm_of_match", i1 false, i1 false}
!66 = !{!"../sound/soc/sprd/sprd-pcm-dma.c", i32 478, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"auto-init"}
