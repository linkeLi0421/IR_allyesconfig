; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-ipc.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.snd_sof_ipc_msg = type { i32, ptr, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.sof_ipc_pcm_params_reply = type { %struct.sof_ipc_reply, i32, i32 }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }

@hda_dsp_ipc_get_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unexpected ipc interrupt raised!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hda_dsp_ipc_get_reply\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/sof/intel/hda-ipc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_ipc_get_reply._entry_ptr = internal global ptr @hda_dsp_ipc_get_reply._entry, section ".printk_index", align 4
@hda_dsp_ipc_irq_thread._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hda_dsp_ipc_irq_thread.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hda_dsp_ipc_irq_thread\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nothing to do in IPC IRQ thread\0A\00", [63 x i8] zeroinitializer }, align 32
@hda_ipc_pcm_params.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hda_ipc_pcm_params\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pcm: stream dir %d, posn mailbox offset is %zu\00", [49 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.snd_sof_dsp_write, ptr @.str.12, i32 299, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.12, i32 319, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1073807360, i64 1074266112]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1073807360, i64 1074266112]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 80, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 207, i32 3 }
@___asan_gen_.53 = private constant [33 x i8] c"../sound/soc/sof/intel/hda-ipc.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 289, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 299, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 319, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @hda_dsp_ipc_get_reply._entry, ptr @hda_dsp_ipc_get_reply._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hda_dsp_ipc_irq_thread._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_sof_dsp_write._rs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ipc_get_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ipc_irq_thread._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ipc_send_msg(ptr noundef %sdev, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15
  %0 = ptrtoint ptr %host_box to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_box, align 4
  %msg_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg_data, align 4
  %msg_size = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_size, align 4
  tail call void @sof_mailbox_write(ptr noundef %sdev, i32 noundef %1, ptr noundef %3, i32 noundef %5) #4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 72
  tail call void %13(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef -2147483648) #4
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ipc_get_reply(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 18
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_data, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %cmd, align 1
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.else [
    i32 1073807360, label %if.end.if.then4_crit_edge
    i32 1074266112, label %if.end.if.then4_crit_edge18
  ]

if.end.if.then4_crit_edge18:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge18
  %reply_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %reply_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reply_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 12, ptr %10, align 1
  %reply.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %reply.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 268435456, ptr %reply.sroa.5.0..sroa_idx, align 1
  %reply.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %reply.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %reply.sroa.7.0..sroa_idx, align 1
  %reply_error = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %reply_error to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %reply_error, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_sof_ipc_get_reply(ptr noundef %sdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_get_reply(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ipc_irq_thread(i32 noundef %irq, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 76
  %call.i = tail call i32 %7(ptr noundef %context, ptr noundef %add.ptr.i) #4
  %phi.bo = and i32 %call.i, 1073741824
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #7
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i55 = phi i32 [ %phi.bo, %if.then.i ], [ 1073741824, %do.end.i ]
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i57 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i57, align 4
  %ops.i58 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i58, align 4
  %read.i59 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i59, align 4
  %tobool.not.i60 = icmp eq ptr %19, null
  br i1 %tobool.not.i60, label %do.end.i65, label %if.then.i64

if.then.i64:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i61 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %21, i32 64
  %call.i63 = tail call i32 %19(ptr noundef %context, ptr noundef %add.ptr.i62) #4
  br label %snd_sof_dsp_read.exit67

do.end.i65:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #7
  br label %snd_sof_dsp_read.exit67

snd_sof_dsp_read.exit67:                          ; preds = %do.end.i65, %if.then.i64
  %retval.0.i66 = phi i32 [ %call.i63, %if.then.i64 ], [ -524, %do.end.i65 ]
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i69 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i69, align 4
  %ops.i70 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i70, align 4
  %read.i71 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i71, align 4
  %tobool.not.i72 = icmp eq ptr %31, null
  br i1 %tobool.not.i72, label %do.end.i77, label %if.then.i76

if.then.i76:                                      ; preds = %snd_sof_dsp_read.exit67
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i73 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %32 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %33, i32 72
  %call.i75 = tail call i32 %31(ptr noundef %context, ptr noundef %add.ptr.i74) #4
  %phi.bo97 = and i32 %call.i75, 2147483647
  br label %snd_sof_dsp_read.exit79

do.end.i77:                                       ; preds = %snd_sof_dsp_read.exit67
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #7
  br label %snd_sof_dsp_read.exit79

snd_sof_dsp_read.exit79:                          ; preds = %do.end.i77, %if.then.i76
  %retval.0.i78 = phi i32 [ %phi.bo97, %if.then.i76 ], [ 2147483124, %do.end.i77 ]
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %desc.i81 = getelementptr inbounds %struct.snd_sof_pdata, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %desc.i81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc.i81, align 4
  %ops.i82 = getelementptr inbounds %struct.sof_dev_desc, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i82, align 4
  %read.i83 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read.i83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i83, align 4
  %tobool.not.i84 = icmp eq ptr %43, null
  br i1 %tobool.not.i84, label %do.end.i89, label %if.then.i88

if.then.i88:                                      ; preds = %snd_sof_dsp_read.exit79
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i85 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %44 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %45, i32 68
  %call.i87 = tail call i32 %43(ptr noundef %context, ptr noundef %add.ptr.i86) #4
  %phi.bo98 = and i32 %call.i87, 16777215
  %phi.bo99 = add nuw nsw i32 %phi.bo98, 524288
  br label %snd_sof_dsp_read.exit91

do.end.i89:                                       ; preds = %snd_sof_dsp_read.exit79
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #7
  br label %snd_sof_dsp_read.exit91

snd_sof_dsp_read.exit91:                          ; preds = %do.end.i89, %if.then.i88
  %retval.0.i90 = phi i32 [ %phi.bo99, %if.then.i88 ], [ 17300980, %do.end.i89 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55)
  %tobool.not = icmp eq i32 %retval.0.i55, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %snd_sof_dsp_read.exit91
  %call6 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 80, i32 noundef 2, i32 noundef 0) #4
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ipc_lock) #4
  %msg1.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 18
  %48 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg1.i, align 4
  %tobool.not.i92 = icmp eq ptr %49, null
  br i1 %tobool.not.i92, label %do.end.i93, label %if.end.i

do.end.i93:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str) #7
  br label %if.end.thread

if.end.i:                                         ; preds = %if.then
  %msg_data.i = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %msg_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msg_data.i, align 4
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %cmd.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %cmd.i, align 1
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %55, label %if.else.i [
    i32 1073807360, label %if.end.i.if.then4.i_crit_edge
    i32 1074266112, label %if.end.i.if.then4.i_crit_edge101
  ]

if.end.i.if.then4.i_crit_edge101:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge101
  %reply_data.i = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %49, i32 0, i32 2
  %57 = ptrtoint ptr %reply_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reply_data.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 12, ptr %58, align 1
  %reply.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %58, i32 4
  %60 = ptrtoint ptr %reply.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 268435456, ptr %reply.sroa.5.0..sroa_idx.i, align 1
  %reply.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %58, i32 8
  %61 = ptrtoint ptr %reply.sroa.7.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %reply.sroa.7.0..sroa_idx.i, align 1
  %reply_error.i = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %49, i32 0, i32 5
  %62 = ptrtoint ptr %reply_error.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %reply_error.i, align 4
  br label %if.end.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_sof_ipc_get_reply(ptr noundef %context) #4
  br label %if.end.thread

if.end:                                           ; preds = %snd_sof_dsp_read.exit91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i66)
  %tobool9.not = icmp sgt i32 %retval.0.i66, -1
  br i1 %tobool9.not, label %do.body, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.thread:                                    ; preds = %if.else.i, %if.then4.i, %do.end.i93
  tail call void @snd_sof_ipc_reply(ptr noundef %context, i32 noundef %retval.0.i78) #4
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %context, i32 noundef 4, i32 noundef 76, i32 noundef 1073741824, i32 noundef 1073741824) #4
  %call.i94 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 80, i32 noundef 2, i32 noundef 2) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ipc_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i66)
  %tobool9.not100 = icmp sgt i32 %retval.0.i66, -1
  br i1 %tobool9.not100, label %if.end.thread.if.end35_crit_edge, label %if.end.thread.if.then10_crit_edge

if.end.thread.if.then10_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.thread.if.end35_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then10:                                        ; preds = %if.end.thread.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %call13 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 80, i32 noundef 1, i32 noundef 0) #4
  %and14 = and i32 %retval.0.i66, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 233492480, i32 %and14)
  %cmp = icmp eq i32 %and14, 233492480
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then10
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 8
  %63 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp16 = icmp eq i32 %64, 2
  br i1 %cmp16, label %land.lhs.true, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdata.i, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %66, i32 0, i32 13
  %67 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_pdata, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp17 = icmp sgt i32 %70, 2
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then15.if.end19_crit_edge
  %non_recoverable.0.off0 = phi i1 [ true, %if.then15.if.end19_crit_edge ], [ %cmp17, %land.lhs.true ]
  tail call void @snd_sof_dsp_panic(ptr noundef %context, i32 noundef %retval.0.i90, i1 noundef zeroext %non_recoverable.0.off0) #4
  br label %if.end22

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_sof_ipc_msgs_rx(ptr noundef %context) #4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end19
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %context, i32 noundef 4, i32 noundef 64, i32 noundef -2147483648, i32 noundef -2147483648) #4
  %call.i95 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 80, i32 noundef 1, i32 noundef 1) #4
  br label %if.end35

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ipc_irq_thread.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ipc_irq_thread, %land.lhs.true30)) #4
          to label %if.end35 [label %land.lhs.true30], !srcloc !40

land.lhs.true30:                                  ; preds = %do.body
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @hda_dsp_ipc_irq_thread._rs, ptr noundef nonnull @.str.7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end35_crit_edge, label %if.then33

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ipc_irq_thread.descriptor, ptr noundef %72, ptr noundef nonnull @.str.8) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true30.if.end35_crit_edge, %do.body, %if.end22, %if.end.thread.if.end35_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_panic(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_msgs_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hda_dsp_check_ipc_irq(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #4
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #7
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp ne i32 %retval.0.i, -1
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %not.or.cond = and i1 %cmp, %tobool.not
  ret i1 %not.or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hda_dsp_ipc_get_mailbox_offset(ptr nocapture noundef readnone %sdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 528384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hda_dsp_ipc_get_window_offset(ptr nocapture noundef readnone %sdev, i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %id, 17
  %add = add i32 %mul, 524288
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_ipc_msg_data(ptr noundef %sdev, ptr noundef readonly %substream, ptr noundef %p, i32 noundef %sz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %substream, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  br label %return.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else.return_crit_edge, label %cleanup.thread

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %stream = getelementptr i8, ptr %5, i32 320
  br label %return.sink.split

return.sink.split:                                ; preds = %cleanup.thread, %if.then
  %.sink.in = phi ptr [ %dsp_box, %if.then ], [ %stream, %cleanup.thread ]
  %6 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.sink = load i32, ptr %.sink.in, align 4
  tail call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %.sink, ptr noundef %p, i32 noundef %sz) #4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge
  %retval.1 = phi i32 [ -86, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_ipc_pcm_params(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %posn_offset1 = getelementptr inbounds %struct.sof_ipc_pcm_params_reply, ptr %reply, i32 0, i32 2
  %0 = ptrtoint ptr %posn_offset1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %posn_offset1, align 1
  %size = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ule i32 %1, %3
  %rem = urem i32 %1, 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %stream_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 16
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 8
  %8 = ptrtoint ptr %stream_box to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_box, align 4
  %add = add i32 %9, %1
  %stream = getelementptr i8, ptr %7, i32 320
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %stream, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_ipc_pcm_params.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_ipc_pcm_params, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !40

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  %stream9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %13 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream9, align 4
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_ipc_pcm_params.__UNIQUE_ID_ddebug247, ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %14, i32 noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_update_bits_forced(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-ipc.c", i32 80, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hda_dsp_ipc_get_reply._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hda_dsp_ipc_get_reply._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/hda-ipc.c", i32 207, i32 3}
!10 = !{ptr @hda_dsp_ipc_irq_thread._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hda_dsp_ipc_irq_thread.descriptor, !9, !"descriptor", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/intel/hda-ipc.c", i32 289, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hda_ipc_pcm_params.__UNIQUE_ID_ddebug247, !16, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!19 = !{ptr @snd_sof_dsp_write._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!21 = !{ptr @__func__.snd_sof_dsp_write, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @snd_sof_dsp_write._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @snd_sof_dsp_write._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!29 = !{ptr @snd_sof_dsp_read._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @snd_sof_dsp_read._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148300289, i64 2148300294, i64 2148300307, i64 2148300351, i64 2148300385, i64 2148300406}
