; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-stream.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sof_intel_dsp_bdl = type { i32, i32, i32, i32 }
%struct.hdac_ext_stream = type { %struct.hdac_stream, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.sof_intel_hda_stream = type { ptr, %struct.hdac_ext_stream, %struct.sof_intel_stream, i32, i32 }
%struct.sof_intel_stream = type { i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }

@hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_dsp_stream_setup_bdl\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/sof/intel/hda-stream.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: period_bytes:0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: periods:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@hda_dsp_stream_spib_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 166, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: address of spib capability is NULL\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hda_dsp_stream_spib_config\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_stream_spib_config._entry_ptr = internal global ptr @hda_dsp_stream_spib_config._entry, section ".printk_index", align 4
@hda_dsp_stream_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 216, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: no free %s streams\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hda_dsp_stream_get\00", [45 x i8] zeroinitializer }, align 32
@hda_dsp_stream_get._entry_ptr = internal global ptr @hda_dsp_stream_get._entry, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_stream_put.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hda_dsp_stream_put\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: stream_tag %d not opened!\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_stream_trigger.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hda_dsp_stream_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW Poll Status: reg[%#x]=%#x successful\0A\00", [55 x i8] zeroinitializer }, align 32
@hda_dsp_stream_trigger.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW Poll Status: reg[%#x]=%#x timedout\0A\00", [57 x i8] zeroinitializer }, align 32
@hda_dsp_stream_trigger.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_trigger.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 382, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: unknown command: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@hda_dsp_stream_trigger._entry_ptr = internal global ptr @hda_dsp_stream_trigger._entry, section ".printk_index", align 4
@hda_dsp_stream_trigger._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: cmd %d on %s: timeout on STREAM_SD_OFFSET read\0A\00", [44 x i8] zeroinitializer }, align 32
@hda_dsp_stream_trigger._entry_ptr.21 = internal global ptr @hda_dsp_stream_trigger._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown stream\00", [17 x i8] zeroinitializer }, align 32
@hda_dsp_iccmax_stream_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 410, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: no stream available\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hda_dsp_iccmax_stream_hw_params\00", [32 x i8] zeroinitializer }, align 32
@hda_dsp_iccmax_stream_hw_params._entry_ptr = internal global ptr @hda_dsp_iccmax_stream_hw_params._entry, section ".printk_index", align 4
@hda_dsp_iccmax_stream_hw_params._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: set up of BDL failed\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_iccmax_stream_hw_params._entry_ptr.27 = internal global ptr @hda_dsp_iccmax_stream_hw_params._entry.25, section ".printk_index", align 4
@hda_dsp_stream_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.28, ptr @.str.2, i32 484, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_dsp_stream_hw_params\00", [39 x i8] zeroinitializer }, align 32
@hda_dsp_stream_hw_params._entry_ptr = internal global ptr @hda_dsp_stream_hw_params._entry, section ".printk_index", align 4
@hda_dsp_stream_hw_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: no dma buffer allocated!\0A\00", [63 x i8] zeroinitializer }, align 32
@hda_dsp_stream_hw_params._entry_ptr.31 = internal global ptr @hda_dsp_stream_hw_params._entry.29, section ".printk_index", align 4
@hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.16, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.17, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_hw_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 514, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: on %s: timeout on STREAM_SD_OFFSET read1\0A\00", [50 x i8] zeroinitializer }, align 32
@hda_dsp_stream_hw_params._entry_ptr.34 = internal global ptr @hda_dsp_stream_hw_params._entry.32, section ".printk_index", align 4
@hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.16, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.17, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hda_dsp_stream_hw_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 556, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_stream_hw_params._entry_ptr.36 = internal global ptr @hda_dsp_stream_hw_params._entry.35, section ".printk_index", align 4
@hda_dsp_stream_hw_params._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.2, i32 570, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_stream_hw_params._entry_ptr.38 = internal global ptr @hda_dsp_stream_hw_params._entry.37, section ".printk_index", align 4
@hda_dsp_stream_init.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hda_dsp_stream_init\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hda global caps = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"detected %d playback and %d capture streams\0A\00", [51 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.2, i32 832, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: too many playback streams %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry_ptr = internal global ptr @hda_dsp_stream_init._entry, section ".printk_index", align 4
@hda_dsp_stream_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 838, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: too many capture streams %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry_ptr.45 = internal global ptr @hda_dsp_stream_init._entry.43, section ".printk_index", align 4
@hda_dsp_stream_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 850, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: posbuffer dma alloc failed\0A\00", [61 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry_ptr.48 = internal global ptr @hda_dsp_stream_init._entry.46, section ".printk_index", align 4
@hda_dsp_stream_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 910, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: stream bdl dma alloc failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry_ptr.51 = internal global ptr @hda_dsp_stream_init._entry.49, section ".printk_index", align 4
@hda_dsp_stream_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 966, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@hda_dsp_stream_init._entry_ptr.53 = internal global ptr @hda_dsp_stream_init._entry.52, section ".printk_index", align 4
@hda_setup_bdle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 72, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: stream frags exceeded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hda_setup_bdle\00", [17 x i8] zeroinitializer }, align 32
@hda_setup_bdle._entry_ptr = internal global ptr @hda_setup_bdle._entry, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.58, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.snd_sof_dsp_write, ptr @.str.58, i32 299, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"-- (%s, stream_tag: %u)\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dai_link \22%s\22 (%s, stream_tag: %u)\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_stream_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for stream reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_dsp_stream_reset\00", [43 x i8] zeroinitializer }, align 32
@hda_dsp_stream_reset._entry_ptr = internal global ptr @hda_dsp_stream_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hda_dsp_stream_reset._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 314, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"timeout waiting for stream to exit reset\0A\00", [54 x i8] zeroinitializer }, align 32
@hda_dsp_stream_reset._entry_ptr.68 = internal global ptr @hda_dsp_stream_reset._entry.66, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 119, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 125, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 166, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 214, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 274, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 345, i32 9 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 382, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 389, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 410, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 429, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 484, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 494, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 512, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 554, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 570, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 820, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 827, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 831, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 837, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 850, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 910, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 966, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 72, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 319, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 299, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 46, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 50, i32 31 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 31, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 33, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 297, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [36 x i8] c"../sound/soc/sof/intel/hda-stream.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 314, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @hda_dsp_iccmax_stream_hw_params._entry, ptr @hda_dsp_iccmax_stream_hw_params._entry.25, ptr @hda_dsp_iccmax_stream_hw_params._entry_ptr, ptr @hda_dsp_iccmax_stream_hw_params._entry_ptr.27, ptr @hda_dsp_stream_get._entry, ptr @hda_dsp_stream_get._entry_ptr, ptr @hda_dsp_stream_hw_params._entry, ptr @hda_dsp_stream_hw_params._entry.29, ptr @hda_dsp_stream_hw_params._entry.32, ptr @hda_dsp_stream_hw_params._entry.35, ptr @hda_dsp_stream_hw_params._entry.37, ptr @hda_dsp_stream_hw_params._entry_ptr, ptr @hda_dsp_stream_hw_params._entry_ptr.31, ptr @hda_dsp_stream_hw_params._entry_ptr.34, ptr @hda_dsp_stream_hw_params._entry_ptr.36, ptr @hda_dsp_stream_hw_params._entry_ptr.38, ptr @hda_dsp_stream_init._entry, ptr @hda_dsp_stream_init._entry.43, ptr @hda_dsp_stream_init._entry.46, ptr @hda_dsp_stream_init._entry.49, ptr @hda_dsp_stream_init._entry.52, ptr @hda_dsp_stream_init._entry_ptr, ptr @hda_dsp_stream_init._entry_ptr.45, ptr @hda_dsp_stream_init._entry_ptr.48, ptr @hda_dsp_stream_init._entry_ptr.51, ptr @hda_dsp_stream_init._entry_ptr.53, ptr @hda_dsp_stream_reset._entry, ptr @hda_dsp_stream_reset._entry.66, ptr @hda_dsp_stream_reset._entry_ptr, ptr @hda_dsp_stream_reset._entry_ptr.68, ptr @hda_dsp_stream_spib_config._entry, ptr @hda_dsp_stream_spib_config._entry_ptr, ptr @hda_dsp_stream_trigger._entry, ptr @hda_dsp_stream_trigger._entry.19, ptr @hda_dsp_stream_trigger._entry_ptr, ptr @hda_dsp_stream_trigger._entry_ptr.21, ptr @hda_setup_bdle._entry, ptr @hda_setup_bdle._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @snd_sof_dsp_write._rs, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_spib_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_trigger._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_iccmax_stream_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_iccmax_stream_hw_params._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_hw_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_hw_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_hw_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_hw_params._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_setup_bdle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_stream_reset._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_setup_bdl(ptr nocapture noundef readonly %sdev, ptr noundef %dmab, ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %period_bytes1 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 5
  %4 = ptrtoint ptr %period_bytes1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_bytes1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_setup_bdl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug247, ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 4
  %8 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bufsize, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %period_bytes.0 = phi i32 [ %5, %do.end.if.end6_crit_edge ], [ %9, %if.then5 ]
  %bufsize7 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 4
  %10 = ptrtoint ptr %bufsize7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bufsize7, align 4
  %div = udiv i32 %11, %period_bytes.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_setup_bdl, %if.then20)) #5
          to label %do.end24 [label %if.then20], !srcloc !147

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug248, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %div) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.end6
  %14 = ptrtoint ptr %bufsize7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufsize7, align 4
  %rem = urem i32 %15, %period_bytes.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool26.not = icmp eq i32 %rem, 0
  %not.tobool26.not = xor i1 %tobool26.not, true
  %inc = zext i1 %not.tobool26.not to i32
  %spec.select = add i32 %div, %inc
  %area = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area, align 4
  %frags = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 6
  %18 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %frags, align 4
  %no_ipc_position = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %no_ipc_position to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %no_ipc_position, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %do.end24.cond.end_crit_edge, label %cond.true

do.end24.cond.end_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  %no_period_wakeup = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 16
  %21 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %no_period_wakeup, align 8
  %22 = lshr i8 %bf.load, 4
  %.lobit = and i8 %22, 1
  %23 = xor i8 %.lobit, 1
  %24 = zext i8 %23 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end24.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ 0, %do.end24.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp108 = icmp sgt i32 %spec.select, 0
  br i1 %cmp108, label %for.body.lr.ph, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %sub = add nsw i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp46.i = icmp sgt i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_bytes.0)
  %cmp46.i69 = icmp sgt i32 %period_bytes.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool13.not.i = icmp eq i32 %cond, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc.for.body_crit_edge ]
  %offset.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %bdl.0109 = phi ptr [ %17, %for.body.lr.ph ], [ %bdl.3, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111, i32 %sub)
  %cmp33 = icmp ne i32 %i.0111, %sub
  %brmerge = select i1 %cmp33, i1 true, i1 %tobool26.not
  br i1 %brmerge, label %if.else, label %if.then35

if.then35:                                        ; preds = %for.body
  br i1 %cmp46.i, label %while.body.lr.ph.i, label %if.then35.for.inc_crit_edge

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.then35
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 4
  %hw_pdata.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %hw_pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_pdata.i.i, align 4
  %align_bdle_4k.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %28, i32 0, i32 1, i32 0, i32 28
  %29 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load i32, ptr %frags, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %30 = phi i32 [ %.pr.i, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %bdl.049.i = phi ptr [ %bdl.0109, %while.body.lr.ph.i ], [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ]
  %size.addr.048.i = phi i32 [ %rem, %while.body.lr.ph.i ], [ %sub12.i, %cleanup.i.while.body.i_crit_edge ]
  %offset.addr.047.i = phi i32 [ %offset.0110, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %30)
  %cmp1.i = icmp ugt i32 %30, 255
  br i1 %cmp1.i, label %while.body.i.for.inc.sink.split_crit_edge, label %cleanup.i

while.body.i.for.inc.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

cleanup.i:                                        ; preds = %while.body.i
  %call2.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %dmab, i32 noundef %offset.addr.047.i) #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %call2.i) #5
  %32 = ptrtoint ptr %bdl.049.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %bdl.049.i, align 1
  %addr_h.i = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i, i32 0, i32 1
  %33 = ptrtoint ptr %addr_h.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %addr_h.i, align 1
  %call4.i = tail call i32 @snd_sgbuf_get_chunk_size(ptr noundef %dmab, i32 noundef %offset.addr.047.i, i32 noundef %size.addr.048.i) #5
  %34 = ptrtoint ptr %align_bdle_4k.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %align_bdle_4k.i, align 4
  %35 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %bf.cast.not.i = icmp eq i16 %35, 0
  %and6.i = and i32 %offset.addr.047.i, 4095
  %sub.i = sub nuw nsw i32 4096, %and6.i
  %36 = tail call i32 @llvm.umin.i32(i32 %call4.i, i32 %sub.i) #5
  %chunk.1.i = select i1 %bf.cast.not.i, i32 %call4.i, i32 %36
  %37 = tail call i32 @llvm.bswap.i32(i32 %chunk.1.i) #5
  %size11.i = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i, i32 0, i32 2
  %38 = ptrtoint ptr %size11.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %size11.i, align 1
  %sub12.i = sub i32 %size.addr.048.i, %chunk.1.i
  %ioc14.i = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i, i32 0, i32 3
  %39 = ptrtoint ptr %ioc14.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %ioc14.i, align 1
  %incdec.ptr.i = getelementptr %struct.sof_intel_dsp_bdl, ptr %bdl.049.i, i32 1
  %40 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frags, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %frags, align 4
  %add.i = add i32 %chunk.1.i, %offset.addr.047.i
  %cmp.i = icmp sgt i32 %sub12.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.for.inc_crit_edge

cleanup.i.for.inc_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.else:                                          ; preds = %for.body
  br i1 %cmp46.i69, label %while.body.lr.ph.i75, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.lr.ph.i75:                             ; preds = %if.else
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 4
  %hw_pdata.i.i71 = getelementptr inbounds %struct.snd_sof_pdata, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %hw_pdata.i.i71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_pdata.i.i71, align 4
  %align_bdle_4k.i73 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 0, i32 28
  %46 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i74 = load i32, ptr %frags, align 4
  br label %while.body.i80

while.body.i80:                                   ; preds = %cleanup.i98.while.body.i80_crit_edge, %while.body.lr.ph.i75
  %47 = phi i32 [ %.pr.i74, %while.body.lr.ph.i75 ], [ %inc.i95, %cleanup.i98.while.body.i80_crit_edge ]
  %bdl.049.i76 = phi ptr [ %bdl.0109, %while.body.lr.ph.i75 ], [ %incdec.ptr.i94, %cleanup.i98.while.body.i80_crit_edge ]
  %size.addr.048.i77 = phi i32 [ %period_bytes.0, %while.body.lr.ph.i75 ], [ %sub12.i91, %cleanup.i98.while.body.i80_crit_edge ]
  %offset.addr.047.i78 = phi i32 [ %offset.0110, %while.body.lr.ph.i75 ], [ %add.i96, %cleanup.i98.while.body.i80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %47)
  %cmp1.i79 = icmp ugt i32 %47, 255
  br i1 %cmp1.i79, label %while.body.i80.for.inc.sink.split_crit_edge, label %cleanup.i98

while.body.i80.for.inc.sink.split_crit_edge:      ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

cleanup.i98:                                      ; preds = %while.body.i80
  %call2.i82 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %dmab, i32 noundef %offset.addr.047.i78) #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %call2.i82) #5
  %49 = ptrtoint ptr %bdl.049.i76 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %bdl.049.i76, align 1
  %addr_h.i83 = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i76, i32 0, i32 1
  %50 = ptrtoint ptr %addr_h.i83 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 0, ptr %addr_h.i83, align 1
  %call4.i84 = tail call i32 @snd_sgbuf_get_chunk_size(ptr noundef %dmab, i32 noundef %offset.addr.047.i78, i32 noundef %size.addr.048.i77) #5
  %51 = ptrtoint ptr %align_bdle_4k.i73 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i85 = load i16, ptr %align_bdle_4k.i73, align 4
  %52 = and i16 %bf.load.i85, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %bf.cast.not.i86 = icmp eq i16 %52, 0
  %and6.i87 = and i32 %offset.addr.047.i78, 4095
  %sub.i88 = sub nuw nsw i32 4096, %and6.i87
  %53 = tail call i32 @llvm.umin.i32(i32 %call4.i84, i32 %sub.i88) #5
  %chunk.1.i89 = select i1 %bf.cast.not.i86, i32 %call4.i84, i32 %53
  %54 = tail call i32 @llvm.bswap.i32(i32 %chunk.1.i89) #5
  %size11.i90 = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i76, i32 0, i32 2
  %55 = ptrtoint ptr %size11.i90 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %size11.i90, align 1
  %sub12.i91 = sub i32 %size.addr.048.i77, %chunk.1.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i91)
  %tobool.not.i92 = icmp ne i32 %sub12.i91, 0
  %56 = or i1 %tobool13.not.i, %tobool.not.i92
  %cond.i = select i1 %56, i32 0, i32 16777216
  %ioc14.i93 = getelementptr inbounds %struct.sof_intel_dsp_bdl, ptr %bdl.049.i76, i32 0, i32 3
  %57 = ptrtoint ptr %ioc14.i93 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %cond.i, ptr %ioc14.i93, align 1
  %incdec.ptr.i94 = getelementptr %struct.sof_intel_dsp_bdl, ptr %bdl.049.i76, i32 1
  %58 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frags, align 4
  %inc.i95 = add i32 %59, 1
  store i32 %inc.i95, ptr %frags, align 4
  %add.i96 = add i32 %chunk.1.i89, %offset.addr.047.i78
  %cmp.i97 = icmp sgt i32 %sub12.i91, 0
  br i1 %cmp.i97, label %cleanup.i98.while.body.i80_crit_edge, label %cleanup.i98.for.inc_crit_edge

cleanup.i98.for.inc_crit_edge:                    ; preds = %cleanup.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup.i98.while.body.i80_crit_edge:             ; preds = %cleanup.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i80

for.inc.sink.split:                               ; preds = %while.body.i80.for.inc.sink.split_crit_edge, %while.body.i.for.inc.sink.split_crit_edge
  %60 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.54) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %cleanup.i98.for.inc_crit_edge, %if.else.for.inc_crit_edge, %cleanup.i.for.inc_crit_edge, %if.then35.for.inc_crit_edge
  %bdl.3 = phi ptr [ %bdl.0109, %if.then35.for.inc_crit_edge ], [ %bdl.0109, %if.else.for.inc_crit_edge ], [ %bdl.0109, %for.inc.sink.split ], [ %incdec.ptr.i94, %cleanup.i98.for.inc_crit_edge ], [ %incdec.ptr.i, %cleanup.i.for.inc_crit_edge ]
  %offset.1 = phi i32 [ %offset.0110, %if.then35.for.inc_crit_edge ], [ %offset.0110, %if.else.for.inc_crit_edge ], [ -22, %for.inc.sink.split ], [ %add.i96, %cleanup.i98.for.inc_crit_edge ], [ %add.i, %cleanup.i.for.inc_crit_edge ]
  %inc39 = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc39, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %offset.1, %for.inc.for.end_crit_edge ]
  ret i32 %offset.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_spib_config(ptr noundef %sdev, ptr nocapture noundef readonly %stream, i32 noundef %enable, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %shl4 = shl i32 %enable, %conv
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 2, i32 noundef 4, i32 noundef %shl, i32 noundef %shl4) #5
  %spib_addr = getelementptr inbounds %struct.hdac_ext_stream, ptr %stream, i32 0, i32 3
  %6 = ptrtoint ptr %spib_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spib_addr, align 8
  tail call void @sof_io_write(ptr noundef %sdev, ptr noundef %7, i32 noundef %size) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hda_dsp_stream_get(ptr noundef %sdev, i32 noundef %direction, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %reg_lock = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %4 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51 = load ptr, ptr %stream_list, align 4
  %cmp.not53 = icmp eq ptr %.pn51, %stream_list
  br i1 %cmp.not53, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn56 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn51, %entry.for.body_crit_edge ]
  %hda_stream.055 = phi ptr [ %hda_stream.1, %for.inc.for.body_crit_edge ], [ inttoptr (i32 -1 to ptr), %entry.for.body_crit_edge ]
  %stream.054 = phi ptr [ %stream.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %s.057 = getelementptr i8, ptr %.pn56, i32 -180
  %direction2 = getelementptr i8, ptr %.pn56, i32 -140
  %5 = ptrtoint ptr %direction2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %direction2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %direction)
  %cmp3 = icmp eq i32 %6, %direction
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %opened = getelementptr i8, ptr %.pn56, i32 -92
  %7 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %add.ptr9 = getelementptr i8, ptr %.pn56, i32 -188
  %host_reserved = getelementptr i8, ptr %.pn56, i32 144
  %8 = ptrtoint ptr %host_reserved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %opened.le = getelementptr i8, ptr %.pn56, i32 -92
  %bf.set = or i8 %bf.load, -128
  %10 = ptrtoint ptr %opened.le to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %opened.le, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %stream.1 = phi ptr [ %stream.054, %land.lhs.true.for.inc_crit_edge ], [ %s.057, %if.then.for.inc_crit_edge ], [ %stream.054, %for.body.for.inc_crit_edge ]
  %hda_stream.1 = phi ptr [ %hda_stream.055, %land.lhs.true.for.inc_crit_edge ], [ %add.ptr9, %if.then.for.inc_crit_edge ], [ %hda_stream.055, %for.body.for.inc_crit_edge ]
  %11 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %stream_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end
  %stream.2 = phi ptr [ %s.057, %if.end ], [ %stream.1, %for.inc.for.end_crit_edge ]
  %hda_stream.2 = phi ptr [ %add.ptr9, %if.end ], [ %hda_stream.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %tobool20.not = icmp eq ptr %stream.2, null
  br i1 %tobool20.not, label %for.end.do.end_crit_edge, label %if.end23

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp22 = icmp eq i32 %direction, 0
  %cond = select i1 %cmp22, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #8
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %flags24 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %hda_stream.2, i32 0, i32 4
  %14 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %flags24, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %do.end
  %stream.264 = phi ptr [ %stream.2, %if.end23.cleanup_crit_edge ], [ %stream.2, %if.then26 ], [ null, %do.end ]
  ret ptr %stream.264
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_put(ptr noundef %sdev, i32 noundef %direction, i32 noundef %stream_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %reg_lock = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %4 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn64 = load ptr, ptr %stream_list, align 4
  %cmp.not65 = icmp eq ptr %.pn64, %stream_list
  br i1 %cmp.not65, label %if.then26.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then26.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %call2775 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef 8192) #5
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn64, %entry.for.body_crit_edge ]
  %dmi_l1_enable.0.off067 = phi i1 [ %dmi_l1_enable.1.off0, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %found.0.off066 = phi i1 [ %found.1.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %opened = getelementptr i8, ptr %.pn68, i32 -92
  %5 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %direction8 = getelementptr i8, ptr %.pn68, i32 -140
  %6 = ptrtoint ptr %direction8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %direction)
  %cmp9 = icmp eq i32 %7, %direction
  br i1 %cmp9, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %stream_tag10 = getelementptr i8, ptr %.pn68, i32 -100
  %8 = ptrtoint ptr %stream_tag10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stream_tag10, align 8
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %stream_tag)
  %cmp11 = icmp eq i32 %conv, %stream_tag
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear = and i8 %bf.load, 127
  %10 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.clear, ptr %opened, align 8
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %flags = getelementptr i8, ptr %.pn68, i32 148
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool.not, i1 %dmi_l1_enable.0.off067, i1 false
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then13, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ true, %if.then13 ], [ %found.0.off066, %for.body.for.inc_crit_edge ], [ %found.0.off066, %if.else ]
  %dmi_l1_enable.1.off0 = phi i1 [ %dmi_l1_enable.0.off067, %if.then13 ], [ %dmi_l1_enable.0.off067, %for.body.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %13 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp.not = icmp eq ptr %.pn, %stream_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  br i1 %dmi_l1_enable.1.off0, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.end
  %call27 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef 8192) #5
  br i1 %found.1.off0, label %if.then26.cleanup_crit_edge, label %if.then26.do.body_crit_edge

if.then26.do.body_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %for.end
  br i1 %found.1.off0, label %if.end28.cleanup_crit_edge, label %if.end28.do.body_crit_edge

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end28.do.body_crit_edge, %if.then26.do.body_crit_edge, %if.then26.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_put.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_put, %if.then37)) #5
          to label %cleanup [label %if.then37], !srcloc !147

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_put.__UNIQUE_ID_ddebug249, ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %stream_tag) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body, %if.end28.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then37 ], [ 0, %if.end28.cleanup_crit_edge ], [ -19, %do.body ], [ 0, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_trigger(ptr noundef %sdev, ptr nocapture noundef %stream, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end163 [
    i32 4, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge337
    i32 5, label %entry.sw.bb67_crit_edge
    i32 3, label %entry.sw.bb67_crit_edge338
    i32 0, label %entry.sw.bb67_crit_edge339
  ]

entry.sw.bb67_crit_edge339:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67

entry.sw.bb67_crit_edge338:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67

entry.sw.bb67_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67

entry.sw.bb_crit_edge337:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge337
  %shl = shl nuw i32 1, %conv
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef %shl, i32 noundef %shl) #5
  %call7 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 30, i32 noundef 30) #5
  %call8 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call8, 300000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 350) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.cond

for.cond:                                         ; preds = %if.then56, %sw.bb
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %land.lhs.true

snd_sof_dsp_read.exit:                            ; preds = %for.cond
  %13 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  %call.i = tail call i32 %10(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  br i1 %cmp18.not, label %snd_sof_dsp_read.exit.land.lhs.true_crit_edge, label %do.body21

snd_sof_dsp_read.exit.land.lhs.true_crit_edge:    ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.body21:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_trigger, %if.then25)) #5
          to label %for.end [label %if.then25], !srcloc !147

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug250, ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %call.i) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit.thread
  %call31 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then35, label %if.then56

if.then35:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 4
  %desc.i249 = getelementptr inbounds %struct.snd_sof_pdata, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %desc.i249 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i249, align 4
  %ops.i250 = getelementptr inbounds %struct.sof_dev_desc, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i250, align 4
  %read.i251 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %read.i251 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i251, align 4
  %tobool.not.i252 = icmp eq ptr %24, null
  br i1 %tobool.not.i252, label %do.end.i257, label %if.then.i256

if.then.i256:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i254 = getelementptr i8, ptr %26, i32 %add
  %call.i255 = tail call i32 %24(ptr noundef %sdev, ptr noundef %add.ptr.i254) #5
  br label %snd_sof_dsp_read.exit259

do.end.i257:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit259

snd_sof_dsp_read.exit259:                         ; preds = %do.end.i257, %if.then.i256
  %retval.0.i258 = phi i32 [ %call.i255, %if.then.i256 ], [ -524, %do.end.i257 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_trigger, %if.then49)) #5
          to label %for.end [label %if.then49], !srcloc !147

if.then49:                                        ; preds = %snd_sof_dsp_read.exit259
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug251, ptr noundef %30, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %retval.0.i258) #5
  br label %for.end

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then49, %snd_sof_dsp_read.exit259, %if.then25, %do.body21
  %run.0 = phi i32 [ %call.i, %if.then25 ], [ %retval.0.i258, %if.then49 ], [ %call.i, %do.body21 ], [ %retval.0.i258, %snd_sof_dsp_read.exit259 ]
  %and60 = and i32 %run.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61.not = icmp eq i32 %and60, 0
  br i1 %cmp61.not, label %for.end.if.then167_crit_edge, label %if.then65

for.end.if.then167_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %running = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 16
  %31 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %running, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %running, align 8
  br label %cleanup

sw.bb67:                                          ; preds = %entry.sw.bb67_crit_edge, %entry.sw.bb67_crit_edge338, %entry.sw.bb67_crit_edge339
  %call68 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 30, i32 noundef 0) #5
  %call72 = tail call i64 @ktime_get() #5
  %add.i260 = add i64 %call72, 300000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 368) #5
  %pdata.i261 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %32 = ptrtoint ptr %pdata.i261 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata.i261, align 4
  %desc.i262320 = getelementptr inbounds %struct.snd_sof_pdata, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %desc.i262320 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i262320, align 4
  %ops.i263321 = getelementptr inbounds %struct.sof_dev_desc, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %ops.i263321 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i263321, align 4
  %read.i264322 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %read.i264322 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i264322, align 4
  %tobool.not.i265323 = icmp eq ptr %39, null
  br i1 %tobool.not.i265323, label %sw.bb67.snd_sof_dsp_read.exit272.thread_crit_edge, label %snd_sof_dsp_read.exit272.lr.ph

sw.bb67.snd_sof_dsp_read.exit272.thread_crit_edge: ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit272.thread

snd_sof_dsp_read.exit272.lr.ph:                   ; preds = %sw.bb67
  %bar5.i266 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %snd_sof_dsp_read.exit272

snd_sof_dsp_read.exit272.thread:                  ; preds = %if.then137.snd_sof_dsp_read.exit272.thread_crit_edge, %sw.bb67.snd_sof_dsp_read.exit272.thread_crit_edge
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %do.body92

snd_sof_dsp_read.exit272:                         ; preds = %if.then137.snd_sof_dsp_read.exit272_crit_edge, %snd_sof_dsp_read.exit272.lr.ph
  %42 = phi ptr [ %39, %snd_sof_dsp_read.exit272.lr.ph ], [ %68, %if.then137.snd_sof_dsp_read.exit272_crit_edge ]
  %43 = ptrtoint ptr %bar5.i266 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bar5.i266, align 4
  %add.ptr.i267 = getelementptr i8, ptr %44, i32 %add
  %call.i268 = tail call i32 %42(ptr noundef %sdev, ptr noundef %add.ptr.i267) #5
  %and89 = and i32 %call.i268, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %snd_sof_dsp_read.exit272.do.body92_crit_edge, label %land.lhs.true111

snd_sof_dsp_read.exit272.do.body92_crit_edge:     ; preds = %snd_sof_dsp_read.exit272
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

do.body92:                                        ; preds = %snd_sof_dsp_read.exit272.do.body92_crit_edge, %snd_sof_dsp_read.exit272.thread
  %retval.0.i271309 = phi i32 [ -524, %snd_sof_dsp_read.exit272.thread ], [ %call.i268, %snd_sof_dsp_read.exit272.do.body92_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_trigger, %if.then104)) #5
          to label %for.end141 [label %if.then104], !srcloc !147

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug252, ptr noundef %46, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %retval.0.i271309) #5
  br label %for.end141

land.lhs.true111:                                 ; preds = %snd_sof_dsp_read.exit272
  %call112 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call112, i64 %add.i260)
  %cmp3.i274 = icmp sgt i64 %call112, %add.i260
  br i1 %cmp3.i274, label %if.then116, label %if.then137

if.then116:                                       ; preds = %land.lhs.true111
  %47 = ptrtoint ptr %pdata.i261 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata.i261, align 4
  %desc.i278 = getelementptr inbounds %struct.snd_sof_pdata, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %desc.i278 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc.i278, align 4
  %ops.i279 = getelementptr inbounds %struct.sof_dev_desc, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %ops.i279 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i279, align 4
  %read.i280 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %read.i280 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read.i280, align 4
  %tobool.not.i281 = icmp eq ptr %54, null
  br i1 %tobool.not.i281, label %do.end.i286, label %if.then.i285

if.then.i285:                                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %bar5.i266 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bar5.i266, align 4
  %add.ptr.i283 = getelementptr i8, ptr %56, i32 %add
  %call.i284 = tail call i32 %54(ptr noundef %sdev, ptr noundef %add.ptr.i283) #5
  br label %snd_sof_dsp_read.exit288

do.end.i286:                                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit288

snd_sof_dsp_read.exit288:                         ; preds = %do.end.i286, %if.then.i285
  %retval.0.i287 = phi i32 [ %call.i284, %if.then.i285 ], [ -524, %do.end.i286 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_trigger, %if.then130)) #5
          to label %for.end141 [label %if.then130], !srcloc !147

if.then130:                                       ; preds = %snd_sof_dsp_read.exit288
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug253, ptr noundef %60, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %retval.0.i287) #5
  br label %for.end141

if.then137:                                       ; preds = %land.lhs.true111
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  %61 = ptrtoint ptr %pdata.i261 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata.i261, align 4
  %desc.i262 = getelementptr inbounds %struct.snd_sof_pdata, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %desc.i262 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc.i262, align 4
  %ops.i263 = getelementptr inbounds %struct.sof_dev_desc, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %ops.i263 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i263, align 4
  %read.i264 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %read.i264 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read.i264, align 4
  %tobool.not.i265 = icmp eq ptr %68, null
  br i1 %tobool.not.i265, label %if.then137.snd_sof_dsp_read.exit272.thread_crit_edge, label %if.then137.snd_sof_dsp_read.exit272_crit_edge

if.then137.snd_sof_dsp_read.exit272_crit_edge:    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit272

if.then137.snd_sof_dsp_read.exit272.thread_crit_edge: ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit272.thread

for.end141:                                       ; preds = %if.then130, %snd_sof_dsp_read.exit288, %if.then104, %do.body92
  %run.1 = phi i32 [ %retval.0.i287, %if.then130 ], [ %retval.0.i271309, %if.then104 ], [ %retval.0.i271309, %do.body92 ], [ %retval.0.i287, %snd_sof_dsp_read.exit288 ]
  %and143 = and i32 %run.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then150, label %for.end141.if.then167_crit_edge

for.end141.if.then167_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

if.then150:                                       ; preds = %for.end141
  %69 = ptrtoint ptr %pdata.i261 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata.i261, align 4
  %desc.i290 = getelementptr inbounds %struct.snd_sof_pdata, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %desc.i290 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc.i290, align 4
  %ops.i291 = getelementptr inbounds %struct.sof_dev_desc, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %ops.i291 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i291, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write.i, align 4
  %tobool.not.i292 = icmp eq ptr %76, null
  br i1 %tobool.not.i292, label %do.body.i, label %if.then.i295

if.then.i295:                                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #7
  %add151 = add nuw nsw i32 %mul, 131
  %bar5.i293 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %77 = ptrtoint ptr %bar5.i293 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bar5.i293, align 4
  %add.ptr.i294 = getelementptr i8, ptr %78, i32 %add151
  tail call void %76(ptr noundef %sdev, ptr noundef %add.ptr.i294, i32 noundef 28) #5
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.then150
  %call.i296 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296)
  %tobool6.not.i = icmp eq i32 %call.i296, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i297

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit

do.end.i297:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i297, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i295
  %running152 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 16
  %81 = ptrtoint ptr %running152 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load153 = load i8, ptr %running152, align 8
  %bf.clear154 = and i8 %bf.load153, -65
  store i8 %bf.clear154, ptr %running152, align 8
  %82 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %index, align 1
  %conv157 = zext i8 %83 to i32
  %shl158 = shl nuw i32 1, %conv157
  %call159 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef %shl158, i32 noundef 0) #5
  br label %cleanup

do.end163:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.18, i32 noundef %cmd) #8
  br label %cleanup

if.then167:                                       ; preds = %for.end141.if.then167_crit_edge, %for.end.if.then167_crit_edge
  %substream.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 10
  %86 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %substream.i, align 4
  %tobool.not.i298 = icmp eq ptr %87, null
  br i1 %tobool.not.i298, label %if.else.i, label %if.then.i299

if.then.i299:                                     ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %87, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then167
  %cstream.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 11
  %88 = ptrtoint ptr %cstream.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cstream.i, align 8
  %tobool2.not.i = icmp eq ptr %89, null
  br i1 %tobool2.not.i, label %if.else6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %private_data5.i = getelementptr inbounds %struct.snd_compr_stream, ptr %89, i32 0, i32 10
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %direction.i.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %90 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %direction.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 0
  %.str.62..str.63.i.i = select i1 %cmp.i.i, ptr @.str.62, ptr @.str.63
  %stream_tag.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %92 = ptrtoint ptr %stream_tag.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %stream_tag.i, align 8
  %conv.i = zext i8 %93 to i32
  %call7.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.60, ptr noundef nonnull %.str.62..str.63.i.i, i32 noundef %conv.i) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit

if.end8.i:                                        ; preds = %if.then3.i, %if.then.i299
  %rtd.0.in.i = phi ptr [ %private_data.i, %if.then.i299 ], [ %private_data5.i, %if.then3.i ]
  %94 = ptrtoint ptr %rtd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %rtd.0.i = load ptr, ptr %rtd.0.in.i, align 4
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd.0.i, i32 0, i32 2
  %95 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dai_link.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %direction.i21.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %99 = ptrtoint ptr %direction.i21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %direction.i21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i22.i = icmp eq i32 %100, 0
  %.str.62..str.63.i23.i = select i1 %cmp.i22.i, ptr @.str.62, ptr @.str.63
  %stream_tag10.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %101 = ptrtoint ptr %stream_tag10.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %stream_tag10.i, align 8
  %conv11.i = zext i8 %102 to i32
  %call12.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.61, ptr noundef %98, ptr noundef nonnull %.str.62..str.63.i23.i, i32 noundef %conv11.i) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit

hda_hstream_dbg_get_stream_info_str.exit:         ; preds = %if.end8.i, %if.else6.i
  %retval.0.i300 = phi ptr [ %call12.i, %if.end8.i ], [ %call7.i, %if.else6.i ]
  %103 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sdev, align 4
  %tobool173.not = icmp eq ptr %retval.0.i300, null
  %spec.select = select i1 %tobool173.not, ptr @.str.22, ptr %retval.0.i300
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef %cmd, ptr noundef nonnull %spec.select) #8
  tail call void @kfree(ptr noundef %retval.0.i300) #5
  br label %cleanup

cleanup:                                          ; preds = %hda_hstream_dbg_get_stream_info_str.exit, %do.end163, %snd_sof_dsp_write.exit, %if.then65
  %retval.0 = phi i32 [ -22, %do.end163 ], [ -110, %hda_hstream_dbg_get_stream_info_str.exit ], [ 0, %snd_sof_dsp_write.exit ], [ 0, %if.then65 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_iccmax_stream_hw_params(ptr noundef %sdev, ptr noundef %stream, ptr noundef %dmab, ptr nocapture noundef readnone %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %index = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %shl = shl nuw i32 1, %conv
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %posbuf = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 2
  %8 = ptrtoint ptr %posbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %posbuf, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %add8 = add nuw nsw i32 %mul, 152
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %19 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add8
  tail call void %18(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.end7
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %add9 = add nuw nsw i32 %mul, 156
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 4
  %desc.i72 = getelementptr inbounds %struct.snd_sof_pdata, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %desc.i72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i72, align 4
  %ops.i73 = getelementptr inbounds %struct.sof_dev_desc, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i73, align 4
  %write.i74 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %write.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i74, align 4
  %tobool.not.i75 = icmp eq ptr %30, null
  br i1 %tobool.not.i75, label %do.body.i81, label %if.then.i78

if.then.i78:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i76 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %31 = ptrtoint ptr %bar5.i76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bar5.i76, align 4
  %add.ptr.i77 = getelementptr i8, ptr %32, i32 %add9
  tail call void %30(ptr noundef %sdev, ptr noundef %add.ptr.i77, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit83

do.body.i81:                                      ; preds = %snd_sof_dsp_write.exit
  %call.i79 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool6.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool6.not.i80, label %do.body.i81.snd_sof_dsp_write.exit83_crit_edge, label %do.end.i82

do.body.i81.snd_sof_dsp_write.exit83_crit_edge:   ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit83

do.end.i82:                                       ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit83

snd_sof_dsp_write.exit83:                         ; preds = %do.end.i82, %do.body.i81.snd_sof_dsp_write.exit83_crit_edge, %if.then.i78
  %frags = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 6
  %35 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %frags, align 4
  %call10 = tail call i32 @hda_dsp_stream_setup_bdl(ptr noundef %sdev, ptr noundef %dmab, ptr noundef nonnull %stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %snd_sof_dsp_write.exit83
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end17:                                         ; preds = %snd_sof_dsp_write.exit83
  %38 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i, align 4
  %desc.i85 = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i85, align 4
  %ops.i86 = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i86, align 4
  %write.i87 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %write.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i87, align 4
  %tobool.not.i88 = icmp eq ptr %45, null
  br i1 %tobool.not.i88, label %do.body.i94, label %if.then.i91

if.then.i91:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr, align 4
  %bar5.i89 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %48 = ptrtoint ptr %bar5.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bar5.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %49, i32 %add8
  tail call void %45(ptr noundef %sdev, ptr noundef %add.ptr.i90, i32 noundef %47) #5
  br label %snd_sof_dsp_write.exit96

do.body.i94:                                      ; preds = %if.end17
  %call.i92 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool6.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool6.not.i93, label %do.body.i94.snd_sof_dsp_write.exit96_crit_edge, label %do.end.i95

do.body.i94.snd_sof_dsp_write.exit96_crit_edge:   ; preds = %do.body.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit96

do.end.i95:                                       ; preds = %do.body.i94
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit96

snd_sof_dsp_write.exit96:                         ; preds = %do.end.i95, %do.body.i94.snd_sof_dsp_write.exit96_crit_edge, %if.then.i91
  %52 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata.i, align 4
  %desc.i98 = getelementptr inbounds %struct.snd_sof_pdata, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %desc.i98 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i98, align 4
  %ops.i99 = getelementptr inbounds %struct.sof_dev_desc, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i99, align 4
  %write.i100 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %write.i100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i100, align 4
  %tobool.not.i101 = icmp eq ptr %59, null
  br i1 %tobool.not.i101, label %do.body.i107, label %if.then.i104

if.then.i104:                                     ; preds = %snd_sof_dsp_write.exit96
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i102 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %60 = ptrtoint ptr %bar5.i102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bar5.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %61, i32 %add9
  tail call void %59(ptr noundef %sdev, ptr noundef %add.ptr.i103, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit109

do.body.i107:                                     ; preds = %snd_sof_dsp_write.exit96
  %call.i105 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool6.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool6.not.i106, label %do.body.i107.snd_sof_dsp_write.exit109_crit_edge, label %do.end.i108

do.body.i107.snd_sof_dsp_write.exit109_crit_edge: ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit109

do.end.i108:                                      ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit109

snd_sof_dsp_write.exit109:                        ; preds = %do.end.i108, %do.body.i107.snd_sof_dsp_write.exit109_crit_edge, %if.then.i104
  %64 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata.i, align 4
  %desc.i111 = getelementptr inbounds %struct.snd_sof_pdata, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %desc.i111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc.i111, align 4
  %ops.i112 = getelementptr inbounds %struct.sof_dev_desc, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %ops.i112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i112, align 4
  %write.i113 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %write.i113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write.i113, align 4
  %tobool.not.i114 = icmp eq ptr %71, null
  br i1 %tobool.not.i114, label %do.body.i120, label %if.then.i117

if.then.i117:                                     ; preds = %snd_sof_dsp_write.exit109
  call void @__sanitizer_cov_trace_pc() #7
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 4
  %72 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bufsize, align 4
  %add23 = add nuw nsw i32 %mul, 136
  %bar5.i115 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %74 = ptrtoint ptr %bar5.i115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bar5.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %75, i32 %add23
  tail call void %71(ptr noundef %sdev, ptr noundef %add.ptr.i116, i32 noundef %73) #5
  br label %snd_sof_dsp_write.exit122

do.body.i120:                                     ; preds = %snd_sof_dsp_write.exit109
  %call.i118 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool6.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool6.not.i119, label %do.body.i120.snd_sof_dsp_write.exit122_crit_edge, label %do.end.i121

do.body.i120.snd_sof_dsp_write.exit122_crit_edge: ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit122

do.end.i121:                                      ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit122

snd_sof_dsp_write.exit122:                        ; preds = %do.end.i121, %do.body.i120.snd_sof_dsp_write.exit122_crit_edge, %if.then.i117
  %add24 = add nuw nsw i32 %mul, 140
  %78 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %frags, align 4
  %sub = add i32 %79, -1
  %call26 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add24, i32 noundef 65535, i32 noundef %sub) #5
  %call27 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #5
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %80 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %81, i32 4168
  %aligned_mmio.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  %82 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %83 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %bf.cast.not.i = icmp eq i16 %83, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %snd_sof_dsp_write.exit122
  call void @__sanitizer_cov_trace_pc() #7
  %call.i123 = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit

cond.false.i:                                     ; preds = %snd_sof_dsp_write.exit122
  call void @__sanitizer_cov_trace_pc() #7
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %conv.i = zext i8 %84 to i32
  br label %snd_hdac_reg_readb.exit

snd_hdac_reg_readb.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i123, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i8
  %85 = and i8 %conv3.i, -128
  %86 = or i8 %85, 95
  %87 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i125 = load i16, ptr %aligned_mmio.i, align 4
  %88 = and i16 %bf.load.i125, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %bf.cast.not.i126 = icmp eq i16 %88, 0
  br i1 %bf.cast.not.i126, label %do.body.i129, label %if.then.i128

if.then.i128:                                     ; preds = %snd_hdac_reg_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i127 = zext i8 %86 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i127, ptr noundef %add.ptr, i32 noundef 255) #5
  br label %snd_hdac_reg_writeb.exit

do.body.i129:                                     ; preds = %snd_hdac_reg_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %86) #5, !srcloc !151
  br label %snd_hdac_reg_writeb.exit

snd_hdac_reg_writeb.exit:                         ; preds = %do.body.i129, %if.then.i128
  %call33 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 2, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_hdac_reg_writeb.exit, %do.end15, %do.end
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ 0, %snd_hdac_reg_writeb.exit ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_hw_params(ptr noundef %sdev, ptr noundef %stream, ptr noundef %dmab, ptr nocapture noundef readnone %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %desc1.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1.i, align 4
  %chip_info.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pdata.i, align 4
  %index = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 1
  %conv = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %conv
  %call5 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #5
  %tobool6.not = icmp eq ptr %dmab, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 30, i32 noundef 0) #5
  %call14 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call14, 300000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 507) #5
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %desc.i598 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i598 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i598, align 4
  %ops.i599 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i599 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i599, align 4
  %read.i600 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i600 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i600, align 4
  %tobool.not.i601 = icmp eq ptr %21, null
  br i1 %tobool.not.i601, label %if.end12.snd_sof_dsp_read.exit.thread_crit_edge, label %snd_sof_dsp_read.exit.lr.ph

if.end12.snd_sof_dsp_read.exit.thread_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit.thread

snd_sof_dsp_read.exit.lr.ph:                      ; preds = %if.end12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %if.then68.snd_sof_dsp_read.exit.thread_crit_edge, %if.end12.snd_sof_dsp_read.exit.thread_crit_edge
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %do.body31

snd_sof_dsp_read.exit:                            ; preds = %if.then68.snd_sof_dsp_read.exit_crit_edge, %snd_sof_dsp_read.exit.lr.ph
  %24 = phi ptr [ %21, %snd_sof_dsp_read.exit.lr.ph ], [ %50, %if.then68.snd_sof_dsp_read.exit_crit_edge ]
  %25 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add
  %call.i = tail call i32 %24(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %snd_sof_dsp_read.exit.do.body31_crit_edge, label %land.lhs.true

snd_sof_dsp_read.exit.do.body31_crit_edge:        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

do.body31:                                        ; preds = %snd_sof_dsp_read.exit.do.body31_crit_edge, %snd_sof_dsp_read.exit.thread
  %retval.0.i395583 = phi i32 [ -524, %snd_sof_dsp_read.exit.thread ], [ %call.i, %snd_sof_dsp_read.exit.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_hw_params, %if.then36)) #5
          to label %for.end [label %if.then36], !srcloc !147

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug254, ptr noundef %28, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %retval.0.i395583) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call43 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then47, label %if.then68

if.then47:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 4
  %desc.i398 = getelementptr inbounds %struct.snd_sof_pdata, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %desc.i398 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc.i398, align 4
  %ops.i399 = getelementptr inbounds %struct.sof_dev_desc, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %ops.i399 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i399, align 4
  %read.i400 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %read.i400 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i400, align 4
  %tobool.not.i401 = icmp eq ptr %36, null
  br i1 %tobool.not.i401, label %do.end.i406, label %if.then.i405

if.then.i405:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i403 = getelementptr i8, ptr %38, i32 %add
  %call.i404 = tail call i32 %36(ptr noundef %sdev, ptr noundef %add.ptr.i403) #5
  br label %snd_sof_dsp_read.exit408

do.end.i406:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit408

snd_sof_dsp_read.exit408:                         ; preds = %do.end.i406, %if.then.i405
  %retval.0.i407 = phi i32 [ %call.i404, %if.then.i405 ], [ -524, %do.end.i406 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_hw_params, %if.then61)) #5
          to label %for.end [label %if.then61], !srcloc !147

if.then61:                                        ; preds = %snd_sof_dsp_read.exit408
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug255, ptr noundef %42, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %retval.0.i407) #5
  br label %for.end

if.then68:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  %43 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.then68.snd_sof_dsp_read.exit.thread_crit_edge, label %if.then68.snd_sof_dsp_read.exit_crit_edge

if.then68.snd_sof_dsp_read.exit_crit_edge:        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit

if.then68.snd_sof_dsp_read.exit.thread_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit.thread

for.end:                                          ; preds = %if.then61, %snd_sof_dsp_read.exit408, %if.then36, %do.body31
  %run.0 = phi i32 [ %retval.0.i407, %if.then61 ], [ %retval.0.i395583, %if.then36 ], [ %retval.0.i395583, %do.body31 ], [ %retval.0.i407, %snd_sof_dsp_read.exit408 ]
  %and72 = and i32 %run.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end86, label %if.then78

if.then78:                                        ; preds = %for.end
  %substream.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 10
  %51 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream.i, align 4
  %tobool.not.i409 = icmp eq ptr %52, null
  br i1 %tobool.not.i409, label %if.else.i, label %if.then.i410

if.then.i410:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %52, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then78
  %cstream.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 11
  %53 = ptrtoint ptr %cstream.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cstream.i, align 8
  %tobool2.not.i = icmp eq ptr %54, null
  br i1 %tobool2.not.i, label %if.else6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %private_data5.i = getelementptr inbounds %struct.snd_compr_stream, ptr %54, i32 0, i32 10
  br label %if.end8.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %direction.i.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %55 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %direction.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i = icmp eq i32 %56, 0
  %.str.62..str.63.i.i = select i1 %cmp.i.i, ptr @.str.62, ptr @.str.63
  %stream_tag.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %57 = ptrtoint ptr %stream_tag.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %stream_tag.i, align 8
  %conv.i = zext i8 %58 to i32
  %call7.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.60, ptr noundef nonnull %.str.62..str.63.i.i, i32 noundef %conv.i) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit

if.end8.i:                                        ; preds = %if.then3.i, %if.then.i410
  %rtd.0.in.i = phi ptr [ %private_data.i, %if.then.i410 ], [ %private_data5.i, %if.then3.i ]
  %59 = ptrtoint ptr %rtd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %rtd.0.i = load ptr, ptr %rtd.0.in.i, align 4
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd.0.i, i32 0, i32 2
  %60 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dai_link.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %direction.i21.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %64 = ptrtoint ptr %direction.i21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %direction.i21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i22.i = icmp eq i32 %65, 0
  %.str.62..str.63.i23.i = select i1 %cmp.i22.i, ptr @.str.62, ptr @.str.63
  %stream_tag10.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %66 = ptrtoint ptr %stream_tag10.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %stream_tag10.i, align 8
  %conv11.i = zext i8 %67 to i32
  %call12.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.61, ptr noundef %63, ptr noundef nonnull %.str.62..str.63.i23.i, i32 noundef %conv11.i) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit

hda_hstream_dbg_get_stream_info_str.exit:         ; preds = %if.end8.i, %if.else6.i
  %retval.0.i411 = phi ptr [ %call12.i, %if.end8.i ], [ %call7.i, %if.else6.i ]
  %68 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev, align 4
  %tobool84.not = icmp eq ptr %retval.0.i411, null
  %spec.select = select i1 %tobool84.not, ptr @.str.22, ptr %retval.0.i411
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, ptr noundef nonnull %spec.select) #8
  tail call void @kfree(ptr noundef %retval.0.i411) #5
  br label %cleanup

if.end86:                                         ; preds = %for.end
  %add87 = add nuw nsw i32 %mul, 131
  %call88 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add87, i32 noundef 28, i32 noundef 28) #5
  %call89 = tail call fastcc i32 @hda_dsp_stream_reset(ptr noundef %sdev, ptr noundef nonnull %stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end86.cleanup_crit_edge, label %if.end93

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end93:                                         ; preds = %if.end86
  %posbuf = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 2
  %70 = ptrtoint ptr %posbuf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %posbuf, align 4
  %tobool94.not = icmp eq ptr %71, null
  br i1 %tobool94.not, label %if.end93.if.end97_crit_edge, label %if.then95

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %71, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end93.if.end97_crit_edge
  %add98 = add nuw nsw i32 %mul, 152
  %73 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata, align 4
  %desc.i413 = getelementptr inbounds %struct.snd_sof_pdata, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %desc.i413 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc.i413, align 4
  %ops.i414 = getelementptr inbounds %struct.sof_dev_desc, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %ops.i414 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i414, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write.i, align 4
  %tobool.not.i415 = icmp eq ptr %80, null
  br i1 %tobool.not.i415, label %do.body.i, label %if.then.i418

if.then.i418:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i416 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %81 = ptrtoint ptr %bar5.i416 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bar5.i416, align 4
  %add.ptr.i417 = getelementptr i8, ptr %82, i32 %add98
  tail call void %80(ptr noundef %sdev, ptr noundef %add.ptr.i417, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.end97
  %call.i419 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %tobool6.not.i = icmp eq i32 %call.i419, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i420

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit

do.end.i420:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i420, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i418
  %add99 = add nuw nsw i32 %mul, 156
  %85 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdata, align 4
  %desc.i422 = getelementptr inbounds %struct.snd_sof_pdata, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %desc.i422 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc.i422, align 4
  %ops.i423 = getelementptr inbounds %struct.sof_dev_desc, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %ops.i423 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i423, align 4
  %write.i424 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %write.i424 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write.i424, align 4
  %tobool.not.i425 = icmp eq ptr %92, null
  br i1 %tobool.not.i425, label %do.body.i431, label %if.then.i428

if.then.i428:                                     ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i426 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %93 = ptrtoint ptr %bar5.i426 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bar5.i426, align 4
  %add.ptr.i427 = getelementptr i8, ptr %94, i32 %add99
  tail call void %92(ptr noundef %sdev, ptr noundef %add.ptr.i427, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit433

do.body.i431:                                     ; preds = %snd_sof_dsp_write.exit
  %call.i429 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i429)
  %tobool6.not.i430 = icmp eq i32 %call.i429, 0
  br i1 %tobool6.not.i430, label %do.body.i431.snd_sof_dsp_write.exit433_crit_edge, label %do.end.i432

do.body.i431.snd_sof_dsp_write.exit433_crit_edge: ; preds = %do.body.i431
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit433

do.end.i432:                                      ; preds = %do.body.i431
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit433

snd_sof_dsp_write.exit433:                        ; preds = %do.end.i432, %do.body.i431.snd_sof_dsp_write.exit433_crit_edge, %if.then.i428
  %call100 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 30, i32 noundef 0) #5
  %call104 = tail call i64 @ktime_get() #5
  %add.i434 = add i64 %call104, 300000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 549) #5
  %97 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdata, align 4
  %desc.i436602 = getelementptr inbounds %struct.snd_sof_pdata, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %desc.i436602 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc.i436602, align 4
  %ops.i437603 = getelementptr inbounds %struct.sof_dev_desc, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %ops.i437603 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i437603, align 4
  %read.i438604 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %read.i438604 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read.i438604, align 4
  %tobool.not.i439605 = icmp eq ptr %104, null
  br i1 %tobool.not.i439605, label %snd_sof_dsp_write.exit433.snd_sof_dsp_read.exit446.thread_crit_edge, label %snd_sof_dsp_read.exit446.lr.ph

snd_sof_dsp_write.exit433.snd_sof_dsp_read.exit446.thread_crit_edge: ; preds = %snd_sof_dsp_write.exit433
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit446.thread

snd_sof_dsp_read.exit446.lr.ph:                   ; preds = %snd_sof_dsp_write.exit433
  %bar5.i440 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %snd_sof_dsp_read.exit446

snd_sof_dsp_read.exit446.thread:                  ; preds = %if.then169.snd_sof_dsp_read.exit446.thread_crit_edge, %snd_sof_dsp_write.exit433.snd_sof_dsp_read.exit446.thread_crit_edge
  %105 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %do.body124

snd_sof_dsp_read.exit446:                         ; preds = %if.then169.snd_sof_dsp_read.exit446_crit_edge, %snd_sof_dsp_read.exit446.lr.ph
  %107 = phi ptr [ %104, %snd_sof_dsp_read.exit446.lr.ph ], [ %133, %if.then169.snd_sof_dsp_read.exit446_crit_edge ]
  %108 = ptrtoint ptr %bar5.i440 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bar5.i440, align 4
  %add.ptr.i441 = getelementptr i8, ptr %109, i32 %add
  %call.i442 = tail call i32 %107(ptr noundef %sdev, ptr noundef %add.ptr.i441) #5
  %and121 = and i32 %call.i442, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %snd_sof_dsp_read.exit446.do.body124_crit_edge, label %land.lhs.true143

snd_sof_dsp_read.exit446.do.body124_crit_edge:    ; preds = %snd_sof_dsp_read.exit446
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

do.body124:                                       ; preds = %snd_sof_dsp_read.exit446.do.body124_crit_edge, %snd_sof_dsp_read.exit446.thread
  %retval.0.i445589 = phi i32 [ -524, %snd_sof_dsp_read.exit446.thread ], [ %call.i442, %snd_sof_dsp_read.exit446.do.body124_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_hw_params, %if.then136)) #5
          to label %for.end173 [label %if.then136], !srcloc !147

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug256, ptr noundef %111, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %retval.0.i445589) #5
  br label %for.end173

land.lhs.true143:                                 ; preds = %snd_sof_dsp_read.exit446
  %call144 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call144, i64 %add.i434)
  %cmp3.i448 = icmp sgt i64 %call144, %add.i434
  br i1 %cmp3.i448, label %if.then148, label %if.then169

if.then148:                                       ; preds = %land.lhs.true143
  %112 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdata, align 4
  %desc.i452 = getelementptr inbounds %struct.snd_sof_pdata, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %desc.i452 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc.i452, align 4
  %ops.i453 = getelementptr inbounds %struct.sof_dev_desc, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %ops.i453 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops.i453, align 4
  %read.i454 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %read.i454 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read.i454, align 4
  %tobool.not.i455 = icmp eq ptr %119, null
  br i1 %tobool.not.i455, label %do.end.i460, label %if.then.i459

if.then.i459:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %bar5.i440 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bar5.i440, align 4
  %add.ptr.i457 = getelementptr i8, ptr %121, i32 %add
  %call.i458 = tail call i32 %119(ptr noundef %sdev, ptr noundef %add.ptr.i457) #5
  br label %snd_sof_dsp_read.exit462

do.end.i460:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit462

snd_sof_dsp_read.exit462:                         ; preds = %do.end.i460, %if.then.i459
  %retval.0.i461 = phi i32 [ %call.i458, %if.then.i459 ], [ -524, %do.end.i460 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_hw_params, %if.then162)) #5
          to label %for.end173 [label %if.then162], !srcloc !147

if.then162:                                       ; preds = %snd_sof_dsp_read.exit462
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug257, ptr noundef %125, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %retval.0.i461) #5
  br label %for.end173

if.then169:                                       ; preds = %land.lhs.true143
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  %126 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdata, align 4
  %desc.i436 = getelementptr inbounds %struct.snd_sof_pdata, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %desc.i436 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %desc.i436, align 4
  %ops.i437 = getelementptr inbounds %struct.sof_dev_desc, ptr %129, i32 0, i32 14
  %130 = ptrtoint ptr %ops.i437 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i437, align 4
  %read.i438 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %131, i32 0, i32 9
  %132 = ptrtoint ptr %read.i438 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read.i438, align 4
  %tobool.not.i439 = icmp eq ptr %133, null
  br i1 %tobool.not.i439, label %if.then169.snd_sof_dsp_read.exit446.thread_crit_edge, label %if.then169.snd_sof_dsp_read.exit446_crit_edge

if.then169.snd_sof_dsp_read.exit446_crit_edge:    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit446

if.then169.snd_sof_dsp_read.exit446.thread_crit_edge: ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_read.exit446.thread

for.end173:                                       ; preds = %if.then162, %snd_sof_dsp_read.exit462, %if.then136, %do.body124
  %run.1 = phi i32 [ %retval.0.i461, %if.then162 ], [ %retval.0.i445589, %if.then136 ], [ %retval.0.i445589, %do.body124 ], [ %retval.0.i461, %snd_sof_dsp_read.exit462 ]
  %and175 = and i32 %run.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end194, label %if.then182

if.then182:                                       ; preds = %for.end173
  %substream.i463 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 10
  %134 = ptrtoint ptr %substream.i463 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %substream.i463, align 4
  %tobool.not.i464 = icmp eq ptr %135, null
  br i1 %tobool.not.i464, label %if.else.i469, label %if.then.i466

if.then.i466:                                     ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  %private_data.i465 = getelementptr inbounds %struct.snd_pcm_substream, ptr %135, i32 0, i32 2
  br label %if.end8.i488

if.else.i469:                                     ; preds = %if.then182
  %cstream.i467 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 11
  %136 = ptrtoint ptr %cstream.i467 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cstream.i467, align 8
  %tobool2.not.i468 = icmp eq ptr %137, null
  br i1 %tobool2.not.i468, label %if.else6.i478, label %if.then3.i471

if.then3.i471:                                    ; preds = %if.else.i469
  call void @__sanitizer_cov_trace_pc() #7
  %private_data5.i470 = getelementptr inbounds %struct.snd_compr_stream, ptr %137, i32 0, i32 10
  br label %if.end8.i488

if.else6.i478:                                    ; preds = %if.else.i469
  call void @__sanitizer_cov_trace_pc() #7
  %direction.i.i472 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %138 = ptrtoint ptr %direction.i.i472 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %direction.i.i472, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i.i473 = icmp eq i32 %139, 0
  %.str.62..str.63.i.i474 = select i1 %cmp.i.i473, ptr @.str.62, ptr @.str.63
  %stream_tag.i475 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %140 = ptrtoint ptr %stream_tag.i475 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %stream_tag.i475, align 8
  %conv.i476 = zext i8 %141 to i32
  %call7.i477 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.60, ptr noundef nonnull %.str.62..str.63.i.i474, i32 noundef %conv.i476) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit490

if.end8.i488:                                     ; preds = %if.then3.i471, %if.then.i466
  %rtd.0.in.i479 = phi ptr [ %private_data.i465, %if.then.i466 ], [ %private_data5.i470, %if.then3.i471 ]
  %142 = ptrtoint ptr %rtd.0.in.i479 to i32
  call void @__asan_load4_noabort(i32 %142)
  %rtd.0.i480 = load ptr, ptr %rtd.0.in.i479, align 4
  %dai_link.i481 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd.0.i480, i32 0, i32 2
  %143 = ptrtoint ptr %dai_link.i481 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dai_link.i481, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %direction.i21.i482 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %147 = ptrtoint ptr %direction.i21.i482 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %direction.i21.i482, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i22.i483 = icmp eq i32 %148, 0
  %.str.62..str.63.i23.i484 = select i1 %cmp.i22.i483, ptr @.str.62, ptr @.str.63
  %stream_tag10.i485 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %149 = ptrtoint ptr %stream_tag10.i485 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %stream_tag10.i485, align 8
  %conv11.i486 = zext i8 %150 to i32
  %call12.i487 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.61, ptr noundef %146, ptr noundef nonnull %.str.62..str.63.i23.i484, i32 noundef %conv11.i486) #5
  br label %hda_hstream_dbg_get_stream_info_str.exit490

hda_hstream_dbg_get_stream_info_str.exit490:      ; preds = %if.end8.i488, %if.else6.i478
  %retval.0.i489 = phi ptr [ %call12.i487, %if.end8.i488 ], [ %call7.i477, %if.else6.i478 ]
  %151 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sdev, align 4
  %tobool189.not = icmp eq ptr %retval.0.i489, null
  %spec.select384 = select i1 %tobool189.not, ptr @.str.22, ptr %retval.0.i489
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, ptr noundef nonnull %spec.select384) #8
  tail call void @kfree(ptr noundef %retval.0.i489) #5
  br label %cleanup

if.end194:                                        ; preds = %for.end173
  %call196 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add87, i32 noundef 28, i32 noundef 28) #5
  %frags = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 6
  %153 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %frags, align 4
  %call197 = tail call i32 @hda_dsp_stream_setup_bdl(ptr noundef %sdev, ptr noundef nonnull %dmab, ptr noundef nonnull %stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %do.end203, label %if.end205

do.end203:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end205:                                        ; preds = %if.end194
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %156 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %stream_tag, align 8
  %conv206 = zext i8 %157 to i32
  %shl207 = shl nuw nsw i32 %conv206, 20
  %call208 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 15728640, i32 noundef %shl207) #5
  %158 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdata, align 4
  %desc.i492 = getelementptr inbounds %struct.snd_sof_pdata, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %desc.i492 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %desc.i492, align 4
  %ops.i493 = getelementptr inbounds %struct.sof_dev_desc, ptr %161, i32 0, i32 14
  %162 = ptrtoint ptr %ops.i493 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i493, align 4
  %write.i494 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %write.i494 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write.i494, align 4
  %tobool.not.i495 = icmp eq ptr %165, null
  br i1 %tobool.not.i495, label %do.body.i501, label %if.then.i498

if.then.i498:                                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 4
  %166 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bufsize, align 4
  %add209 = add nuw nsw i32 %mul, 136
  %bar5.i496 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %168 = ptrtoint ptr %bar5.i496 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bar5.i496, align 4
  %add.ptr.i497 = getelementptr i8, ptr %169, i32 %add209
  tail call void %165(ptr noundef %sdev, ptr noundef %add.ptr.i497, i32 noundef %167) #5
  br label %snd_sof_dsp_write.exit503

do.body.i501:                                     ; preds = %if.end205
  %call.i499 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i499)
  %tobool6.not.i500 = icmp eq i32 %call.i499, 0
  br i1 %tobool6.not.i500, label %do.body.i501.snd_sof_dsp_write.exit503_crit_edge, label %do.end.i502

do.body.i501.snd_sof_dsp_write.exit503_crit_edge: ; preds = %do.body.i501
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit503

do.end.i502:                                      ; preds = %do.body.i501
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit503

snd_sof_dsp_write.exit503:                        ; preds = %do.end.i502, %do.body.i501.snd_sof_dsp_write.exit503_crit_edge, %if.then.i498
  %quirks = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 13
  %172 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %quirks, align 4
  %and210 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %snd_sof_dsp_write.exit503.if.end214_crit_edge, label %if.then212

snd_sof_dsp_write.exit503.if.end214_crit_edge:    ; preds = %snd_sof_dsp_write.exit503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then212:                                       ; preds = %snd_sof_dsp_write.exit503
  call void @__sanitizer_cov_trace_pc() #7
  %call213 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef %shl, i32 noundef 0) #5
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %snd_sof_dsp_write.exit503.if.end214_crit_edge
  %add215 = add nuw nsw i32 %mul, 146
  %format_val = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 12
  %174 = ptrtoint ptr %format_val to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %format_val, align 4
  %call216 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add215, i32 noundef 65535, i32 noundef %175) #5
  %176 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %quirks, align 4
  %and218 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.end214.if.end222_crit_edge, label %if.then220

if.end214.if.end222_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end222

if.then220:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  %call221 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #5
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.end214.if.end222_crit_edge
  %add223 = add nuw nsw i32 %mul, 140
  %178 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %frags, align 4
  %sub = add i32 %179, -1
  %call225 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add223, i32 noundef 65535, i32 noundef %sub) #5
  %180 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pdata, align 4
  %desc.i505 = getelementptr inbounds %struct.snd_sof_pdata, ptr %181, i32 0, i32 6
  %182 = ptrtoint ptr %desc.i505 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %desc.i505, align 4
  %ops.i506 = getelementptr inbounds %struct.sof_dev_desc, ptr %183, i32 0, i32 14
  %184 = ptrtoint ptr %ops.i506 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i506, align 4
  %write.i507 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %185, i32 0, i32 8
  %186 = ptrtoint ptr %write.i507 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write.i507, align 4
  %tobool.not.i508 = icmp eq ptr %187, null
  br i1 %tobool.not.i508, label %do.body.i514, label %if.then.i511

if.then.i511:                                     ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 1, i32 2
  %188 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %addr, align 4
  %bar5.i509 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %190 = ptrtoint ptr %bar5.i509 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bar5.i509, align 4
  %add.ptr.i510 = getelementptr i8, ptr %191, i32 %add98
  tail call void %187(ptr noundef %sdev, ptr noundef %add.ptr.i510, i32 noundef %189) #5
  br label %snd_sof_dsp_write.exit516

do.body.i514:                                     ; preds = %if.end222
  %call.i512 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i512)
  %tobool6.not.i513 = icmp eq i32 %call.i512, 0
  br i1 %tobool6.not.i513, label %do.body.i514.snd_sof_dsp_write.exit516_crit_edge, label %do.end.i515

do.body.i514.snd_sof_dsp_write.exit516_crit_edge: ; preds = %do.body.i514
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit516

do.end.i515:                                      ; preds = %do.body.i514
  call void @__sanitizer_cov_trace_pc() #7
  %192 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit516

snd_sof_dsp_write.exit516:                        ; preds = %do.end.i515, %do.body.i514.snd_sof_dsp_write.exit516_crit_edge, %if.then.i511
  %194 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdata, align 4
  %desc.i518 = getelementptr inbounds %struct.snd_sof_pdata, ptr %195, i32 0, i32 6
  %196 = ptrtoint ptr %desc.i518 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %desc.i518, align 4
  %ops.i519 = getelementptr inbounds %struct.sof_dev_desc, ptr %197, i32 0, i32 14
  %198 = ptrtoint ptr %ops.i519 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops.i519, align 4
  %write.i520 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %199, i32 0, i32 8
  %200 = ptrtoint ptr %write.i520 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write.i520, align 4
  %tobool.not.i521 = icmp eq ptr %201, null
  br i1 %tobool.not.i521, label %do.body.i527, label %if.then.i524

if.then.i524:                                     ; preds = %snd_sof_dsp_write.exit516
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i522 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %202 = ptrtoint ptr %bar5.i522 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bar5.i522, align 4
  %add.ptr.i523 = getelementptr i8, ptr %203, i32 %add99
  tail call void %201(ptr noundef %sdev, ptr noundef %add.ptr.i523, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit529

do.body.i527:                                     ; preds = %snd_sof_dsp_write.exit516
  %call.i525 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i525)
  %tobool6.not.i526 = icmp eq i32 %call.i525, 0
  br i1 %tobool6.not.i526, label %do.body.i527.snd_sof_dsp_write.exit529_crit_edge, label %do.end.i528

do.body.i527.snd_sof_dsp_write.exit529_crit_edge: ; preds = %do.body.i527
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit529

do.end.i528:                                      ; preds = %do.body.i527
  call void @__sanitizer_cov_trace_pc() #7
  %204 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit529

snd_sof_dsp_write.exit529:                        ; preds = %do.end.i528, %do.body.i527.snd_sof_dsp_write.exit529_crit_edge, %if.then.i524
  %use_posbuf = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %7, i32 0, i32 1, i32 0, i32 28
  %206 = ptrtoint ptr %use_posbuf to i32
  call void @__asan_load2_noabort(i32 %206)
  %bf.load = load i16, ptr %use_posbuf, align 4
  %207 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %bf.cast.not = icmp eq i16 %207, 0
  br i1 %bf.cast.not, label %snd_sof_dsp_write.exit529.if.end248_crit_edge, label %land.lhs.true233

snd_sof_dsp_write.exit529.if.end248_crit_edge:    ; preds = %snd_sof_dsp_write.exit529
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

land.lhs.true233:                                 ; preds = %snd_sof_dsp_write.exit529
  %addr235 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %7, i32 0, i32 1, i32 0, i32 25, i32 2
  %208 = ptrtoint ptr %addr235 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %addr235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool236.not = icmp eq i32 %209, 0
  br i1 %tobool236.not, label %land.lhs.true233.if.end248_crit_edge, label %land.lhs.true237

land.lhs.true233.if.end248_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

land.lhs.true237:                                 ; preds = %land.lhs.true233
  %210 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdata, align 4
  %desc.i531 = getelementptr inbounds %struct.snd_sof_pdata, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %desc.i531 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %desc.i531, align 4
  %ops.i532 = getelementptr inbounds %struct.sof_dev_desc, ptr %213, i32 0, i32 14
  %214 = ptrtoint ptr %ops.i532 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i532, align 4
  %read.i533 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %215, i32 0, i32 9
  %216 = ptrtoint ptr %read.i533 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read.i533, align 4
  %tobool.not.i534 = icmp eq ptr %217, null
  br i1 %tobool.not.i534, label %snd_sof_dsp_read.exit541.thread, label %snd_sof_dsp_read.exit541

snd_sof_dsp_read.exit541.thread:                  ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #7
  %218 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %if.then241

snd_sof_dsp_read.exit541:                         ; preds = %land.lhs.true237
  %bar5.i535 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %220 = ptrtoint ptr %bar5.i535 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %bar5.i535, align 4
  %add.ptr.i536 = getelementptr i8, ptr %221, i32 112
  %call.i537 = tail call i32 %217(ptr noundef %sdev, ptr noundef %add.ptr.i536) #5
  %and239 = and i32 %call.i537, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %snd_sof_dsp_read.exit541.if.then241_crit_edge, label %snd_sof_dsp_read.exit541.if.end248_crit_edge

snd_sof_dsp_read.exit541.if.end248_crit_edge:     ; preds = %snd_sof_dsp_read.exit541
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

snd_sof_dsp_read.exit541.if.then241_crit_edge:    ; preds = %snd_sof_dsp_read.exit541
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then241

if.then241:                                       ; preds = %snd_sof_dsp_read.exit541.if.then241_crit_edge, %snd_sof_dsp_read.exit541.thread
  %222 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pdata, align 4
  %desc.i543 = getelementptr inbounds %struct.snd_sof_pdata, ptr %223, i32 0, i32 6
  %224 = ptrtoint ptr %desc.i543 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %desc.i543, align 4
  %ops.i544 = getelementptr inbounds %struct.sof_dev_desc, ptr %225, i32 0, i32 14
  %226 = ptrtoint ptr %ops.i544 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops.i544, align 4
  %write.i545 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %227, i32 0, i32 8
  %228 = ptrtoint ptr %write.i545 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write.i545, align 4
  %tobool.not.i546 = icmp eq ptr %229, null
  br i1 %tobool.not.i546, label %do.body.i552, label %if.then.i549

if.then.i549:                                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i547 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %230 = ptrtoint ptr %bar5.i547 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bar5.i547, align 4
  %add.ptr.i548 = getelementptr i8, ptr %231, i32 116
  tail call void %229(ptr noundef %sdev, ptr noundef %add.ptr.i548, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit554

do.body.i552:                                     ; preds = %if.then241
  %call.i550 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i550)
  %tobool6.not.i551 = icmp eq i32 %call.i550, 0
  br i1 %tobool6.not.i551, label %do.body.i552.snd_sof_dsp_write.exit554_crit_edge, label %do.end.i553

do.body.i552.snd_sof_dsp_write.exit554_crit_edge: ; preds = %do.body.i552
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit554

do.end.i553:                                      ; preds = %do.body.i552
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit554

snd_sof_dsp_write.exit554:                        ; preds = %do.end.i553, %do.body.i552.snd_sof_dsp_write.exit554_crit_edge, %if.then.i549
  %234 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pdata, align 4
  %desc.i556 = getelementptr inbounds %struct.snd_sof_pdata, ptr %235, i32 0, i32 6
  %236 = ptrtoint ptr %desc.i556 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %desc.i556, align 4
  %ops.i557 = getelementptr inbounds %struct.sof_dev_desc, ptr %237, i32 0, i32 14
  %238 = ptrtoint ptr %ops.i557 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops.i557, align 4
  %write.i558 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %239, i32 0, i32 8
  %240 = ptrtoint ptr %write.i558 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %write.i558, align 4
  %tobool.not.i559 = icmp eq ptr %241, null
  br i1 %tobool.not.i559, label %do.body.i565, label %if.then.i562

if.then.i562:                                     ; preds = %snd_sof_dsp_write.exit554
  call void @__sanitizer_cov_trace_pc() #7
  %242 = ptrtoint ptr %addr235 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %addr235, align 4
  %or = or i32 %243, 1
  %bar5.i560 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %244 = ptrtoint ptr %bar5.i560 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bar5.i560, align 4
  %add.ptr.i561 = getelementptr i8, ptr %245, i32 112
  tail call void %241(ptr noundef %sdev, ptr noundef %add.ptr.i561, i32 noundef %or) #5
  br label %if.end248

do.body.i565:                                     ; preds = %snd_sof_dsp_write.exit554
  %call.i563 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i563)
  %tobool6.not.i564 = icmp eq i32 %call.i563, 0
  br i1 %tobool6.not.i564, label %do.body.i565.if.end248_crit_edge, label %do.end.i566

do.body.i565.if.end248_crit_edge:                 ; preds = %do.body.i565
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

do.end.i566:                                      ; preds = %do.body.i565
  call void @__sanitizer_cov_trace_pc() #7
  %246 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %if.end248

if.end248:                                        ; preds = %do.end.i566, %do.body.i565.if.end248_crit_edge, %if.then.i562, %snd_sof_dsp_read.exit541.if.end248_crit_edge, %land.lhs.true233.if.end248_crit_edge, %snd_sof_dsp_write.exit529.if.end248_crit_edge
  %call249 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 28, i32 noundef 28) #5
  %direction = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %248 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp250 = icmp eq i32 %249, 0
  br i1 %cmp250, label %if.then252, label %if.else

if.then252:                                       ; preds = %if.end248
  %250 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pdata, align 4
  %desc.i569 = getelementptr inbounds %struct.snd_sof_pdata, ptr %251, i32 0, i32 6
  %252 = ptrtoint ptr %desc.i569 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %desc.i569, align 4
  %ops.i570 = getelementptr inbounds %struct.sof_dev_desc, ptr %253, i32 0, i32 14
  %254 = ptrtoint ptr %ops.i570 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ops.i570, align 4
  %read.i571 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %read.i571 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read.i571, align 4
  %tobool.not.i572 = icmp eq ptr %257, null
  br i1 %tobool.not.i572, label %do.end.i577, label %if.then.i576

if.then.i576:                                     ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #7
  %add253 = add nuw nsw i32 %mul, 144
  %bar5.i573 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %258 = ptrtoint ptr %bar5.i573 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %bar5.i573, align 4
  %add.ptr.i574 = getelementptr i8, ptr %259, i32 %add253
  %call.i575 = tail call i32 %257(ptr noundef %sdev, ptr noundef %add.ptr.i574) #5
  %phi.bo = and i32 %call.i575, 65535
  %phi.bo595 = add nuw nsw i32 %phi.bo, 1
  br label %snd_sof_dsp_read.exit579

do.end.i577:                                      ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #7
  %260 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit579

snd_sof_dsp_read.exit579:                         ; preds = %do.end.i577, %if.then.i576
  %retval.0.i578 = phi i32 [ %phi.bo595, %if.then.i576 ], [ 65013, %do.end.i577 ]
  %fifo_size = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 7
  %262 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %retval.0.i578, ptr %fifo_size, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_size259 = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 7
  %263 = ptrtoint ptr %fifo_size259 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %fifo_size259, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %snd_sof_dsp_read.exit579, %do.end203, %hda_hstream_dbg_get_stream_info_str.exit490, %if.end86.cleanup_crit_edge, %hda_hstream_dbg_get_stream_info_str.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ -110, %hda_hstream_dbg_get_stream_info_str.exit ], [ -110, %hda_hstream_dbg_get_stream_info_str.exit490 ], [ %call197, %do.end203 ], [ -19, %do.end10 ], [ -19, %do.end ], [ %call89, %if.end86.cleanup_crit_edge ], [ %call197, %if.else ], [ %call197, %snd_sof_dsp_read.exit579 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_dsp_stream_reset(ptr noundef %sdev, ptr nocapture noundef readonly %hstream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.hdac_stream, ptr %hstream, i32 0, i32 14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 1, i32 noundef 1) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 300, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %do.cond

snd_sof_dsp_read.exit:                            ; preds = %do.body
  %12 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  %call.i = tail call i32 %9(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_sof_dsp_read.exit.do.cond_crit_edge, label %if.end8

snd_sof_dsp_read.exit.do.cond_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond:                                          ; preds = %snd_sof_dsp_read.exit.do.cond_crit_edge, %snd_sof_dsp_read.exit.thread
  %dec = add nsw i32 %timeout.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end7, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end7:                                          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.64) #8
  br label %cleanup

if.end8:                                          ; preds = %snd_sof_dsp_read.exit
  %call9 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 1, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 644244) #5
  br label %do.body10

do.body10:                                        ; preds = %do.cond17.do.body10_crit_edge, %if.end8
  %timeout.2 = phi i32 [ 300, %if.end8 ], [ %dec18, %do.cond17.do.body10_crit_edge ]
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 4
  %desc.i44 = getelementptr inbounds %struct.snd_sof_pdata, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %desc.i44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i44, align 4
  %ops.i45 = getelementptr inbounds %struct.sof_dev_desc, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i45, align 4
  %read.i46 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %read.i46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i46, align 4
  %tobool.not.i47 = icmp eq ptr %24, null
  br i1 %tobool.not.i47, label %snd_sof_dsp_read.exit54.thread, label %snd_sof_dsp_read.exit54

snd_sof_dsp_read.exit54.thread:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %cleanup

snd_sof_dsp_read.exit54:                          ; preds = %do.body10
  %27 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %28, i32 %add
  %call.i50 = tail call i32 %24(ptr noundef %sdev, ptr noundef %add.ptr.i49) #5
  %and12 = and i32 %call.i50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %snd_sof_dsp_read.exit54.cleanup_crit_edge, label %do.cond17

snd_sof_dsp_read.exit54.cleanup_crit_edge:        ; preds = %snd_sof_dsp_read.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond17:                                        ; preds = %snd_sof_dsp_read.exit54
  %dec18 = add nsw i32 %timeout.2, -1
  %tobool19.not = icmp eq i32 %dec18, 0
  br i1 %tobool19.not, label %do.end26, label %do.cond17.do.body10_crit_edge

do.cond17.do.body10_crit_edge:                    ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.end26:                                         ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.67) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %snd_sof_dsp_read.exit54.cleanup_crit_edge, %snd_sof_dsp_read.exit54.thread, %do.end7
  %retval.0 = phi i32 [ -110, %do.end7 ], [ -110, %do.end26 ], [ 0, %snd_sof_dsp_read.exit54.thread ], [ 0, %snd_sof_dsp_read.exit54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_hw_free(ptr noundef %sdev, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pdata.i, align 4
  %index = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call fastcc i32 @hda_dsp_stream_reset(ptr noundef %sdev, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %7, i32 0, i32 1, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %link_locked = getelementptr inbounds %struct.hdac_ext_stream, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %link_locked to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %link_locked, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not = icmp eq i8 %11, 0
  br i1 %bf.cast.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef %shl, i32 noundef 0) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.5) #8
  br label %hda_dsp_stream_spib_config.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index, align 1
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 2, i32 noundef 4, i32 noundef %shl.i, i32 noundef 0) #5
  %spib_addr.i = getelementptr inbounds %struct.hdac_ext_stream, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %spib_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spib_addr.i, align 8
  tail call void @sof_io_write(ptr noundef %sdev, ptr noundef %19, i32 noundef 0) #5
  br label %hda_dsp_stream_spib_config.exit

hda_dsp_stream_spib_config.exit:                  ; preds = %if.end.i, %do.end.i
  %substream8 = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %substream8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %substream8, align 4
  br label %cleanup

cleanup:                                          ; preds = %hda_dsp_stream_spib_config.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hda_dsp_stream_spib_config.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hda_dsp_check_stream_irq(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %reg_lock = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp ne i32 %6, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  ret i1 %cmp.not
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_threaded_handler(i32 noundef %irq, ptr nocapture noundef readonly %context) local_unnamed_addr #0 align 64 {
entry:
  %prev_pos.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %reg_lock = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 32
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %stream_list.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %no_ipc_position.i = getelementptr %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %hda_dsp_stream_check.exit.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %hda_dsp_stream_check.exit.for.body_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !152
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  %8 = ptrtoint ptr %stream_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn77.i = load ptr, ptr %stream_list.i, align 4
  %cmp.not79.i = icmp eq ptr %.pn77.i, %stream_list.i
  br i1 %cmp.not79.i, label %for.body.hda_dsp_stream_check.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.hda_dsp_stream_check.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %hda_dsp_stream_check.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn81.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn77.i, %for.body.for.body.i_crit_edge ]
  %active.0.off080.i = phi i1 [ %active.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %for.body.for.body.i_crit_edge ]
  %s.082.i = getelementptr i8, ptr %.pn81.i, i32 -180
  %index.i = getelementptr i8, ptr %.pn81.i, i32 -99
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %opened.i = getelementptr i8, ptr %.pn81.i, i32 -92
  %11 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %opened.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %s.082.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s.082.i, align 8
  %sd_addr.i = getelementptr i8, ptr %.pn81.i, i32 -120
  %14 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 3
  %aligned_mmio.i.i = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 28
  %16 = ptrtoint ptr %aligned_mmio.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %aligned_mmio.i.i, align 4
  %17 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %bf.cast.not.i.i = icmp eq i16 %17, 0
  br i1 %bf.cast.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr7.i, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit.i

cond.false.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #5, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %conv.i.i = zext i8 %18 to i32
  br label %snd_hdac_reg_readb.exit.i

snd_hdac_reg_readb.exit.i:                        ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %conv.i.i, %cond.false.i.i ]
  %conv3.i.i = trunc i32 %cond.i.i to i8
  %19 = ptrtoint ptr %s.082.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s.082.i, align 8
  %21 = ptrtoint ptr %sd_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %22, i32 3
  %aligned_mmio.i66.i = getelementptr inbounds %struct.hdac_bus, ptr %20, i32 0, i32 28
  %23 = ptrtoint ptr %aligned_mmio.i66.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i67.i = load i16, ptr %aligned_mmio.i66.i, align 4
  %24 = and i16 %bf.load.i67.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast.not.i68.i = icmp eq i16 %24, 0
  br i1 %bf.cast.not.i68.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %snd_hdac_reg_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i69.i = and i32 %cond.i.i, 255
  call void @snd_hdac_aligned_write(i32 noundef %conv.i69.i, ptr noundef %add.ptr11.i, i32 noundef 255) #5
  br label %snd_hdac_reg_writeb.exit.i

do.body.i.i:                                      ; preds = %snd_hdac_reg_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  call void @arm_heavy_mb() #5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %conv3.i.i) #5, !srcloc !151
  br label %snd_hdac_reg_writeb.exit.i

snd_hdac_reg_writeb.exit.i:                       ; preds = %do.body.i.i, %if.then.i.i
  %substream.i = getelementptr i8, ptr %.pn81.i, i32 -112
  %25 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream.i, align 4
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %lor.lhs.false.thread.i

land.lhs.true14.i:                                ; preds = %snd_hdac_reg_writeb.exit.i
  %cstream.i = getelementptr i8, ptr %.pn81.i, i32 -108
  %27 = ptrtoint ptr %cstream.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cstream.i, align 8
  %tobool15.not.i = icmp eq ptr %28, null
  br i1 %tobool15.not.i, label %land.lhs.true14.i.for.inc.i_crit_edge, label %lor.lhs.false.i

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true14.i
  %29 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load16.i = load i8, ptr %opened.i, align 8
  %30 = and i8 %bf.load16.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %bf.cast18.not.i = icmp eq i8 %30, 0
  %31 = and i8 %conv3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp21.i = icmp eq i8 %31, 0
  %or.cond.i = or i1 %cmp21.i, %bf.cast18.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.else.i_crit_edge

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.thread.i:                           ; preds = %snd_hdac_reg_writeb.exit.i
  %32 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load1673.i = load i8, ptr %opened.i, align 8
  %33 = and i8 %bf.load1673.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %bf.cast18.not74.i = icmp eq i8 %33, 0
  %34 = and i8 %conv3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp2175.i = icmp eq i8 %34, 0
  %or.cond76.i = or i1 %cmp2175.i, %bf.cast18.not74.i
  br i1 %or.cond76.i, label %lor.lhs.false.thread.i.for.inc.i_crit_edge, label %land.lhs.true26.i

lor.lhs.false.thread.i.for.inc.i_crit_edge:       ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false.thread.i
  %35 = ptrtoint ptr %no_ipc_position.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %no_ipc_position.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool27.not.i = icmp eq i32 %36, 0
  br i1 %tobool27.not.i, label %land.lhs.true26.i.if.else.i_crit_edge, label %if.then28.i

land.lhs.true26.i.if.else.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then28.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @snd_sof_pcm_period_elapsed(ptr noundef nonnull %26) #5
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true26.i.if.else.i_crit_edge, %lor.lhs.false.i.if.else.i_crit_edge
  %cstream30.i = getelementptr i8, ptr %.pn81.i, i32 -108
  %37 = ptrtoint ptr %cstream30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cstream30.i, align 8
  %tobool31.not.i = icmp eq ptr %38, null
  br i1 %tobool31.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then32.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then32.i:                                      ; preds = %if.else.i
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %buffer_size.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prev_pos.i.i) #5
  %43 = ptrtoint ptr %prev_pos.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %prev_pos.i.i, align 8, !annotation !155
  %curr_pos.i.i = getelementptr i8, ptr %.pn81.i, i32 -84
  %44 = ptrtoint ptr %curr_pos.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %curr_pos.i.i, align 8
  %call.i70.i = call i64 @div64_u64_rem(i64 noundef %45, i64 noundef %42, ptr noundef nonnull %prev_pos.i.i) #5
  %posbuf.i.i.i = getelementptr i8, ptr %.pn81.i, i32 -144
  %46 = ptrtoint ptr %posbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %posbuf.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #5
  %conv.i71.i = zext i32 %50 to i64
  %51 = ptrtoint ptr %prev_pos.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %prev_pos.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %conv.i71.i)
  %cmp.i.i = icmp ugt i64 %52, %conv.i71.i
  br i1 %cmp.i.i, label %if.then.i72.i, label %if.else.i.i

if.then.i72.i:                                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub i64 %42, %52
  %add.i.i = add i64 %sub.i.i, %conv.i71.i
  br label %hda_dsp_set_bytes_transferred.exit.i

if.else.i.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub3.i.i = sub i64 %conv.i71.i, %52
  br label %hda_dsp_set_bytes_transferred.exit.i

hda_dsp_set_bytes_transferred.exit.i:             ; preds = %if.else.i.i, %if.then.i72.i
  %num_bytes.0.i.i = phi i64 [ %add.i.i, %if.then.i72.i ], [ %sub3.i.i, %if.else.i.i ]
  %53 = ptrtoint ptr %curr_pos.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %curr_pos.i.i, align 8
  %add5.i.i = add i64 %54, %num_bytes.0.i.i
  store i64 %add5.i.i, ptr %curr_pos.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prev_pos.i.i) #5
  %55 = ptrtoint ptr %cstream30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cstream30.i, align 8
  %runtime.i.i = getelementptr inbounds %struct.snd_compr_stream, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %runtime.i.i, align 4
  %sleep.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %58, i32 0, i32 8
  call void @__wake_up(ptr noundef %sleep.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %hda_dsp_set_bytes_transferred.exit.i, %if.else.i.for.inc.i_crit_edge, %if.then28.i, %lor.lhs.false.thread.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %active.1.off0.i = phi i1 [ true, %if.then28.i ], [ true, %hda_dsp_set_bytes_transferred.exit.i ], [ true, %if.else.i.for.inc.i_crit_edge ], [ true, %lor.lhs.false.i.for.inc.i_crit_edge ], [ true, %land.lhs.true14.i.for.inc.i_crit_edge ], [ %active.0.off080.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %active.0.off080.i, %for.body.i.for.inc.i_crit_edge ], [ true, %lor.lhs.false.thread.i.for.inc.i_crit_edge ]
  %59 = ptrtoint ptr %.pn81.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.i = load ptr, ptr %.pn81.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %stream_list.i
  br i1 %cmp.not.i, label %for.inc.i.hda_dsp_stream_check.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.hda_dsp_stream_check.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hda_dsp_stream_check.exit

hda_dsp_stream_check.exit:                        ; preds = %for.inc.i.hda_dsp_stream_check.exit_crit_edge, %for.body.hda_dsp_stream_check.exit_crit_edge
  %active.0.off0.lcssa.i = phi i1 [ false, %for.body.hda_dsp_stream_check.exit_crit_edge ], [ %active.1.off0.i, %for.inc.i.hda_dsp_stream_check.exit_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %inc = add nuw nsw i32 %i.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.09)
  %cmp = icmp ugt i32 %i.09, 8
  %active.0.off0.not = xor i1 %active.0.off0.lcssa.i, true
  %brmerge = select i1 %cmp, i1 true, i1 %active.0.off0.not
  br i1 %brmerge, label %for.end, label %hda_dsp_stream_check.exit.for.body_crit_edge

hda_dsp_stream_check.exit.for.body_crit_edge:     ; preds = %hda_dsp_stream_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %hda_dsp_stream_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_stream_init(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %hbus.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %12 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar5.i, align 4
  %call.i = tail call i32 %11(ptr noundef %sdev, ptr noundef %13) #5
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i339 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_init.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_init.__UNIQUE_ID_ddebug258, ptr noundef %15, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i339) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_sof_dsp_read.exit
  %shr = lshr i32 %retval.0.i339, 8
  %and = and i32 %shr, 15
  %shr10 = lshr i32 %retval.0.i339, 12
  %and11 = and i32 %shr10, 15
  %add = add nuw nsw i32 %and11, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_stream_init.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_stream_init, %if.then24)) #5
          to label %if.end41 [label %if.then24], !srcloc !147

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_stream_init.__UNIQUE_ID_ddebug259, ptr noundef %17, ptr noundef nonnull @.str.41, i32 noundef %and11, i32 noundef %and) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then24, %do.end
  %mul = shl nuw nsw i32 %add, 3
  %posbuf = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25
  %call.i340 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %5, i32 noundef 0, i32 noundef %mul, ptr noundef %posbuf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %cmp44 = icmp slt i32 %call.i340, 0
  br i1 %cmp44, label %do.end48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp51353.not = icmp eq i32 %and, 0
  br i1 %cmp51353.not, label %for.cond.preheader.for.cond116.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond116.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond116.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %mul65 = shl nuw nsw i32 %add, 4
  %arrayidx70 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %area = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25, i32 1
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27, i32 1
  br label %for.body

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.47) #8
  br label %cleanup213

for.cond116.preheader:                            ; preds = %list_add_tail.exit.for.cond116.preheader_crit_edge, %for.cond.preheader.for.cond116.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp117356.not = icmp eq i32 %and11, 0
  br i1 %cmp117356.not, label %for.cond116.preheader.for.end212_crit_edge, label %for.body119.lr.ph

for.cond116.preheader.for.end212_crit_edge:       ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end212

for.body119.lr.ph:                                ; preds = %for.cond116.preheader
  %bar128 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %arrayidx129 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %mul137 = shl nuw nsw i32 %add, 4
  %arrayidx143 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %area199 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25, i32 1
  %stream_list206 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %prev.i345 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27, i32 1
  br label %for.body119

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %call.i341 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 344, i32 noundef 3520) #5
  %tobool54.not = icmp eq ptr %call.i341, null
  br i1 %tobool54.not, label %for.body.cleanup213_crit_edge, label %if.end56

for.body.cleanup213_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup213

if.end56:                                         ; preds = %for.body
  %22 = ptrtoint ptr %call.i341 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sdev, ptr %call.i341, align 8
  %hda_stream58 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %add.ptr59 = getelementptr i8, ptr %24, i32 16
  %mul60 = shl i32 %i.0354, 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr59, i32 %mul60
  %pphc_addr = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %pphc_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr61, ptr %pphc_addr, align 8
  %add.ptr66 = getelementptr i8, ptr %add.ptr59, i32 %mul65
  %add.ptr68 = getelementptr i8, ptr %add.ptr66, i32 %mul60
  %pplc_addr = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %pplc_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr68, ptr %pplc_addr, align 4
  %27 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %28, null
  br i1 %tobool71.not, label %if.end56.if.end85_crit_edge, label %if.then72

if.end56.if.end85_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then72:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr75 = getelementptr i8, ptr %28, i32 8
  %mul76 = shl i32 %i.0354, 3
  %add.ptr77 = getelementptr i8, ptr %add.ptr75, i32 %mul76
  %spib_addr = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %spib_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr77, ptr %spib_addr, align 8
  %add.ptr84 = getelementptr i8, ptr %add.ptr77, i32 4
  %fifo_addr = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr84, ptr %fifo_addr, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then72, %if.end56.if.end85_crit_edge
  %31 = ptrtoint ptr %hda_stream58 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %hbus.i, ptr %hda_stream58, align 8
  %shl = shl nuw i32 1, %i.0354
  %sd_int_sta_mask = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 9
  %32 = ptrtoint ptr %sd_int_sta_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl, ptr %sd_int_sta_mask, align 8
  %conv = trunc i32 %i.0354 to i8
  %index = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 14
  %33 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %index, align 1
  %conv89 = shl i32 %i.0354, 5
  %add91 = add nuw nsw i32 %conv89, 128
  %34 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar, align 4
  %add.ptr94 = getelementptr i8, ptr %35, i32 %add91
  %sd_addr = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 8
  %36 = ptrtoint ptr %sd_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr94, ptr %sd_addr, align 4
  %conv96 = add i8 %conv, 1
  %stream_tag = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 13
  %37 = ptrtoint ptr %stream_tag to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv96, ptr %stream_tag, align 8
  %opened = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 16
  %38 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %opened, align 8
  %bf.clear98 = and i8 %bf.load, 63
  store i8 %bf.clear98, ptr %opened, align 8
  %direction = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %direction, align 8
  %bdl = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 1
  %call.i342 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %5, i32 noundef 0, i32 noundef 4096, ptr noundef %bdl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %cmp102 = icmp slt i32 %call.i342, 0
  br i1 %cmp102, label %do.end107, label %if.end109

do.end107:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.50) #8
  br label %cleanup213

if.end109:                                        ; preds = %if.end85
  %42 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %area, align 4
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index, align 1
  %conv112 = zext i8 %45 to i32
  %mul113 = shl nuw nsw i32 %conv112, 3
  %add.ptr114 = getelementptr i8, ptr %43, i32 %mul113
  %posbuf115 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %posbuf115 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr114, ptr %posbuf115, align 4
  %list = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 23
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %48, ptr noundef %stream_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end109.list_add_tail.exit_crit_edge

if.end109.list_add_tail.exit_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list, ptr %prev.i, align 4
  %50 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %stream_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i341, i32 0, i32 1, i32 0, i32 23, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end109.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0354, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %list_add_tail.exit.for.cond116.preheader_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_add_tail.exit.for.cond116.preheader_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond116.preheader

for.body119:                                      ; preds = %list_add_tail.exit349.for.body119_crit_edge, %for.body119.lr.ph
  %i.1357 = phi i32 [ %and, %for.body119.lr.ph ], [ %inc211, %list_add_tail.exit349.for.body119_crit_edge ]
  %53 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdev, align 4
  %call.i343 = tail call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef 344, i32 noundef 3520) #5
  %tobool123.not = icmp eq ptr %call.i343, null
  br i1 %tobool123.not, label %for.body119.cleanup213_crit_edge, label %if.end125

for.body119.cleanup213_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup213

if.end125:                                        ; preds = %for.body119
  %55 = ptrtoint ptr %call.i343 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sdev, ptr %call.i343, align 8
  %hda_stream127 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %57, i32 16
  %mul131 = shl i32 %i.1357, 4
  %add.ptr132 = getelementptr i8, ptr %add.ptr130, i32 %mul131
  %pphc_addr133 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %pphc_addr133 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr132, ptr %pphc_addr133, align 8
  %add.ptr138 = getelementptr i8, ptr %add.ptr130, i32 %mul137
  %add.ptr140 = getelementptr i8, ptr %add.ptr138, i32 %mul131
  %pplc_addr141 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %pplc_addr141 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr140, ptr %pplc_addr141, align 4
  %60 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %61, null
  br i1 %tobool144.not, label %if.end125.if.end160_crit_edge, label %if.then145

if.end125.if.end160_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

if.then145:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr148 = getelementptr i8, ptr %61, i32 8
  %mul149 = shl i32 %i.1357, 3
  %add.ptr150 = getelementptr i8, ptr %add.ptr148, i32 %mul149
  %spib_addr152 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %spib_addr152 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr150, ptr %spib_addr152, align 8
  %add.ptr158 = getelementptr i8, ptr %add.ptr150, i32 4
  %fifo_addr159 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %fifo_addr159 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr158, ptr %fifo_addr159, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then145, %if.end125.if.end160_crit_edge
  %64 = ptrtoint ptr %hda_stream127 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %hbus.i, ptr %hda_stream127, align 8
  %shl163 = shl nuw i32 1, %i.1357
  %sd_int_sta_mask164 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 9
  %65 = ptrtoint ptr %sd_int_sta_mask164 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl163, ptr %sd_int_sta_mask164, align 8
  %conv165 = trunc i32 %i.1357 to i8
  %index166 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 14
  %66 = ptrtoint ptr %index166 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv165, ptr %index166, align 1
  %conv168 = shl i32 %i.1357, 5
  %add170 = add nuw nsw i32 %conv168, 128
  %67 = ptrtoint ptr %bar128 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bar128, align 4
  %add.ptr173 = getelementptr i8, ptr %68, i32 %add170
  %sd_addr174 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 8
  %69 = ptrtoint ptr %sd_addr174 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr173, ptr %sd_addr174, align 4
  %sub = sub nuw nsw i32 %i.1357, %and
  %70 = trunc i32 %sub to i8
  %conv176 = add i8 %70, 1
  %stream_tag177 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 13
  %71 = ptrtoint ptr %stream_tag177 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv176, ptr %stream_tag177, align 8
  %opened178 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 16
  %72 = ptrtoint ptr %opened178 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load179 = load i8, ptr %opened178, align 8
  %bf.clear184 = and i8 %bf.load179, 63
  store i8 %bf.clear184, ptr %opened178, align 8
  %direction186 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 3
  %73 = ptrtoint ptr %direction186 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %direction186, align 8
  %bdl188 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 1
  %call.i344 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %5, i32 noundef 0, i32 noundef 4096, ptr noundef %bdl188) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %cmp190 = icmp slt i32 %call.i344, 0
  br i1 %cmp190, label %do.end195, label %if.end197

do.end195:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.50) #8
  br label %cleanup213

if.end197:                                        ; preds = %if.end160
  %76 = ptrtoint ptr %area199 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %area199, align 4
  %78 = ptrtoint ptr %index166 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %index166, align 1
  %conv201 = zext i8 %79 to i32
  %mul202 = shl nuw nsw i32 %conv201, 3
  %add.ptr203 = getelementptr i8, ptr %77, i32 %mul202
  %posbuf204 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 2
  %80 = ptrtoint ptr %posbuf204 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr203, ptr %posbuf204, align 4
  %list205 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 23
  %81 = ptrtoint ptr %prev.i345 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i345, align 4
  %call.i.i346 = tail call zeroext i1 @__list_add_valid(ptr noundef %list205, ptr noundef %82, ptr noundef %stream_list206) #5
  br i1 %call.i.i346, label %if.end.i.i348, label %if.end197.list_add_tail.exit349_crit_edge

if.end197.list_add_tail.exit349_crit_edge:        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit349

if.end.i.i348:                                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %prev.i345 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list205, ptr %prev.i345, align 4
  %84 = ptrtoint ptr %list205 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %stream_list206, ptr %list205, align 4
  %prev3.i.i347 = getelementptr inbounds %struct.sof_intel_hda_stream, ptr %call.i343, i32 0, i32 1, i32 0, i32 23, i32 1
  %85 = ptrtoint ptr %prev3.i.i347 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i347, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list205, ptr %82, align 4
  br label %list_add_tail.exit349

list_add_tail.exit349:                            ; preds = %if.end.i.i348, %if.end197.list_add_tail.exit349_crit_edge
  %inc211 = add nuw nsw i32 %i.1357, 1
  %cmp117 = icmp ult i32 %inc211, %add
  br i1 %cmp117, label %list_add_tail.exit349.for.body119_crit_edge, label %list_add_tail.exit349.for.end212_crit_edge

list_add_tail.exit349.for.end212_crit_edge:       ; preds = %list_add_tail.exit349
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end212

list_add_tail.exit349.for.body119_crit_edge:      ; preds = %list_add_tail.exit349
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body119

for.end212:                                       ; preds = %list_add_tail.exit349.for.end212_crit_edge, %for.cond116.preheader.for.end212_crit_edge
  %stream_max = getelementptr %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 5
  %87 = ptrtoint ptr %stream_max to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add, ptr %stream_max, align 4
  br label %cleanup213

cleanup213:                                       ; preds = %for.end212, %do.end195, %for.body119.cleanup213_crit_edge, %do.end107, %for.body.cleanup213_crit_edge, %do.end48
  %retval.4 = phi i32 [ -12, %do.end48 ], [ 0, %for.end212 ], [ -12, %do.end107 ], [ -12, %do.end195 ], [ -12, %for.body119.cleanup213_crit_edge ], [ -12, %for.body.cleanup213_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_stream_free(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %area = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %posbuf = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25
  tail call void @snd_dma_free_pages(ptr noundef %posbuf) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %6 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream_list, align 4
  %cmp.not37 = icmp eq ptr %7, %stream_list
  br i1 %cmp.not37, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in38 = phi ptr [ %.pn40, %list_del.exit.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn40 = load ptr, ptr %.pn.in38, align 4
  %area8 = getelementptr i8, ptr %.pn.in38, i32 -160
  %9 = ptrtoint ptr %area8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area8, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %for.body.if.end12_crit_edge, label %if.then10

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %bdl = getelementptr i8, ptr %.pn.in38, i32 -176
  tail call void @snd_dma_free_pages(ptr noundef %bdl) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_del.exit_crit_edge

if.end12.list_del.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end12.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr19 = getelementptr i8, ptr %.pn.in38, i32 -188
  %19 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev, align 4
  tail call void @devm_kfree(ptr noundef %20, ptr noundef %add.ptr19) #5
  %cmp.not = icmp eq ptr %.pn40, %stream_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_chunk_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug247, !1, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 125, i32 2}
!8 = !{ptr @hda_dsp_stream_setup_bdl.__UNIQUE_ID_ddebug248, !7, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 166, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hda_dsp_stream_spib_config._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @hda_dsp_stream_spib_config._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 214, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hda_dsp_stream_get._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hda_dsp_stream_get._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 274, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hda_dsp_stream_put.__UNIQUE_ID_ddebug249, !24, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 345, i32 9}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug250, !28, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!31 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug251, !28, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!33 = !{ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug252, !34, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 364, i32 9}
!35 = !{ptr @hda_dsp_stream_trigger.__UNIQUE_ID_ddebug253, !34, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 382, i32 3}
!38 = !{ptr @hda_dsp_stream_trigger._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hda_dsp_stream_trigger._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 389, i32 3}
!42 = !{ptr @hda_dsp_stream_trigger._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hda_dsp_stream_trigger._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 410, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hda_dsp_iccmax_stream_hw_params._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hda_dsp_iccmax_stream_hw_params._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 429, i32 3}
!52 = !{ptr @hda_dsp_iccmax_stream_hw_params._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hda_dsp_iccmax_stream_hw_params._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 484, i32 3}
!56 = !{ptr @hda_dsp_stream_hw_params._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hda_dsp_stream_hw_params._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 494, i32 3}
!60 = !{ptr @hda_dsp_stream_hw_params._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hda_dsp_stream_hw_params._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug254, !63, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!63 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 503, i32 8}
!64 = !{ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug255, !63, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 512, i32 3}
!67 = !{ptr @hda_dsp_stream_hw_params._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hda_dsp_stream_hw_params._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug256, !70, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 545, i32 8}
!71 = !{ptr @hda_dsp_stream_hw_params.__UNIQUE_ID_ddebug257, !70, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!72 = !{ptr @hda_dsp_stream_hw_params._entry.35, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 554, i32 3}
!74 = !{ptr @hda_dsp_stream_hw_params._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @hda_dsp_stream_hw_params._entry.37, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 570, i32 3}
!77 = !{ptr @hda_dsp_stream_hw_params._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 820, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hda_dsp_stream_init.__UNIQUE_ID_ddebug258, !79, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 827, i32 2}
!84 = !{ptr @hda_dsp_stream_init.__UNIQUE_ID_ddebug259, !83, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 831, i32 3}
!87 = !{ptr @hda_dsp_stream_init._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @hda_dsp_stream_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 837, i32 3}
!91 = !{ptr @hda_dsp_stream_init._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @hda_dsp_stream_init._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 850, i32 3}
!95 = !{ptr @hda_dsp_stream_init._entry.46, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @hda_dsp_stream_init._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 910, i32 4}
!99 = !{ptr @hda_dsp_stream_init._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hda_dsp_stream_init._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @hda_dsp_stream_init._entry.52, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 966, i32 4}
!103 = !{ptr @hda_dsp_stream_init._entry_ptr.53, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 72, i32 4}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hda_setup_bdle._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hda_setup_bdle._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @snd_sof_dsp_read._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @snd_sof_dsp_read._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!117 = !{ptr @snd_sof_dsp_write._rs, !116, !"_rs", i1 false, i1 false}
!118 = !{ptr @__func__.snd_sof_dsp_write, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @snd_sof_dsp_write._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @snd_sof_dsp_write._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 46, i32 32}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 50, i32 31}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 31, i32 10}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 33, i32 10}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 297, i32 3}
!131 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @hda_dsp_stream_reset._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @hda_dsp_stream_reset._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/sof/intel/hda-stream.c", i32 314, i32 3}
!136 = !{ptr @hda_dsp_stream_reset._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @hda_dsp_stream_reset._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2148323229, i64 2148323234, i64 2148323247, i64 2148323291, i64 2148323325, i64 2148323346}
!148 = !{i64 4939751}
!149 = !{i64 2154316263}
!150 = !{i64 2154315268}
!151 = !{i64 4939356}
!152 = !{i64 4939971}
!153 = !{i64 2156111369}
!154 = !{i64 2156121106}
!155 = !{!"auto-init"}
