; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6apm-dai.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6apm-dai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.q6apm_dai_rtd = type { ptr, ptr, %struct.snd_compr_params, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i32, ptr }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.audioreach_module_config = type { i32, i32, i16, i16, i16, i16, i16, i32, i32, [8 x i8] }

@__initcall__kmod_q6apm_dai__240_416_q6apm_dai_platform_driver_init6 = internal global ptr @q6apm_dai_platform_driver_init, section ".initcall6.init", align 4
@q6apm_dai_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6apm_dai_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6apm_dai_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6apm_dai_platform_driver_exit = internal global ptr @q6apm_dai_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [39 x i8] c"q6apm_dai.description=Q6APM dai driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [46 x i8] c"q6apm_dai.file=sound/soc/qcom/qdsp6/q6apm-dai\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [22 x i8] c"q6apm_dai.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"q6apm-dai\00", [22 x i8] zeroinitializer }, align 32
@q6apm_dai_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6apm-dais\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@q6apm_fe_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6apm_dai_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6apm_dai_open, ptr @q6apm_dai_close, ptr null, ptr @q6apm_dai_hw_params, ptr null, ptr @q6apm_dai_prepare, ptr @q6apm_dai_trigger, ptr null, ptr @q6apm_dai_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Drv data not found ..\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6apm_dai_open\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/qcom/qdsp6/q6apm-dai.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr = internal global ptr @q6apm_dai_open._entry, section ".printk_index", align 4
@q6apm_dai_open._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Could not allocate memory\0A\00", [33 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr.9 = internal global ptr @q6apm_dai_open._entry.7, section ".printk_index", align 4
@q6apm_dai_hardware_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 68, i32 8190, i32 8000, i32 192000, i32 2, i32 8, i32 524288, i32 128, i32 65536, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@q6apm_dai_hardware_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 68, i32 254, i32 8000, i32 48000, i32 2, i32 4, i32 32768, i32 320, i32 4096, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snd_pcm_hw_constraint_integer failed\0A\00", [58 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr.12 = internal global ptr @q6apm_dai_open._entry.10, section ".printk_index", align 4
@q6apm_dai_open._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"constraint for buffer bytes min max ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr.15 = internal global ptr @q6apm_dai_open._entry.13, section ".printk_index", align 4
@q6apm_dai_open._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"constraint for period bytes step ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr.18 = internal global ptr @q6apm_dai_open._entry.16, section ".printk_index", align 4
@q6apm_dai_open._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"constraint for buffer bytes step ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@q6apm_dai_open._entry_ptr.21 = internal global ptr @q6apm_dai_open._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@q6apm_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: private data null or audio client freed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"q6apm_dai_prepare\00", [46 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr = internal global ptr @q6apm_dai_prepare._entry, section ".printk_index", align 4
@q6apm_dai_prepare._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: q6apm_open_write failed\0A\00", [35 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr.26 = internal global ptr @q6apm_dai_prepare._entry.24, section ".printk_index", align 4
@q6apm_dai_prepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: CMD Format block failed\0A\00", [35 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr.29 = internal global ptr @q6apm_dai_prepare._entry.27, section ".printk_index", align 4
@q6apm_dai_prepare._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Audio Start: Buffer Allocation failed rc = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr.32 = internal global ptr @q6apm_dai_prepare._entry.30, section ".printk_index", align 4
@q6apm_dai_prepare._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.4, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to prepare Graph %d\0A\00", [36 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr.35 = internal global ptr @q6apm_dai_prepare._entry.33, section ".printk_index", align 4
@q6apm_dai_prepare._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to Start Graph %d\0A\00", [38 x i8] zeroinitializer }, align 32
@q6apm_dai_prepare._entry_ptr.38 = internal global ptr @q6apm_dai_prepare._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 4099, i64 4105, i64 4106]
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"q6apm_dai_platform_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 409, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 411, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"q6apm_dai_device_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 402, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 390, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"q6apm_fe_dai_component\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 367, i32 46 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 242, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 253, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"q6apm_dai_hardware_playback\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 80, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"q6apm_dai_hardware_capture\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 62, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 266, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 274, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 281, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 287, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 141, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 155, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 167, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 173, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [36 x i8] c"../sound/soc/qcom/qdsp6/q6apm-dai.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 179, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_q6apm_dai_platform_driver_exit, ptr @__initcall__kmod_q6apm_dai__240_416_q6apm_dai_platform_driver_init6, ptr @q6apm_dai_open._entry, ptr @q6apm_dai_open._entry.10, ptr @q6apm_dai_open._entry.13, ptr @q6apm_dai_open._entry.16, ptr @q6apm_dai_open._entry.19, ptr @q6apm_dai_open._entry.7, ptr @q6apm_dai_open._entry_ptr, ptr @q6apm_dai_open._entry_ptr.12, ptr @q6apm_dai_open._entry_ptr.15, ptr @q6apm_dai_open._entry_ptr.18, ptr @q6apm_dai_open._entry_ptr.21, ptr @q6apm_dai_open._entry_ptr.9, ptr @q6apm_dai_platform_driver_exit, ptr @q6apm_dai_prepare._entry, ptr @q6apm_dai_prepare._entry.24, ptr @q6apm_dai_prepare._entry.27, ptr @q6apm_dai_prepare._entry.30, ptr @q6apm_dai_prepare._entry.33, ptr @q6apm_dai_prepare._entry.36, ptr @q6apm_dai_prepare._entry_ptr, ptr @q6apm_dai_prepare._entry_ptr.26, ptr @q6apm_dai_prepare._entry_ptr.29, ptr @q6apm_dai_prepare._entry_ptr.32, ptr @q6apm_dai_prepare._entry_ptr.35, ptr @q6apm_dai_prepare._entry_ptr.38, ptr @q6apm_dai_platform_driver, ptr @.str, ptr @q6apm_dai_device_id, ptr @.str.1, ptr @q6apm_fe_dai_component, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @q6apm_dai_hardware_playback, ptr @q6apm_dai_hardware_capture, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_fe_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_hardware_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_hardware_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_open._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6apm_dai_prepare._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6apm_dai_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6apm_dai_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6apm_dai_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #9
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i18 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp = icmp slt i32 %call.i18, 0
  br i1 %cmp, label %if.end.if.end6_crit_edge, label %if.else

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %args4 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args4, align 4
  %and = and i32 %4, 15
  %conv = zext i32 %and to i64
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %storemerge = phi i64 [ %conv, %if.else ], [ -1, %if.end.if.end6_crit_edge ]
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %storemerge, ptr %call.i, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call7 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @q6apm_fe_dai_component, ptr noundef null, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %3, i32 noundef 524288, i32 noundef 0) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 220) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %call7.i.i, align 8
  %call7 = tail call ptr @q6apm_graph_open(ptr noundef %9, ptr noundef nonnull @event_handler, ptr noundef nonnull %call7.i.i, i32 noundef %13) #9
  %graph = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %call7.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %graph to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %graph, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #12
  %19 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %graph, align 8
  %21 = ptrtoint ptr %20 to i32
  br label %err

if.end16:                                         ; preds = %if.end5
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end16.if.end24_crit_edge [
    i32 0, label %if.then18
    i32 1, label %if.then21
  ]

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %25 = call ptr @memcpy(ptr %hw, ptr @q6apm_dai_hardware_playback, i32 64)
  br label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %hw22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %26 = call ptr @memcpy(ptr %hw22, ptr @q6apm_dai_hardware_capture, i32 64)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then18, %if.end16.if.end24_crit_edge
  %call25 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #12
  br label %err

if.end31:                                         ; preds = %if.end24
  %27 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp33 = icmp eq i32 %28, 0
  br i1 %cmp33, label %if.then34, label %if.end31.if.end42_crit_edge

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 18, i32 noundef 256, i32 noundef 524288) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.then34.if.end42_crit_edge

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %call35) #12
  br label %err

if.end42:                                         ; preds = %if.then34.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %call43 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %call43) #12
  br label %err

if.end49:                                         ; preds = %if.end42
  %call50 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %call50) #12
  br label %err

if.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %private_data57 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %29 = ptrtoint ptr %private_data57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %private_data57, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %30 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 524288, ptr %dma_bytes, align 4
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %phys = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %phys, align 4
  br label %cleanup

err:                                              ; preds = %do.end55, %do.end48, %do.end40, %do.end30, %do.end13
  %ret.0 = phi i32 [ %21, %do.end13 ], [ %call25, %do.end30 ], [ %call35, %do.end40 ], [ %call43, %do.end48 ], [ %call50, %do.end55 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end56, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %state = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %graph = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %graph, align 4
  %call = tail call i32 @q6apm_graph_stop(ptr noundef %7) #9
  %8 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %graph, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %call3 = tail call i32 @q6apm_unmap_memory_regions(ptr noundef %9, i32 noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %graph4 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %graph4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %graph4, align 4
  %call5 = tail call i32 @q6apm_graph_close(ptr noundef %13) #9
  %14 = ptrtoint ptr %graph4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %graph4, align 4
  tail call void @kfree(ptr noundef %3) #9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %private_data, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6apm_dai_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %pcm_size = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %pcm_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pcm_size, align 4
  %arrayidx.i.i12 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i12, align 4
  %periods = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %periods to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %periods, align 4
  %arrayidx.i.i13 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %entry.params_format.exit_crit_edge ], [ %13, %for.inc.i.i.params_format.exit_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !84
  %add.i.i = or i32 %14, %i.09.lcssa.i.i
  %15 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.cleanup.sink.split_crit_edge
    i32 6, label %sw.bb4
  ]

params_format.exit.cleanup.sink.split_crit_edge:  ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %params_format.exit.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ 24, %sw.bb4 ], [ 16, %params_format.exit.cleanup.sink.split_crit_edge ]
  %bits_per_sample = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink, ptr %bits_per_sample, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %cfg = alloca %struct.audioreach_module_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cfg) #9
  %4 = getelementptr inbounds i8, ptr %cfg, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %graph = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %graph, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cfg, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate, align 4
  %sample_rate = getelementptr inbounds %struct.audioreach_module_config, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sample_rate, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  %conv = trunc i32 %19 to i16
  %num_channels = getelementptr inbounds %struct.audioreach_module_config, ptr %cfg, i32 0, i32 5
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %num_channels, align 2
  %bits_per_sample = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bits_per_sample, align 4
  %bit_width = getelementptr inbounds %struct.audioreach_module_config, ptr %cfg, i32 0, i32 2
  %23 = ptrtoint ptr %bit_width to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %bit_width, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %27, %25
  %div1.i.i = lshr i32 %mul.i.i, 3
  %pcm_count = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %pcm_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div1.i.i, ptr %pcm_count, align 4
  %pos = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pos, align 4
  %call9 = call i32 @q6apm_graph_media_format_shmem(ptr noundef nonnull %11, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %30 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %graph, align 4
  %call17 = call i32 @q6apm_graph_media_format_pcm(ptr noundef %31, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end15.if.end24_crit_edge
  %32 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %graph, align 4
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream, align 4
  %phys = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys, align 4
  %pcm_size = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcm_size, align 4
  %periods = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 8
  %40 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %periods, align 4
  %div = udiv i32 %39, %41
  %call28 = call i32 @q6apm_map_memory_regions(ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %div, i32 noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef %call28) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %42 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %graph, align 4
  %call37 = call i32 @q6apm_graph_prepare(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %call37) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %44 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %graph, align 4
  %call45 = call i32 @q6apm_graph_start(ptr noundef %45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %call45) #12
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp53 = icmp eq i32 %47, 1
  br i1 %cmp53, label %for.cond.preheader, label %if.end51.if.end61_crit_edge

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

for.cond.preheader:                               ; preds = %if.end51
  %periods56 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 17
  %48 = ptrtoint ptr %periods56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %periods56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp57106.not = icmp eq i32 %49, 0
  br i1 %cmp57106.not, label %for.cond.preheader.if.end61_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end61_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %50 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %graph, align 4
  %call60 = call i32 @q6apm_read(ptr noundef %51) #9
  %inc = add nuw i32 %i.0107, 1
  %52 = ptrtoint ptr %periods56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %periods56, align 8
  %cmp57 = icmp ult i32 %inc, %53
  br i1 %cmp57, label %for.body.for.body_crit_edge, label %for.body.if.end61_crit_edge

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end61:                                         ; preds = %for.body.if.end61_crit_edge, %for.cond.preheader.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %state = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 15
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end50, %do.end42, %do.end34, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -12, %do.end34 ], [ %call37, %do.end42 ], [ %call45, %do.end50 ], [ 0, %if.end61 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6apm_dai_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge7
    i32 4, label %entry.sw.bb_crit_edge8
    i32 0, label %sw.bb2
    i32 5, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge9
  ]

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %graph = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %graph, align 4
  %pcm_count = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_count, align 4
  %call = tail call i32 @q6apm_write_async(ptr noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge9
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge9 ], [ 0, %sw.bb2 ], [ %call, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6apm_dai_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pos = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  %pcm_size = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcm_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos, align 4
  %mul.i = shl i32 %10, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %12
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @q6apm_graph_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_handler(i32 noundef %opcode, i32 noundef %token, ptr nocapture noundef readnone %payload, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %opcode, label %entry.sw.epilog_crit_edge [
    i32 4099, label %sw.bb
    i32 4105, label %sw.bb2
    i32 4106, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 15
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pcm_count = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_count, align 4
  %pos = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %pos, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #9
  %state3 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 15
  %8 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %graph = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 16
  %10 = ptrtoint ptr %graph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %graph, align 4
  %12 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_count, align 4
  %call = tail call i32 @q6apm_write_async(ptr noundef %11, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %pcm_count6 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 6
  %14 = ptrtoint ptr %pcm_count6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_count6, align 4
  %pos7 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 7
  %16 = ptrtoint ptr %pos7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos7, align 4
  %add8 = add i32 %17, %15
  store i32 %add8, ptr %pos7, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #9
  %state9 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 15
  %18 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp10 = icmp eq i32 %19, 2
  br i1 %cmp10, label %if.then11, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %graph12 = getelementptr inbounds %struct.q6apm_dai_rtd, ptr %priv, i32 0, i32 16
  %20 = ptrtoint ptr %graph12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %graph12, align 4
  %call13 = tail call i32 @q6apm_read(ptr noundef %21) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %sw.bb5.sw.epilog_crit_edge, %if.then, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_write_async(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_unmap_memory_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_media_format_shmem(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_media_format_pcm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_map_memory_regions(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_graph_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_q6apm_dai__240_416_q6apm_dai_platform_driver_init6, !1, !"__initcall__kmod_q6apm_dai__240_416_q6apm_dai_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 416, i32 1}
!2 = !{ptr @__exitcall_q6apm_dai_platform_driver_exit, !1, !"__exitcall_q6apm_dai_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 418, i32 1}
!5 = !{ptr @__UNIQUE_ID_file242, !6, !"__UNIQUE_ID_file242", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 419, i32 1}
!7 = !{ptr @__UNIQUE_ID_license243, !6, !"__UNIQUE_ID_license243", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 411, i32 11}
!10 = !{ptr @q6apm_dai_platform_driver, !11, !"q6apm_dai_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 409, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 390, i32 46}
!14 = !{ptr @q6apm_fe_dai_component, !15, !"q6apm_fe_dai_component", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 367, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 242, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @q6apm_dai_open._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @q6apm_dai_open._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 253, i32 3}
!26 = !{ptr @q6apm_dai_open._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @q6apm_dai_open._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 266, i32 3}
!30 = !{ptr @q6apm_dai_open._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @q6apm_dai_open._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 274, i32 4}
!34 = !{ptr @q6apm_dai_open._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @q6apm_dai_open._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 281, i32 3}
!38 = !{ptr @q6apm_dai_open._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @q6apm_dai_open._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 287, i32 3}
!42 = !{ptr @q6apm_dai_open._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @q6apm_dai_open._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @q6apm_dai_hardware_playback, !45, !"q6apm_dai_hardware_playback", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 80, i32 32}
!46 = !{ptr @q6apm_dai_hardware_capture, !47, !"q6apm_dai_hardware_capture", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 62, i32 32}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 141, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @q6apm_dai_prepare._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @q6apm_dai_prepare._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 155, i32 3}
!55 = !{ptr @q6apm_dai_prepare._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @q6apm_dai_prepare._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 161, i32 3}
!59 = !{ptr @q6apm_dai_prepare._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @q6apm_dai_prepare._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 167, i32 3}
!63 = !{ptr @q6apm_dai_prepare._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @q6apm_dai_prepare._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 173, i32 3}
!67 = !{ptr @q6apm_dai_prepare._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @q6apm_dai_prepare._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 179, i32 3}
!71 = !{ptr @q6apm_dai_prepare._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @q6apm_dai_prepare._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @q6apm_dai_device_id, !74, !"q6apm_dai_device_id", i1 false, i1 false}
!74 = !{!"../sound/soc/qcom/qdsp6/q6apm-dai.c", i32 402, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i32 0, i32 33}
