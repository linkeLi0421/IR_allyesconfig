; ModuleID = '/llk/IR_all_yes/sound/soc/sof/amd/acp-pcm.c_pt.bc'
source_filename = "../sound/soc/sof/amd/acp-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+acp_pcm_hw_params\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_pcm_hw_params\09\09\09\09"
module asm "\09.long\09__crc_acp_pcm_hw_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_pcm_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_acp_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_pcm_open\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_pcm_open\09\09\09\09"
module asm "\09.long\09__crc_acp_pcm_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_acp_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_pcm_close\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_pcm_close\09\09\09\09"
module asm "\09.long\09__crc_acp_pcm_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_acp_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
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
%struct.sof_ipc_stream_params = type { %struct.sof_ipc_hdr, %struct.sof_ipc_host_buffer, i32, i32, i32, i32, i16, i16, i16, i16, i32, i16, [3 x i16], [8 x i16] }
%struct.sof_ipc_hdr = type { i32 }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%struct.acp_dsp_stream = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@acp_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stream configuration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acp_pcm_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/sof/amd/acp-pcm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acp_pcm_hw_params._entry_ptr = internal global ptr @acp_pcm_hw_params._entry, section ".printk_index", align 4
@__kstrtab_acp_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_pcm_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_pcm_hw_params to i32), ptr @__kstrtab_acp_pcm_hw_params, ptr @__kstrtabns_acp_pcm_hw_params }, section "___ksymtab+acp_pcm_hw_params", align 4
@__kstrtab_acp_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_pcm_open to i32), ptr @__kstrtab_acp_pcm_open, ptr @__kstrtabns_acp_pcm_open }, section "___ksymtab+acp_pcm_open", align 4
@acp_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No open stream\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acp_pcm_close\00", [18 x i8] zeroinitializer }, align 32
@acp_pcm_close._entry_ptr = internal global ptr @acp_pcm_close._entry, section ".printk_index", align 4
@__kstrtab_acp_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_pcm_close to i32), ptr @__kstrtab_acp_pcm_close, ptr @__kstrtabns_acp_pcm_close }, section "___ksymtab+acp_pcm_close", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.snd_sof_dsp_write, ptr @.str.9, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/amd/../ops.h\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 33, i32 3 }
@___asan_gen_.35 = private constant [31 x i8] c"../sound/soc/sof/amd/acp-pcm.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 73, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"../sound/soc/sof/amd/../ops.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 299, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_acp_pcm_close, ptr @__ksymtab_acp_pcm_hw_params, ptr @__ksymtab_acp_pcm_open, ptr @acp_pcm_close._entry, ptr @acp_pcm_close._entry_ptr, ptr @acp_pcm_hw_params._entry, ptr @acp_pcm_hw_params._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snd_sof_dsp_write._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_pcm_hw_params(ptr noundef %sdev, ptr nocapture noundef readonly %substream, ptr nocapture readnone %params, ptr nocapture noundef %ipc_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %size1 = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %size1, align 1
  %pages = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pages, align 1
  %num_pages = getelementptr inbounds %struct.acp_dsp_stream, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pages, align 4
  %9 = load ptr, ptr %runtime, align 4
  %dma_buffer_p = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_buffer_p, align 8
  %dmab = getelementptr inbounds %struct.acp_dsp_stream, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dmab to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dmab, align 4
  %call = tail call i32 @acp_dsp_stream_config(ptr noundef %sdev, ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_offset = getelementptr inbounds %struct.acp_dsp_stream, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_offset, align 4
  %phy_addr = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %phy_addr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %phy_addr, align 1
  %stream_tag = getelementptr inbounds %struct.acp_dsp_stream, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream_tag, align 4
  %conv = trunc i32 %19 to i16
  %stream_tag5 = getelementptr inbounds %struct.sof_ipc_stream_params, ptr %ipc_params, i32 0, i32 6
  %20 = ptrtoint ptr %stream_tag5 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %conv, ptr %stream_tag5, align 1
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %21 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream_tag, align 4
  %sub = shl i32 %30, 2
  %add7 = add i32 %sub, 72748
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %31 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 %add7
  tail call void %28(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %5) #3
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %if.then.i, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.i ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @acp_dsp_stream_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_pcm_open(ptr noundef %sdev, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @acp_dsp_stream_get(ptr noundef %sdev, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %private_data, align 8
  %substream1 = getelementptr inbounds %struct.acp_dsp_stream, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %substream, ptr %substream1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @acp_dsp_stream_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_pcm_close(ptr noundef %sdev, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %substream1 = getelementptr inbounds %struct.acp_dsp_stream, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %substream1, align 4
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private_data3, align 8
  %call = tail call i32 @acp_dsp_stream_put(ptr noundef %sdev, ptr noundef nonnull %3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @acp_dsp_stream_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/amd/acp-pcm.c", i32 33, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @acp_pcm_hw_params._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @acp_pcm_hw_params._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_acp_pcm_hw_params, !9, !"__ksymtab_acp_pcm_hw_params", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/amd/acp-pcm.c", i32 50, i32 1}
!10 = !{ptr @__ksymtab_acp_pcm_open, !11, !"__ksymtab_acp_pcm_open", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/amd/acp-pcm.c", i32 65, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/amd/acp-pcm.c", i32 73, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @acp_pcm_close._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @acp_pcm_close._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_acp_pcm_close, !18, !"__ksymtab_acp_pcm_close", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/amd/acp-pcm.c", i32 82, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/amd/../ops.h", i32 299, i32 2}
!21 = !{ptr @snd_sof_dsp_write._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.snd_sof_dsp_write, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @snd_sof_dsp_write._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @snd_sof_dsp_write._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
