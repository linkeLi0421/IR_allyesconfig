; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-pcm.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }
%struct.sof_ipc_stream_params = type { %struct.sof_ipc_hdr, %struct.sof_ipc_host_buffer, i32, i32, i32, i32, i16, i16, i16, i16, i32, i16, [3 x i16], [8 x i16] }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.hdac_ext_stream = type { %struct.hdac_stream, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_sof_pcm = type { ptr, %struct.snd_soc_tplg_pcm, [2 x %struct.snd_sof_pcm_stream], %struct.list_head, [2 x %struct.snd_pcm_hw_params], [2 x i8] }
%struct.snd_soc_tplg_pcm = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_stream = type { i32, [44 x i8], i64, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.snd_sof_pcm_stream = type { i32, %struct.snd_dma_buffer, %struct.sof_ipc_stream_posn, ptr, ptr, %struct.work_struct, ptr, i8, i8 }
%struct.sof_ipc_stream_posn = type <{ %struct.sof_ipc_reply, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }>
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__param_str_always_enable_dmi_l1 = internal constant [46 x i8] c"snd_sof_intel_hda_common.always_enable_dmi_l1\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@hda_always_enable_dmi_l1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_always_enable_dmi_l1 = internal constant %struct.kernel_param { ptr @__param_str_always_enable_dmi_l1, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @hda_always_enable_dmi_l1 } }, section "__param", align 4
@__UNIQUE_ID_always_enable_dmi_l1type247 = internal constant [60 x i8] c"snd_sof_intel_hda_common.parmtype=always_enable_dmi_l1:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_always_enable_dmi_l1248 = internal constant [80 x i8] c"snd_sof_intel_hda_common.parm=always_enable_dmi_l1:SOF HDA always enable DMI l1\00", section ".modinfo", align 1
@__param_str_disable_rewinds = internal constant [41 x i8] c"snd_sof_intel_hda_common.disable_rewinds\00", align 1
@hda_disable_rewinds = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_rewinds = internal constant %struct.kernel_param { ptr @__param_str_disable_rewinds, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @hda_disable_rewinds } }, section "__param", align 4
@__UNIQUE_ID_disable_rewindstype249 = internal constant [55 x i8] c"snd_sof_intel_hda_common.parmtype=disable_rewinds:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_rewinds250 = internal constant [70 x i8] c"snd_sof_intel_hda_common.parm=disable_rewinds:SOF HDA disable rewinds\00", section ".modinfo", align 1
@hda_dsp_get_mult_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't find div rate %d using 48kHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_dsp_get_mult_div\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sof/intel/hda-pcm.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_get_mult_div._entry_ptr = internal global ptr @hda_dsp_get_mult_div._entry, section ".printk_index", align 4
@hda_dsp_get_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't find %d bits using 16bit\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_dsp_get_bits\00", [47 x i8] zeroinitializer }, align 32
@hda_dsp_get_bits._entry_ptr = internal global ptr @hda_dsp_get_bits._entry, section ".printk_index", align 4
@hda_dsp_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 123, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: hdac prepare failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hda_dsp_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hda_dsp_pcm_hw_params._entry_ptr = internal global ptr @hda_dsp_pcm_hw_params._entry, section ".printk_index", align 4
@hda_dsp_pcm_pointer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hda_dsp_pcm_pointer = private unnamed_addr constant [20 x i8] c"hda_dsp_pcm_pointer\00", align 1
@hda_dsp_pcm_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.hda_dsp_pcm_pointer, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"warn: can't find PCM with DAI ID %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hda_dsp_pcm_pointer._entry_ptr = internal global ptr @hda_dsp_pcm_pointer._entry, section ".printk_index", align 4
@sof_hda_position_quirk = external dso_local local_unnamed_addr global i32, align 4
@hda_dsp_pcm_pointer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@hda_dsp_pcm_pointer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.hda_dsp_pcm_pointer, ptr @.str.2, i32 270, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hda_position_quirk value %d not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@hda_dsp_pcm_pointer._entry_ptr.14 = internal global ptr @hda_dsp_pcm_pointer._entry.12, section ".printk_index", align 4
@hda_dsp_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 299, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: can't find PCM with DAI ID %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_dsp_pcm_open\00", [47 x i8] zeroinitializer }, align 32
@hda_dsp_pcm_open._entry_ptr = internal global ptr @hda_dsp_pcm_open._entry, section ".printk_index", align 4
@hda_dsp_pcm_open._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 323, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: no stream available\0A\00", [36 x i8] zeroinitializer }, align 32
@hda_dsp_pcm_open._entry_ptr.19 = internal global ptr @hda_dsp_pcm_open._entry.17, section ".printk_index", align 4
@hda_dsp_pcm_close.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hda_dsp_pcm_close\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stream %s not opened!\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 319, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@switch.table.hda_dsp_get_bits = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 16, i32 32, i32 48, i32 0, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.hda_dsp_pcm_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 16, i32 32, i32 48, i32 0, i32 64], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 9600, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.26 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 9600, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"hda_always_enable_dmi_l1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 31, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"hda_disable_rewinds\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 35, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 67, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 123, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 194, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 269, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 299, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 323, i32 3 }
@___asan_gen_.113 = private constant [33 x i8] c"../sound/soc/sof/intel/hda-pcm.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 349, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 319, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [30 x i8] c"switch.table.hda_dsp_get_bits\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [35 x i8] c"switch.table.hda_dsp_pcm_hw_params\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_always_enable_dmi_l1248, ptr @__UNIQUE_ID_always_enable_dmi_l1type247, ptr @__UNIQUE_ID_disable_rewinds250, ptr @__UNIQUE_ID_disable_rewindstype249, ptr @__param_always_enable_dmi_l1, ptr @__param_disable_rewinds, ptr @hda_dsp_get_bits._entry, ptr @hda_dsp_get_bits._entry_ptr, ptr @hda_dsp_get_mult_div._entry, ptr @hda_dsp_get_mult_div._entry_ptr, ptr @hda_dsp_pcm_hw_params._entry, ptr @hda_dsp_pcm_hw_params._entry_ptr, ptr @hda_dsp_pcm_open._entry, ptr @hda_dsp_pcm_open._entry.17, ptr @hda_dsp_pcm_open._entry_ptr, ptr @hda_dsp_pcm_open._entry_ptr.19, ptr @hda_dsp_pcm_pointer._entry, ptr @hda_dsp_pcm_pointer._entry.12, ptr @hda_dsp_pcm_pointer._entry_ptr, ptr @hda_dsp_pcm_pointer._entry_ptr.14, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @hda_always_enable_dmi_l1, ptr @hda_disable_rewinds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hda_dsp_pcm_pointer._rs, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.hda_dsp_get_bits, ptr @switch.table.hda_dsp_pcm_hw_params], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_always_enable_dmi_l1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_disable_rewinds to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_get_mult_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_get_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_pointer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_pointer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_pcm_open._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hda_dsp_get_bits to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hda_dsp_pcm_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_get_mult_div(ptr nocapture noundef readonly %sdev, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %do.end [
    i32 8000, label %entry.return_crit_edge
    i32 9600, label %sw.bb1
    i32 11025, label %sw.bb2
    i32 16000, label %sw.bb3
    i32 22050, label %sw.bb4
    i32 32000, label %sw.bb5
    i32 44100, label %sw.bb6
    i32 48000, label %sw.bb7
    i32 88200, label %sw.bb8
    i32 96000, label %sw.bb9
    i32 176400, label %sw.bb10
    i32 192000, label %sw.bb11
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %rate) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 6144, %sw.bb11 ], [ 22528, %sw.bb10 ], [ 2048, %sw.bb9 ], [ 18432, %sw.bb8 ], [ 0, %sw.bb7 ], [ 16384, %sw.bb6 ], [ 2560, %sw.bb5 ], [ 16640, %sw.bb4 ], [ 512, %sw.bb3 ], [ 17152, %sw.bb2 ], [ 1024, %sw.bb1 ], [ 1280, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_get_bits(ptr nocapture noundef readonly %sdev, i32 noundef %sample_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %sample_bits, -8
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ult i32 %1, 7
  br i1 %2, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %sample_bits) #7
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %1 to i8
  %switch.shifted = lshr i8 93, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.hda_dsp_get_bits, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ 16, %do.end ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_hw_params(ptr noundef %sdev, ptr noundef %substream, ptr noundef %params, ptr nocapture noundef writeonly %ipc_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pdata, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i65 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i65, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %11, label %do.end.i [
    i32 8000, label %entry.hda_dsp_get_mult_div.exit_crit_edge
    i32 9600, label %sw.bb1.i
    i32 11025, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i
    i32 32000, label %sw.bb5.i
    i32 44100, label %sw.bb6.i
    i32 48000, label %sw.bb7.i
    i32 88200, label %sw.bb8.i
    i32 96000, label %sw.bb9.i
    i32 176400, label %sw.bb10.i
    i32 192000, label %sw.bb11.i
  ]

entry.hda_dsp_get_mult_div.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hda_dsp_get_mult_div.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %11) #7
  br label %hda_dsp_get_mult_div.exit

hda_dsp_get_mult_div.exit:                        ; preds = %do.end.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.hda_dsp_get_mult_div.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 6144, %sw.bb11.i ], [ 22528, %sw.bb10.i ], [ 2048, %sw.bb9.i ], [ 18432, %sw.bb8.i ], [ 0, %sw.bb7.i ], [ 16384, %sw.bb6.i ], [ 2560, %sw.bb5.i ], [ 16640, %sw.bb4.i ], [ 512, %sw.bb3.i ], [ 17152, %sw.bb2.i ], [ 1024, %sw.bb1.i ], [ 1280, %entry.hda_dsp_get_mult_div.exit_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %hda_dsp_get_mult_div.exit.if.then.i.i.i_crit_edge

hda_dsp_get_mult_div.exit.if.then.i.i.i_crit_edge: ; preds = %hda_dsp_get_mult_div.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %hda_dsp_get_mult_div.exit.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %hda_dsp_get_mult_div.exit.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %16, %hda_dsp_get_mult_div.exit.if.then.i.i.i_crit_edge ], [ %19, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #4, !range !76
  %add.i.i.i = or i32 %17, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %hda_dsp_get_mult_div.exit
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #4
  %20 = add i32 %call1.i, -8
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %22 = icmp ult i32 %21, 7
  br i1 %22, label %switch.hole_check, label %params_width.exit.do.end.i70_crit_edge

params_width.exit.do.end.i70_crit_edge:           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

do.end.i70:                                       ; preds = %switch.hole_check.do.end.i70_crit_edge, %params_width.exit.do.end.i70_crit_edge
  %23 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef %call1.i) #7
  br label %hda_dsp_get_bits.exit

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %21 to i8
  %switch.shifted = lshr i8 93, %switch.maskindex
  %25 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.lobit.not = icmp eq i8 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i70_crit_edge, label %switch.lookup

switch.hole_check.do.end.i70_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.hda_dsp_pcm_hw_params, i32 0, i32 %21
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hda_dsp_get_bits.exit

hda_dsp_get_bits.exit:                            ; preds = %switch.lookup, %do.end.i70
  %retval.0.i71 = phi i32 [ 16, %do.end.i70 ], [ %switch.load, %switch.lookup ]
  %substream5 = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 10
  %27 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %substream, ptr %substream5, align 4
  %28 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime, align 4
  %dma_buffer_p = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_buffer_p, align 8
  %or = or i32 %retval.0.i71, %retval.0.i
  %arrayidx.i.i72 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i72, align 4
  %sub = add i32 %33, -1
  %or8 = or i32 %or, %sub
  %format_val = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %format_val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or8, ptr %format_val, align 4
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %9, ptr %bufsize, align 4
  %arrayidx.i.i73 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i73, align 4
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %period_bytes, align 8
  %info = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 7
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %info, align 4
  %and = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %hda_dsp_get_bits.exit.land.end_crit_edge, label %land.rhs

hda_dsp_get_bits.exit.land.end_crit_edge:         ; preds = %hda_dsp_get_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %hda_dsp_get_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %params, align 4
  %43 = trunc i32 %42 to i8
  %44 = shl i8 %43, 2
  %45 = and i8 %44, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %hda_dsp_get_bits.exit.land.end_crit_edge
  %46 = phi i8 [ 0, %hda_dsp_get_bits.exit.land.end_crit_edge ], [ %45, %land.rhs ]
  %no_period_wakeup = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 16
  %47 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %no_period_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %46
  store i8 %bf.set, ptr %no_period_wakeup, align 8
  %call13 = tail call i32 @hda_dsp_stream_hw_params(ptr noundef %sdev, ptr noundef %3, ptr noundef %31, ptr noundef %params) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.7, i32 noundef %call13) #7
  br label %cleanup

if.end:                                           ; preds = %land.end
  %50 = load i8, ptr @hda_disable_rewinds, align 1, !range !77
  %51 = zext i8 %50 to i32
  %call17 = tail call i32 @hda_dsp_stream_spib_config(ptr noundef %sdev, ptr noundef %3, i32 noundef %51, i32 noundef 0) #4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %no_ipc_position = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %7, i32 0, i32 4
  %52 = ptrtoint ptr %no_ipc_position to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %no_ipc_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool20.not = icmp eq i32 %53, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then21

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  %abi_version = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31, i32 5, i32 8
  %54 = ptrtoint ptr %abi_version to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %abi_version, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50372608, i32 %55)
  %cmp22 = icmp ult i32 %55, 50372608
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %host_period_bytes = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 10
  %56 = ptrtoint ptr %host_period_bytes to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %host_period_bytes, align 1
  br label %if.end26

if.else24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %no_stream_position = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 11
  %57 = ptrtoint ptr %no_stream_position to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 1, ptr %no_stream_position, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 13
  %58 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %59 to i16
  %stream_tag27 = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 6
  %60 = ptrtoint ptr %stream_tag27 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %conv, ptr %stream_tag27, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ %call13, %do.end ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_spib_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_ack(ptr noundef %sdev, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 8
  %appl_ptr = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %appl_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl_ptr, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %9, %7
  %div1.i = lshr i32 %mul.i, 3
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  %mul.i11 = mul i32 %11, %9
  %div1.i12 = lshr i32 %mul.i11, 3
  %rem13 = urem i32 %div1.i, %div1.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13)
  %tobool.not = icmp eq i32 %rem13, 0
  %spec.select = select i1 %tobool.not, i32 %div1.i12, i32 %rem13
  %spib_addr = getelementptr inbounds %struct.hdac_ext_stream, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %spib_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spib_addr, align 8
  tail call void @sof_io_write(ptr noundef %sdev, ptr noundef %13, i32 noundef %spec.select) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_trigger(ptr noundef %sdev, ptr nocapture noundef readonly %substream, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @hda_dsp_stream_trigger(ptr noundef %sdev, ptr noundef %3, i32 noundef %cmd) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_trigger(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_pointer(ptr noundef %sdev, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %component = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 40
  %2 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1, align 8
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_pdata, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %15, i32 0, i32 35
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %pcm_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %17 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dai_id.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %20 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dai_link.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %19, %23
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool.not, label %snd_sof_find_spcm_dai.exit.do.body_crit_edge, label %if.end8

snd_sof_find_spcm_dai.exit.do.body_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %snd_sof_find_spcm_dai.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @hda_dsp_pcm_pointer._rs, ptr noundef nonnull @__func__.hda_dsp_pcm_pointer) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  %26 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dai_link.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef %29) #7
  br label %cleanup

if.end8:                                          ; preds = %snd_sof_find_spcm_dai.exit
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %land.lhs.true

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  %no_ipc_position = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %11, i32 0, i32 4
  %30 = ptrtoint ptr %no_ipc_position to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %no_ipc_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not = icmp eq i32 %31, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %stream12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %32 = ptrtoint ptr %stream12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream12, align 4
  %host_posn = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %33, i32 2, i32 5
  %34 = ptrtoint ptr %host_posn to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %host_posn, align 4
  %conv = trunc i64 %35 to i32
  br label %found

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sof_hda_position_quirk to i32))
  %36 = load i32, ptr @sof_hda_position_quirk, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %36, label %do.body34 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end13
  %stream14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %38 = ptrtoint ptr %stream14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %index = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 14
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index, align 1
  %conv17 = zext i8 %47 to i32
  %mul = shl nuw nsw i32 %conv17, 5
  %add = add nuw nsw i32 %mul, 4228
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %48 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 %add
  %call.i = tail call i32 %45(ptr noundef %sdev, ptr noundef %add.ptr.i) #4
  br label %sw.epilog

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 21, i32 noundef 2) #4
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata, align 4
  %desc.i78 = getelementptr inbounds %struct.snd_sof_pdata, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %desc.i78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i78, align 4
  %ops.i79 = getelementptr inbounds %struct.sof_dev_desc, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %ops.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i79, align 4
  %read.i80 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %read.i80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read.i80, align 4
  %tobool.not.i81 = icmp eq ptr %59, null
  br i1 %tobool.not.i81, label %do.end.i86, label %if.then.i85

if.then.i85:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %index19 = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 14
  %60 = ptrtoint ptr %index19 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %index19, align 1
  %conv20 = zext i8 %61 to i32
  %mul21 = shl nuw nsw i32 %conv20, 5
  %add22 = add nuw nsw i32 %mul21, 4228
  %bar5.i82 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %62 = ptrtoint ptr %bar5.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bar5.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %63, i32 %add22
  %call.i84 = tail call i32 %59(ptr noundef %sdev, ptr noundef %add.ptr.i83) #4
  br label %snd_sof_dsp_read.exit88

do.end.i86:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  br label %snd_sof_dsp_read.exit88

snd_sof_dsp_read.exit88:                          ; preds = %do.end.i86, %if.then.i85
  %posbuf.i = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 2
  %66 = ptrtoint ptr %posbuf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %posbuf.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end13
  %desc.i90 = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 6
  %71 = ptrtoint ptr %desc.i90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc.i90, align 4
  %ops.i91 = getelementptr inbounds %struct.sof_dev_desc, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %ops.i91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i91, align 4
  %read.i92 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %read.i92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read.i92, align 4
  %tobool.not.i93 = icmp eq ptr %76, null
  br i1 %tobool.not.i93, label %do.end.i98, label %if.then.i97

if.then.i97:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %index27 = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 14
  %77 = ptrtoint ptr %index27 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %index27, align 1
  %conv28 = zext i8 %78 to i32
  %mul29 = shl nuw nsw i32 %conv28, 5
  %add30 = add nuw nsw i32 %mul29, 4228
  %bar5.i94 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %79 = ptrtoint ptr %bar5.i94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bar5.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %80, i32 %add30
  %call.i96 = tail call i32 %76(ptr noundef %sdev, ptr noundef %add.ptr.i95) #4
  br label %sw.epilog

do.end.i98:                                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %posbuf.i101 = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 2
  %83 = ptrtoint ptr %posbuf.i101 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %posbuf.i101, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #4
  br label %sw.epilog

do.body34:                                        ; preds = %if.end13
  %.b75 = load i1, ptr @hda_dsp_pcm_pointer.__print_once, align 1
  br i1 %.b75, label %do.body34.sw.epilog_crit_edge, label %if.then36

do.body34.sw.epilog_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then36:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @hda_dsp_pcm_pointer.__print_once, align 1
  %88 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.13, i32 noundef %36) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then36, %do.body34.sw.epilog_crit_edge, %sw.bb32, %do.end.i98, %if.then.i97, %snd_sof_dsp_read.exit88, %do.end.i, %if.then.i
  %pos.0 = phi i32 [ %87, %sw.bb32 ], [ %70, %snd_sof_dsp_read.exit88 ], [ 0, %if.then36 ], [ 0, %do.body34.sw.epilog_crit_edge ], [ %call.i, %if.then.i ], [ -524, %do.end.i ], [ %call.i96, %if.then.i97 ], [ -524, %do.end.i98 ]
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %7, i32 0, i32 4
  %90 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %91)
  %cmp44.not = icmp ult i32 %pos.0, %91
  %spec.store.select = select i1 %cmp44.not, i32 %pos.0, i32 0
  br label %found

found:                                            ; preds = %sw.epilog, %if.then11
  %pos.1 = phi i32 [ %spec.store.select, %sw.epilog ], [ %conv, %if.then11 ]
  %92 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %pos.1, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 21
  %94 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %95
  br label %cleanup

cleanup:                                          ; preds = %found, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %found ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_open(ptr noundef %sdev, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %component = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 40
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %11, i32 0, i32 35
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %pcm_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %13 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dai_id.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %16 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dai_link.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %15, %19
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool.not, label %snd_sof_find_spcm_dai.exit.do.end_crit_edge, label %if.end

snd_sof_find_spcm_dai.exit.do.end_crit_edge:      ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %snd_sof_find_spcm_dai.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %22 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dai_link.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %25) #7
  br label %cleanup

if.end:                                           ; preds = %snd_sof_find_spcm_dai.exit
  %26 = load i8, ptr @hda_disable_rewinds, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not = icmp eq i8 %26, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw, align 8
  %or = or i32 %28, 536870944
  store i32 %or, ptr %hw, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %29 = load i8, ptr @hda_always_enable_dmi_l1, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end9.thread, label %if.end9

if.end9.thread:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %hw7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %30 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw7, align 8
  %and = and i32 %31, -524289
  store i32 %and, ptr %hw7, align 8
  br label %if.then14

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.not = icmp eq i8 %29, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end9
  %32 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream, align 4
  %d0i3_compatible = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %33, i32 7
  %34 = ptrtoint ptr %d0i3_compatible to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %d0i3_compatible, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not = icmp eq i8 %35, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end9.if.then14_crit_edge, %if.end9.thread
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false.if.end16_crit_edge
  %flags.0 = phi i32 [ 1, %if.then14 ], [ 0, %lor.lhs.false.if.end16_crit_edge ]
  %call17 = tail call ptr @hda_dsp_stream_get(ptr noundef %sdev, i32 noundef %7, i32 noundef %flags.0) #4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %runtime1, align 4
  %call26 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %39, i32 noundef 0, i32 noundef 14, i32 noundef 4) #4
  %40 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime1, align 4
  %call28 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %41, i32 noundef 15) #4
  %42 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime1, align 4
  %private_data30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %private_data30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call17, ptr %private_data30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end22, %do.end
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %do.end22 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_dsp_stream_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pcm_close(ptr noundef %sdev, ptr noundef %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %7 to i32
  %call = tail call i32 @hda_dsp_stream_put(ptr noundef %sdev, i32 noundef %5, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_pcm_close.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_pcm_close, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !78

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  %name = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_pcm_close.__UNIQUE_ID_ddebug251, ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef %name) #4
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %private_data8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %private_data8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %if.then5 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_put(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__param_always_enable_dmi_l1, !1, !"__param_always_enable_dmi_l1", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_always_enable_dmi_l1type247, !1, !"__UNIQUE_ID_always_enable_dmi_l1type247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_always_enable_dmi_l1248, !4, !"__UNIQUE_ID_always_enable_dmi_l1248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 33, i32 1}
!5 = !{ptr @__param_disable_rewinds, !6, !"__param_disable_rewinds", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_rewindstype249, !6, !"__UNIQUE_ID_disable_rewindstype249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_rewinds250, !9, !"__UNIQUE_ID_disable_rewinds250", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 37, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 67, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hda_dsp_get_mult_div._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @hda_dsp_get_mult_div._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 87, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hda_dsp_get_bits._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hda_dsp_get_bits._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 123, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hda_dsp_pcm_hw_params._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @hda_dsp_pcm_hw_params._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 194, i32 3}
!31 = !{ptr @hda_dsp_pcm_pointer._rs, !30, !"_rs", i1 false, i1 false}
!32 = !{ptr @__func__.hda_dsp_pcm_pointer, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hda_dsp_pcm_pointer._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @hda_dsp_pcm_pointer._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__print_once", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 269, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hda_dsp_pcm_pointer._entry.12, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hda_dsp_pcm_pointer._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 299, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hda_dsp_pcm_open._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hda_dsp_pcm_open._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 323, i32 3}
!48 = !{ptr @hda_dsp_pcm_open._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hda_dsp_pcm_open._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 349, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hda_dsp_pcm_close.__UNIQUE_ID_ddebug251, !51, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!55 = !{ptr @hda_always_enable_dmi_l1, !56, !"hda_always_enable_dmi_l1", i1 false, i1 false}
!56 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 31, i32 13}
!57 = !{ptr @__param_str_always_enable_dmi_l1, !1, !"__param_str_always_enable_dmi_l1", i1 false, i1 false}
!58 = !{ptr @__param_str_disable_rewinds, !6, !"__param_str_disable_rewinds", i1 false, i1 false}
!59 = !{ptr @hda_disable_rewinds, !60, !"hda_disable_rewinds", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/intel/hda-pcm.c", i32 35, i32 13}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_sof_dsp_read._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_sof_dsp_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i32 0, i32 33}
!77 = !{i8 0, i8 2}
!78 = !{i64 2148723388, i64 2148723393, i64 2148723406, i64 2148723450, i64 2148723484, i64 2148723505}
