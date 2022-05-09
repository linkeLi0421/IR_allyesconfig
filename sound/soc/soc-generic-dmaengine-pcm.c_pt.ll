; ModuleID = '/llk/IR_all_yes/sound/soc/soc-generic-dmaengine-pcm.c_pt.bc'
source_filename = "../sound/soc/soc-generic-dmaengine-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_dmaengine_pcm_prepare_slave_config\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_dmaengine_pcm_prepare_slave_config\09\09\09\09"
module asm "\09.long\09__crc_snd_dmaengine_pcm_prepare_slave_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_prepare_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_prepare_slave_config\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_prepare_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_dmaengine_pcm_register\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_dmaengine_pcm_register\09\09\09\09"
module asm "\09.long\09__crc_snd_dmaengine_pcm_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_dmaengine_pcm_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_dmaengine_pcm_unregister\09\09\09\09"
module asm "\09.long\09__crc_snd_dmaengine_pcm_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dmaengine_pcm = type { [2 x ptr], ptr, %struct.snd_soc_component, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_prealloc_buffer_size_kbytes = internal constant [41 x i8] c"snd_soc_core.prealloc_buffer_size_kbytes\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@prealloc_buffer_size_kbytes = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_prealloc_buffer_size_kbytes = internal constant %struct.kernel_param { ptr @__param_str_prealloc_buffer_size_kbytes, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @prealloc_buffer_size_kbytes } }, section "__param", align 4
@__UNIQUE_ID_prealloc_buffer_size_kbytestype242 = internal constant [55 x i8] c"snd_soc_core.parmtype=prealloc_buffer_size_kbytes:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_prealloc_buffer_size_kbytes243 = internal constant [80 x i8] c"snd_soc_core.parm=prealloc_buffer_size_kbytes:Preallocate DMA buffer size (KB).\00", section ".modinfo", align 1
@snd_dmaengine_pcm_prepare_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s doesn't support Multi CPU yet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snd_dmaengine_pcm_prepare_slave_config\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/soc/soc-generic-dmaengine-pcm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_dmaengine_pcm_prepare_slave_config._entry_ptr = internal global ptr @snd_dmaengine_pcm_prepare_slave_config._entry, section ".printk_index", align 4
@__kstrtab_snd_dmaengine_pcm_prepare_slave_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_prepare_slave_config = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_prepare_slave_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_prepare_slave_config to i32), ptr @__kstrtab_snd_dmaengine_pcm_prepare_slave_config, ptr @__kstrtabns_snd_dmaengine_pcm_prepare_slave_config }, section "___ksymtab_gpl+snd_dmaengine_pcm_prepare_slave_config", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@dmaengine_pcm_component_process = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.6, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_open, ptr @dmaengine_pcm_close, ptr null, ptr @dmaengine_pcm_hw_params, ptr null, ptr null, ptr @dmaengine_pcm_trigger, ptr null, ptr @dmaengine_pcm_pointer, ptr null, ptr @dmaengine_copy_user, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmaengine_pcm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.6, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_open, ptr @dmaengine_pcm_close, ptr null, ptr @dmaengine_pcm_hw_params, ptr null, ptr null, ptr @dmaengine_pcm_trigger, ptr null, ptr @dmaengine_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_register to i32), ptr @__kstrtab_snd_dmaengine_pcm_register, ptr @__kstrtabns_snd_dmaengine_pcm_register }, section "___ksymtab_gpl+snd_dmaengine_pcm_register", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_dmaengine_pcm\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_snd_dmaengine_pcm_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_unregister to i32), ptr @__kstrtab_snd_dmaengine_pcm_unregister, ptr @__kstrtabns_snd_dmaengine_pcm_unregister }, section "___ksymtab_gpl+snd_dmaengine_pcm_unregister", align 4
@__UNIQUE_ID_file244 = internal constant [41 x i8] c"snd_soc_core.file=sound/soc/snd-soc-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"snd_soc_core.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dmaengine_pcm_request_chan_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 377, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA channels sourced from device %s\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dmaengine_pcm_request_chan_of\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dmaengine_pcm_request_chan_of._entry_ptr = internal global ptr @dmaengine_pcm_request_chan_of._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@dmaengine_pcm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing dma channel for stream: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dmaengine_pcm_new\00", [46 x i8] zeroinitializer }, align 32
@dmaengine_pcm_new._entry_ptr = internal global ptr @dmaengine_pcm_new._entry, section ".printk_index", align 4
@dmaengine_pcm_compat_request_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dmaengine_pcm_compat_request_channel\00", [59 x i8] zeroinitializer }, align 32
@dmaengine_pcm_compat_request_channel._entry_ptr = internal global ptr @dmaengine_pcm_compat_request_channel._entry, section ".printk_index", align 4
@dmaengine_pcm_can_report_residue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 220, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Failed to get DMA channel capabilities, falling back to period counting: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dmaengine_pcm_can_report_residue\00", [63 x i8] zeroinitializer }, align 32
@dmaengine_pcm_can_report_residue._entry_ptr = internal global ptr @dmaengine_pcm_can_report_residue._entry, section ".printk_index", align 4
@dmaengine_pcm_set_runtime_hwparams._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dmaengine_pcm_set_runtime_hwparams\00", [61 x i8] zeroinitializer }, align 32
@dmaengine_pcm_set_runtime_hwparams._entry_ptr = internal global ptr @dmaengine_pcm_set_runtime_hwparams._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"prealloc_buffer_size_kbytes\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 18, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 58, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 442, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [32 x i8] c"dmaengine_pcm_component_process\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 341, i32 46 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"dmaengine_pcm_component\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 330, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 485, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 376, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 383, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 354, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 355, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 263, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 192, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 219, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private constant [41 x i8] c"../sound/soc/soc-generic-dmaengine-pcm.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 119, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 230, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 214, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 156, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_prealloc_buffer_size_kbytes243, ptr @__UNIQUE_ID_prealloc_buffer_size_kbytestype242, ptr @__ksymtab_snd_dmaengine_pcm_prepare_slave_config, ptr @__ksymtab_snd_dmaengine_pcm_register, ptr @__ksymtab_snd_dmaengine_pcm_unregister, ptr @__param_prealloc_buffer_size_kbytes, ptr @dmaengine_pcm_can_report_residue._entry, ptr @dmaengine_pcm_can_report_residue._entry_ptr, ptr @dmaengine_pcm_compat_request_channel._entry, ptr @dmaengine_pcm_compat_request_channel._entry_ptr, ptr @dmaengine_pcm_new._entry, ptr @dmaengine_pcm_new._entry_ptr, ptr @dmaengine_pcm_request_chan_of._entry, ptr @dmaengine_pcm_request_chan_of._entry_ptr, ptr @dmaengine_pcm_set_runtime_hwparams._entry, ptr @dmaengine_pcm_set_runtime_hwparams._entry_ptr, ptr @snd_dmaengine_pcm_prepare_slave_config._entry, ptr @snd_dmaengine_pcm_prepare_slave_config._entry_ptr, ptr @prealloc_buffer_size_kbytes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dmaengine_pcm_component_process, ptr @dmaengine_pcm_component, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prealloc_buffer_size_kbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dmaengine_pcm_prepare_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_component_process to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_request_chan_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_compat_request_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_can_report_residue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaengine_pcm_set_runtime_hwparams._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call1 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef %substream, ptr noundef %cond.i, ptr noundef %slave_config) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef %config, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %component = getelementptr inbounds %struct.dmaengine_pcm, ptr %call7.i.i, i32 0, i32 2
  %debugfs_prefix = getelementptr inbounds %struct.dmaengine_pcm, ptr %call7.i.i, i32 0, i32 2, i32 26
  %1 = ptrtoint ptr %debugfs_prefix to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.5, ptr %debugfs_prefix, align 8
  %config1 = getelementptr inbounds %struct.dmaengine_pcm, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config1, align 8
  %flags2 = getelementptr inbounds %struct.dmaengine_pcm, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %flags2, align 4
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool2.not.i = icmp eq ptr %config, null
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %dma_dev.i = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.land.lhs.true_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.land.lhs.true_crit_edge:         ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %of_node7.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node7.i, align 8
  %tobool8.not.i = icmp eq ptr %9, null
  br i1 %tobool8.not.i, label %land.lhs.true5.i.land.lhs.true_crit_edge, label %land.lhs.true5.i.land.lhs.true10.i_crit_edge

land.lhs.true5.i.land.lhs.true10.i_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10.i

land.lhs.true5.i.land.lhs.true_crit_edge:         ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  br i1 %tobool2.not.i, label %if.end16.i, label %if.end.i.land.lhs.true10.i_crit_edge

if.end.i.land.lhs.true10.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true10.i

land.lhs.true10.i:                                ; preds = %if.end.i.land.lhs.true10.i_crit_edge, %land.lhs.true5.i.land.lhs.true10.i_crit_edge
  %dma_dev11.i = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %config, i32 0, i32 4
  %10 = ptrtoint ptr %dma_dev11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_dev11.i, align 4
  %tobool12.not.i = icmp eq ptr %11, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.land.lhs.true23.i_crit_edge, label %do.end.i

land.lhs.true10.i.land.lhs.true23.i_crit_edge:    ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23.i

do.end.i:                                         ; preds = %land.lhs.true10.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i) #9
  %16 = ptrtoint ptr %dma_dev11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev11.i, align 4
  br label %land.lhs.true23.i

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags2, align 4
  %and18.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %spec.select93.i = select i1 %tobool19.not.i, ptr @.str.11, ptr @.str.10
  br label %if.end29.i

for.cond.i:                                       ; preds = %if.end42.i
  br i1 %tobool9.not89.i49, label %for.cond.i.if.end29.1.i_crit_edge, label %land.lhs.true23.1.i

for.cond.i.if.end29.1.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.1.i

land.lhs.true23.1.i:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24.1.i = getelementptr %struct.snd_dmaengine_pcm_config, ptr %config, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx24.1.i, align 4
  %tobool25.not.1.i = icmp eq ptr %21, null
  %spec.select.1.i = select i1 %tobool25.not.1.i, ptr @.str.12, ptr %21
  br label %if.end29.1.i

if.end29.1.i:                                     ; preds = %land.lhs.true23.1.i, %for.cond.i.if.end29.1.i_crit_edge
  %name.1.1.i = phi ptr [ @.str.12, %for.cond.i.if.end29.1.i_crit_edge ], [ %spec.select.1.i, %land.lhs.true23.1.i ]
  %call30.1.i = tail call ptr @dma_request_chan(ptr noundef %dev.addr.0.i51, ptr noundef %name.1.1.i) #6
  %cmp.i.1.i = icmp ugt ptr %call30.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.then32.1.i, label %if.end29.1.i.if.end42.1.i_crit_edge

if.end29.1.i.if.end42.1.i_crit_edge:              ; preds = %if.end29.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.1.i

if.then32.1.i:                                    ; preds = %if.end29.1.i
  %cmp34.1.i = icmp eq ptr %call30.1.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp34.1.i, label %if.then32.1.i.err_free_dma_crit_edge, label %if.then32.1.i.if.end42.1.i_crit_edge

if.then32.1.i.if.end42.1.i_crit_edge:             ; preds = %if.then32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.1.i

if.then32.1.i.err_free_dma_crit_edge:             ; preds = %if.then32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dma

if.end42.1.i:                                     ; preds = %if.then32.1.i.if.end42.1.i_crit_edge, %if.end29.1.i.if.end42.1.i_crit_edge
  %.sink.i = phi ptr [ %call30.1.i, %if.end29.1.i.if.end42.1.i_crit_edge ], [ null, %if.then32.1.i.if.end42.1.i_crit_edge ]
  %arrayidx38.1.i = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.sink.i, ptr %arrayidx38.1.i, align 4
  br label %for.end.i

land.lhs.true23.i:                                ; preds = %dev_name.exit.i, %land.lhs.true10.i.land.lhs.true23.i_crit_edge
  %dev.addr.0.i.ph = phi ptr [ %dev, %land.lhs.true10.i.land.lhs.true23.i_crit_edge ], [ %17, %dev_name.exit.i ]
  %23 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags2, align 4
  %and18.i45 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i45)
  %tobool19.not.i46 = icmp eq i32 %and18.i45, 0
  %spec.select93.i47 = select i1 %tobool19.not.i46, ptr @.str.11, ptr @.str.10
  %arrayidx24.i = getelementptr %struct.snd_dmaengine_pcm_config, ptr %config, i32 0, i32 5, i32 0
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %26, null
  %spec.select.i = select i1 %tobool25.not.i, ptr %spec.select93.i47, ptr %26
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true23.i, %if.end16.i
  %dev.addr.0.i51 = phi ptr [ %dev, %if.end16.i ], [ %dev.addr.0.i.ph, %land.lhs.true23.i ]
  %tobool9.not89.i49 = phi i1 [ true, %if.end16.i ], [ false, %land.lhs.true23.i ]
  %name.1.i = phi ptr [ %spec.select93.i, %if.end16.i ], [ %spec.select.i, %land.lhs.true23.i ]
  %call30.i = tail call ptr @dma_request_chan(ptr noundef %dev.addr.0.i51, ptr noundef %name.1.i) #6
  %cmp.i.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then32.i, label %if.end29.i.if.end42.i_crit_edge

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then32.i:                                      ; preds = %if.end29.i
  %cmp34.i = icmp eq ptr %call30.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp34.i, label %if.then32.i.err_free_dma_crit_edge, label %if.then32.i.if.end42.i_crit_edge

if.then32.i.if.end42.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then32.i.err_free_dma_crit_edge:               ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dma

if.end42.i:                                       ; preds = %if.then32.i.if.end42.i_crit_edge, %if.end29.i.if.end42.i_crit_edge
  %storemerge.i = phi ptr [ null, %if.then32.i.if.end42.i_crit_edge ], [ %call30.i, %if.end29.i.if.end42.i_crit_edge ]
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %storemerge.i, ptr %call7.i.i, align 8
  %28 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags2, align 4
  %and44.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %for.cond.i, label %if.end42.i.for.end.i_crit_edge

if.end42.i.for.end.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end42.i.for.end.i_crit_edge, %if.end42.1.i
  %30 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags2, align 4
  %and49.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %for.end.i.if.end6_crit_edge, label %if.then51.i

for.end.i.if.end6_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %arrayidx55.i = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %arrayidx55.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then51.i, %for.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %config, null
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6.land.lhs.true_crit_edge, %land.lhs.true5.i.land.lhs.true_crit_edge, %land.lhs.true3.i.land.lhs.true_crit_edge
  %process = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %config, i32 0, i32 2
  %35 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %process, align 4
  %tobool8.not = icmp eq ptr %36, null
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %driver.0 = phi ptr [ @dmaengine_pcm_component, %if.else ], [ @dmaengine_pcm_component_process, %land.lhs.true.if.end10_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_initialize(ptr noundef %component, ptr noundef nonnull %driver.0, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.err_free_dma_crit_edge

if.end10.err_free_dma_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dma

if.end15:                                         ; preds = %if.end10
  %call17 = tail call i32 @snd_soc_add_component(ptr noundef %component, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end15.err_free_dma_crit_edge

if.end15.err_free_dma_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dma

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_dma:                                     ; preds = %if.end15.err_free_dma_crit_edge, %if.end10.err_free_dma_crit_edge, %if.then32.i.err_free_dma_crit_edge, %if.then32.1.i.err_free_dma_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end10.err_free_dma_crit_edge ], [ %call17, %if.end15.err_free_dma_crit_edge ], [ -517, %if.then32.1.i.err_free_dma_crit_edge ], [ -517, %if.then32.i.err_free_dma_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %err_free_dma
  %cmp.i = phi i1 [ true, %err_free_dma ], [ false, %for.body.i.backedge ]
  %i.011.i = phi i32 [ 0, %err_free_dma ], [ 1, %for.body.i.backedge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 %i.011.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i39 = icmp eq ptr %38, null
  br i1 %tobool.not.i39, label %for.inc.i, label %if.end.i41

if.end.i41:                                       ; preds = %for.body.i
  tail call void @dma_release_channel(ptr noundef nonnull %38) #6
  %39 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags2, align 4
  %and.i40 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool3.not.i = icmp eq i32 %and.i40, 0
  %or.cond.i = and i1 %cmp.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end.i41.for.body.i.backedge_crit_edge, label %if.end.i41.dmaengine_pcm_release_chan.exit_crit_edge

if.end.i41.dmaengine_pcm_release_chan.exit_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_pcm_release_chan.exit

if.end.i41.for.body.i.backedge_crit_edge:         ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.inc.i:                                        ; preds = %for.body.i
  br i1 %cmp.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge

for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_pcm_release_chan.exit

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %if.end.i41.for.body.i.backedge_crit_edge
  br label %for.body.i

dmaengine_pcm_release_chan.exit:                  ; preds = %for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge, %if.end.i41.dmaengine_pcm_release_chan.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_pcm_release_chan.exit, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dmaengine_pcm_release_chan.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_lookup_component(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 -12
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  tail call void @snd_soc_unregister_component_by_driver(ptr noundef %dev, ptr noundef %1) #6
  %flags.i = getelementptr i8, ptr %call, i32 256
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end
  %cmp.i = phi i1 [ true, %if.end ], [ false, %for.body.i.backedge ]
  %i.011.i = phi i32 [ 0, %if.end ], [ 1, %for.body.i.backedge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %add.ptr.i, i32 0, i32 %i.011.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @dma_release_channel(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end.i.for.body.i.backedge_crit_edge, label %if.end.i.dmaengine_pcm_release_chan.exit_crit_edge

if.end.i.dmaengine_pcm_release_chan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_pcm_release_chan.exit

if.end.i.for.body.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.inc.i:                                        ; preds = %for.body.i
  br i1 %cmp.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge

for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_pcm_release_chan.exit

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %if.end.i.for.body.i.backedge_crit_edge
  br label %for.body.i

dmaengine_pcm_release_chan.exit:                  ; preds = %for.inc.i.dmaengine_pcm_release_chan.exit_crit_edge, %if.end.i.dmaengine_pcm_release_chan.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_pcm_release_chan.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_lookup_component(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_new(ptr nocapture noundef %component, ptr noundef %rtd) #0 align 64 {
entry:
  %dma_caps.i = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %component, i32 -12
  %config1 = getelementptr i8, ptr %component, i32 -4
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %prealloc_buffer_size3 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %prealloc_buffer_size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prealloc_buffer_size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %pcm_hardware = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pcm_hardware to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm_hardware, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_bytes_max, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %10 = load i32, ptr @prealloc_buffer_size_kbytes, align 4
  %mul = shl i32 %10, 10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %prealloc_buffer_size.0 = phi i32 [ %5, %if.then ], [ %mul, %if.else ]
  %max_buffer_size.0 = phi i32 [ %9, %if.then ], [ -1, %if.else ]
  %pcm6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %flags = getelementptr i8, ptr %component, i32 256
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %residue_granularity.i = getelementptr inbounds %struct.dma_slave_caps, ptr %dma_caps.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %i.0130 = phi i32 [ 0, %if.end ], [ 1, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %pcm6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm6, align 4
  %substream7 = getelementptr %struct.snd_pcm, ptr %12, i32 0, i32 8, i32 %i.0130, i32 4
  %13 = ptrtoint ptr %substream7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream7, align 8
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %arrayidx11 = getelementptr [2 x ptr], ptr %add.ptr.i, i32 0, i32 %i.0130
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp ne ptr %16, null
  %brmerge = select i1 %tobool12.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end10.if.end24_crit_edge, label %land.lhs.true15

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true15:                                  ; preds = %if.end10
  %arrayidx16 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 5, i32 %i.0130
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.end24thread-pre-split, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull %18) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i, ptr %arrayidx11, align 4
  br label %if.end24

if.end24thread-pre-split:                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %arrayidx11, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.then18, %if.end10.if.end24_crit_edge
  %21 = phi ptr [ %.pr, %if.end24thread-pre-split ], [ %16, %if.end10.if.end24_crit_edge ], [ %spec.select.i, %if.then18 ]
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end24.if.end34thread-pre-split_crit_edge

if.end24.if.end34thread-pre-split_crit_edge:      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

land.lhs.true28:                                  ; preds = %if.end24
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %land.lhs.true28.if.end34thread-pre-split_crit_edge, label %if.then30

land.lhs.true28.if.end34thread-pre-split_crit_edge: ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then30:                                        ; preds = %land.lhs.true28
  %24 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_cpus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp ugt i32 %25, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #9
  br label %dmaengine_pcm_compat_request_channel.exit

if.end.i:                                         ; preds = %if.then30
  %28 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dais.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 5
  %32 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i118 = icmp eq i32 %33, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %31, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %31, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i118, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %34 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.dmaengine_pcm_compat_request_channel.exit_crit_edge

land.lhs.true.i.dmaengine_pcm_compat_request_channel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_pcm_compat_request_channel.exit

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %39 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config1, align 4
  %tobool8.not.i = icmp eq ptr %40, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end21.i_crit_edge, label %land.lhs.true9.i

if.end7.i.if.end21.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

land.lhs.true9.i:                                 ; preds = %if.end7.i
  %compat_request_channel.i = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %compat_request_channel.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %compat_request_channel.i, align 4
  %tobool11.not.i = icmp eq ptr %42, null
  br i1 %tobool11.not.i, label %if.then19.i, label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call ptr %42(ptr noundef %rtd, ptr noundef nonnull %14) #6
  br label %dmaengine_pcm_compat_request_channel.exit

if.then19.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  %compat_filter_fn.i = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %compat_filter_fn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %compat_filter_fn.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end7.i.if.end21.i_crit_edge
  %fn.0.i = phi ptr [ %44, %if.then19.i ], [ null, %if.end7.i.if.end21.i_crit_edge ]
  %filter_data.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %filter_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %filter_data.i, align 4
  %call22.i = call ptr @snd_dmaengine_pcm_request_channel(ptr noundef %fn.0.i, ptr noundef %46) #6
  br label %dmaengine_pcm_compat_request_channel.exit

dmaengine_pcm_compat_request_channel.exit:        ; preds = %if.end21.i, %if.then12.i, %land.lhs.true.i.dmaengine_pcm_compat_request_channel.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call15.i, %if.then12.i ], [ %call22.i, %if.end21.i ], [ %38, %land.lhs.true.i.dmaengine_pcm_compat_request_channel.exit_crit_edge ]
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i, ptr %arrayidx11, align 4
  br label %if.end34

if.end34thread-pre-split:                         ; preds = %land.lhs.true28.if.end34thread-pre-split_crit_edge, %if.end24.if.end34thread-pre-split_crit_edge
  %48 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr126 = load ptr, ptr %arrayidx11, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %dmaengine_pcm_compat_request_channel.exit
  %49 = phi ptr [ %.pr126, %if.end34thread-pre-split ], [ %retval.0.i, %dmaengine_pcm_compat_request_channel.exit ]
  %tobool37.not = icmp eq ptr %49, null
  br i1 %tobool37.not, label %cleanup, label %if.end40

if.end40:                                         ; preds = %if.end34
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 5
  %50 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stream.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr %add.ptr.i, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i119 = icmp eq ptr %53, null
  br i1 %tobool.not.i119, label %if.end40.dmaengine_dma_dev.exit_crit_edge, label %if.end.i120

if.end40.dmaengine_dma_dev.exit_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_dma_dev.exit

if.end.i120:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  br label %dmaengine_dma_dev.exit

dmaengine_dma_dev.exit:                           ; preds = %if.end.i120, %if.end40.dmaengine_dma_dev.exit_crit_edge
  %retval.0.i121 = phi ptr [ %57, %if.end.i120 ], [ null, %if.end40.dmaengine_dma_dev.exit_crit_edge ]
  %call42 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %14, i32 noundef 4, ptr noundef %retval.0.i121, i32 noundef %prealloc_buffer_size.0, i32 noundef %max_buffer_size.0) #6
  %58 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dma_caps.i) #6
  %60 = call ptr @memset(ptr %dma_caps.i, i32 255, i32 36)
  %call.i122 = call i32 @dma_get_slave_caps(ptr noundef %59, ptr noundef nonnull %dma_caps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.not.i = icmp eq i32 %call.i122, 0
  br i1 %cmp.not.i, label %dmaengine_pcm_can_report_residue.exit, label %dmaengine_pcm_can_report_residue.exit.thread

dmaengine_pcm_can_report_residue.exit.thread:     ; preds = %dmaengine_dma_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %call.i122) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #6
  br label %if.then46

dmaengine_pcm_can_report_residue.exit:            ; preds = %dmaengine_dma_dev.exit
  %61 = ptrtoint ptr %residue_granularity.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %residue_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp1.i.not = icmp eq i32 %62, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #6
  br i1 %cmp1.i.not, label %dmaengine_pcm_can_report_residue.exit.if.then46_crit_edge, label %dmaengine_pcm_can_report_residue.exit.if.end48_crit_edge

dmaengine_pcm_can_report_residue.exit.if.end48_crit_edge: ; preds = %dmaengine_pcm_can_report_residue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

dmaengine_pcm_can_report_residue.exit.if.then46_crit_edge: ; preds = %dmaengine_pcm_can_report_residue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %dmaengine_pcm_can_report_residue.exit.if.then46_crit_edge, %dmaengine_pcm_can_report_residue.exit.thread
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or = or i32 %64, -2147483648
  store i32 %or, ptr %flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %dmaengine_pcm_can_report_residue.exit.if.end48_crit_edge
  %65 = ptrtoint ptr %pcm6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcm6, align 4
  %pcm52 = getelementptr %struct.snd_pcm, ptr %66, i32 0, i32 8, i32 %i.0130, i32 1
  %67 = ptrtoint ptr %pcm52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcm52, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp54 = icmp eq i8 %70, 0
  br i1 %cmp54, label %if.then56, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.snd_pcm, ptr %68, i32 0, i32 6
  %call67 = call i32 @strscpy_pad(ptr noundef %name, ptr noundef %id, i32 noundef 80) #6
  br label %for.inc

cleanup:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.13, i32 noundef %i.0130) #9
  br label %cleanup69

for.inc:                                          ; preds = %if.then56, %if.end48.for.inc_crit_edge, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup69_crit_edge

for.inc.cleanup69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup69:                                        ; preds = %for.inc.cleanup69_crit_edge, %cleanup
  %retval.2 = phi i32 [ -22, %cleanup ], [ 0, %for.inc.cleanup69_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  %hw.i = alloca %struct.snd_pcm_hardware, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %component, i32 -12
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %arrayidx = getelementptr [2 x ptr], ptr %add.ptr.i, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.dmaengine_dma_dev.exit.i_crit_edge, label %if.end.i.i

entry.dmaengine_dma_dev.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_dma_dev.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  br label %dmaengine_dma_dev.exit.i

dmaengine_dma_dev.exit.i:                         ; preds = %if.end.i.i, %entry.dmaengine_dma_dev.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ null, %entry.dmaengine_dma_dev.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw.i) #6
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cpus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp ugt i32 %11, 1
  br i1 %cmp.i, label %dmaengine_pcm_set_runtime_hwparams.exit.thread, label %if.end.i

dmaengine_pcm_set_runtime_hwparams.exit.thread:   ; preds = %dmaengine_dma_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_dma_dev.exit.i
  %config.i = getelementptr i8, ptr %component, i32 -4
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %pcm_hardware.i = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %pcm_hardware.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcm_hardware.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull %17) #6
  br label %dmaengine_pcm_set_runtime_hwparams.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %playback_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %21, i32 0, i32 7
  %capture_dma_data.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %21, i32 0, i32 8
  %cond.in.i.i = select i1 %cmp.i.i, ptr %playback_dma_data.i.i, ptr %capture_dma_data.i.i
  %22 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %23 = call ptr @memset(ptr %hw.i, i32 0, i32 64)
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 259, ptr %hw.i, align 8
  %periods_min.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 10
  %25 = ptrtoint ptr %periods_min.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %periods_min.i, align 8
  %periods_max.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 11
  %26 = ptrtoint ptr %periods_max.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %periods_max.i, align 4
  %period_bytes_min.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 8
  %27 = ptrtoint ptr %period_bytes_min.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %period_bytes_min.i, align 8
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %retval.0.i.i, i32 0, i32 22
  %28 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i41.i = icmp eq ptr %29, null
  br i1 %tobool.not.i41.i, label %if.end9.i.if.end.i42.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.if.end.i42.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i42.i

land.lhs.true.i.i:                                ; preds = %if.end9.i
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i42.i_crit_edge, label %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge

land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_get_max_seg_size.exit.i

land.lhs.true.i.i.if.end.i42.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i42.i

if.end.i42.i:                                     ; preds = %land.lhs.true.i.i.if.end.i42.i_crit_edge, %if.end9.i.if.end.i42.i_crit_edge
  br label %dma_get_max_seg_size.exit.i

dma_get_max_seg_size.exit.i:                      ; preds = %if.end.i42.i, %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge
  %retval.0.i43.i = phi i32 [ 65536, %if.end.i42.i ], [ %31, %land.lhs.true.i.i.dma_get_max_seg_size.exit.i_crit_edge ]
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 9
  %32 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i43.i, ptr %period_bytes_max.i, align 4
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 7
  %33 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %buffer_bytes_max.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_size.i, align 4
  %fifo_size13.i = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hw.i, i32 0, i32 12
  %36 = ptrtoint ptr %fifo_size13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fifo_size13.i, align 8
  %flags.i = getelementptr i8, ptr %component, i32 256
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool14.not.i = icmp sgt i32 %38, -1
  br i1 %tobool14.not.i, label %dma_get_max_seg_size.exit.i.if.end17.i_crit_edge, label %if.then15.i

dma_get_max_seg_size.exit.i.if.end17.i_crit_edge: ; preds = %dma_get_max_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %dma_get_max_seg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 275, ptr %hw.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %dma_get_max_seg_size.exit.i.if.end17.i_crit_edge
  %call18.i = call i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef %substream, ptr noundef %cond.i.i, ptr noundef nonnull %hw.i, ptr noundef %3) #6
  %call19.i = call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull %hw.i) #6
  br label %dmaengine_pcm_set_runtime_hwparams.exit

dmaengine_pcm_set_runtime_hwparams.exit:          ; preds = %if.end17.i, %if.then5.i
  %retval.0.i = phi i32 [ %call8.i, %if.then5.i ], [ %call19.i, %if.end17.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_pcm_set_runtime_hwparams.exit.cleanup_crit_edge

dmaengine_pcm_set_runtime_hwparams.exit.cleanup_crit_edge: ; preds = %dmaengine_pcm_set_runtime_hwparams.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dmaengine_pcm_set_runtime_hwparams.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @snd_dmaengine_pcm_open(ptr noundef %substream, ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dmaengine_pcm_set_runtime_hwparams.exit.cleanup_crit_edge, %dmaengine_pcm_set_runtime_hwparams.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.0.i, %dmaengine_pcm_set_runtime_hwparams.exit.cleanup_crit_edge ], [ -22, %dmaengine_pcm_set_runtime_hwparams.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_close(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_close(ptr noundef %substream) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr noundef %params) #0 align 64 {
entry:
  %slave_config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %substream) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config) #6
  %0 = call ptr @memset(ptr %slave_config, i32 0, i32 48)
  %config = getelementptr i8, ptr %component, i32 -4
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.end

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %entry.if.then5_crit_edge
  %prepare_slave_config.027 = phi ptr [ %4, %if.end.if.then5_crit_edge ], [ @snd_dmaengine_pcm_prepare_slave_config, %entry.if.then5_crit_edge ]
  %call6 = call i32 %prepare_slave_config.027(ptr noundef %substream, ptr noundef %params, ptr noundef nonnull %slave_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup15_crit_edge

if.then5.cleanup15_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

if.end9:                                          ; preds = %if.then5
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end9.cleanup15_crit_edge, label %cleanup

if.end9.cleanup15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

cleanup:                                          ; preds = %if.end9
  %call.i = call i32 %8(ptr noundef %call1, ptr noundef nonnull %slave_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %cleanup.if.end14_crit_edge, label %cleanup.cleanup15_crit_edge

cleanup.cleanup15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14, %cleanup.cleanup15_crit_edge, %if.end9.cleanup15_crit_edge, %if.then5.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.end14 ], [ %call.i, %cleanup.cleanup15_crit_edge ], [ %call6, %if.then5.cleanup15_crit_edge ], [ -38, %if.end9.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_trigger(ptr nocapture noundef readnone %component, ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_pointer(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %component, i32 256
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_dmaengine_pcm_pointer_no_residue(ptr noundef %substream) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %substream) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmaengine_copy_user(ptr nocapture noundef readonly %component, ptr noundef %substream, i32 noundef %channel, i32 noundef %hwoff, ptr noundef %buf, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %config = getelementptr i8, ptr %component, i32 -4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %process2 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %process2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %process2, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %hwoff
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_bytes, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  %div = udiv i32 %11, %13
  %mul = mul i32 %div, %channel
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  br i1 %cmp, label %if.end8.i.i, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp9.i.i = icmp slt i32 %bytes, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup22_crit_edge, label %if.then27.i.i, !prof !82

land.rhs16.i.i.cleanup22_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup22

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr3, i32 noundef %bytes, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %bytes, i32 -1226833920) #11, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !82

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr3, i32 noundef %bytes) #6
  %15 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !84
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr3, ptr noundef %buf, i32 noundef %bytes) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %bytes, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %bytes, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end7_crit_edge, label %if.then11.i.i, !prof !82

if.end.i.i.if.end7_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %bytes, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr3, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup22

if.end7:                                          ; preds = %if.end.i.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 %5(ptr noundef %substream, i32 noundef %channel, i32 noundef %hwoff, ptr noundef %buf, i32 noundef %bytes) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup22_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9.cleanup22_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  br i1 %cmp, label %if.end14.if.end21_crit_edge, label %if.end8.i.i48

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end8.i.i48:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp9.i.i47 = icmp slt i32 %bytes, 0
  br i1 %cmp9.i.i47, label %land.rhs16.i.i50, label %if.then.i.i.i53

land.rhs16.i.i50:                                 ; preds = %if.end8.i.i48
  %.b71.i.i49 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i49, label %land.rhs16.i.i50.cleanup22_crit_edge, label %if.then27.i.i51, !prof !82

land.rhs16.i.i50.cleanup22_crit_edge:             ; preds = %land.rhs16.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.then27.i.i51:                                  ; preds = %land.rhs16.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup22

if.then.i.i.i53:                                  ; preds = %if.end8.i.i48
  tail call void @__check_object_size(ptr noundef %add.ptr3, i32 noundef %bytes, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #6
  %call.i.i54 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i54, label %if.then.i.i.i53.copy_to_user.exit_crit_edge, label %if.end.i.i58

if.then.i.i.i53.copy_to_user.exit_crit_edge:      ; preds = %if.then.i.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i58:                                     ; preds = %if.then.i.i.i53
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %bytes, i32 -1226833920) #11, !srcloc !87
  %asmresult.i.i56 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56)
  %cmp.i6.i57 = icmp eq i32 %asmresult.i.i56, 0
  br i1 %cmp.i6.i57, label %if.then2.i.i, label %if.end.i.i58.copy_to_user.exit_crit_edge

if.end.i.i58.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr3, i32 noundef %bytes) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr3, i32 noundef %bytes) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i58.copy_to_user.exit_crit_edge, %if.then.i.i.i53.copy_to_user.exit_crit_edge
  %n.addr.0.i60 = phi i32 [ %bytes, %if.then.i.i.i53.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %bytes, %if.end.i.i58.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i60)
  %tobool18.not = icmp eq i32 %n.addr.0.i60, 0
  br i1 %tobool18.not, label %copy_to_user.exit.if.end21_crit_edge, label %copy_to_user.exit.cleanup22_crit_edge

copy_to_user.exit.cleanup22_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

copy_to_user.exit.if.end21_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %copy_to_user.exit.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  br label %cleanup22

cleanup22:                                        ; preds = %if.end21, %copy_to_user.exit.cleanup22_crit_edge, %if.then27.i.i51, %land.rhs16.i.i50.cleanup22_crit_edge, %if.then9.cleanup22_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup22_crit_edge
  %retval.1 = phi i32 [ 0, %if.end21 ], [ %call10, %if.then9.cleanup22_crit_edge ], [ -14, %copy_to_user.exit.cleanup22_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup22_crit_edge ], [ -14, %if.then27.i.i51 ], [ -14, %land.rhs16.i.i50.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_request_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_get_chan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer_no_residue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__param_prealloc_buffer_size_kbytes, !1, !"__param_prealloc_buffer_size_kbytes", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_prealloc_buffer_size_kbytestype242, !1, !"__UNIQUE_ID_prealloc_buffer_size_kbytestype242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_prealloc_buffer_size_kbytes243, !4, !"__UNIQUE_ID_prealloc_buffer_size_kbytes243", i1 false, i1 false}
!4 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 20, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 58, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_dmaengine_pcm_prepare_slave_config._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_dmaengine_pcm_prepare_slave_config._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_snd_dmaengine_pcm_prepare_slave_config, !14, !"__ksymtab_snd_dmaengine_pcm_prepare_slave_config", i1 false, i1 false}
!14 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 74, i32 1}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 442, i32 34}
!17 = !{ptr @__ksymtab_snd_dmaengine_pcm_register, !18, !"__ksymtab_snd_dmaengine_pcm_register", i1 false, i1 false}
!18 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 471, i32 1}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 485, i32 44}
!21 = !{ptr @__ksymtab_snd_dmaengine_pcm_unregister, !22, !"__ksymtab_snd_dmaengine_pcm_unregister", i1 false, i1 false}
!22 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 495, i32 1}
!23 = !{ptr @__UNIQUE_ID_file244, !24, !"__UNIQUE_ID_file244", i1 false, i1 false}
!24 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 497, i32 1}
!25 = !{ptr @__UNIQUE_ID_license245, !24, !"__UNIQUE_ID_license245", i1 false, i1 false}
!26 = !{ptr @__param_str_prealloc_buffer_size_kbytes, !1, !"__param_str_prealloc_buffer_size_kbytes", i1 false, i1 false}
!27 = !{ptr @prealloc_buffer_size_kbytes, !28, !"prealloc_buffer_size_kbytes", i1 false, i1 false}
!28 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 18, i32 21}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 376, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dmaengine_pcm_request_chan_of._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @dmaengine_pcm_request_chan_of._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 383, i32 11}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 354, i32 32}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 355, i32 31}
!41 = distinct !{null, !42, !"dmaengine_pcm_dma_channel_names", i1 false, i1 false}
!42 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 353, i32 27}
!43 = !{ptr @dmaengine_pcm_component_process, !44, !"dmaengine_pcm_component_process", i1 false, i1 false}
!44 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 341, i32 46}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 263, i32 4}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dmaengine_pcm_new._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dmaengine_pcm_new._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 192, i32 3}
!52 = !{ptr @dmaengine_pcm_compat_request_channel._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dmaengine_pcm_compat_request_channel._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 219, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dmaengine_pcm_can_report_residue._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @dmaengine_pcm_can_report_residue._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 119, i32 3}
!61 = !{ptr @dmaengine_pcm_set_runtime_hwparams._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dmaengine_pcm_set_runtime_hwparams._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!70 = !{ptr @dmaengine_pcm_component, !71, !"dmaengine_pcm_component", i1 false, i1 false}
!71 = !{!"../sound/soc/soc-generic-dmaengine-pcm.c", i32 330, i32 46}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2153275173, i64 2153275198}
!84 = !{i64 5770728}
!85 = !{i64 5770925}
!86 = !{i64 2153256158}
!87 = !{i64 2153275854, i64 2153275879}
