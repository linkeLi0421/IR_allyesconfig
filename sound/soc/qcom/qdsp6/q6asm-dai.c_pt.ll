; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6asm-dai.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6asm-dai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.q6asm_dai_data = type { ptr, i32, i64 }
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
%struct.q6asm_dai_rtd = type { ptr, ptr, %struct.snd_codec, %struct.snd_dma_buffer, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, i32, i8, i32, i16, i32, i32, i32, i8 }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_compr_metadata = type { i32, [8 x i32] }
%struct.snd_compr_tstamp = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_compr_caps = type { i32, i32, i32, i32, i32, i32, [32 x i32], [11 x i32] }
%struct.q6asm_flac_cfg = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.q6asm_wma_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.q6asm_alac_cfg = type { i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32 }
%struct.q6asm_ape_cfg = type { i16, i16, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.snd_dec_flac = type { i16, i16, i16, i16, i16, i16 }
%struct.snd_dec_alac = type { i32, i8, i8, i8, i8, i32, i32 }
%struct.snd_dec_ape = type { i16, i16, i32, i32, i32, i32, i32 }

@__initcall__kmod_q6asm_dai__240_1323_q6asm_dai_platform_driver_init6 = internal global ptr @q6asm_dai_platform_driver_init, section ".initcall6.init", align 4
@q6asm_dai_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @q6asm_dai_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @q6asm_dai_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_q6asm_dai_platform_driver_exit = internal global ptr @q6asm_dai_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [39 x i8] c"q6asm_dai.description=Q6ASM dai driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [46 x i8] c"q6asm_dai.file=sound/soc/qcom/qdsp6/q6asm-dai\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [25 x i8] c"q6asm_dai.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"q6asm-dai\00", [22 x i8] zeroinitializer }, align 32
@q6asm_dai_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,q6asm-dais\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@q6asm_fe_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.37, ptr null, i32 0, ptr @q6asm_dapm_widgets, i32 16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6asm_dai_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6asm_dai_open, ptr @q6asm_dai_close, ptr null, ptr @q6asm_dai_hw_params, ptr null, ptr @q6asm_dai_prepare, ptr @q6asm_dai_trigger, ptr null, ptr @q6asm_dai_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @q6asm_dai_compress_ops, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@of_q6asm_parse_dai_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No dais found in DT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_q6asm_parse_dai_data\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/qcom/qdsp6/q6asm-dai.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_q6asm_parse_dai_data._entry_ptr = internal global ptr @of_q6asm_parse_dai_data._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_q6asm_parse_dai_data._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"valid dai id not found:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@of_q6asm_parse_dai_data._entry_ptr.10 = internal global ptr @of_q6asm_parse_dai_data._entry.8, section ".printk_index", align 4
@q6asm_fe_dais_template = internal constant { [8 x %struct.snd_soc_dai_driver], [320 x i8] } { [8 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.13, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.14, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.15, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.16, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.18, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.19, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.21, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.22, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.23, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.24, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.25, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.26, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.27, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.28, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.30, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.31, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.32, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.33, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.34, i32 7, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.35, i64 68, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.36, i64 68, i32 -2147475458, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is-compress-dai\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia1\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia1 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia1 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia2\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia2 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia2 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia3\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia3 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia3 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia4\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia4 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia4 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia5\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia5 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia5 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia6\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia6 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia6 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia7\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia7 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia7 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MultiMedia8\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MultiMedia8 Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MultiMedia8 Playback\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"q6asm-fe-dai\00", [19 x i8] zeroinitializer }, align 32
@q6asm_dai_compress_ops = internal constant { %struct.snd_compress_ops, [44 x i8] } { %struct.snd_compress_ops { ptr @q6asm_dai_compr_open, ptr @q6asm_dai_compr_free, ptr @q6asm_dai_compr_set_params, ptr null, ptr @q6asm_dai_compr_set_metadata, ptr null, ptr @q6asm_dai_compr_trigger, ptr @q6asm_dai_compr_pointer, ptr @q6asm_compr_copy, ptr @q6asm_dai_compr_mmap, ptr null, ptr @q6asm_dai_compr_get_caps, ptr @q6asm_dai_compr_get_codec_caps }, [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL1\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL2\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL3\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL4\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL5\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL6\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL7\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_DL8\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL1\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL2\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL3\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL4\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL5\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL6\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL7\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MM_UL8\00", [25 x i8] zeroinitializer }, align 32
@q6asm_dapm_widgets = internal constant { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [704 x i8] } { [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.38, ptr @.str.15, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.39, ptr @.str.18, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.40, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.41, ptr @.str.24, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.42, ptr @.str.27, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.43, ptr @.str.30, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.44, ptr @.str.33, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.45, ptr @.str.36, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.46, ptr @.str.14, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.47, ptr @.str.17, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.48, ptr @.str.20, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.49, ptr @.str.23, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.50, ptr @.str.26, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.51, ptr @.str.29, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.52, ptr @.str.32, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.53, ptr @.str.35, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [704 x i8] zeroinitializer }, align 32
@q6asm_dai_hardware_playback = internal global { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 68, i32 8190, i32 8000, i32 192000, i32 1, i32 8, i32 524288, i32 128, i32 65536, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Drv data not found ..\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"q6asm_dai_open\00", [17 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr = internal global ptr @q6asm_dai_open._entry, section ".printk_index", align 4
@q6asm_dai_open._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 378, ptr @.str.59, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Could not allocate memory\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.60 = internal global ptr @q6asm_dai_open._entry.57, section ".printk_index", align 4
@q6asm_dai_hardware_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852243, i64 68, i32 254, i32 8000, i32 48000, i32 1, i32 4, i32 32768, i32 320, i32 4096, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@constraints_sample_rates = internal global { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @supported_sample_rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.4, i32 396, ptr @.str.59, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_pcm_hw_constraint_list failed\0A\00", [61 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.63 = internal global ptr @q6asm_dai_open._entry.61, section ".printk_index", align 4
@q6asm_dai_open._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.56, ptr @.str.4, i32 401, ptr @.str.59, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snd_pcm_hw_constraint_integer failed\0A\00", [58 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.66 = internal global ptr @q6asm_dai_open._entry.64, section ".printk_index", align 4
@q6asm_dai_open._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.56, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"constraint for buffer bytes min max ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.69 = internal global ptr @q6asm_dai_open._entry.67, section ".printk_index", align 4
@q6asm_dai_open._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.56, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"constraint for period bytes step ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.72 = internal global ptr @q6asm_dai_open._entry.70, section ".printk_index", align 4
@q6asm_dai_open._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.56, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"constraint for buffer bytes step ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@q6asm_dai_open._entry_ptr.75 = internal global ptr @q6asm_dai_open._entry.73, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@supported_sample_rates = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [44 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: private data null or audio client freed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"q6asm_dai_prepare\00", [46 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry_ptr = internal global ptr @q6asm_dai_prepare._entry, section ".printk_index", align 4
@q6asm_dai_prepare._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Audio Start: Buffer Allocation failed rc = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry_ptr.80 = internal global ptr @q6asm_dai_prepare._entry.78, section ".printk_index", align 4
@q6asm_dai_prepare._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: q6asm_open_write failed\0A\00", [35 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry_ptr.83 = internal global ptr @q6asm_dai_prepare._entry.81, section ".printk_index", align 4
@q6asm_dai_prepare._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: stream reg failed ret:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry_ptr.86 = internal global ptr @q6asm_dai_prepare._entry.84, section ".printk_index", align 4
@q6asm_dai_prepare._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.4, i32 301, ptr @.str.59, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: CMD Format block failed\0A\00", [35 x i8] zeroinitializer }, align 32
@q6asm_dai_prepare._entry_ptr.89 = internal global ptr @q6asm_dai_prepare._entry.87, section ".printk_index", align 4
@q6asm_dai_compr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.90, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"q6asm_dai_compr_open\00", [43 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_open._entry_ptr = internal global ptr @q6asm_dai_compr_open._entry, section ".printk_index", align 4
@q6asm_dai_compr_open._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_open._entry_ptr.93 = internal global ptr @q6asm_dai_compr_open._entry.91, section ".printk_index", align 4
@q6asm_dai_compr_open._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot allocate buffer(s)\0A\00", [37 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_open._entry_ptr.96 = internal global ptr @q6asm_dai_compr_open._entry.94, section ".printk_index", align 4
@q6asm_dai_compr_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&prtd->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/sound/compress_driver.h\00", [32 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 889, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"private data null or audio client freed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"q6asm_dai_compr_set_params\00", [37 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry_ptr = internal global ptr @q6asm_dai_compr_set_params._entry, section ".printk_index", align 4
@q6asm_dai_compr_set_params._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 904, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"q6asm_open_write failed\0A\00", [39 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry_ptr.103 = internal global ptr @q6asm_dai_compr_set_params._entry.101, section ".printk_index", align 4
@q6asm_dai_compr_set_params._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.4, i32 915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Stream reg failed ret:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry_ptr.106 = internal global ptr @q6asm_dai_compr_set_params._entry.104, section ".printk_index", align 4
@q6asm_dai_compr_set_params._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.4, i32 923, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"codec param setup failed ret:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry_ptr.109 = internal global ptr @q6asm_dai_compr_set_params._entry.107, section ".printk_index", align 4
@q6asm_dai_compr_set_params._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.4, i32 932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Buffer Mapping failed ret:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_params._entry_ptr.112 = internal global ptr @q6asm_dai_compr_set_params._entry.110, section ".printk_index", align 4
@__q6asm_dai_compr_set_codec_params._entry = internal constant %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 737, ptr @.str.5, ptr @.str.6 }, align 1
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FLAC CMD Format block failed:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"__q6asm_dai_compr_set_codec_params\00", [61 x i8] zeroinitializer }, align 32
@__q6asm_dai_compr_set_codec_params._entry_ptr = internal global ptr @__q6asm_dai_compr_set_codec_params._entry, section ".printk_index", align 4
@__q6asm_dai_compr_set_codec_params._entry.115 = internal constant %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.4, i32 788, ptr @.str.5, ptr @.str.6 }, align 1
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown WMA profile:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@__q6asm_dai_compr_set_codec_params._entry_ptr.117 = internal global ptr @__q6asm_dai_compr_set_codec_params._entry.115, section ".printk_index", align 4
@__q6asm_dai_compr_set_codec_params._entry.118 = internal constant %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.4, i32 801, ptr @.str.5, ptr @.str.6 }, align 1
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMA9 CMD failed:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@__q6asm_dai_compr_set_codec_params._entry_ptr.120 = internal global ptr @__q6asm_dai_compr_set_codec_params._entry.118, section ".printk_index", align 4
@__q6asm_dai_compr_set_codec_params._entry.121 = internal constant %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.4, i32 835, ptr @.str.5, ptr @.str.6 }, align 1
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALAC CMD Format block failed:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__q6asm_dai_compr_set_codec_params._entry_ptr.123 = internal global ptr @__q6asm_dai_compr_set_codec_params._entry.121, section ".printk_index", align 4
@__q6asm_dai_compr_set_codec_params._entry.124 = internal constant %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.4, i32 860, ptr @.str.5, ptr @.str.6 }, align 1
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"APE CMD Format block failed:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__q6asm_dai_compr_set_codec_params._entry_ptr.126 = internal global ptr @__q6asm_dai_compr_set_codec_params._entry.124, section ".printk_index", align 4
@q6asm_dai_compr_set_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.127, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"q6asm_dai_compr_set_metadata\00", [35 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_metadata._entry_ptr = internal global ptr @q6asm_dai_compr_set_metadata._entry, section ".printk_index", align 4
@q6asm_dai_compr_set_metadata._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.127, ptr @.str.4, i32 970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@q6asm_dai_compr_set_metadata._entry_ptr.129 = internal global ptr @q6asm_dai_compr_set_metadata._entry.128, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@q6asm_compr_caps = internal constant { { i32, i32, <{ { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }, [31 x { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }] }> }, [2808 x i8] } { { i32, i32, <{ { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }, [31 x { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }] }> } { i32 0, i32 1, <{ { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }, [31 x { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }] }> <{ { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] } { i32 2, <{ [13 x i32], [19 x i32] }> <{ [13 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [19 x i32] zeroinitializer }>, i32 13, <{ i32, i32, [30 x i32] }> <{ i32 320, i32 128, [30 x i32] zeroinitializer }>, i32 2, i32 0, i32 0, i32 2, i32 0, i32 0, [15 x i32] zeroinitializer }, [31 x { i32, <{ [13 x i32], [19 x i32] }>, i32, <{ i32, i32, [30 x i32] }>, i32, i32, i32, i32, i32, i32, [15 x i32] }] zeroinitializer }> }, [2808 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 32, i64 4099, i64 4104, i64 4105, i64 4106]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 4099, i64 4104, i64 4105]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 10, i64 15, i64 16]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.145 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"q6asm_dai_platform_driver\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1316, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1318, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"q6asm_dai_device_id\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1309, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1292, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"q6asm_fe_dai_component\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1207, i32 46 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1243, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1255, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1257, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"q6asm_fe_dais_template\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1221, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1264, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1273, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1222, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1223, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1224, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1225, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1226, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1227, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1228, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1229, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1208, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant [23 x i8] c"q6asm_dai_compress_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1165, i32 38 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1189, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1190, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1191, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1192, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1193, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1194, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1195, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1196, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1197, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1198, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1199, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1200, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1201, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1202, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1203, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1204, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [19 x i8] c"q6asm_dapm_widgets\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1188, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant [28 x i8] c"q6asm_dai_hardware_playback\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 105, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 365, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 378, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"q6asm_dai_hardware_capture\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 83, i32 38 }
@___asan_gen_.351 = private unnamed_addr constant [25 x i8] c"constraints_sample_rates\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 160, i32 42 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 396, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 401, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 409, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 417, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 423, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [23 x i8] c"supported_sample_rates\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 155, i32 21 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 232, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 255, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 271, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 279, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 301, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 615, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 631, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 641, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 651, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant [35 x i8] c"../include/sound/compress_driver.h\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 198, i32 6 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 889, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 904, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 915, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 923, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 932, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 737, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 787, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 801, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 835, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 860, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 963, i32 5 }
@___asan_gen_.504 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 970, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 230, i32 6 }
@___asan_gen_.511 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 214, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 156, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"q6asm_compr_caps\00", align 1
@___asan_gen_.517 = private constant [36 x i8] c"../sound/soc/qcom/qdsp6/q6asm-dai.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 166, i32 42 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_q6asm_dai_platform_driver_exit, ptr @__initcall__kmod_q6asm_dai__240_1323_q6asm_dai_platform_driver_init6, ptr @__q6asm_dai_compr_set_codec_params._entry, ptr @__q6asm_dai_compr_set_codec_params._entry.115, ptr @__q6asm_dai_compr_set_codec_params._entry.118, ptr @__q6asm_dai_compr_set_codec_params._entry.121, ptr @__q6asm_dai_compr_set_codec_params._entry.124, ptr @__q6asm_dai_compr_set_codec_params._entry_ptr, ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.117, ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.120, ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.123, ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.126, ptr @of_q6asm_parse_dai_data._entry, ptr @of_q6asm_parse_dai_data._entry.8, ptr @of_q6asm_parse_dai_data._entry_ptr, ptr @of_q6asm_parse_dai_data._entry_ptr.10, ptr @q6asm_dai_compr_open._entry, ptr @q6asm_dai_compr_open._entry.91, ptr @q6asm_dai_compr_open._entry.94, ptr @q6asm_dai_compr_open._entry_ptr, ptr @q6asm_dai_compr_open._entry_ptr.93, ptr @q6asm_dai_compr_open._entry_ptr.96, ptr @q6asm_dai_compr_set_metadata._entry, ptr @q6asm_dai_compr_set_metadata._entry.128, ptr @q6asm_dai_compr_set_metadata._entry_ptr, ptr @q6asm_dai_compr_set_metadata._entry_ptr.129, ptr @q6asm_dai_compr_set_params._entry, ptr @q6asm_dai_compr_set_params._entry.101, ptr @q6asm_dai_compr_set_params._entry.104, ptr @q6asm_dai_compr_set_params._entry.107, ptr @q6asm_dai_compr_set_params._entry.110, ptr @q6asm_dai_compr_set_params._entry_ptr, ptr @q6asm_dai_compr_set_params._entry_ptr.103, ptr @q6asm_dai_compr_set_params._entry_ptr.106, ptr @q6asm_dai_compr_set_params._entry_ptr.109, ptr @q6asm_dai_compr_set_params._entry_ptr.112, ptr @q6asm_dai_open._entry, ptr @q6asm_dai_open._entry.57, ptr @q6asm_dai_open._entry.61, ptr @q6asm_dai_open._entry.64, ptr @q6asm_dai_open._entry.67, ptr @q6asm_dai_open._entry.70, ptr @q6asm_dai_open._entry.73, ptr @q6asm_dai_open._entry_ptr, ptr @q6asm_dai_open._entry_ptr.60, ptr @q6asm_dai_open._entry_ptr.63, ptr @q6asm_dai_open._entry_ptr.66, ptr @q6asm_dai_open._entry_ptr.69, ptr @q6asm_dai_open._entry_ptr.72, ptr @q6asm_dai_open._entry_ptr.75, ptr @q6asm_dai_platform_driver_exit, ptr @q6asm_dai_prepare._entry, ptr @q6asm_dai_prepare._entry.78, ptr @q6asm_dai_prepare._entry.81, ptr @q6asm_dai_prepare._entry.84, ptr @q6asm_dai_prepare._entry.87, ptr @q6asm_dai_prepare._entry_ptr, ptr @q6asm_dai_prepare._entry_ptr.80, ptr @q6asm_dai_prepare._entry_ptr.83, ptr @q6asm_dai_prepare._entry_ptr.86, ptr @q6asm_dai_prepare._entry_ptr.89, ptr @q6asm_dai_platform_driver, ptr @.str, ptr @q6asm_dai_device_id, ptr @.str.1, ptr @q6asm_fe_dai_component, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @q6asm_fe_dais_template, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @q6asm_dai_compress_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @q6asm_dapm_widgets, ptr @q6asm_dai_hardware_playback, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @q6asm_dai_hardware_capture, ptr @constraints_sample_rates, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @supported_sample_rates, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @q6asm_dai_compr_open.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @q6asm_compr_caps], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_fe_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6asm_parse_dai_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_q6asm_parse_dai_data._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_fe_dais_template to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compress_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dapm_widgets to i32), i32 2880, i32 3584, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_hardware_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_hardware_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_sample_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_open._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_sample_rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_prepare._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_prepare._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_prepare._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_prepare._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_open._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_open._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_params._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_params._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_params._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_params._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_dai_compr_set_metadata._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6asm_compr_caps to i32), i32 11144, i32 13952, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @q6asm_dai_platform_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @q6asm_dai_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @q6asm_dai_platform_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %id.i = alloca i32, align 4
  %dir.i = alloca i32, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i28 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp = icmp slt i32 %call.i28, 0
  br i1 %cmp, label %if.end.if.end6_crit_edge, label %if.else

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %args4 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %args4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args4, align 4
  %and = and i32 %4, 15
  %conv = zext i32 %and to i64
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %conv.sink = phi i64 [ %conv, %if.else ], [ -1, %if.end.if.end6_crit_edge ]
  %5 = getelementptr inbounds %struct.q6asm_dai_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.sink, ptr %5, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %id.i, align 4, !annotation !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dir.i) #12
  %9 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dir.i, align 4, !annotation !252
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i = call ptr @of_get_next_child(ptr noundef %11, ptr noundef null) #12
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %of_get_child_count.exit.thread.i, label %if.end6.for.body.i.i_crit_edge

if.end6.for.body.i.i_crit_edge:                   ; preds = %if.end6
  br label %for.body.i.i

of_get_child_count.exit.thread.i:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %num_dais66.i = getelementptr inbounds %struct.q6asm_dai_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %num_dais66.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_dais66.i, align 4
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end6.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef %11, ptr noundef nonnull %child.06.i.i) #12
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  %num_dais.i = getelementptr inbounds %struct.q6asm_dai_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %num_dais.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.i.i, ptr %num_dais.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i, label %of_get_child_count.exit.i.do.end.i_crit_edge, label %if.end.i

of_get_child_count.exit.i.do.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i.do.end.i_crit_edge, %of_get_child_count.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #15
  br label %of_q6asm_parse_dai_data.exit.thread

if.end.i:                                         ; preds = %of_get_child_count.exit.i
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 168) #12
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !253

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %call.i, align 8
  br label %of_q6asm_parse_dai_data.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %17, i32 noundef 3520) #12
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i.i, ptr %call.i, align 8
  %tobool5.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool5.not.i, label %devm_kcalloc.exit.i.of_q6asm_parse_dai_data.exit.thread_crit_edge, label %if.end7.i

devm_kcalloc.exit.i.of_q6asm_parse_dai_data.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %of_q6asm_parse_dai_data.exit.thread

if.end7.i:                                        ; preds = %devm_kcalloc.exit.i
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call9.i = call ptr @of_get_next_child(ptr noundef %20, ptr noundef null) #12
  %cmp.not70.i = icmp eq ptr %call9.i, null
  br i1 %cmp.not70.i, label %if.end7.i.if.end10_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.if.end10_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %idx.074.i = phi i32 [ %idx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %node.071.i = phi ptr [ %call36.i, %for.inc.i.for.body.i_crit_edge ], [ %call9.i, %if.end7.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.071.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %id.i, i32 noundef 1, i32 noundef 0) #12
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %24 = icmp ugt i32 %23, 7
  br i1 %24, label %lor.lhs.false.i.do.end18.i_crit_edge, label %if.end19.i

lor.lhs.false.i.do.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18.i

do.end18.i:                                       ; preds = %lor.lhs.false.i.do.end18.i_crit_edge, %for.body.i.do.end18.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %21) #15
  br label %for.inc.i

if.end19.i:                                       ; preds = %lor.lhs.false.i
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %inc.i = add i32 %idx.074.i, 1
  %arrayidx.i = getelementptr %struct.snd_soc_dai_driver, ptr %26, i32 %idx.074.i
  %arrayidx21.i = getelementptr [8 x %struct.snd_soc_dai_driver], ptr @q6asm_fe_dais_template, i32 0, i32 %23
  %27 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx21.i, i32 168)
  %call.i.i63.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.071.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %dir.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i63.i)
  %tobool23.not.i = icmp sgt i32 %call.i.i63.i, -1
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end19.i.for.inc.i_crit_edge

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end25.i:                                       ; preds = %if.end19.i
  %28 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.end25.i.if.end31.i_crit_edge [
    i32 2, label %if.then27.i
    i32 1, label %if.then29.i
  ]

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %capture.i = getelementptr %struct.snd_soc_dai_driver, ptr %26, i32 %idx.074.i, i32 10
  br label %if.end31.sink.split.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %playback.i = getelementptr %struct.snd_soc_dai_driver, ptr %26, i32 %idx.074.i, i32 11
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.then29.i, %if.then27.i
  %playback.sink.i = phi ptr [ %playback.i, %if.then29.i ], [ %capture.i, %if.then27.i ]
  %31 = call ptr @memset(ptr %playback.sink.i, i32 0, i32 40)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.end25.i.if.end31.i_crit_edge
  %call.i64.i = call ptr @of_find_property(ptr noundef nonnull %node.071.i, ptr noundef nonnull @.str.12, ptr noundef null) #12
  %tobool.i.not.i = icmp eq ptr %call.i64.i, null
  br i1 %tobool.i.not.i, label %if.end31.i.for.inc.i_crit_edge, label %if.then33.i

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %compress_new.i = getelementptr %struct.snd_soc_dai_driver, ptr %26, i32 %idx.074.i, i32 6
  %32 = ptrtoint ptr %compress_new.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @snd_soc_new_compress, ptr %compress_new.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then33.i, %if.end31.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %do.end18.i
  %idx.1.i = phi i32 [ %idx.074.i, %do.end18.i ], [ %inc.i, %if.end19.i.for.inc.i_crit_edge ], [ %inc.i, %if.then33.i ], [ %inc.i, %if.end31.i.for.inc.i_crit_edge ]
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call36.i = call ptr @of_get_next_child(ptr noundef %34, ptr noundef nonnull %node.071.i) #12
  %cmp.not.i = icmp eq ptr %call36.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end10_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

of_q6asm_parse_dai_data.exit.thread:              ; preds = %devm_kcalloc.exit.i.of_q6asm_parse_dai_data.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.of_q6asm_parse_dai_data.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %cleanup

if.end10:                                         ; preds = %for.inc.i.if.end10_crit_edge, %if.end7.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dir.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  %37 = ptrtoint ptr %num_dais.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_dais.i, align 4
  %call11 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @q6asm_fe_dai_component, ptr noundef %36, i32 noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %of_q6asm_parse_dai_data.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %of_q6asm_parse_dai_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_new_compress(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @q6asm_dai_hardware_playback, i32 0, i32 7), align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 2, ptr noundef %4, i32 noundef %2, i32 noundef 0) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 276) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %call7.i.i, align 8
  %call7 = tail call ptr @q6asm_audio_client_alloc(ptr noundef %9, ptr noundef nonnull @event_handler, ptr noundef nonnull %call7.i.i, i32 noundef %13, i32 noundef 0) #12
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %audio_client, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56) #15
  %19 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %audio_client, align 8
  %21 = ptrtoint ptr %20 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %stream_id17 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %stream_id17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %stream_id17, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %24, label %if.end16.if.end25_crit_edge [
    i32 0, label %if.then19
    i32 1, label %if.then22
  ]

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %26 = call ptr @memcpy(ptr %hw, ptr @q6asm_dai_hardware_playback, i32 64)
  br label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %hw23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %27 = call ptr @memcpy(ptr %hw23, ptr @q6asm_dai_hardware_capture, i32 64)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then19, %if.end16.if.end25_crit_edge
  %call26 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @constraints_sample_rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.62) #15
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.end25.if.end32_crit_edge
  %call33 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.65) #15
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end32.if.end39_crit_edge
  %28 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp41 = icmp eq i32 %29, 0
  br i1 %cmp41, label %if.then42, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then42:                                        ; preds = %if.end39
  %call43 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 18, i32 noundef 256, i32 noundef 524288) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.68, i32 noundef %call43) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.then42.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %call51 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.71, i32 noundef %call51) #15
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end50.if.end57_crit_edge
  %call58 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.74, i32 noundef %call58) #15
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end57.if.end64_crit_edge
  %private_data65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %30 = ptrtoint ptr %private_data65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %private_data65, align 8
  %call66 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @q6asm_dai_hardware_playback) #12
  %31 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @q6asm_dai_hardware_playback, i32 0, i32 7), align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %32 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dma_bytes, align 4
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %phys = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %phys, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %21, %do.end13 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %audio_client, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_id, align 4
  %call = tail call i32 @q6asm_cmd(ptr noundef nonnull %7, i32 noundef %11, i32 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  %14 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio_client, align 4
  %call7 = tail call i32 @q6asm_unmap_memory_regions(i32 noundef %13, ptr noundef %15) #12
  %16 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %audio_client, align 4
  tail call void @q6asm_audio_client_free(ptr noundef %17) #12
  %18 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %audio_client, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %stream11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %23 = ptrtoint ptr %stream11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream11, align 4
  tail call void @q6routing_stream_close(i32 noundef %22, i32 noundef %24) #12
  tail call void @kfree(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6asm_dai_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pcm_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pcm_size, align 4
  %arrayidx.i.i11 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i11, align 4
  %periods = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %periods to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %periods, align 4
  %arrayidx.i.i12 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %entry.params_format.exit_crit_edge ], [ %13, %for.inc.i.i.params_format.exit_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #12, !range !254
  %add.i.i = or i32 %14, %i.09.lcssa.i.i
  %15 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %add.i.i, label %params_format.exit.sw.epilog_crit_edge [
    i32 2, label %params_format.exit.sw.epilog.sink.split_crit_edge
    i32 6, label %sw.bb4
  ]

params_format.exit.sw.epilog.sink.split_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %params_format.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 24, %sw.bb4 ], [ 16, %params_format.exit.sw.epilog.sink.split_crit_edge ]
  %bits_per_sample5 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %bits_per_sample5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink, ptr %bits_per_sample5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_prepare(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %dev3 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 15
  %10 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_client, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end7

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %15, %13
  %div1.i.i = lshr i32 %mul.i.i, 3
  %pcm_count = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %pcm_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.i.i, ptr %pcm_count, align 4
  %pcm_irq_pos = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %pcm_irq_pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pcm_irq_pos, align 4
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 20
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %if.then10

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %20 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_id, align 4
  %call12 = tail call i32 @q6asm_cmd(ptr noundef nonnull %11, i32 noundef %21, i32 noundef 4) #12
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  %24 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %audio_client, align 4
  %call14 = tail call i32 @q6asm_unmap_memory_regions(i32 noundef %23, ptr noundef %25) #12
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream, align 4
  tail call void @q6routing_stream_close(i32 noundef %29, i32 noundef %31) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end7.if.end16_crit_edge
  %stream17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %32 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream17, align 4
  %34 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %audio_client, align 4
  %phys = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys, align 4
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 6
  %38 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcm_size, align 4
  %periods = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 9
  %40 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %periods, align 4
  %div = udiv i32 %39, %41
  %call20 = tail call i32 @q6asm_map_memory_regions(i32 noundef %33, ptr noundef %35, i32 noundef %37, i32 noundef %div, i32 noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.79, i32 noundef %call20) #15
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %42 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stream17, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %43, label %if.end25.if.end46_crit_edge [
    i32 0, label %if.then28
    i32 1, label %if.then34
  ]

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %audio_client, align 4
  %stream_id30 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %47 = ptrtoint ptr %stream_id30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream_id30, align 4
  %bits_per_sample = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 13
  %49 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bits_per_sample, align 4
  %call31 = tail call i32 @q6asm_open_write(ptr noundef %46, i32 noundef %48, i32 noundef 0, i32 noundef 0, i16 noundef zeroext %50, i1 noundef zeroext false) #12
  br label %if.end40

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %audio_client, align 4
  %stream_id36 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %53 = ptrtoint ptr %stream_id36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stream_id36, align 4
  %bits_per_sample37 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 13
  %55 = ptrtoint ptr %bits_per_sample37 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bits_per_sample37, align 4
  %call38 = tail call i32 @q6asm_open_read(ptr noundef %52, i32 noundef %54, i32 noundef 0, i16 noundef zeroext %56) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then28
  %ret.0 = phi i32 [ %call31, %if.then28 ], [ %call38, %if.then34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp41 = icmp slt i32 %ret.0, 0
  br i1 %cmp41, label %do.end45, label %if.end40.if.end46_crit_edge

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.77) #15
  br label %open_err

if.end46:                                         ; preds = %if.end40.if.end46_crit_edge, %if.end25.if.end46_crit_edge
  %57 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %audio_client, align 4
  %call48 = tail call i32 @q6asm_get_session_id(ptr noundef %58) #12
  %conv = trunc i32 %call48 to i16
  %session_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 19
  %59 = ptrtoint ptr %session_id to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv, ptr %session_id, align 4
  %dai_link49 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %dai_link49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dai_link49, align 4
  %id50 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %id50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id50, align 4
  %conv52 = and i32 %call48, 65535
  %64 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stream17, align 4
  %call54 = tail call i32 @q6routing_stream_open(i32 noundef %63, i32 noundef 0, i32 noundef %conv52, i32 noundef %65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.77, i32 noundef %call54) #15
  %66 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %audio_client, align 4
  %stream_id98 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %68 = ptrtoint ptr %stream_id98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %stream_id98, align 4
  %call99 = tail call i32 @q6asm_cmd(ptr noundef %67, i32 noundef %69, i32 noundef 4) #12
  br label %open_err

if.end60:                                         ; preds = %if.end46
  %70 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stream17, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %71, label %if.end60.if.else94_crit_edge [
    i32 0, label %if.then64
    i32 1, label %if.then73
  ]

if.end60.if.else94_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else94

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %audio_client, align 4
  %stream_id66 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %75 = ptrtoint ptr %stream_id66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %stream_id66, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %77 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rate, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %79 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channels, align 8
  %bits_per_sample67 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 13
  %81 = ptrtoint ptr %bits_per_sample67 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %bits_per_sample67, align 4
  %call68 = tail call i32 @q6asm_media_format_block_multi_ch_pcm(ptr noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, ptr noundef null, i16 noundef zeroext %82) #12
  br label %if.end87

if.then73:                                        ; preds = %if.end60
  %83 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %audio_client, align 4
  %stream_id75 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 18
  %85 = ptrtoint ptr %stream_id75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %stream_id75, align 4
  %rate76 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %87 = ptrtoint ptr %rate76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rate76, align 4
  %channels77 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %89 = ptrtoint ptr %channels77 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channels77, align 8
  %bits_per_sample78 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %5, i32 0, i32 13
  %91 = ptrtoint ptr %bits_per_sample78 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %bits_per_sample78, align 4
  %call79 = tail call i32 @q6asm_enc_cfg_blk_pcm_format_support(ptr noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90, i16 noundef zeroext %92) #12
  %periods80 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 17
  %93 = ptrtoint ptr %periods80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %periods80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp81183.not = icmp eq i32 %94, 0
  br i1 %cmp81183.not, label %if.then73.if.end87_crit_edge, label %if.then73.for.body_crit_edge

if.then73.for.body_crit_edge:                     ; preds = %if.then73
  br label %for.body

if.then73.if.end87_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then73.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then73.for.body_crit_edge ]
  %95 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %audio_client, align 4
  %97 = ptrtoint ptr %stream_id75 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stream_id75, align 4
  %call85 = tail call i32 @q6asm_read(ptr noundef %96, i32 noundef %98) #12
  %inc = add nuw i32 %i.0184, 1
  %99 = ptrtoint ptr %periods80 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %periods80, align 8
  %cmp81 = icmp ult i32 %inc, %100
  br i1 %cmp81, label %for.body.for.body_crit_edge, label %for.body.if.end87_crit_edge

for.body.if.end87_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end87:                                         ; preds = %for.body.if.end87_crit_edge, %if.then73.if.end87_crit_edge, %if.then64
  %ret.1 = phi i32 [ %call68, %if.then64 ], [ %call79, %if.then73.if.end87_crit_edge ], [ %call79, %for.body.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp88 = icmp slt i32 %ret.1, 0
  br i1 %cmp88, label %do.end93, label %if.end87.if.else94_crit_edge

if.end87.if.else94_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else94

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77) #15
  br label %cleanup

if.else94:                                        ; preds = %if.end87.if.else94_crit_edge, %if.end60.if.else94_crit_edge
  %ret.1182 = phi i32 [ %ret.1, %if.end87.if.else94_crit_edge ], [ 0, %if.end60.if.else94_crit_edge ]
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %state, align 4
  br label %cleanup

open_err:                                         ; preds = %do.end59, %do.end45
  %ret.2 = phi i32 [ %ret.0, %do.end45 ], [ %call54, %do.end59 ]
  %102 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stream17, align 4
  %104 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %audio_client, align 4
  %call102 = tail call i32 @q6asm_unmap_memory_regions(i32 noundef %103, ptr noundef %105) #12
  %106 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %audio_client, align 4
  tail call void @q6asm_audio_client_free(ptr noundef %107) #12
  %108 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %audio_client, align 4
  br label %cleanup

cleanup:                                          ; preds = %open_err, %if.else94, %do.end93, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end24 ], [ %ret.2, %open_err ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %ret.1182, %if.else94 ], [ %ret.1, %do.end93 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge16
    i32 4, label %entry.sw.bb_crit_edge17
    i32 0, label %sw.bb2
    i32 5, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge18
  ]

entry.sw.bb6_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_client, align 4
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id, align 4
  %call = tail call i32 @q6asm_run_nowait(ptr noundef %6, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  %audio_client3 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %audio_client3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_client3, align 4
  %stream_id4 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %stream_id4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream_id4, align 4
  %call5 = tail call i32 @q6asm_cmd_nowait(ptr noundef %11, i32 noundef %13, i32 noundef 3) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge18
  %audio_client7 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %audio_client7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio_client7, align 4
  %stream_id8 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %stream_id8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream_id8, align 4
  %call9 = tail call i32 @q6asm_cmd_nowait(ptr noundef %15, i32 noundef %17, i32 noundef 1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call9, %sw.bb6 ], [ %call5, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6asm_dai_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pcm_irq_pos = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pcm_irq_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_irq_pos, align 4
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcm_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %pcm_irq_pos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pcm_irq_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %pcm_irq_pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_irq_pos, align 4
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @q6asm_audio_client_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_handler(i32 noundef %opcode, i32 noundef %token, ptr nocapture noundef readnone %payload, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %opcode, label %entry.sw.epilog_crit_edge [
    i32 4104, label %sw.bb
    i32 4099, label %sw.bb2
    i32 4105, label %sw.bb3
    i32 4106, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %5 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_client, align 4
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id, align 4
  %pcm_count = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_count, align 4
  %call = tail call i32 @q6asm_write_async(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 20
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %pcm_count4 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 7
  %12 = ptrtoint ptr %pcm_count4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_count4, align 4
  %pcm_irq_pos = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %pcm_irq_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_irq_pos, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %pcm_irq_pos, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #12
  %state5 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 20
  %16 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp6 = icmp eq i32 %17, 2
  br i1 %cmp6, label %if.then7, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client8 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %18 = ptrtoint ptr %audio_client8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %audio_client8, align 4
  %stream_id9 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %20 = ptrtoint ptr %stream_id9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_id9, align 4
  %22 = ptrtoint ptr %pcm_count4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_count4, align 4
  %call11 = tail call i32 @q6asm_write_async(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %pcm_count14 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 7
  %24 = ptrtoint ptr %pcm_count14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcm_count14, align 4
  %pcm_irq_pos15 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 8
  %26 = ptrtoint ptr %pcm_irq_pos15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_irq_pos15, align 4
  %add16 = add i32 %27, %25
  store i32 %add16, ptr %pcm_irq_pos15, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #12
  %state17 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 20
  %28 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp18 = icmp eq i32 %29, 2
  br i1 %cmp18, label %if.then19, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client20 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %30 = ptrtoint ptr %audio_client20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %audio_client20, align 4
  %stream_id21 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %32 = ptrtoint ptr %stream_id21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream_id21, align 4
  %call22 = tail call i32 @q6asm_read(ptr noundef %31, i32 noundef %33) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb13.sw.epilog_crit_edge, %if.then7, %sw.bb3.sw.epilog_crit_edge, %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_write_async(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_cmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_unmap_memory_regions(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6asm_audio_client_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @q6routing_stream_close(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_map_memory_regions(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_open_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_open_read(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_get_session_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6routing_stream_open(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_media_format_block_multi_ch_pcm(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_enc_cfg_blk_pcm_format_support(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_run_nowait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_cmd_nowait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_open(ptr nocapture noundef readonly %component, ptr noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
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
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.55) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 276) #16
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %stream_id7 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 18
  %17 = ptrtoint ptr %stream_id7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %stream_id7, align 4
  %cstream = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %cstream to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %stream, ptr %cstream, align 4
  %call8 = tail call ptr @q6asm_audio_client_alloc(ptr noundef %9, ptr noundef nonnull @compress_event_handler, ptr noundef nonnull %call7.i.i, i32 noundef %13, i32 noundef 0) #12
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %audio_client, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.92) #15
  %20 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %audio_client, align 8
  %22 = ptrtoint ptr %21 to i32
  br label %free_prtd

if.end17:                                         ; preds = %if.end6
  %dma_buffer = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %9, i32 noundef 0, i32 noundef 8388608, ptr noundef %dma_buffer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end32, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95) #15
  %23 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %audio_client, align 8
  tail call void @q6asm_audio_client_free(ptr noundef %24) #12
  br label %free_prtd

if.end32:                                         ; preds = %if.end17
  %.sink.in = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.sink = load i32, ptr %.sink.in, align 4
  %26 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %26, align 4
  %28 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %dma_buffer, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 13
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dma_buffer, ptr %dma_buffer_p2.i, align 4
  %area.i = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %area.i, align 8
  %dma_area.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 10
  %33 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %dma_area.i, align 8
  %addr.i = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 11
  %36 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dma_addr.i, align 4
  %bytes.i = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytes.i, align 8
  br label %snd_compr_set_runtime_buffer.exit

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dma_buffer_p2.i, align 4
  %dma_area3.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 10
  %40 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %dma_area3.i, align 8
  %dma_addr4.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 11
  %41 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dma_addr4.i, align 4
  br label %snd_compr_set_runtime_buffer.exit

snd_compr_set_runtime_buffer.exit:                ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %38, %if.then.i ]
  %42 = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 12
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %42, align 8
  %lock = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.97, ptr noundef nonnull @q6asm_dai_compr_open.__key, i16 noundef signext 3) #12
  %private_data38 = getelementptr inbounds %struct.snd_compr_runtime, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %private_data38 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %private_data38, align 4
  br label %cleanup

free_prtd:                                        ; preds = %do.end23, %do.end14
  %ret.0 = phi i32 [ %22, %do.end14 ], [ %call.i, %do.end23 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_prtd, %snd_compr_set_runtime_buffer.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %free_prtd ], [ 0, %snd_compr_set_runtime_buffer.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 10
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %audio_client, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then.if.end11_crit_edge, label %if.then4

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then4:                                         ; preds = %if.then
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_id, align 4
  %call = tail call i32 @q6asm_cmd(ptr noundef nonnull %7, i32 noundef %11, i32 noundef 4) #12
  %next_track_stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_track_stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.then4.if.end11_crit_edge, label %if.then7

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio_client, align 4
  %call10 = tail call i32 @q6asm_cmd(ptr noundef %15, i32 noundef %13, i32 noundef 4) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then4.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %dma_buffer = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 3
  tail call void @snd_dma_free_pages(ptr noundef %dma_buffer) #12
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direction, align 4
  %18 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %audio_client, align 4
  %call13 = tail call i32 @q6asm_unmap_memory_regions(i32 noundef %17, ptr noundef %19) #12
  %20 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %audio_client, align 4
  tail call void @q6asm_audio_client_free(ptr noundef %21) #12
  %22 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %audio_client, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end11, %entry.if.end16_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dai_link, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %direction17 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %27 = ptrtoint ptr %direction17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %direction17, align 4
  tail call void @q6routing_stream_close(i32 noundef %26, i32 noundef %28) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_set_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 10
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %audio_client, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end7

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.99) #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %fragments = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fragments, align 4
  %periods = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %periods to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %periods, align 4
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fragment_size, align 8
  %pcm_count = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %pcm_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pcm_count, align 4
  %20 = load i32, ptr %fragments, align 4
  %21 = load i32, ptr %fragment_size, align 8
  %mul = mul i32 %21, %20
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %pcm_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %pcm_size, align 4
  %bits_per_sample = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %bits_per_sample, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then10, label %if.end7.if.end23_crit_edge

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then10:                                        ; preds = %if.end7
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream_id, align 4
  %codec = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1
  %26 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec, align 4
  %profile = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %profile, align 4
  %call14 = tail call i32 @q6asm_open_write(ptr noundef nonnull %13, i32 noundef %25, i32 noundef %27, i32 noundef %29, i16 noundef zeroext 16, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.then10.if.end23_crit_edge

if.then10.if.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.102) #15
  %30 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %audio_client, align 4
  tail call void @q6asm_audio_client_free(ptr noundef %31) #12
  %32 = ptrtoint ptr %audio_client to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %audio_client, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then10.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %33 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio_client, align 4
  %call25 = tail call i32 @q6asm_get_session_id(ptr noundef %34) #12
  %conv = trunc i32 %call25 to i16
  %session_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 19
  %35 = ptrtoint ptr %session_id to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %session_id, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %36 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dai_link, align 4
  %id26 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id26, align 4
  %conv28 = and i32 %call25, 65535
  %call29 = tail call i32 @q6routing_stream_open(i32 noundef %39, i32 noundef 0, i32 noundef %conv28, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.105, i32 noundef %call29) #15
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %codec36 = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1
  %stream_id37 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %40 = ptrtoint ptr %stream_id37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream_id37, align 4
  %call38 = tail call fastcc i32 @__q6asm_dai_compr_set_codec_params(ptr noundef %component, ptr noundef %stream, ptr noundef %codec36, i32 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.108, i32 noundef %call38) #15
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %42 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %audio_client, align 4
  %phys = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys, align 4
  %46 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pcm_size, align 4
  %48 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %periods, align 4
  %div = udiv i32 %47, %49
  %call49 = tail call i32 @q6asm_map_memory_regions(i32 noundef %7, ptr noundef %43, i32 noundef %45, i32 noundef %div, i32 noundef %49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.111, i32 noundef %call49) #15
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 20
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end55, %do.end43, %do.end34, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ %call29, %do.end34 ], [ %call38, %do.end43 ], [ -12, %do.end55 ], [ 0, %if.end56 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_set_metadata(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %metadata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.snd_compr_metadata, ptr %metadata, i32 0, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %trailing_samples_drop = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 22
  %9 = ptrtoint ptr %trailing_samples_drop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %trailing_samples_drop, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %value3 = getelementptr inbounds %struct.snd_compr_metadata, ptr %metadata, i32 0, i32 1
  %10 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value3, align 4
  %initial_samples_drop = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %initial_samples_drop to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %initial_samples_drop, align 4
  %next_track_stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_track_stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %if.then

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %audio_client, align 4
  %codec = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %codec, align 4
  %profile = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profile, align 4
  %bits_per_sample = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bits_per_sample, align 4
  %call = tail call i32 @q6asm_open_write(ptr noundef %16, i32 noundef %14, i32 noundef %18, i32 noundef %20, i16 noundef zeroext %22, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.102) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %25 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_track_stream_id, align 4
  %call10 = tail call fastcc i32 @__q6asm_dai_compr_set_codec_params(ptr noundef %component, ptr noundef %stream, ptr noundef %codec, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.102) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %audio_client, align 4
  %31 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %next_track_stream_id, align 4
  %33 = ptrtoint ptr %initial_samples_drop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %initial_samples_drop, align 4
  %call21 = tail call i32 @q6asm_stream_remove_initial_silence(ptr noundef %30, i32 noundef %32, i32 noundef %34) #12
  %35 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %next_track_stream_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call10, %do.end15 ], [ %call21, %if.end17 ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %stream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge23
    i32 4, label %entry.sw.bb_crit_edge24
    i32 0, label %sw.bb2
    i32 5, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge25
    i32 8, label %sw.bb10
    i32 7, label %entry.sw.bb12_crit_edge
    i32 9, label %entry.sw.bb12_crit_edge26
  ]

entry.sw.bb12_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12

entry.sw.bb6_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_client, align 4
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id, align 4
  %call = tail call i32 @q6asm_run_nowait(ptr noundef %6, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  %audio_client3 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %audio_client3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_client3, align 4
  %stream_id4 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %stream_id4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream_id4, align 4
  %call5 = tail call i32 @q6asm_cmd_nowait(ptr noundef %11, i32 noundef %13, i32 noundef 3) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge25
  %audio_client7 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %audio_client7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio_client7, align 4
  %stream_id8 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %stream_id8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream_id8, align 4
  %call9 = tail call i32 @q6asm_cmd_nowait(ptr noundef %15, i32 noundef %17, i32 noundef 1) #12
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %next_track = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %next_track to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %next_track, align 4
  %stream_id11 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %stream_id11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream_id11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %next_track_stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %next_track_stream_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %next_track_stream_id, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge26
  %notify_on_drain = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 23
  %22 = ptrtoint ptr %notify_on_drain to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %notify_on_drain, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ %call9, %sw.bb6 ], [ %call5, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %stream, ptr nocapture noundef writeonly %tstamp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %copied_total = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %copied_total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copied_total, align 4
  %copied_total6 = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %6 = ptrtoint ptr %copied_total6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %copied_total6, align 4
  %7 = load i32, ptr %copied_total, align 4
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_size, align 4
  %rem = urem i32 %7, %9
  %10 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %tstamp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_compr_copy(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %stream, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %bytes_received2 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %bytes_received2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_received2, align 4
  %next_track = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %next_track to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %next_track, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pcm_count = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_count, align 4
  %sub = add i32 %5, -1
  %add = add i32 %sub, %9
  %neg = sub i32 0, %9
  %and = and i32 %add, %neg
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bytes_received.0 = phi i32 [ %and, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %pcm_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcm_size, align 4
  %12 = urem i32 %bytes_received.0, %11
  %area = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %area, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %12
  %sub9 = sub i32 %11, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %count)
  %cmp = icmp ugt i32 %sub9, %count
  br i1 %cmp, label %if.end8.i.i, label %if.end8.i.i145

if.end8.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !256

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.130, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.132, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #17, !srcloc !257
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !256

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #12
  %16 = tail call i32 @llvm.read_register.i32(metadata !242) #12
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !258
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.do.body29_crit_edge, label %if.then11.i.i, !prof !256

if.end.i.i.do.body29_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end8.i.i145:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp9.i.i144 = icmp slt i32 %sub9, 0
  br i1 %cmp9.i.i144, label %land.rhs16.i.i147, label %if.then.i.i.i150

land.rhs16.i.i147:                                ; preds = %if.end8.i.i145
  %.b1.i.i146 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i146, label %land.rhs16.i.i147.cleanup_crit_edge, label %if.then27.i.i148, !prof !256

land.rhs16.i.i147.cleanup_crit_edge:              ; preds = %land.rhs16.i.i147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i148:                                 ; preds = %land.rhs16.i.i147
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.130, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i150:                                 ; preds = %if.end8.i.i145
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %sub9, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.132, i32 noundef 156) #12
  %call.i.i151 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i151, label %if.then.i.i.i150.if.end.i.i165_crit_edge, label %land.lhs.true.i.i155

if.then.i.i.i150.if.end.i.i165_crit_edge:         ; preds = %if.then.i.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i165

land.lhs.true.i.i155:                             ; preds = %if.then.i.i.i150
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %sub9, i32 -1226833920) #17, !srcloc !257
  %asmresult.i.i153 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i153)
  %cmp.i6.i154 = icmp eq i32 %asmresult.i.i153, 0
  br i1 %cmp.i6.i154, label %if.then.i7.i162, label %land.lhs.true.i.i155.if.end.i.i165_crit_edge, !prof !256

land.lhs.true.i.i155.if.end.i.i165_crit_edge:     ; preds = %land.lhs.true.i.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i165

if.then.i7.i162:                                  ; preds = %land.lhs.true.i.i155
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i156 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %sub9) #12
  %21 = tail call i32 @llvm.read_register.i32(metadata !242) #12
  %and.i.i.i.i.i.i157 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i157 to ptr
  %cpu_domain.i.i.i.i.i158 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i158) #11, !srcloc !258
  %and.i.i.i.i159 = and i32 %23, -13
  %or.i.i.i.i160 = or i32 %and.i.i.i.i159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i160) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %call1.i.i.i161 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %sub9) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  br label %if.end.i.i165

if.end.i.i165:                                    ; preds = %if.then.i7.i162, %land.lhs.true.i.i155.if.end.i.i165_crit_edge, %if.then.i.i.i150.if.end.i.i165_crit_edge
  %res.0.i.i163 = phi i32 [ %sub9, %if.then.i.i.i150.if.end.i.i165_crit_edge ], [ %call1.i.i.i161, %if.then.i7.i162 ], [ %sub9, %land.lhs.true.i.i155.if.end.i.i165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i163)
  %tobool4.not.i.i164 = icmp eq i32 %res.0.i.i163, 0
  br i1 %tobool4.not.i.i164, label %if.end19, label %if.then11.i.i168, !prof !256

if.then11.i.i168:                                 ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i166 = sub i32 %sub9, %res.0.i.i163
  %add.ptr.i.i167 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i166
  %24 = call ptr @memset(ptr %add.ptr.i.i167, i32 0, i32 %res.0.i.i163)
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.i165
  %25 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %area, align 4
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %sub9
  %sub23 = sub i32 %count, %sub9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp9.i.i177 = icmp slt i32 %sub23, 0
  br i1 %cmp9.i.i177, label %land.rhs16.i.i180, label %if.then.i.i.i183

land.rhs16.i.i180:                                ; preds = %if.end19
  %.b1.i.i179 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i179, label %land.rhs16.i.i180.cleanup_crit_edge, label %if.then27.i.i181, !prof !256

land.rhs16.i.i180.cleanup_crit_edge:              ; preds = %land.rhs16.i.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i181:                                 ; preds = %land.rhs16.i.i180
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.130, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i183:                                 ; preds = %if.end19
  tail call void @__check_object_size(ptr noundef %26, i32 noundef %sub23, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.132, i32 noundef 156) #12
  %call.i.i184 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i184, label %if.then.i.i.i183.if.end.i.i198_crit_edge, label %land.lhs.true.i.i188

if.then.i.i.i183.if.end.i.i198_crit_edge:         ; preds = %if.then.i.i.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i198

land.lhs.true.i.i188:                             ; preds = %if.then.i.i.i183
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr22, i32 %sub23, i32 -1226833920) #17, !srcloc !257
  %asmresult.i.i186 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i186)
  %cmp.i6.i187 = icmp eq i32 %asmresult.i.i186, 0
  br i1 %cmp.i6.i187, label %if.then.i7.i195, label %land.lhs.true.i.i188.if.end.i.i198_crit_edge, !prof !256

land.lhs.true.i.i188.if.end.i.i198_crit_edge:     ; preds = %land.lhs.true.i.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i198

if.then.i7.i195:                                  ; preds = %land.lhs.true.i.i188
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i189 = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef %sub23) #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !242) #12
  %and.i.i.i.i.i.i190 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i190 to ptr
  %cpu_domain.i.i.i.i.i191 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i191) #11, !srcloc !258
  %and.i.i.i.i192 = and i32 %30, -13
  %or.i.i.i.i193 = or i32 %and.i.i.i.i192, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i193) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %call1.i.i.i194 = tail call i32 @arm_copy_from_user(ptr noundef %26, ptr noundef %add.ptr22, i32 noundef %sub23) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  br label %if.end.i.i198

if.end.i.i198:                                    ; preds = %if.then.i7.i195, %land.lhs.true.i.i188.if.end.i.i198_crit_edge, %if.then.i.i.i183.if.end.i.i198_crit_edge
  %res.0.i.i196 = phi i32 [ %sub23, %if.then.i.i.i183.if.end.i.i198_crit_edge ], [ %call1.i.i.i194, %if.then.i7.i195 ], [ %sub23, %land.lhs.true.i.i188.if.end.i.i198_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i196)
  %tobool4.not.i.i197 = icmp eq i32 %res.0.i.i196, 0
  br i1 %tobool4.not.i.i197, label %if.end.i.i198.do.body29_crit_edge, label %if.then11.i.i201, !prof !256

if.end.i.i198.do.body29_crit_edge:                ; preds = %if.end.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then11.i.i201:                                 ; preds = %if.end.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i199 = sub i32 %sub23, %res.0.i.i196
  %add.ptr.i.i200 = getelementptr i8, ptr %26, i32 %sub.i.i199
  %31 = call ptr @memset(ptr %add.ptr.i.i200, i32 0, i32 %res.0.i.i196)
  br label %cleanup

do.body29:                                        ; preds = %if.end.i.i198.do.body29_crit_edge, %if.end.i.i.do.body29_crit_edge
  %lock = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 4
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %32 = ptrtoint ptr %bytes_received2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_received2, align 4
  %copied_total = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %copied_total to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %copied_total, align 4
  %36 = ptrtoint ptr %next_track to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %next_track, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool38.not = icmp eq i8 %37, 0
  br i1 %tobool38.not, label %do.body29.if.end58_crit_edge, label %if.then39

do.body29.if.end58_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %next_track to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %next_track, align 4
  %pcm_count42 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %pcm_count42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pcm_count42, align 4
  %sub43 = add i32 %40, -1
  %add44 = add i32 %sub43, %35
  %neg47 = sub i32 0, %40
  %and48 = and i32 %add44, %neg47
  %41 = ptrtoint ptr %copied_total to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and48, ptr %copied_total, align 4
  %bytes_sent = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 10
  %42 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_sent, align 4
  %add52 = add i32 %43, %sub43
  %and56 = and i32 %add52, %neg47
  store i32 %and56, ptr %bytes_sent, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then39, %do.body29.if.end58_crit_edge
  %add59 = add i32 %bytes_received.0, %count
  %44 = ptrtoint ptr %bytes_received2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add59, ptr %bytes_received2, align 4
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 20
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp61 = icmp eq i32 %46, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp63 = icmp eq i32 %33, %35
  %or.cond = select i1 %cmp61, i1 %cmp63, i1 false
  br i1 %or.cond, label %if.then65, label %if.end58.if.end78_crit_edge

if.end58.if.end78_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %pcm_count66 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 7
  %47 = ptrtoint ptr %pcm_count66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcm_count66, align 4
  %bytes_sent68 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 10
  %49 = ptrtoint ptr %bytes_sent68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes_sent68, align 4
  %sub69 = sub i32 %add59, %50
  %51 = tail call i32 @llvm.umin.i32(i32 %sub69, i32 %48)
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %52 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %audio_client, align 4
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 18
  %54 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %stream_id, align 4
  %call75 = tail call i32 @q6asm_write_async(ptr noundef %53, i32 noundef %55, i32 noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %56 = ptrtoint ptr %bytes_sent68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bytes_sent68, align 4
  %add77 = add i32 %57, %51
  store i32 %add77, ptr %bytes_sent68, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then65, %if.end58.if.end78_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then11.i.i201, %if.then27.i.i181, %land.rhs16.i.i180.cleanup_crit_edge, %if.then11.i.i168, %if.then27.i.i148, %land.rhs16.i.i147.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end78 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i168 ], [ -14, %if.then27.i.i148 ], [ -14, %land.rhs16.i.i147.cleanup_crit_edge ], [ -14, %if.then11.i.i201 ], [ -14, %if.then27.i.i181 ], [ -14, %land.rhs16.i.i180.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @q6asm_dai_compr_mmap(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %stream, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %area = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area, align 4
  %addr = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %bytes = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes, align 4
  %call = tail call i32 @dma_mmap_attrs(ptr noundef %5, ptr noundef %vma, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 0) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @q6asm_dai_compr_get_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %stream, ptr nocapture noundef writeonly %caps) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 1
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %direction, align 4
  %min_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 2
  %1 = ptrtoint ptr %min_fragment_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8192, ptr %min_fragment_size, align 4
  %max_fragment_size = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 3
  %2 = ptrtoint ptr %max_fragment_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131072, ptr %max_fragment_size, align 4
  %min_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 4
  %3 = ptrtoint ptr %min_fragments to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %min_fragments, align 4
  %max_fragments = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 5
  %4 = ptrtoint ptr %max_fragments to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %max_fragments, align 4
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %caps, align 4
  %codecs = getelementptr inbounds %struct.snd_compr_caps, ptr %caps, i32 0, i32 6
  %6 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %codecs, align 4
  %arrayidx2 = getelementptr %struct.snd_compr_caps, ptr %caps, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.snd_compr_caps, ptr %caps, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.snd_compr_caps, ptr %caps, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 15, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.snd_compr_caps, ptr %caps, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %arrayidx8, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @q6asm_dai_compr_get_codec_caps(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %stream, ptr nocapture noundef %codec) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %codec, ptr @q6asm_compr_caps, i32 11144)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @compress_event_handler(i32 noundef %opcode, i32 noundef %token, ptr nocapture noundef readnone %payload, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cstream = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cstream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cstream, align 4
  %2 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %opcode, label %entry.sw.epilog_crit_edge [
    i32 4104, label %do.body1
    i32 4099, label %do.body14
    i32 4105, label %do.body45
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %bytes_sent = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %do.body1.if.end_crit_edge

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %5 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %audio_client, align 4
  %stream_id = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id, align 4
  %initial_samples_drop = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %initial_samples_drop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %initial_samples_drop, align 4
  %call5 = tail call i32 @q6asm_stream_remove_initial_silence(ptr noundef %6, i32 noundef %8, i32 noundef %10) #12
  %11 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio_client, align 4
  %13 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream_id, align 4
  %pcm_count = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcm_count, align 4
  %call8 = tail call i32 @q6asm_write_async(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %17 = ptrtoint ptr %pcm_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm_count, align 4
  %19 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes_sent, align 4
  %add = add i32 %20, %18
  store i32 %add, ptr %bytes_sent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  %lock20 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 4
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock20) #12
  %notify_on_drain = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 23
  %21 = ptrtoint ptr %notify_on_drain to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %notify_on_drain, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %do.body14
  %partial_drain = getelementptr inbounds %struct.snd_compr_stream, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %partial_drain to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %partial_drain, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %if.then28.if.end38_crit_edge, label %if.then30

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client31 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %25 = ptrtoint ptr %audio_client31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %audio_client31, align 4
  %stream_id32 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %27 = ptrtoint ptr %stream_id32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream_id32, align 4
  %call33 = tail call i32 @q6asm_cmd_nowait(ptr noundef %26, i32 noundef %28, i32 noundef 4) #12
  %29 = ptrtoint ptr %stream_id32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream_id32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp35 = icmp eq i32 %30, 1
  %cond = select i1 %cmp35, i32 2, i32 1
  %31 = ptrtoint ptr %stream_id32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %stream_id32, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.then28.if.end38_crit_edge
  %32 = ptrtoint ptr %cstream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cstream, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !253

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.98, i32 noundef 198, i32 noundef 9, ptr noundef null) #12
  br label %snd_compr_drain_notify.exit

if.end23.critedge.i:                              ; preds = %if.end38
  %partial_drain.i = getelementptr inbounds %struct.snd_compr_stream, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %partial_drain.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %partial_drain.i, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not.i = icmp eq i8 %35, 0
  %runtime27.i = getelementptr inbounds %struct.snd_compr_stream, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %runtime27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime27.i, align 4
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %37, align 8
  %39 = ptrtoint ptr %partial_drain.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %partial_drain.i, align 2
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %37, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then25.i
  %41 = ptrtoint ptr %runtime27.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime27.i, align 4
  %sleep.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %42, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %snd_compr_drain_notify.exit

snd_compr_drain_notify.exit:                      ; preds = %if.end29.i, %do.end.i
  %43 = ptrtoint ptr %notify_on_drain to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %notify_on_drain, align 4
  br label %if.end41

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 20
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %state, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %snd_compr_drain_notify.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock20, i32 noundef %call22) #12
  br label %sw.epilog

do.body45:                                        ; preds = %entry
  %lock51 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 4
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock51) #12
  %shr = lshr i32 %token, 16
  %copied_total = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 12
  %45 = ptrtoint ptr %copied_total to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %copied_total, align 4
  %add58 = add i32 %46, %shr
  store i32 %add58, ptr %copied_total, align 4
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %runtime.i, align 4
  %sleep.i167 = getelementptr inbounds %struct.snd_compr_runtime, ptr %48, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i167, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %state59 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 20
  %49 = ptrtoint ptr %state59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp60.not = icmp eq i32 %50, 2
  br i1 %cmp60.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock51, i32 noundef %call53) #12
  br label %sw.epilog

if.end64:                                         ; preds = %do.body45
  %bytes_received = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 11
  %51 = ptrtoint ptr %bytes_received to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_received, align 4
  %bytes_sent65 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 10
  %53 = ptrtoint ptr %bytes_sent65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes_sent65, align 4
  %sub = sub i32 %52, %54
  %pcm_count67 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 7
  %55 = ptrtoint ptr %pcm_count67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pcm_count67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %56)
  %cmp69 = icmp ugt i32 %sub, %56
  br i1 %cmp69, label %if.end64.if.end83_crit_edge, label %if.else73

if.end64.if.end83_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.else73:                                        ; preds = %if.end64
  %partial_drain74 = getelementptr inbounds %struct.snd_compr_stream, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %partial_drain74 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %partial_drain74, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool75.not = icmp eq i8 %58, 0
  br i1 %tobool75.not, label %lor.lhs.false, label %if.else73.if.then80_crit_edge

if.else73.if.then80_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

lor.lhs.false:                                    ; preds = %if.else73
  %notify_on_drain77 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 23
  %59 = ptrtoint ptr %notify_on_drain77 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %notify_on_drain77, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool78.not = icmp eq i8 %60, 0
  br i1 %tobool78.not, label %lor.lhs.false.if.end83_crit_edge, label %lor.lhs.false.if.then80_crit_edge

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then80:                                        ; preds = %lor.lhs.false.if.then80_crit_edge, %if.else73.if.then80_crit_edge
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %lor.lhs.false.if.end83_crit_edge, %if.end64.if.end83_crit_edge
  %bytes_to_write.0 = phi i32 [ %56, %if.end64.if.end83_crit_edge ], [ %sub, %if.then80 ], [ %sub, %lor.lhs.false.if.end83_crit_edge ]
  %is_last_buffer.1.off0 = phi i1 [ true, %if.end64.if.end83_crit_edge ], [ false, %if.then80 ], [ true, %lor.lhs.false.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_to_write.0)
  %tobool84.not = icmp eq i32 %bytes_to_write.0, 0
  br i1 %tobool84.not, label %if.end83.if.end101_crit_edge, label %if.then85

if.end83.if.end101_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then85:                                        ; preds = %if.end83
  %partial_drain86 = getelementptr inbounds %struct.snd_compr_stream, ptr %1, i32 0, i32 8
  %61 = ptrtoint ptr %partial_drain86 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %partial_drain86, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool87.not = icmp eq i8 %62, 0
  %brmerge = or i1 %is_last_buffer.1.off0, %tobool87.not
  br i1 %brmerge, label %if.then85.if.end95_crit_edge, label %if.then91

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then91:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client92 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %63 = ptrtoint ptr %audio_client92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %audio_client92, align 4
  %stream_id93 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %65 = ptrtoint ptr %stream_id93 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stream_id93, align 4
  %trailing_samples_drop = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 22
  %67 = ptrtoint ptr %trailing_samples_drop to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %trailing_samples_drop, align 4
  %call94 = tail call i32 @q6asm_stream_remove_trailing_silence(ptr noundef %64, i32 noundef %66, i32 noundef %68) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.then85.if.end95_crit_edge
  %wflags.0 = phi i32 [ 1073741824, %if.then91 ], [ 0, %if.then85.if.end95_crit_edge ]
  %audio_client96 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %69 = ptrtoint ptr %audio_client96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %audio_client96, align 4
  %stream_id97 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %71 = ptrtoint ptr %stream_id97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stream_id97, align 4
  %call98 = tail call i32 @q6asm_write_async(ptr noundef %70, i32 noundef %72, i32 noundef %bytes_to_write.0, i32 noundef 0, i32 noundef 0, i32 noundef %wflags.0) #12
  %73 = ptrtoint ptr %bytes_sent65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bytes_sent65, align 4
  %add100 = add i32 %74, %bytes_to_write.0
  store i32 %add100, ptr %bytes_sent65, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end95, %if.end83.if.end101_crit_edge
  %notify_on_drain102 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 23
  %75 = ptrtoint ptr %notify_on_drain102 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %notify_on_drain102, align 4, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool103.not = icmp eq i8 %76, 0
  %brmerge166 = or i1 %is_last_buffer.1.off0, %tobool103.not
  br i1 %brmerge166, label %if.end101.if.end112_crit_edge, label %if.then108

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %audio_client109 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 15
  %77 = ptrtoint ptr %audio_client109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %audio_client109, align 4
  %stream_id110 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %priv, i32 0, i32 18
  %79 = ptrtoint ptr %stream_id110 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stream_id110, align 4
  %call111 = tail call i32 @q6asm_cmd_nowait(ptr noundef %78, i32 noundef %80, i32 noundef 3) #12
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end101.if.end112_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock51, i32 noundef %call53) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end112, %if.then62, %if.end41, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_remove_initial_silence(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_remove_trailing_silence(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__q6asm_dai_compr_set_codec_params(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %stream, ptr nocapture noundef readonly %codec, i32 noundef %stream_id) unnamed_addr #2 align 64 {
entry:
  %flac_cfg = alloca %struct.q6asm_flac_cfg, align 4
  %wma_cfg = alloca %struct.q6asm_wma_cfg, align 4
  %alac_cfg = alloca %struct.q6asm_alac_cfg, align 4
  %ape_cfg = alloca %struct.q6asm_ape_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %flac_cfg) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wma_cfg) #12
  %4 = call ptr @memset(ptr %wma_cfg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %alac_cfg) #12
  %5 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ape_cfg) #12
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %codec3 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2
  %options = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11
  %8 = call ptr @memcpy(ptr %codec3, ptr %codec, i32 120)
  %9 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 7, label %sw.bb14
    i32 15, label %sw.bb59
    i32 16, label %sw.bb90
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %12 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 8
  %13 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 7
  %14 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 6
  %15 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 5
  %16 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 4
  %17 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 3
  %18 = getelementptr inbounds %struct.q6asm_flac_cfg, ptr %flac_cfg, i32 0, i32 2
  %19 = getelementptr inbounds i8, ptr %flac_cfg, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 24)
  %ch_in = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 1
  %21 = ptrtoint ptr %ch_in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch_in, align 4
  %conv = trunc i32 %22 to i16
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %13, align 2
  %sample_rate = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 3
  %24 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sample_rate, align 4
  %26 = ptrtoint ptr %flac_cfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flac_cfg, align 4
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %16, align 4
  %28 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %options, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %12, align 4
  %min_blk_size = getelementptr inbounds %struct.snd_dec_flac, ptr %options, i32 0, i32 1
  %31 = ptrtoint ptr %min_blk_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %min_blk_size, align 2
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %15, align 2
  %max_blk_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1
  %34 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_blk_size, align 4
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %14, align 4
  %max_frame_size = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_frame_size, align 4
  %conv9 = zext i16 %38 to i32
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv9, ptr %17, align 4
  %min_frame_size = getelementptr inbounds %struct.snd_dec_flac, ptr %options, i32 0, i32 3
  %40 = ptrtoint ptr %min_frame_size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %min_frame_size, align 2
  %conv11 = zext i16 %41 to i32
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv11, ptr %18, align 4
  %audio_client = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %43 = ptrtoint ptr %audio_client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %audio_client, align 4
  %call = call i32 @q6asm_stream_media_format_block_flac(ptr noundef %44, i32 noundef %stream_id, ptr noundef nonnull %flac_cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.113, i32 noundef %call) #15
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %45 = call ptr @memset(ptr %wma_cfg, i32 0, i32 28)
  %sample_rate15 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 3
  %46 = ptrtoint ptr %sample_rate15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sample_rate15, align 4
  %sample_rate16 = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 2
  %48 = ptrtoint ptr %sample_rate16 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sample_rate16, align 4
  %ch_in17 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 1
  %49 = ptrtoint ptr %ch_in17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ch_in17, align 4
  %num_channels = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 1
  %51 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %num_channels, align 4
  %bit_rate = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 4
  %52 = ptrtoint ptr %bit_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bit_rate, align 4
  %div190 = lshr i32 %53, 3
  %bytes_per_sec = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 3
  %54 = ptrtoint ptr %bytes_per_sec to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div190, ptr %bytes_per_sec, align 4
  %align = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 10
  %55 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %align, align 4
  %block_align = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 4
  %57 = ptrtoint ptr %block_align to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %block_align, align 4
  %bits_per_sample = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %58 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bits_per_sample, align 4
  %conv18 = zext i16 %59 to i32
  %bits_per_sample19 = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 5
  %60 = ptrtoint ptr %bits_per_sample19 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv18, ptr %bits_per_sample19, align 4
  %61 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %options, align 4
  %enc_options = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 7
  %63 = ptrtoint ptr %enc_options to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %enc_options, align 4
  %adv_encoder_option = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1
  %64 = ptrtoint ptr %adv_encoder_option to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %adv_encoder_option, align 4
  %adv_enc_options = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 8
  %66 = ptrtoint ptr %adv_enc_options to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %adv_enc_options, align 4
  %adv_encoder_option2 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %adv_encoder_option2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %adv_encoder_option2, align 4
  %adv_enc_options2 = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 9
  %69 = ptrtoint ptr %adv_enc_options2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %adv_enc_options2, align 4
  %70 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %50, label %sw.bb14.cleanup_crit_edge [
    i32 1, label %sw.bb14.if.end31_crit_edge
    i32 2, label %if.then27
  ]

sw.bb14.if.end31_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %sw.bb14.if.end31_crit_edge
  %.sink = phi i32 [ 3, %if.then27 ], [ 4, %sw.bb14.if.end31_crit_edge ]
  %channel_mask28 = getelementptr inbounds %struct.q6asm_wma_cfg, ptr %wma_cfg, i32 0, i32 6
  %71 = ptrtoint ptr %channel_mask28 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink, ptr %channel_mask28, align 4
  %profile = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 6
  %72 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %profile, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %73, label %do.end43 [
    i32 4, label %sw.bb32
    i32 8, label %sw.bb33
    i32 16, label %sw.bb35
    i32 32, label %sw.bb37
    i32 64, label %sw.bb39
  ]

sw.bb32:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %wma_cfg to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 353, ptr %wma_cfg, align 4
  %audio_client46 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %76 = ptrtoint ptr %audio_client46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %audio_client46, align 4
  %call47 = call i32 @q6asm_stream_media_format_block_wma_v9(ptr noundef %77, i32 noundef %stream_id, ptr noundef nonnull %wma_cfg) #12
  br label %if.end51

sw.bb33:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %wma_cfg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 358, ptr %wma_cfg, align 4
  br label %if.else48

sw.bb35:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %wma_cfg to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 354, ptr %wma_cfg, align 4
  br label %if.else48

sw.bb37:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %wma_cfg to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 355, ptr %wma_cfg, align 4
  br label %if.else48

sw.bb39:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %wma_cfg to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 359, ptr %wma_cfg, align 4
  br label %if.else48

do.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.116, i32 noundef %73) #15
  br label %cleanup

if.else48:                                        ; preds = %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33
  %audio_client49 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %82 = ptrtoint ptr %audio_client49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %audio_client49, align 4
  %call50 = call i32 @q6asm_stream_media_format_block_wma_v10(ptr noundef %83, i32 noundef %stream_id, ptr noundef nonnull %wma_cfg) #12
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %sw.bb32
  %ret.0 = phi i32 [ %call47, %sw.bb32 ], [ %call50, %if.else48 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp52 = icmp slt i32 %ret.0, 0
  br i1 %cmp52, label %do.end57, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.119, i32 noundef %ret.0) #15
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  %84 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 10
  %85 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 9
  %86 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 8
  %87 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 7
  %88 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 6
  %89 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 5
  %90 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 4
  %91 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 3
  %92 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 2
  %93 = getelementptr inbounds %struct.q6asm_alac_cfg, ptr %alac_cfg, i32 0, i32 1
  %94 = getelementptr inbounds i8, ptr %alac_cfg, i32 24
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %94, align 4
  %sample_rate60 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 3
  %96 = ptrtoint ptr %sample_rate60 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sample_rate60, align 4
  %98 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %84, align 4
  %bit_rate62 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 4
  %99 = ptrtoint ptr %bit_rate62 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bit_rate62, align 4
  %101 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %85, align 4
  %bits_per_sample63 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %102 = ptrtoint ptr %bits_per_sample63 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %bits_per_sample63, align 4
  %conv64 = trunc i16 %103 to i8
  %104 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv64, ptr %92, align 1
  %ch_in65 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 1
  %105 = ptrtoint ptr %ch_in65 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ch_in65, align 4
  %conv66 = trunc i32 %106 to i8
  %107 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv66, ptr %88, align 1
  %108 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %options, align 4
  %110 = ptrtoint ptr %alac_cfg to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %alac_cfg, align 4
  %pb = getelementptr inbounds %struct.snd_dec_alac, ptr %options, i32 0, i32 2
  %111 = ptrtoint ptr %pb to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pb, align 1
  %113 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %91, align 2
  %mb = getelementptr inbounds %struct.snd_dec_alac, ptr %options, i32 0, i32 3
  %114 = ptrtoint ptr %mb to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %mb, align 2
  %116 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %90, align 1
  %kb = getelementptr inbounds %struct.snd_dec_alac, ptr %options, i32 0, i32 4
  %117 = ptrtoint ptr %kb to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %kb, align 1
  %119 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %89, align 4
  %max_run = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %max_run to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_run, align 4
  %conv72 = trunc i32 %121 to i16
  %122 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv72, ptr %87, align 2
  %compatible_version = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1
  %123 = ptrtoint ptr %compatible_version to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %compatible_version, align 4
  %125 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %93, align 4
  %max_frame_bytes = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 2
  %126 = ptrtoint ptr %max_frame_bytes to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_frame_bytes, align 4
  %128 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %86, align 4
  %129 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %106, label %sw.bb59.sw.epilog80_crit_edge [
    i32 1, label %sw.bb59.sw.epilog80.sink.split_crit_edge
    i32 2, label %sw.bb78
  ]

sw.bb59.sw.epilog80.sink.split_crit_edge:         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog80.sink.split

sw.bb59.sw.epilog80_crit_edge:                    ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog80

sw.bb78:                                          ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog80.sink.split

sw.epilog80.sink.split:                           ; preds = %sw.bb78, %sw.bb59.sw.epilog80.sink.split_crit_edge
  %.sink194 = phi i32 [ 6619138, %sw.bb78 ], [ 6619137, %sw.bb59.sw.epilog80.sink.split_crit_edge ]
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink194, ptr %5, align 4
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %sw.epilog80.sink.split, %sw.bb59.sw.epilog80_crit_edge
  %audio_client81 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %131 = ptrtoint ptr %audio_client81 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %audio_client81, align 4
  %call82 = call i32 @q6asm_stream_media_format_block_alac(ptr noundef %132, i32 noundef %stream_id, ptr noundef nonnull %alac_cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end88, label %sw.epilog80.cleanup_crit_edge

sw.epilog80.cleanup_crit_edge:                    ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end88:                                         ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.122, i32 noundef %call82) #15
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  %133 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 9
  %134 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 8
  %135 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 7
  %136 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 6
  %137 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 5
  %138 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 4
  %139 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 3
  %140 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 2
  %141 = getelementptr inbounds %struct.q6asm_ape_cfg, ptr %ape_cfg, i32 0, i32 1
  %sample_rate91 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 3
  %142 = ptrtoint ptr %sample_rate91 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sample_rate91, align 4
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %134, align 4
  %ch_in93 = getelementptr inbounds %struct.snd_codec, ptr %codec, i32 0, i32 1
  %145 = ptrtoint ptr %ch_in93 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ch_in93, align 4
  %conv94 = trunc i32 %146 to i16
  %147 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv94, ptr %135, align 2
  %bits_per_sample96 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 13
  %148 = ptrtoint ptr %bits_per_sample96 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %bits_per_sample96, align 4
  %150 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %136, align 4
  %151 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %options, align 4
  %153 = ptrtoint ptr %ape_cfg to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %ape_cfg, align 4
  %compression_level = getelementptr inbounds %struct.snd_dec_ape, ptr %options, i32 0, i32 1
  %154 = ptrtoint ptr %compression_level to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %compression_level, align 2
  %156 = ptrtoint ptr %141 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %141, align 2
  %format_flags = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1
  %157 = ptrtoint ptr %format_flags to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %format_flags, align 4
  %159 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %140, align 4
  %blocks_per_frame = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %blocks_per_frame to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %blocks_per_frame, align 4
  %162 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %139, align 4
  %final_frame_blocks = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 2
  %163 = ptrtoint ptr %final_frame_blocks to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %final_frame_blocks, align 4
  %165 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %138, align 4
  %total_frames = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 3
  %166 = ptrtoint ptr %total_frames to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %total_frames, align 4
  %168 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %137, align 4
  %seek_table_present = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 2, i32 11, i32 0, i32 1, i32 4
  %169 = ptrtoint ptr %seek_table_present to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %seek_table_present, align 4
  %171 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %133, align 4
  %audio_client106 = getelementptr inbounds %struct.q6asm_dai_rtd, ptr %3, i32 0, i32 15
  %172 = ptrtoint ptr %audio_client106 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %audio_client106, align 4
  %call107 = call i32 @q6asm_stream_media_format_block_ape(ptr noundef %173, i32 noundef %stream_id, ptr noundef nonnull %ape_cfg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end113, label %sw.bb90.cleanup_crit_edge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end113:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.125, i32 noundef %call107) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %sw.bb90.cleanup_crit_edge, %do.end88, %sw.epilog80.cleanup_crit_edge, %do.end57, %if.end51.cleanup_crit_edge, %do.end43, %sw.bb14.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end113 ], [ -5, %do.end88 ], [ -5, %do.end43 ], [ -5, %do.end57 ], [ -5, %do.end ], [ -22, %sw.bb14.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb90.cleanup_crit_edge ], [ 0, %sw.epilog80.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ape_cfg) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %alac_cfg) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wma_cfg) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %flac_cfg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_media_format_block_flac(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_media_format_block_wma_v9(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_media_format_block_wma_v10(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_media_format_block_alac(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6asm_stream_media_format_block_ape(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !236, !238, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__initcall__kmod_q6asm_dai__240_1323_q6asm_dai_platform_driver_init6, !1, !"__initcall__kmod_q6asm_dai__240_1323_q6asm_dai_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1323, i32 1}
!2 = !{ptr @__exitcall_q6asm_dai_platform_driver_exit, !1, !"__exitcall_q6asm_dai_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1325, i32 1}
!5 = !{ptr @__UNIQUE_ID_file242, !6, !"__UNIQUE_ID_file242", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1326, i32 1}
!7 = !{ptr @__UNIQUE_ID_license243, !6, !"__UNIQUE_ID_license243", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1318, i32 11}
!10 = !{ptr @q6asm_dai_platform_driver, !11, !"q6asm_dai_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1316, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1292, i32 46}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1243, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @of_q6asm_parse_dai_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @of_q6asm_parse_dai_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1255, i32 36}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1257, i32 4}
!26 = !{ptr @of_q6asm_parse_dai_data._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @of_q6asm_parse_dai_data._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1264, i32 36}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1273, i32 35}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1222, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1223, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1224, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1225, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1226, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1227, i32 2}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1228, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1229, i32 2}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @q6asm_fe_dais_template, !65, !"q6asm_fe_dais_template", i1 false, i1 false}
!65 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1221, i32 34}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1208, i32 11}
!68 = !{ptr @q6asm_fe_dai_component, !69, !"q6asm_fe_dai_component", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1207, i32 46}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1189, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1190, i32 2}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1191, i32 2}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1192, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1193, i32 2}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1194, i32 2}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1195, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1196, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1197, i32 2}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1198, i32 2}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1199, i32 2}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1200, i32 2}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1201, i32 2}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1202, i32 2}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1203, i32 2}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1204, i32 2}
!102 = !{ptr @q6asm_dapm_widgets, !103, !"q6asm_dapm_widgets", i1 false, i1 false}
!103 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1188, i32 41}
!104 = !{ptr @q6asm_dai_hardware_playback, !105, !"q6asm_dai_hardware_playback", i1 false, i1 false}
!105 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 105, i32 32}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 365, i32 3}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @q6asm_dai_open._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @q6asm_dai_open._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 378, i32 3}
!113 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @q6asm_dai_open._entry.57, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @q6asm_dai_open._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 396, i32 3}
!118 = !{ptr @q6asm_dai_open._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @q6asm_dai_open._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 401, i32 3}
!122 = !{ptr @q6asm_dai_open._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @q6asm_dai_open._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 409, i32 4}
!126 = !{ptr @q6asm_dai_open._entry.67, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @q6asm_dai_open._entry_ptr.69, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 417, i32 3}
!130 = !{ptr @q6asm_dai_open._entry.70, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @q6asm_dai_open._entry_ptr.72, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 423, i32 3}
!134 = !{ptr @q6asm_dai_open._entry.73, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @q6asm_dai_open._entry_ptr.75, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @q6asm_dai_hardware_capture, !137, !"q6asm_dai_hardware_capture", i1 false, i1 false}
!137 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 83, i32 38}
!138 = !{ptr @constraints_sample_rates, !139, !"constraints_sample_rates", i1 false, i1 false}
!139 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 160, i32 42}
!140 = !{ptr @supported_sample_rates, !141, !"supported_sample_rates", i1 false, i1 false}
!141 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 155, i32 21}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 232, i32 3}
!144 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @q6asm_dai_prepare._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @q6asm_dai_prepare._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 255, i32 3}
!149 = !{ptr @q6asm_dai_prepare._entry.78, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @q6asm_dai_prepare._entry_ptr.80, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 271, i32 3}
!153 = !{ptr @q6asm_dai_prepare._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @q6asm_dai_prepare._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 279, i32 3}
!157 = !{ptr @q6asm_dai_prepare._entry.84, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @q6asm_dai_prepare._entry_ptr.86, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 301, i32 3}
!161 = !{ptr @q6asm_dai_prepare._entry.87, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @q6asm_dai_prepare._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @q6asm_dai_compress_ops, !164, !"q6asm_dai_compress_ops", i1 false, i1 false}
!164 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1165, i32 38}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 615, i32 3}
!167 = !{ptr @q6asm_dai_compr_open._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @q6asm_dai_compr_open._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 631, i32 3}
!171 = !{ptr @q6asm_dai_compr_open._entry.91, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @q6asm_dai_compr_open._entry_ptr.93, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 641, i32 3}
!175 = !{ptr @q6asm_dai_compr_open._entry.94, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @q6asm_dai_compr_open._entry_ptr.96, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @q6asm_dai_compr_open.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 651, i32 2}
!179 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/sound/compress_driver.h", i32 198, i32 6}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 889, i32 3}
!184 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @q6asm_dai_compr_set_params._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @q6asm_dai_compr_set_params._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 904, i32 4}
!189 = !{ptr @q6asm_dai_compr_set_params._entry.101, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @q6asm_dai_compr_set_params._entry_ptr.103, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 915, i32 3}
!193 = !{ptr @q6asm_dai_compr_set_params._entry.104, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @q6asm_dai_compr_set_params._entry_ptr.106, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 923, i32 3}
!197 = !{ptr @q6asm_dai_compr_set_params._entry.107, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @q6asm_dai_compr_set_params._entry_ptr.109, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 932, i32 3}
!201 = !{ptr @q6asm_dai_compr_set_params._entry.110, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @q6asm_dai_compr_set_params._entry_ptr.112, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 737, i32 4}
!205 = !{ptr @.str.114, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @__q6asm_dai_compr_set_codec_params._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @__q6asm_dai_compr_set_codec_params._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.116, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 787, i32 4}
!210 = !{ptr @__q6asm_dai_compr_set_codec_params._entry.115, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.117, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.119, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 801, i32 4}
!214 = !{ptr @__q6asm_dai_compr_set_codec_params._entry.118, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.120, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 835, i32 4}
!218 = !{ptr @__q6asm_dai_compr_set_codec_params._entry.121, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.123, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 860, i32 4}
!222 = !{ptr @__q6asm_dai_compr_set_codec_params._entry.124, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @__q6asm_dai_compr_set_codec_params._entry_ptr.126, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 963, i32 5}
!226 = !{ptr @q6asm_dai_compr_set_metadata._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @q6asm_dai_compr_set_metadata._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @q6asm_dai_compr_set_metadata._entry.128, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 970, i32 5}
!230 = !{ptr @q6asm_dai_compr_set_metadata._entry_ptr.129, !229, !"_entry_ptr", i1 false, i1 false}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!233 = !{ptr @.str.130, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.131, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!238 = !{ptr @q6asm_compr_caps, !239, !"q6asm_compr_caps", i1 false, i1 false}
!239 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 166, i32 42}
!240 = !{ptr @q6asm_dai_device_id, !241, !"q6asm_dai_device_id", i1 false, i1 false}
!241 = !{!"../sound/soc/qcom/qdsp6/q6asm-dai.c", i32 1309, i32 34}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"auto-init"}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{i32 0, i32 33}
!255 = !{i8 0, i8 2}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2153789492, i64 2153789517}
!258 = !{i64 6285047}
!259 = !{i64 6285244}
!260 = !{i64 2153770477}
