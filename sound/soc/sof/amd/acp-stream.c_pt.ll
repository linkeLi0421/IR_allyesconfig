; ModuleID = '/llk/IR_all_yes/sound/soc/sof/amd/acp-stream.c_pt.bc'
source_filename = "../sound/soc/sof/amd/acp-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+acp_dsp_stream_get\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_stream_get\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_stream_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_stream_get:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_stream_get\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_stream_get:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_dsp_stream_put\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_stream_put\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_stream_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_stream_put:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_stream_put\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_stream_put:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_dsp_stream_init\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_stream_init\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_stream_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_stream_init:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_stream_init\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_stream_init:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.acp_dsp_stream = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.acp_dev_data = type { ptr, i32, i32, i32, i32, ptr, i32, ptr, [128 x %struct.dma_descriptor], [8 x %struct.acp_dsp_stream], ptr, ptr }
%struct.dma_descriptor = type { i32, i32, %union.dma_tx_cnt, i32 }
%union.dma_tx_cnt = type { %struct.anon.92 }
%struct.anon.92 = type { i32 }

@acp_dsp_stream_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid stream tag %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"acp_dsp_stream_config\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/sof/amd/acp-stream.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acp_dsp_stream_config._entry_ptr = internal global ptr @acp_dsp_stream_config._entry, section ".printk_index", align 4
@acp_dsp_stream_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"stream %d active or no inactive stream\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acp_dsp_stream_get\00", [45 x i8] zeroinitializer }, align 32
@acp_dsp_stream_get._entry_ptr = internal global ptr @acp_dsp_stream_get._entry, section ".printk_index", align 4
@__kstrtab_acp_dsp_stream_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_stream_get = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_stream_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_stream_get to i32), ptr @__kstrtab_acp_dsp_stream_get, ptr @__kstrtabns_acp_dsp_stream_get }, section "___ksymtab+acp_dsp_stream_get", align 4
@acp_dsp_stream_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot find active stream tag %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acp_dsp_stream_put\00", [45 x i8] zeroinitializer }, align 32
@acp_dsp_stream_put._entry_ptr = internal global ptr @acp_dsp_stream_put._entry, section ".printk_index", align 4
@__kstrtab_acp_dsp_stream_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_stream_put = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_stream_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_stream_put to i32), ptr @__kstrtab_acp_dsp_stream_put, ptr @__kstrtabns_acp_dsp_stream_put }, section "___ksymtab+acp_dsp_stream_put", align 4
@__kstrtab_acp_dsp_stream_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_stream_init = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_stream_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_stream_init to i32), ptr @__kstrtab_acp_dsp_stream_init, ptr @__kstrtabns_acp_dsp_stream_init }, section "___ksymtab+acp_dsp_stream_init", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.snd_sof_dsp_write, ptr @.str.11, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/amd/../ops.h\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 85, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 144, i32 2 }
@___asan_gen_.46 = private constant [34 x i8] c"../sound/soc/sof/amd/acp-stream.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 164, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"../sound/soc/sof/amd/../ops.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 299, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_acp_dsp_stream_get, ptr @__ksymtab_acp_dsp_stream_init, ptr @__ksymtab_acp_dsp_stream_put, ptr @acp_dsp_stream_config._entry, ptr @acp_dsp_stream_config._entry_ptr, ptr @acp_dsp_stream_get._entry, ptr @acp_dsp_stream_get._entry_ptr, ptr @acp_dsp_stream_put._entry, ptr @acp_dsp_stream_put._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_sof_dsp_write._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_stream_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_stream_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_stream_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_stream_config(ptr noundef %sdev, ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_tag1 = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %stream_tag1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_tag1, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.mult = shl i32 %switch.tableidx, 23
  %switch.idx.mult118 = shl i32 %switch.tableidx, 3
  %switch.offset = add i32 %switch.idx.mult118, 3076
  %switch.idx.mult119 = shl i32 %switch.tableidx, 3
  %switch.offset120 = add i32 %switch.idx.mult119, 3072
  %switch.idx.mult121 = shl i32 %switch.tableidx, 7
  %switch.offset122 = add i32 %switch.idx.mult121, 5136
  %reg_offset15 = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream, i32 0, i32 7
  %5 = ptrtoint ptr %reg_offset15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.idx.mult, ptr %reg_offset15, align 4
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

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %reg_offset17 = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream, i32 0, i32 7
  %14 = ptrtoint ptr %reg_offset17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_offset17, align 4
  %sub = shl nuw nsw i32 %1, 2
  %add16 = add nuw nsw i32 %sub, 72716
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %16 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add16
  tail call void %13(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %15) #4
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %switch.lookup
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i, align 4
  %desc.i63 = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %desc.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i63, align 4
  %ops.i64 = getelementptr inbounds %struct.sof_dev_desc, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i64, align 4
  %write.i65 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %write.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i65, align 4
  %tobool.not.i66 = icmp eq ptr %27, null
  br i1 %tobool.not.i66, label %do.body.i72, label %if.then.i69

if.then.i69:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %switch.offset122, -2113601536
  %bar5.i67 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %28 = ptrtoint ptr %bar5.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bar5.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %29, i32 %switch.offset
  tail call void %27(ptr noundef %sdev, ptr noundef %add.ptr.i68, i32 noundef %or) #4
  br label %snd_sof_dsp_write.exit74

do.body.i72:                                      ; preds = %snd_sof_dsp_write.exit
  %call.i70 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool6.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool6.not.i71, label %do.body.i72.snd_sof_dsp_write.exit74_crit_edge, label %do.end.i73

do.body.i72.snd_sof_dsp_write.exit74_crit_edge:   ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit74

do.end.i73:                                       ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit74

snd_sof_dsp_write.exit74:                         ; preds = %do.end.i73, %do.body.i72.snd_sof_dsp_write.exit74_crit_edge, %if.then.i69
  %32 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata.i, align 4
  %desc.i76 = getelementptr inbounds %struct.snd_sof_pdata, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %desc.i76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i76, align 4
  %ops.i77 = getelementptr inbounds %struct.sof_dev_desc, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i77, align 4
  %write.i78 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %write.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i78, align 4
  %tobool.not.i79 = icmp eq ptr %39, null
  br i1 %tobool.not.i79, label %do.body.i85, label %if.then.i82

if.then.i82:                                      ; preds = %snd_sof_dsp_write.exit74
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i80 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %40 = ptrtoint ptr %bar5.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bar5.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %41, i32 %switch.offset120
  tail call void %39(ptr noundef %sdev, ptr noundef %add.ptr.i81, i32 noundef 2) #4
  br label %snd_sof_dsp_write.exit87

do.body.i85:                                      ; preds = %snd_sof_dsp_write.exit74
  %call.i83 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool6.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool6.not.i84, label %do.body.i85.snd_sof_dsp_write.exit87_crit_edge, label %do.end.i86

do.body.i85.snd_sof_dsp_write.exit87_crit_edge:   ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit87

do.end.i86:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit87

snd_sof_dsp_write.exit87:                         ; preds = %do.end.i86, %do.body.i85.snd_sof_dsp_write.exit87_crit_edge, %if.then.i82
  %num_pages = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream, i32 0, i32 4
  %44 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp114 = icmp sgt i32 %45, 0
  br i1 %cmp114, label %for.body.lr.ph, label %snd_sof_dsp_write.exit87.cleanup_crit_edge

snd_sof_dsp_write.exit87.cleanup_crit_edge:       ; preds = %snd_sof_dsp_write.exit87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %snd_sof_dsp_write.exit87
  %dmab = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream, i32 0, i32 3
  %bar5.i93 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %snd_sof_dsp_write.exit113.for.body_crit_edge, %for.body.lr.ph
  %page_idx.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %snd_sof_dsp_write.exit113.for.body_crit_edge ]
  %offset.1115 = phi i32 [ %switch.offset122, %for.body.lr.ph ], [ %add25, %snd_sof_dsp_write.exit113.for.body_crit_edge ]
  %46 = ptrtoint ptr %dmab to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dmab, align 4
  %mul19 = shl i32 %page_idx.0117, 12
  %call = tail call i32 @snd_sgbuf_get_addr(ptr noundef %47, i32 noundef %mul19) #4
  %48 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.i, align 4
  %desc.i89 = getelementptr inbounds %struct.snd_sof_pdata, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %desc.i89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc.i89, align 4
  %ops.i90 = getelementptr inbounds %struct.sof_dev_desc, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i90, align 4
  %write.i91 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %write.i91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i91, align 4
  %tobool.not.i92 = icmp eq ptr %55, null
  br i1 %tobool.not.i92, label %do.body.i98, label %if.then.i95

if.then.i95:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add21 = add i32 %offset.1115, 65536
  %56 = ptrtoint ptr %bar5.i93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bar5.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %57, i32 %add21
  tail call void %55(ptr noundef %sdev, ptr noundef %add.ptr.i94, i32 noundef %call) #4
  br label %snd_sof_dsp_write.exit100

do.body.i98:                                      ; preds = %for.body
  %call.i96 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool6.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool6.not.i97, label %do.body.i98.snd_sof_dsp_write.exit100_crit_edge, label %do.end.i99

do.body.i98.snd_sof_dsp_write.exit100_crit_edge:  ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit100

do.end.i99:                                       ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit100

snd_sof_dsp_write.exit100:                        ; preds = %do.end.i99, %do.body.i98.snd_sof_dsp_write.exit100_crit_edge, %if.then.i95
  %60 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata.i, align 4
  %desc.i102 = getelementptr inbounds %struct.snd_sof_pdata, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %desc.i102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc.i102, align 4
  %ops.i103 = getelementptr inbounds %struct.sof_dev_desc, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %ops.i103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i103, align 4
  %write.i104 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %write.i104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i104, align 4
  %tobool.not.i105 = icmp eq ptr %67, null
  br i1 %tobool.not.i105, label %do.body.i111, label %if.then.i108

if.then.i108:                                     ; preds = %snd_sof_dsp_write.exit100
  call void @__sanitizer_cov_trace_pc() #6
  %add24 = add i32 %offset.1115, 65540
  %68 = ptrtoint ptr %bar5.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bar5.i93, align 4
  %add.ptr.i107 = getelementptr i8, ptr %69, i32 %add24
  tail call void %67(ptr noundef %sdev, ptr noundef %add.ptr.i107, i32 noundef -2147483648) #4
  br label %snd_sof_dsp_write.exit113

do.body.i111:                                     ; preds = %snd_sof_dsp_write.exit100
  %call.i109 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool6.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool6.not.i110, label %do.body.i111.snd_sof_dsp_write.exit113_crit_edge, label %do.end.i112

do.body.i111.snd_sof_dsp_write.exit113_crit_edge: ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit113

do.end.i112:                                      ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit113

snd_sof_dsp_write.exit113:                        ; preds = %do.end.i112, %do.body.i111.snd_sof_dsp_write.exit113_crit_edge, %if.then.i108
  %add25 = add i32 %offset.1115, 8
  %inc = add nuw nsw i32 %page_idx.0117, 1
  %72 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_pages, align 4
  %cmp = icmp slt i32 %inc, %73
  br i1 %cmp, label %snd_sof_dsp_write.exit113.for.body_crit_edge, label %snd_sof_dsp_write.exit113.cleanup_crit_edge

snd_sof_dsp_write.exit113.cleanup_crit_edge:      ; preds = %snd_sof_dsp_write.exit113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_sof_dsp_write.exit113.for.body_crit_edge:     ; preds = %snd_sof_dsp_write.exit113
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %snd_sof_dsp_write.exit113.cleanup_crit_edge, %snd_sof_dsp_write.exit87.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %snd_sof_dsp_write.exit87.cleanup_crit_edge ], [ 0, %snd_sof_dsp_write.exit113.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @acp_dsp_stream_get(ptr nocapture noundef readonly %sdev, i32 noundef %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %stream_buf = getelementptr inbounds %struct.acp_dev_data, ptr %3, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag)
  %tobool1.not = icmp eq i32 %tag, 0
  %active = getelementptr inbounds %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %entry
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %if.end4

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2:                                         ; preds = %if.end.7.if.then2_crit_edge, %if.end.6.if.then2_crit_edge, %if.end.5.if.then2_crit_edge, %if.end.4.if.then2_crit_edge, %if.end.3.if.then2_crit_edge, %if.end.2.if.then2_crit_edge, %if.end.1.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %stream.026.lcssa = phi ptr [ %stream_buf, %if.end.if.then2_crit_edge ], [ %incdec.ptr, %if.end.1.if.then2_crit_edge ], [ %incdec.ptr.1, %if.end.2.if.then2_crit_edge ], [ %incdec.ptr.2, %if.end.3.if.then2_crit_edge ], [ %incdec.ptr.3, %if.end.4.if.then2_crit_edge ], [ %incdec.ptr.4, %if.end.5.if.then2_crit_edge ], [ %incdec.ptr.5, %if.end.6.if.then2_crit_edge ], [ %incdec.ptr.6, %if.end.7.if.then2_crit_edge ]
  %active.le24 = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream.026.lcssa, i32 0, i32 6
  %6 = ptrtoint ptr %active.le24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %active.le24, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %stream_tag = getelementptr inbounds %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 0, i32 5
  %7 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %tag)
  %cmp5 = icmp eq i32 %8, %tag
  br i1 %cmp5, label %if.end4.if.then6_crit_edge, label %for.inc.thread

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %if.end4.7.if.then6_crit_edge, %if.end4.6.if.then6_crit_edge, %if.end4.5.if.then6_crit_edge, %if.end4.4.if.then6_crit_edge, %if.end4.3.if.then6_crit_edge, %if.end4.2.if.then6_crit_edge, %if.end4.1.if.then6_crit_edge, %if.end4.if.then6_crit_edge
  %stream.026.lcssa29 = phi ptr [ %stream_buf, %if.end4.if.then6_crit_edge ], [ %incdec.ptr3436, %if.end4.1.if.then6_crit_edge ], [ %incdec.ptr.1, %if.end4.2.if.then6_crit_edge ], [ %incdec.ptr.24042, %if.end4.3.if.then6_crit_edge ], [ %incdec.ptr.3, %if.end4.4.if.then6_crit_edge ], [ %incdec.ptr.44648, %if.end4.5.if.then6_crit_edge ], [ %incdec.ptr.5, %if.end4.6.if.then6_crit_edge ], [ %incdec.ptr.65254, %if.end4.7.if.then6_crit_edge ]
  %active.le = getelementptr inbounds %struct.acp_dsp_stream, ptr %stream.026.lcssa29, i32 0, i32 6
  %9 = ptrtoint ptr %active.le to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %active.le, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %active.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 6
  %10 = ptrtoint ptr %active.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.thread:                                   ; preds = %if.end4
  %incdec.ptr31 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1
  %active.132 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 6
  %12 = ptrtoint ptr %active.132 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active.132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.133 = icmp eq i32 %13, 0
  br i1 %tobool.not.133, label %for.inc.thread.if.end4.1_crit_edge, label %for.inc.thread.for.inc.1_crit_edge

for.inc.thread.for.inc.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.thread.if.end4.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.1

if.end.1:                                         ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1
  br i1 %tobool1.not, label %if.end.1.if.then2_crit_edge, label %if.end.1.if.end4.1_crit_edge

if.end.1.if.end4.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.1

if.end.1.if.then2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.1:                                        ; preds = %if.end.1.if.end4.1_crit_edge, %for.inc.thread.if.end4.1_crit_edge
  %incdec.ptr3436 = phi ptr [ %incdec.ptr, %if.end.1.if.end4.1_crit_edge ], [ %incdec.ptr31, %for.inc.thread.if.end4.1_crit_edge ]
  %stream_tag.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 5
  %14 = ptrtoint ptr %stream_tag.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_tag.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %tag)
  %cmp5.1 = icmp eq i32 %15, %tag
  br i1 %cmp5.1, label %if.end4.1.if.then6_crit_edge, label %if.end4.1.for.inc.1_crit_edge

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end4.1.if.then6_crit_edge:                     ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.1:                                        ; preds = %if.end4.1.for.inc.1_crit_edge, %for.inc.thread.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %incdec.ptr.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2
  %active.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2, i32 6
  %16 = ptrtoint ptr %active.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  br i1 %tobool1.not, label %if.end.2.if.then2_crit_edge, label %if.end4.2

if.end.2.if.then2_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.2:                                        ; preds = %if.end.2
  %stream_tag.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2, i32 5
  %18 = ptrtoint ptr %stream_tag.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream_tag.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %tag)
  %cmp5.2 = icmp eq i32 %19, %tag
  br i1 %cmp5.2, label %if.end4.2.if.then6_crit_edge, label %for.inc.2.thread

if.end4.2.if.then6_crit_edge:                     ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %active.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 6
  %20 = ptrtoint ptr %active.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.3 = icmp eq i32 %21, 0
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

for.inc.2.thread:                                 ; preds = %if.end4.2
  %incdec.ptr.237 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3
  %active.338 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 6
  %22 = ptrtoint ptr %active.338 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active.338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.339 = icmp eq i32 %23, 0
  br i1 %tobool.not.339, label %for.inc.2.thread.if.end4.3_crit_edge, label %for.inc.2.thread.for.inc.3_crit_edge

for.inc.2.thread.for.inc.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

for.inc.2.thread.if.end4.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.3

if.end.3:                                         ; preds = %for.inc.2
  %incdec.ptr.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3
  br i1 %tobool1.not, label %if.end.3.if.then2_crit_edge, label %if.end.3.if.end4.3_crit_edge

if.end.3.if.end4.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.3

if.end.3.if.then2_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.3:                                        ; preds = %if.end.3.if.end4.3_crit_edge, %for.inc.2.thread.if.end4.3_crit_edge
  %incdec.ptr.24042 = phi ptr [ %incdec.ptr.2, %if.end.3.if.end4.3_crit_edge ], [ %incdec.ptr.237, %for.inc.2.thread.if.end4.3_crit_edge ]
  %stream_tag.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 5
  %24 = ptrtoint ptr %stream_tag.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream_tag.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %tag)
  %cmp5.3 = icmp eq i32 %25, %tag
  br i1 %cmp5.3, label %if.end4.3.if.then6_crit_edge, label %if.end4.3.for.inc.3_crit_edge

if.end4.3.for.inc.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.end4.3.if.then6_crit_edge:                     ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.3:                                        ; preds = %if.end4.3.for.inc.3_crit_edge, %for.inc.2.thread.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %incdec.ptr.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4
  %active.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4, i32 6
  %26 = ptrtoint ptr %active.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.4 = icmp eq i32 %27, 0
  br i1 %tobool.not.4, label %if.end.4, label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  br i1 %tobool1.not, label %if.end.4.if.then2_crit_edge, label %if.end4.4

if.end.4.if.then2_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.4:                                        ; preds = %if.end.4
  %stream_tag.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4, i32 5
  %28 = ptrtoint ptr %stream_tag.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stream_tag.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %tag)
  %cmp5.4 = icmp eq i32 %29, %tag
  br i1 %cmp5.4, label %if.end4.4.if.then6_crit_edge, label %for.inc.4.thread

if.end4.4.if.then6_crit_edge:                     ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.4:                                        ; preds = %for.inc.3
  %active.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 6
  %30 = ptrtoint ptr %active.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.5 = icmp eq i32 %31, 0
  br i1 %tobool.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

for.inc.4.thread:                                 ; preds = %if.end4.4
  %incdec.ptr.443 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5
  %active.544 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 6
  %32 = ptrtoint ptr %active.544 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active.544, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.545 = icmp eq i32 %33, 0
  br i1 %tobool.not.545, label %for.inc.4.thread.if.end4.5_crit_edge, label %for.inc.4.thread.for.inc.5_crit_edge

for.inc.4.thread.for.inc.5_crit_edge:             ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

for.inc.4.thread.if.end4.5_crit_edge:             ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.5

if.end.5:                                         ; preds = %for.inc.4
  %incdec.ptr.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5
  br i1 %tobool1.not, label %if.end.5.if.then2_crit_edge, label %if.end.5.if.end4.5_crit_edge

if.end.5.if.end4.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.5

if.end.5.if.then2_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.5:                                        ; preds = %if.end.5.if.end4.5_crit_edge, %for.inc.4.thread.if.end4.5_crit_edge
  %incdec.ptr.44648 = phi ptr [ %incdec.ptr.4, %if.end.5.if.end4.5_crit_edge ], [ %incdec.ptr.443, %for.inc.4.thread.if.end4.5_crit_edge ]
  %stream_tag.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 5
  %34 = ptrtoint ptr %stream_tag.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream_tag.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %tag)
  %cmp5.5 = icmp eq i32 %35, %tag
  br i1 %cmp5.5, label %if.end4.5.if.then6_crit_edge, label %if.end4.5.for.inc.5_crit_edge

if.end4.5.for.inc.5_crit_edge:                    ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.end4.5.if.then6_crit_edge:                     ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.5:                                        ; preds = %if.end4.5.for.inc.5_crit_edge, %for.inc.4.thread.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %incdec.ptr.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6
  %active.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6, i32 6
  %36 = ptrtoint ptr %active.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.6 = icmp eq i32 %37, 0
  br i1 %tobool.not.6, label %if.end.6, label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  br i1 %tobool1.not, label %if.end.6.if.then2_crit_edge, label %if.end4.6

if.end.6.if.then2_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.6:                                        ; preds = %if.end.6
  %stream_tag.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6, i32 5
  %38 = ptrtoint ptr %stream_tag.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream_tag.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %tag)
  %cmp5.6 = icmp eq i32 %39, %tag
  br i1 %cmp5.6, label %if.end4.6.if.then6_crit_edge, label %for.inc.6.thread

if.end4.6.if.then6_crit_edge:                     ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.6:                                        ; preds = %for.inc.5
  %active.7 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 6
  %40 = ptrtoint ptr %active.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.7 = icmp eq i32 %41, 0
  br i1 %tobool.not.7, label %if.end.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

for.inc.6.thread:                                 ; preds = %if.end4.6
  %incdec.ptr.649 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7
  %active.750 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 6
  %42 = ptrtoint ptr %active.750 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %active.750, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.751 = icmp eq i32 %43, 0
  br i1 %tobool.not.751, label %for.inc.6.thread.if.end4.7_crit_edge, label %for.inc.6.thread.for.inc.7_crit_edge

for.inc.6.thread.for.inc.7_crit_edge:             ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

for.inc.6.thread.if.end4.7_crit_edge:             ; preds = %for.inc.6.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.7

if.end.7:                                         ; preds = %for.inc.6
  %incdec.ptr.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7
  br i1 %tobool1.not, label %if.end.7.if.then2_crit_edge, label %if.end.7.if.end4.7_crit_edge

if.end.7.if.end4.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.7

if.end.7.if.then2_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.end4.7:                                        ; preds = %if.end.7.if.end4.7_crit_edge, %for.inc.6.thread.if.end4.7_crit_edge
  %incdec.ptr.65254 = phi ptr [ %incdec.ptr.6, %if.end.7.if.end4.7_crit_edge ], [ %incdec.ptr.649, %for.inc.6.thread.if.end4.7_crit_edge ]
  %stream_tag.7 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 5
  %44 = ptrtoint ptr %stream_tag.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stream_tag.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %tag)
  %cmp5.7 = icmp eq i32 %45, %tag
  br i1 %cmp5.7, label %if.end4.7.if.then6_crit_edge, label %if.end4.7.for.inc.7_crit_edge

if.end4.7.for.inc.7_crit_edge:                    ; preds = %if.end4.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.end4.7.if.then6_crit_edge:                     ; preds = %if.end4.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

for.inc.7:                                        ; preds = %if.end4.7.for.inc.7_crit_edge, %for.inc.6.thread.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %46 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5, i32 noundef %tag) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.then6, %if.then2
  %retval.0 = phi ptr [ %stream.026.lcssa29, %if.then6 ], [ %stream.026.lcssa, %if.then2 ], [ null, %for.inc.7 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_stream_put(ptr nocapture noundef readonly %sdev, ptr noundef readonly %acp_stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %stream_buf = getelementptr inbounds %struct.acp_dev_data, ptr %3, i32 0, i32 9
  %cmp1 = icmp eq ptr %stream_buf, %acp_stream
  %incdec.ptr = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1
  %cmp1.1 = icmp eq ptr %incdec.ptr, %acp_stream
  %or.cond = or i1 %cmp1, %cmp1.1
  %incdec.ptr.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2
  %cmp1.2 = icmp eq ptr %incdec.ptr.1, %acp_stream
  %or.cond13 = select i1 %or.cond, i1 true, i1 %cmp1.2
  %incdec.ptr.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3
  %cmp1.3 = icmp eq ptr %incdec.ptr.2, %acp_stream
  %or.cond14 = select i1 %or.cond13, i1 true, i1 %cmp1.3
  %incdec.ptr.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4
  %cmp1.4 = icmp eq ptr %incdec.ptr.3, %acp_stream
  %or.cond15 = select i1 %or.cond14, i1 true, i1 %cmp1.4
  %incdec.ptr.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5
  %cmp1.5 = icmp eq ptr %incdec.ptr.4, %acp_stream
  %or.cond16 = select i1 %or.cond15, i1 true, i1 %cmp1.5
  %incdec.ptr.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6
  %cmp1.6 = icmp eq ptr %incdec.ptr.5, %acp_stream
  %or.cond17 = select i1 %or.cond16, i1 true, i1 %cmp1.6
  %incdec.ptr.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7
  %cmp1.7 = icmp eq ptr %incdec.ptr.6, %acp_stream
  %or.cond18 = select i1 %or.cond17, i1 true, i1 %cmp1.7
  br i1 %or.cond18, label %if.then, label %for.inc.7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %active = getelementptr inbounds %struct.acp_dsp_stream, ptr %acp_stream, i32 0, i32 6
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %active, align 4
  br label %cleanup

for.inc.7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  %stream_tag = getelementptr inbounds %struct.acp_dsp_stream, ptr %acp_stream, i32 0, i32 5
  %7 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_tag, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.inc.7 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_stream_init(ptr noundef %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %sdev1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 0, i32 1
  %4 = ptrtoint ptr %sdev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sdev, ptr %sdev1, align 4
  %active = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %5 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %active, align 4
  %stream_tag = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 0, i32 5
  %6 = ptrtoint ptr %stream_tag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %stream_tag, align 4
  %sdev1.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 1
  %7 = ptrtoint ptr %sdev1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sdev, ptr %sdev1.1, align 4
  %active.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 6
  %8 = ptrtoint ptr %active.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %active.1, align 4
  %stream_tag.1 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 1, i32 5
  %9 = ptrtoint ptr %stream_tag.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %stream_tag.1, align 4
  %sdev1.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2, i32 1
  %10 = ptrtoint ptr %sdev1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sdev, ptr %sdev1.2, align 4
  %active.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2, i32 6
  %11 = ptrtoint ptr %active.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active.2, align 4
  %stream_tag.2 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 2, i32 5
  %12 = ptrtoint ptr %stream_tag.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %stream_tag.2, align 4
  %sdev1.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 1
  %13 = ptrtoint ptr %sdev1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sdev, ptr %sdev1.3, align 4
  %active.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 6
  %14 = ptrtoint ptr %active.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %active.3, align 4
  %stream_tag.3 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 3, i32 5
  %15 = ptrtoint ptr %stream_tag.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %stream_tag.3, align 4
  %sdev1.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4, i32 1
  %16 = ptrtoint ptr %sdev1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sdev, ptr %sdev1.4, align 4
  %active.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4, i32 6
  %17 = ptrtoint ptr %active.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %active.4, align 4
  %stream_tag.4 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 4, i32 5
  %18 = ptrtoint ptr %stream_tag.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %stream_tag.4, align 4
  %sdev1.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 1
  %19 = ptrtoint ptr %sdev1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sdev, ptr %sdev1.5, align 4
  %active.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 6
  %20 = ptrtoint ptr %active.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %active.5, align 4
  %stream_tag.5 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 5, i32 5
  %21 = ptrtoint ptr %stream_tag.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %stream_tag.5, align 4
  %sdev1.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6, i32 1
  %22 = ptrtoint ptr %sdev1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sdev, ptr %sdev1.6, align 4
  %active.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6, i32 6
  %23 = ptrtoint ptr %active.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %active.6, align 4
  %stream_tag.6 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 6, i32 5
  %24 = ptrtoint ptr %stream_tag.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 7, ptr %stream_tag.6, align 4
  %sdev1.7 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 1
  %25 = ptrtoint ptr %sdev1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sdev, ptr %sdev1.7, align 4
  %active.7 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 6
  %26 = ptrtoint ptr %active.7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %active.7, align 4
  %stream_tag.7 = getelementptr %struct.acp_dev_data, ptr %3, i32 0, i32 9, i32 7, i32 5
  %27 = ptrtoint ptr %stream_tag.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %stream_tag.7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @acp_dsp_stream_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @acp_dsp_stream_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 144, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @acp_dsp_stream_get._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @acp_dsp_stream_get._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_acp_dsp_stream_get, !14, !"__ksymtab_acp_dsp_stream_get", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 147, i32 1}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 164, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @acp_dsp_stream_put._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @acp_dsp_stream_put._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_acp_dsp_stream_put, !21, !"__ksymtab_acp_dsp_stream_put", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 167, i32 1}
!22 = !{ptr @__ksymtab_acp_dsp_stream_init, !23, !"__ksymtab_acp_dsp_stream_init", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/amd/acp-stream.c", i32 181, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/amd/../ops.h", i32 299, i32 2}
!26 = !{ptr @snd_sof_dsp_write._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.snd_sof_dsp_write, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @snd_sof_dsp_write._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @snd_sof_dsp_write._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
