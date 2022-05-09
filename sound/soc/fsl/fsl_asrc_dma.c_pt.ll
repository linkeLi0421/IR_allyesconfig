; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_asrc_dma.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_asrc_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsl_asrc_component\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_asrc_component\09\09\09\09"
module asm "\09.long\09__crc_fsl_asrc_component\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_asrc_component:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_asrc_component\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_asrc_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_asrc = type { %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, [4 x ptr], i32, i32, i32, i8, ptr, ptr, ptr, ptr, i32, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.fsl_asrc_pair = type { ptr, i32, i32, i32, [2 x ptr], [2 x ptr], %struct.imx_dma_data, i32, i8, ptr }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-asrc-dai\00", [19 x i8] zeroinitializer }, align 32
@fsl_asrc_component = dso_local global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_dma_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_dma_startup, ptr @fsl_asrc_dma_shutdown, ptr null, ptr @fsl_asrc_dma_hw_params, ptr @fsl_asrc_dma_hw_free, ptr null, ptr @fsl_asrc_dma_trigger, ptr null, ptr @fsl_asrc_dma_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fsl_asrc_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_asrc_component = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_asrc_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_asrc_component to i32), ptr @__kstrtab_fsl_asrc_component, ptr @__kstrtabns_fsl_asrc_component }, section "___ksymtab_gpl+fsl_asrc_component", align 4
@fsl_asrc_dma_pcm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_asrc_dma_pcm_new\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/fsl/fsl_asrc_dma.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_pcm_new._entry_ptr = internal global ptr @fsl_asrc_dma_pcm_new._entry, section ".printk_index", align 4
@fsl_asrc_dma_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set pcm hw params periods\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_asrc_dma_startup\00", [43 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_startup._entry_ptr = internal global ptr @fsl_asrc_dma_startup._entry, section ".printk_index", align 4
@fsl_asrc_dma_startup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request asrc pair\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_startup._entry_ptr.10 = internal global ptr @fsl_asrc_dma_startup._entry.8, section ".printk_index", align 4
@fsl_asrc_dma_startup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get dma channel\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_startup._entry_ptr.13 = internal global ptr @fsl_asrc_dma_startup._entry.11, section ".printk_index", align 4
@snd_imx_hardware = internal global { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 128, i32 65535, i32 2, i32 255, i32 0 }, [32 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_startup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to refine runtime hwparams\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_startup._entry_ptr.16 = internal global ptr @fsl_asrc_dma_startup._entry.14, section ".printk_index", align 4
@fsl_asrc_dma_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get the substream of Back-End\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_asrc_dma_hw_params\00", [41 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr = internal global ptr @fsl_asrc_dma_hw_params._entry, section ".printk_index", align 4
@fsl_asrc_dma_hw_params._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request DMA channel\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr.21 = internal global ptr @fsl_asrc_dma_hw_params._entry.19, section ".printk_index", align 4
@fsl_asrc_dma_hw_params._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to prepare DMA config for Front-End\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr.24 = internal global ptr @fsl_asrc_dma_hw_params._entry.22, section ".printk_index", align 4
@fsl_asrc_dma_hw_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to config DMA channel for Front-End\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr.27 = internal global ptr @fsl_asrc_dma_hw_params._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_dmaengine_pcm\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to request DMA channel for Back-End\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr.33 = internal global ptr @fsl_asrc_dma_hw_params._entry.31, section ".printk_index", align 4
@fsl_asrc_dma_hw_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to config DMA channel for Back-End\0A\00", [53 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_hw_params._entry_ptr.36 = internal global ptr @fsl_asrc_dma_hw_params._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-sdma\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dma\00", [24 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_prepare_and_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to prepare slave DMA for Front-End\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fsl_asrc_dma_prepare_and_submit\00", [32 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_prepare_and_submit._entry_ptr = internal global ptr @fsl_asrc_dma_prepare_and_submit._entry, section ".printk_index", align 4
@fsl_asrc_dma_prepare_and_submit._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to prepare slave DMA for Back-End\0A\00", [54 x i8] zeroinitializer }, align 32
@fsl_asrc_dma_prepare_and_submit._entry_ptr.43 = internal global ptr @fsl_asrc_dma_prepare_and_submit._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 436, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"fsl_asrc_component\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 435, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 427, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 329, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 348, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"snd_imx_hardware\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 19, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 368, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 169, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 180, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 187, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 193, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 206, i32 59 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 212, i32 53 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 212, i32 60 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 247, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 281, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 64, i32 50 }
@___asan_gen_.151 = private unnamed_addr constant [41 x i8] c"../include/linux/platform_data/dma-imx.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 65, i32 44 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 75, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [32 x i8] c"../sound/soc/fsl/fsl_asrc_dma.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 88, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_fsl_asrc_component, ptr @fsl_asrc_dma_hw_params._entry, ptr @fsl_asrc_dma_hw_params._entry.19, ptr @fsl_asrc_dma_hw_params._entry.22, ptr @fsl_asrc_dma_hw_params._entry.25, ptr @fsl_asrc_dma_hw_params._entry.31, ptr @fsl_asrc_dma_hw_params._entry.34, ptr @fsl_asrc_dma_hw_params._entry_ptr, ptr @fsl_asrc_dma_hw_params._entry_ptr.21, ptr @fsl_asrc_dma_hw_params._entry_ptr.24, ptr @fsl_asrc_dma_hw_params._entry_ptr.27, ptr @fsl_asrc_dma_hw_params._entry_ptr.33, ptr @fsl_asrc_dma_hw_params._entry_ptr.36, ptr @fsl_asrc_dma_pcm_new._entry, ptr @fsl_asrc_dma_pcm_new._entry_ptr, ptr @fsl_asrc_dma_prepare_and_submit._entry, ptr @fsl_asrc_dma_prepare_and_submit._entry.41, ptr @fsl_asrc_dma_prepare_and_submit._entry_ptr, ptr @fsl_asrc_dma_prepare_and_submit._entry_ptr.43, ptr @fsl_asrc_dma_startup._entry, ptr @fsl_asrc_dma_startup._entry.11, ptr @fsl_asrc_dma_startup._entry.14, ptr @fsl_asrc_dma_startup._entry.8, ptr @fsl_asrc_dma_startup._entry_ptr, ptr @fsl_asrc_dma_startup._entry_ptr.10, ptr @fsl_asrc_dma_startup._entry_ptr.13, ptr @fsl_asrc_dma_startup._entry_ptr.16, ptr @.str, ptr @fsl_asrc_component, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @snd_imx_hardware, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_pcm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_startup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_startup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_imx_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_startup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_hw_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_prepare_and_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dma_prepare_and_submit._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %7, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef 4294967295) #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %5, i32 noundef 2, ptr noundef %12, i32 noundef 262144, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_startup(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %call4 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %5, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %pair_priv_size = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %pair_priv_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pair_priv_size, align 4
  %add = add i32 %11, 60
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 60
  %private = getelementptr inbounds %struct.fsl_asrc_pair, ptr %call9.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %private, align 8
  %private_data12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %14 = ptrtoint ptr %private_data12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %private_data12, align 8
  %request_pair = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 15
  %15 = ptrtoint ptr %request_pair to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request_pair, align 4
  %call13 = tail call i32 %16(i32 noundef 1, ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %req_pair_err.thread, label %if.end20

req_pair_err.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9) #11
  br label %if.then41

if.end20:                                         ; preds = %if.end10
  %get_dma_channel = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 14
  %17 = ptrtoint ptr %get_dma_channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_dma_channel, align 4
  %call22 = tail call ptr %18(ptr noundef nonnull %call9.i.i, i1 noundef zeroext %cmp) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %req_pair_err.thread91, label %if.end28

req_pair_err.thread91:                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #11
  %release_pair3994 = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 16
  %19 = ptrtoint ptr %release_pair3994 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release_pair3994, align 4
  tail call void %20(ptr noundef nonnull %call9.i.i) #8
  br label %if.then41

if.end28:                                         ; preds = %if.end20
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dais, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %24, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %27 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call30 = tail call i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef %substream, ptr noundef %cond.i, ptr noundef nonnull @snd_imx_hardware, ptr noundef nonnull %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15) #11
  tail call void @dma_release_channel(ptr noundef nonnull %call22) #8
  %release_pair39.c = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 16
  %28 = ptrtoint ptr %release_pair39.c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %release_pair39.c, align 4
  tail call void %29(ptr noundef nonnull %call9.i.i) #8
  br label %if.then41

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @snd_imx_hardware) #8
  tail call void @dma_release_channel(ptr noundef nonnull %call22) #8
  %release_pair39.c95 = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 16
  %30 = ptrtoint ptr %release_pair39.c95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release_pair39.c95, align 4
  tail call void %31(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

if.then41:                                        ; preds = %do.end36, %req_pair_err.thread91, %req_pair_err.thread
  %ret.190 = phi i32 [ %call13, %req_pair_err.thread ], [ -22, %req_pair_err.thread91 ], [ %call30, %do.end36 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end37, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %ret.190, %if.then41 ], [ %call30, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_shutdown(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %index = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %5, i32 0, i32 9, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %9, %3
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr noundef %params) #0 align 64 {
entry:
  %config_fe = alloca %struct.dma_slave_config, align 4
  %config_be = alloca %struct.dma_slave_config, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config_fe) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config_be) #8
  %10 = call ptr @memset(ptr %config_be, i32 255, i32 48)
  %index4 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index4, align 4
  %dev5 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %arrayidx = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %arrayidx, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp12.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp12.not, label %for.cond.do.end_crit_edge, label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.cond
  %fe = getelementptr i8, ptr %.pn, i32 -8
  %16 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe, align 4
  %cmp16.not = icmp eq ptr %17, %1
  br i1 %cmp16.not, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %dpcm.0 = getelementptr i8, ptr %.pn, i32 -12
  %18 = ptrtoint ptr %dpcm.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dpcm.0, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dais, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call = tail call ptr @snd_soc_dpcm_get_substream(ptr noundef %19, i32 noundef %3) #8
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %26 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %dev19 = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev19, align 4
  %tobool27.not = icmp eq ptr %cond.i, null
  br i1 %tobool27.not, label %for.end.do.end_crit_edge, label %if.end29

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17) #11
  br label %cleanup197

if.end29:                                         ; preds = %for.end
  %dais30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %dais30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dais30, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i316 = icmp eq i32 %34, 0
  %playback_dma_data.i317 = getelementptr inbounds %struct.snd_soc_dai, ptr %32, i32 0, i32 7
  %capture_dma_data.i318 = getelementptr inbounds %struct.snd_soc_dai, ptr %32, i32 0, i32 8
  %cond.in.i319 = select i1 %cmp.i316, ptr %playback_dma_data.i317, ptr %capture_dma_data.i318
  %35 = ptrtoint ptr %cond.in.i319 to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i320 = load ptr, ptr %cond.in.i319, align 4
  %paddr = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 4
  %36 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %paddr, align 4
  %get_fifo_addr = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 17
  %38 = ptrtoint ptr %get_fifo_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_fifo_addr, align 4
  %lnot34 = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot34 to i32
  %conv35 = zext i1 %lnot34 to i8
  %call36 = tail call i32 %39(i8 noundef zeroext %conv35, i32 noundef %12) #8
  %add = add i32 %call36, %37
  %40 = ptrtoint ptr %cond.i320 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %cond.i320, align 4
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %41 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxburst, align 4
  %maxburst37 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i320, i32 0, i32 2
  %43 = ptrtoint ptr %maxburst37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %maxburst37, align 4
  %get_dma_channel = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 14
  %44 = ptrtoint ptr %get_dma_channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_dma_channel, align 4
  %call41 = tail call ptr %45(ptr noundef %7, i1 noundef zeroext %lnot34) #8
  %arrayidx45 = getelementptr %struct.fsl_asrc_pair, ptr %7, i32 0, i32 5, i32 %lnot.ext
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call41, ptr %arrayidx45, align 4
  %tobool51.not = icmp eq ptr %call41, null
  br i1 %tobool51.not, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.20) #11
  br label %cleanup197

if.end56:                                         ; preds = %if.end29
  %47 = call ptr @memset(ptr %config_fe, i32 0, i32 48)
  %call57 = call i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef nonnull %config_fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23) #11
  br label %cleanup197

if.end63:                                         ; preds = %if.end56
  %48 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx45, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end63.do.end74_crit_edge, label %dmaengine_slave_config.exit

if.end63.do.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

dmaengine_slave_config.exit:                      ; preds = %if.end63
  %call.i = call i32 %53(ptr noundef %49, ptr noundef nonnull %config_fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool70.not = icmp eq i32 %call.i, 0
  br i1 %tobool70.not, label %if.end75, label %dmaengine_slave_config.exit.do.end74_crit_edge

dmaengine_slave_config.exit.do.end74_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end74:                                         ; preds = %dmaengine_slave_config.exit.do.end74_crit_edge, %if.end63.do.end74_crit_edge
  %retval.0.i335 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end74_crit_edge ], [ -38, %if.end63.do.end74_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26) #11
  br label %cleanup197

if.end75:                                         ; preds = %dmaengine_slave_config.exit
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #8
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %mask) #8
  %call76 = call ptr @snd_soc_lookup_component_nolocked(ptr noundef %28, ptr noundef nonnull @.str.28) #8
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end75.if.end89_crit_edge, label %if.end82

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end82:                                         ; preds = %if.end75
  %add.ptr.i = getelementptr i8, ptr %call76, i32 -12
  %55 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stream, align 4
  %arrayidx81 = getelementptr [2 x ptr], ptr %add.ptr.i, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx81, align 4
  %tobool83.not = icmp eq ptr %58, null
  br i1 %tobool83.not, label %if.end82.if.end89_crit_edge, label %if.end89.thread

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %if.end82.if.end89_crit_edge, %if.end75.if.end89_crit_edge
  %cond87 = select i1 %cmp, ptr @.str.29, ptr @.str.30
  %call.i321 = call ptr @dma_request_chan(ptr noundef %28, ptr noundef nonnull %cond87) #8
  %cmp.i.i = icmp ugt ptr %call.i321, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i321
  %use_edma = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 13
  %59 = ptrtoint ptr %use_edma to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %use_edma, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool90.not = icmp eq i8 %60, 0
  br i1 %tobool90.not, label %if.then94, label %if.end89.if.else_crit_edge

if.end89.if.else_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end89.thread:                                  ; preds = %if.end82
  %use_edma350 = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 13
  %61 = ptrtoint ptr %use_edma350 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_edma350, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool90.not351 = icmp eq i8 %62, 0
  br i1 %tobool90.not351, label %if.then91.thread, label %if.end89.thread.if.else_crit_edge

if.end89.thread.if.else_crit_edge:                ; preds = %if.end89.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then91.thread:                                 ; preds = %if.end89.thread
  call void @__sanitizer_cov_trace_pc() #10
  %private358 = getelementptr inbounds %struct.dma_chan, ptr %58, i32 0, i32 14
  %63 = ptrtoint ptr %private358 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private358, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %dma_data359 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 6
  %67 = ptrtoint ptr %dma_data359 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dma_data359, align 4
  br label %if.end95

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %private = getelementptr inbounds %struct.dma_chan, ptr %spec.select.i, i32 0, i32 14
  %68 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %dma_data = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 6
  %72 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dma_data, align 4
  call void @dma_release_channel(ptr noundef %spec.select.i) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then91.thread
  %dma_data360 = phi ptr [ %dma_data359, %if.then91.thread ], [ %dma_data, %if.then94 ]
  %73 = ptrtoint ptr %get_dma_channel to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_dma_channel, align 4
  %call98 = call ptr %74(ptr noundef %7, i1 noundef zeroext %cmp) #8
  %private99 = getelementptr inbounds %struct.dma_chan, ptr %call98, i32 0, i32 14
  %75 = ptrtoint ptr %private99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %private99, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %dma_request2 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %dma_request2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dma_request2, align 4
  %peripheral_type = getelementptr inbounds %struct.imx_dma_data, ptr %76, i32 0, i32 2
  %80 = ptrtoint ptr %peripheral_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %peripheral_type, align 4
  %peripheral_type103 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 6, i32 2
  %82 = ptrtoint ptr %peripheral_type103 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %peripheral_type103, align 4
  %priority = getelementptr inbounds %struct.imx_dma_data, ptr %76, i32 0, i32 3
  %83 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %priority, align 4
  %priority105 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 6, i32 3
  %85 = ptrtoint ptr %priority105 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %priority105, align 4
  call void @dma_release_channel(ptr noundef %call98) #8
  %86 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx45, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %dev111 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev111, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 8
  %call113 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef %dma_data360, ptr noundef %93) #8
  %idxprom = zext i1 %cmp to i32
  %arrayidx115 = getelementptr %struct.fsl_asrc_pair, ptr %7, i32 0, i32 5, i32 %idxprom
  %94 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call113, ptr %arrayidx115, align 4
  %req_dma_chan = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 8
  %95 = ptrtoint ptr %req_dma_chan to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %req_dma_chan, align 4
  br label %if.end124

if.else:                                          ; preds = %if.end89.thread.if.else_crit_edge, %if.end89.if.else_crit_edge
  %tmp_chan.1354 = phi ptr [ %58, %if.end89.thread.if.else_crit_edge ], [ %spec.select.i, %if.end89.if.else_crit_edge ]
  %tobool83.not338353 = phi i1 [ false, %if.end89.thread.if.else_crit_edge ], [ true, %if.end89.if.else_crit_edge ]
  %idxprom117 = zext i1 %cmp to i32
  %arrayidx118 = getelementptr %struct.fsl_asrc_pair, ptr %7, i32 0, i32 5, i32 %idxprom117
  %96 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %tmp_chan.1354, ptr %arrayidx118, align 4
  %req_dma_chan122 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 8
  %frombool123 = zext i1 %tobool83.not338353 to i8
  %97 = ptrtoint ptr %req_dma_chan122 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %frombool123, ptr %req_dma_chan122, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.end95
  %idxprom126.pre-phi = phi i32 [ %idxprom117, %if.else ], [ %idxprom, %if.end95 ]
  %arrayidx127 = getelementptr %struct.fsl_asrc_pair, ptr %7, i32 0, i32 5, i32 %idxprom126.pre-phi
  %98 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx127, align 4
  %tobool128.not = icmp eq ptr %99, null
  br i1 %tobool128.not, label %do.end132, label %if.end133

do.end132:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32) #11
  br label %cleanup197

if.end133:                                        ; preds = %if.end124
  %asrc_format = getelementptr inbounds %struct.fsl_asrc, ptr %9, i32 0, i32 12
  %100 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %asrc_format, align 4
  %call134 = call i32 @snd_pcm_format_physical_width(i32 noundef %101) #8
  %102 = add i32 %call134, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -57, i32 %102)
  %103 = icmp ult i32 %102, -57
  br i1 %103, label %if.end133.cleanup197_crit_edge, label %if.else140

if.end133.cleanup197_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup197

if.else140:                                       ; preds = %if.end133
  %104 = zext i32 %call134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call134, label %if.else152 [
    i32 8, label %if.else140.if.end161_crit_edge
    i32 16, label %if.then147
    i32 24, label %if.then151
  ]

if.else140.if.end161_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then147:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then151:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.else152:                                       ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call134)
  %cmp153 = icmp ult i32 %call134, 33
  %. = select i1 %cmp153, i32 4, i32 8
  br label %if.end161

if.end161:                                        ; preds = %if.else152, %if.then151, %if.then147, %if.else140.if.end161_crit_edge
  %buswidth.0 = phi i32 [ 2, %if.then147 ], [ 3, %if.then151 ], [ 1, %if.else140.if.end161_crit_edge ], [ %., %if.else152 ]
  %105 = ptrtoint ptr %config_be to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %config_be, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 3
  %106 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %buswidth.0, ptr %src_addr_width, align 4
  %107 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %maxburst, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 5
  %109 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %src_maxburst, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 4
  %110 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %buswidth.0, ptr %dst_addr_width, align 4
  %111 = load i32, ptr %maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 6
  %112 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %dst_maxburst, align 4
  %113 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %paddr, align 4
  %115 = ptrtoint ptr %get_fifo_addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %get_fifo_addr, align 4
  br i1 %cmp, label %if.then165, label %if.else171

if.then165:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = call i32 %116(i8 noundef zeroext 1, i32 noundef %12) #8
  %add169 = add i32 %call168, %114
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 1
  %117 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add169, ptr %src_addr, align 4
  %118 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cond.i, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 2
  %120 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %dst_addr, align 4
  br label %if.end179

if.else171:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call174 = call i32 %116(i8 noundef zeroext 0, i32 noundef %12) #8
  %add175 = add i32 %call174, %114
  %dst_addr176 = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 2
  %121 = ptrtoint ptr %dst_addr176 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add175, ptr %dst_addr176, align 4
  %122 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cond.i, align 4
  %src_addr178 = getelementptr inbounds %struct.dma_slave_config, ptr %config_be, i32 0, i32 1
  %124 = ptrtoint ptr %src_addr178 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %src_addr178, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else171, %if.then165
  %125 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx127, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %device_config.i322 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 44
  %129 = ptrtoint ptr %device_config.i322 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device_config.i322, align 4
  %tobool.not.i323 = icmp eq ptr %130, null
  br i1 %tobool.not.i323, label %if.end179.do.end188_crit_edge, label %dmaengine_slave_config.exit327

if.end179.do.end188_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end188

dmaengine_slave_config.exit327:                   ; preds = %if.end179
  %call.i324 = call i32 %130(ptr noundef %126, ptr noundef nonnull %config_be) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool184.not = icmp eq i32 %call.i324, 0
  br i1 %tobool184.not, label %dmaengine_slave_config.exit327.cleanup197_crit_edge, label %dmaengine_slave_config.exit327.do.end188_crit_edge

dmaengine_slave_config.exit327.do.end188_crit_edge: ; preds = %dmaengine_slave_config.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end188

dmaengine_slave_config.exit327.cleanup197_crit_edge: ; preds = %dmaengine_slave_config.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup197

do.end188:                                        ; preds = %dmaengine_slave_config.exit327.do.end188_crit_edge, %if.end179.do.end188_crit_edge
  %retval.0.i326342 = phi i32 [ %call.i324, %dmaengine_slave_config.exit327.do.end188_crit_edge ], [ -38, %if.end179.do.end188_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.35) #11
  %req_dma_chan189 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 8
  %131 = ptrtoint ptr %req_dma_chan189 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %req_dma_chan189, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool190.not = icmp eq i8 %132, 0
  br i1 %tobool190.not, label %do.end188.cleanup197_crit_edge, label %if.then191

do.end188.cleanup197_crit_edge:                   ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup197

if.then191:                                       ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx127, align 4
  call void @dma_release_channel(ptr noundef %134) #8
  br label %cleanup197

cleanup197:                                       ; preds = %if.then191, %do.end188.cleanup197_crit_edge, %dmaengine_slave_config.exit327.cleanup197_crit_edge, %if.end133.cleanup197_crit_edge, %do.end132, %do.end74, %do.end62, %do.end55, %do.end
  %retval.0 = phi i32 [ %call57, %do.end62 ], [ %retval.0.i335, %do.end74 ], [ -22, %do.end132 ], [ -22, %do.end55 ], [ -22, %do.end ], [ -22, %if.end133.cleanup197_crit_edge ], [ %retval.0.i326342, %if.then191 ], [ %retval.0.i326342, %do.end188.cleanup197_crit_edge ], [ 0, %dmaengine_slave_config.exit327.cleanup197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config_be) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config_fe) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_hw_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx = getelementptr %struct.fsl_asrc_pair, ptr %5, i32 0, i32 5, i32 %lnot.ext
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idxprom = zext i1 %cmp to i32
  %arrayidx10 = getelementptr %struct.fsl_asrc_pair, ptr %5, i32 0, i32 5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %req_dma_chan = getelementptr inbounds %struct.fsl_asrc_pair, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %req_dma_chan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_dma_chan, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end18_crit_edge, label %if.then14

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %9) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dma_trigger(ptr nocapture noundef readonly %component, ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge27
    i32 4, label %entry.sw.bb_crit_edge28
    i32 0, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge29
    i32 3, label %entry.sw.bb4_crit_edge30
  ]

entry.sw.bb4_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %dev2.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %7 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2.i, align 4
  %no_period_wakeup.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %no_period_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %no_period_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %spec.select.i = select i1 %tobool.not.i, i32 3, i32 2
  %pos.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pos.i, align 4
  %lnot.i = xor i1 %cmp.i, true
  %lnot.ext.i = zext i1 %lnot.i to i32
  %arrayidx.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5, i32 %lnot.ext.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr.i, align 8
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %20, %18
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 16
  %21 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i92.i = mul i32 %22, %20
  %div1.i.i93.i = lshr i32 %mul.i.i92.i, 3
  %cond9.i = select i1 %cmp.i, i32 1, i32 2
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %sw.bb.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %12, align 4
  %tobool1.not.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_dma_cyclic.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 40
  %25 = ptrtoint ptr %device_prep_dma_cyclic.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_prep_dma_cyclic.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, label %dmaengine_prep_dma_cyclic.exit.i

lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit.thread.i

dmaengine_prep_dma_cyclic.exit.thread.i:          ; preds = %lor.lhs.false2.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge, %sw.bb.dmaengine_prep_dma_cyclic.exit.thread.i_crit_edge
  %arrayidx14108.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 4, i32 %lnot.ext.i
  %27 = ptrtoint ptr %arrayidx14108.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx14108.i, align 4
  br label %do.end.i

dmaengine_prep_dma_cyclic.exit.i:                 ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %26(ptr noundef nonnull %12, i32 noundef %14, i32 noundef %div1.i.i.i, i32 noundef %div1.i.i93.i, i32 noundef %cond9.i, i32 noundef %spec.select.i) #8
  %arrayidx14.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 4, i32 %lnot.ext.i
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %arrayidx14.i, align 4
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %dmaengine_prep_dma_cyclic.exit.i.do.end.i_crit_edge, label %if.end22.i

dmaengine_prep_dma_cyclic.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.i.do.end.i_crit_edge, %dmaengine_prep_dma_cyclic.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end22.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit.i
  %conv6.i = zext i1 %cmp.i to i32
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fsl_asrc_dma_complete, ptr %callback.i, align 4
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx14.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %substream, ptr %callback_param.i, align 4
  %33 = load ptr, ptr %arrayidx14.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i94.i = tail call i32 %35(ptr noundef %33) #8
  %arrayidx40.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5, i32 %conv6.i
  %36 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40.i, align 4
  %tobool.not.i95.i = icmp eq ptr %37, null
  br i1 %tobool.not.i95.i, label %if.end22.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge, label %lor.lhs.false.i97.i

if.end22.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit104.thread.i

lor.lhs.false.i97.i:                              ; preds = %if.end22.i
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool1.not.i96.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i96.i, label %lor.lhs.false.i97.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge, label %lor.lhs.false2.i100.i

lor.lhs.false.i97.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge: ; preds = %lor.lhs.false.i97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit104.thread.i

lor.lhs.false2.i100.i:                            ; preds = %lor.lhs.false.i97.i
  %device_prep_dma_cyclic.i98.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 40
  %40 = ptrtoint ptr %device_prep_dma_cyclic.i98.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_prep_dma_cyclic.i98.i, align 4
  %tobool4.not.i99.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i99.i, label %lor.lhs.false2.i100.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge, label %dmaengine_prep_dma_cyclic.exit104.i

lor.lhs.false2.i100.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge: ; preds = %lor.lhs.false2.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_dma_cyclic.exit104.thread.i

dmaengine_prep_dma_cyclic.exit104.thread.i:       ; preds = %lor.lhs.false2.i100.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge, %lor.lhs.false.i97.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge, %if.end22.i.dmaengine_prep_dma_cyclic.exit104.thread.i_crit_edge
  %arrayidx44111.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 4, i32 %conv6.i
  %42 = ptrtoint ptr %arrayidx44111.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx44111.i, align 4
  br label %do.end52.i

dmaengine_prep_dma_cyclic.exit104.i:              ; preds = %lor.lhs.false2.i100.i
  %call.i101.i = tail call ptr %41(ptr noundef nonnull %37, i32 noundef 65535, i32 noundef 64, i32 noundef 64, i32 noundef 3, i32 noundef 0) #8
  %arrayidx44.i = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 4, i32 %conv6.i
  %43 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i101.i, ptr %arrayidx44.i, align 4
  %tobool48.not.i = icmp eq ptr %call.i101.i, null
  br i1 %tobool48.not.i, label %dmaengine_prep_dma_cyclic.exit104.i.do.end52.i_crit_edge, label %if.end

dmaengine_prep_dma_cyclic.exit104.i.do.end52.i_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52.i

do.end52.i:                                       ; preds = %dmaengine_prep_dma_cyclic.exit104.i.do.end52.i_crit_edge, %dmaengine_prep_dma_cyclic.exit104.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_dma_cyclic.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_submit.i105.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i101.i, i32 0, i32 4
  %44 = ptrtoint ptr %tx_submit.i105.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_submit.i105.i, align 4
  %call.i106.i = tail call i32 %45(ptr noundef nonnull %call.i101.i) #8
  %dma_chan = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5
  %46 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_chan, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 50
  %50 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %51(ptr noundef %47) #8
  %arrayidx3 = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx3, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %device_issue_pending.i18 = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 50
  %56 = ptrtoint ptr %device_issue_pending.i18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_issue_pending.i18, align 4
  tail call void %57(ptr noundef %53) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge29, %entry.sw.bb4_crit_edge30
  %dma_chan5 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5
  %arrayidx6 = getelementptr %struct.fsl_asrc_pair, ptr %3, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx6, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 47
  %62 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i19 = icmp eq ptr %63, null
  br i1 %tobool.not.i19, label %sw.bb4.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

sw.bb4.dmaengine_terminate_all.exit_crit_edge:    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %63(ptr noundef %59) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %sw.bb4.dmaengine_terminate_all.exit_crit_edge
  %64 = ptrtoint ptr %dma_chan5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_chan5, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %device_terminate_all.i20 = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 47
  %68 = ptrtoint ptr %device_terminate_all.i20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device_terminate_all.i20, align 4
  %tobool.not.i21 = icmp eq ptr %69, null
  br i1 %tobool.not.i21, label %dmaengine_terminate_all.exit.cleanup_crit_edge, label %if.then.i23

dmaengine_terminate_all.exit.cleanup_crit_edge:   ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i23:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i22 = tail call i32 %69(ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %dmaengine_terminate_all.exit.cleanup_crit_edge, %if.end, %do.end52.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %dmaengine_terminate_all.exit.cleanup_crit_edge ], [ 0, %if.then.i23 ], [ -12, %do.end52.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_asrc_dma_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pos = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  %mul.i = shl i32 %5, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  ret i32 %div.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dpcm_get_substream(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_lookup_component_nolocked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef %chan, ptr noundef %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(9) @.str.37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %imx_dma_is_general_purpose.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

imx_dma_is_general_purpose.exit:                  ; preds = %entry
  %call5.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(8) @.str.38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i.not, label %imx_dma_is_general_purpose.exit.if.end_crit_edge, label %imx_dma_is_general_purpose.exit.return_crit_edge

imx_dma_is_general_purpose.exit.return_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

imx_dma_is_general_purpose.exit.if.end_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %imx_dma_is_general_purpose.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %param, ptr %private, align 4
  br label %return

return:                                           ; preds = %if.end, %imx_dma_is_general_purpose.exit.return_crit_edge
  %tobool.not4 = phi i1 [ false, %imx_dma_is_general_purpose.exit.return_crit_edge ], [ true, %if.end ]
  ret i1 %tobool.not4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_asrc_dma_complete(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %arg, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %pos = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos, align 4
  %add = add i32 %div1.i.i, %9
  store i32 %add, ptr %pos, align 4
  %10 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %frame_bits.i.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_bits.i.i11, align 8
  %mul.i.i12 = mul i32 %14, %12
  %div1.i.i13 = lshr i32 %mul.i.i12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div1.i.i13)
  %cmp.not = icmp ult i32 %add, %div1.i.i13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_pcm_period_elapsed(ptr noundef %arg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 436, i32 11}
!2 = !{ptr @fsl_asrc_component, !3, !"fsl_asrc_component", i1 false, i1 false}
!3 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 435, i32 33}
!4 = !{ptr @__ksymtab_fsl_asrc_component, !5, !"__ksymtab_fsl_asrc_component", i1 false, i1 false}
!5 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 445, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 427, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @fsl_asrc_dma_pcm_new._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @fsl_asrc_dma_pcm_new._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 329, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fsl_asrc_dma_startup._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fsl_asrc_dma_startup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 348, i32 3}
!21 = !{ptr @fsl_asrc_dma_startup._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @fsl_asrc_dma_startup._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 355, i32 3}
!25 = !{ptr @fsl_asrc_dma_startup._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_asrc_dma_startup._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 368, i32 3}
!29 = !{ptr @fsl_asrc_dma_startup._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsl_asrc_dma_startup._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @snd_imx_hardware, !32, !"snd_imx_hardware", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 19, i32 32}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 169, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fsl_asrc_dma_hw_params._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 180, i32 3}
!40 = !{ptr @fsl_asrc_dma_hw_params._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 187, i32 3}
!44 = !{ptr @fsl_asrc_dma_hw_params._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 193, i32 3}
!48 = !{ptr @fsl_asrc_dma_hw_params._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 206, i32 59}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 212, i32 53}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 212, i32 60}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 247, i32 3}
!58 = !{ptr @fsl_asrc_dma_hw_params._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 281, i32 3}
!62 = !{ptr @fsl_asrc_dma_hw_params._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @fsl_asrc_dma_hw_params._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/platform_data/dma-imx.h", i32 64, i32 50}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/platform_data/dma-imx.h", i32 65, i32 44}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 75, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fsl_asrc_dma_prepare_and_submit._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fsl_asrc_dma_prepare_and_submit._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_asrc_dma.c", i32 88, i32 3}
!75 = !{ptr @fsl_asrc_dma_prepare_and_submit._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @fsl_asrc_dma_prepare_and_submit._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
