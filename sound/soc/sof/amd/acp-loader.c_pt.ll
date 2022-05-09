; ModuleID = '/llk/IR_all_yes/sound/soc/sof/amd/acp-loader.c_pt.bc'
source_filename = "../sound/soc/sof/amd/acp-loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+acp_dsp_block_read\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_block_read\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_block_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_block_read\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_dsp_block_write\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_block_write\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_block_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_block_write\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_get_bar_index\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_get_bar_index\09\09\09\09"
module asm "\09.long\09__crc_acp_get_bar_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_get_bar_index:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_get_bar_index\22\09\09\09\09\09"
module asm "__kstrtabns_acp_get_bar_index:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_dsp_pre_fw_run\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_dsp_pre_fw_run\09\09\09\09"
module asm "\09.long\09__crc_acp_dsp_pre_fw_run\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_dsp_pre_fw_run:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_dsp_pre_fw_run\22\09\09\09\09\09"
module asm "__kstrtabns_acp_dsp_pre_fw_run:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+acp_sof_dsp_run\22, \22a\22\09"
module asm "\09.weak\09__crc_acp_sof_dsp_run\09\09\09\09"
module asm "\09.long\09__crc_acp_sof_dsp_run\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acp_sof_dsp_run:\09\09\09\09\09"
module asm "\09.asciz \09\22acp_sof_dsp_run\22\09\09\09\09\09"
module asm "__kstrtabns_acp_sof_dsp_run:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.acp_dev_data = type { ptr, i32, i32, i32, i32, ptr, i32, ptr, [128 x %struct.dma_descriptor], [8 x %struct.acp_dsp_stream], ptr, ptr }
%struct.dma_descriptor = type { i32, i32, %union.dma_tx_cnt, i32 }
%union.dma_tx_cnt = type { %struct.anon.93 }
%struct.anon.93 = type { i32 }
%struct.acp_dsp_stream = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@acp_dsp_block_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad blk type 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acp_dsp_block_read\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/sof/amd/acp-loader.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acp_dsp_block_read._entry_ptr = internal global ptr @acp_dsp_block_read._entry, section ".printk_index", align 4
@__kstrtab_acp_dsp_block_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_block_read = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_block_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_block_read to i32), ptr @__kstrtab_acp_dsp_block_read, ptr @__kstrtabns_acp_dsp_block_read }, section "___ksymtab+acp_dsp_block_read", align 4
@acp_dsp_block_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acp_dsp_block_write\00", [44 x i8] zeroinitializer }, align 32
@acp_dsp_block_write._entry_ptr = internal global ptr @acp_dsp_block_write._entry, section ".printk_index", align 4
@__kstrtab_acp_dsp_block_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_block_write = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_block_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_block_write to i32), ptr @__kstrtab_acp_dsp_block_write, ptr @__kstrtabns_acp_dsp_block_write }, section "___ksymtab+acp_dsp_block_write", align 4
@__kstrtab_acp_get_bar_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_get_bar_index = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_get_bar_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_get_bar_index to i32), ptr @__kstrtab_acp_get_bar_index, ptr @__kstrtabns_acp_get_bar_index }, section "___ksymtab+acp_get_bar_index", align 4
@acp_dsp_pre_fw_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SHA DMA transfer failed status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acp_dsp_pre_fw_run\00", [45 x i8] zeroinitializer }, align 32
@acp_dsp_pre_fw_run._entry_ptr = internal global ptr @acp_dsp_pre_fw_run._entry, section ".printk_index", align 4
@acp_dsp_pre_fw_run._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"acp dma configuration failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@acp_dsp_pre_fw_run._entry_ptr.10 = internal global ptr @acp_dsp_pre_fw_run._entry.8, section ".printk_index", align 4
@acp_dsp_pre_fw_run._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"acp dma transfer status: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@acp_dsp_pre_fw_run._entry_ptr.13 = internal global ptr @acp_dsp_pre_fw_run._entry.11, section ".printk_index", align 4
@__kstrtab_acp_dsp_pre_fw_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_dsp_pre_fw_run = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_dsp_pre_fw_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_dsp_pre_fw_run to i32), ptr @__kstrtab_acp_dsp_pre_fw_run, ptr @__kstrtabns_acp_dsp_pre_fw_run }, section "___ksymtab+acp_dsp_pre_fw_run", align 4
@acp_sof_dsp_run.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_sof_amd_acp\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acp_sof_dsp_run\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ACP_DSP0_RUNSTALL : 0x%0x\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_acp_sof_dsp_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_acp_sof_dsp_run = external dso_local constant [0 x i8], align 1
@__ksymtab_acp_sof_dsp_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acp_sof_dsp_run to i32), ptr @__kstrtab_acp_sof_dsp_run, ptr @__kstrtabns_acp_sof_dsp_run }, section "___ksymtab+acp_sof_dsp_run", align 4
@configure_pte_for_fw_loading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid data type %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"configure_pte_for_fw_loading\00", [35 x i8] zeroinitializer }, align 32
@configure_pte_for_fw_loading._entry_ptr = internal global ptr @configure_pte_for_fw_loading._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.snd_sof_dsp_write, ptr @.str.21, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/amd/../ops.h\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.21, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 39, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 91, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 161, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 170, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 176, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 195, i32 2 }
@___asan_gen_.85 = private constant [34 x i8] c"../sound/soc/sof/amd/acp-loader.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 126, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 299, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [30 x i8] c"../sound/soc/sof/amd/../ops.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 319, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab_acp_dsp_block_read, ptr @__ksymtab_acp_dsp_block_write, ptr @__ksymtab_acp_dsp_pre_fw_run, ptr @__ksymtab_acp_get_bar_index, ptr @__ksymtab_acp_sof_dsp_run, ptr @acp_dsp_block_read._entry, ptr @acp_dsp_block_read._entry_ptr, ptr @acp_dsp_block_write._entry, ptr @acp_dsp_block_write._entry_ptr, ptr @acp_dsp_pre_fw_run._entry, ptr @acp_dsp_pre_fw_run._entry.11, ptr @acp_dsp_pre_fw_run._entry.8, ptr @acp_dsp_pre_fw_run._entry_ptr, ptr @acp_dsp_pre_fw_run._entry_ptr.10, ptr @acp_dsp_pre_fw_run._entry_ptr.13, ptr @configure_pte_for_fw_loading._entry, ptr @configure_pte_for_fw_loading._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_sof_dsp_write._rs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_block_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_block_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_pre_fw_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_pre_fw_run._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dsp_pre_fw_run._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_pte_for_fw_loading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_block_read(ptr noundef %sdev, i32 noundef %blk_type, i32 noundef %offset, ptr noundef %dest, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %blk_type)
  %cond = icmp eq i32 %blk_type, 3
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %offset, -33882112
  tail call void @memcpy_from_scratch(ptr noundef %sdev, i32 noundef %sub, ptr noundef %dest, i32 noundef %size) #4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %blk_type) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_from_scratch(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_block_write(ptr noundef %sdev, i32 noundef %blk_type, i32 noundef %offset, ptr noundef %src, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_pdata, align 4
  %6 = zext i32 %blk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %blk_type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %bin_buf = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %bin_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bin_buf, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end8_crit_edge

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add = add i32 %12, 4095
  %shr = and i32 %add, -4096
  %sha_dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %shr, ptr noundef %sha_dma_addr, i32 noundef 2592, i32 noundef 0) #4
  %13 = ptrtoint ptr %bin_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %bin_buf, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %sw.bb.if.end8_crit_edge
  %add9 = add i32 %size, %offset
  %fw_bin_size = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %fw_bin_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add9, ptr %fw_bin_size, align 4
  %15 = ptrtoint ptr %bin_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bin_buf, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %data_buf = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_buf, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.then14, label %sw.bb12.if.end22_crit_edge

sw.bb12.if.end22_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then14:                                        ; preds = %sw.bb12
  %dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 6
  %call.i60 = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 524288, ptr noundef %dma_addr, i32 noundef 2592, i32 noundef 0) #4
  %19 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i60, ptr %data_buf, align 4
  %tobool19.not = icmp eq ptr %call.i60, null
  br i1 %tobool19.not, label %if.then14.cleanup_crit_edge, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.then14.if.end22_crit_edge, %sw.bb12.if.end22_crit_edge
  %20 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_buf, align 4
  %add25 = add i32 %size, %offset
  %fw_data_bin_size = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %fw_data_bin_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add25, ptr %fw_data_bin_size, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %offset, -33882112
  tail call void @memcpy_to_scratch(ptr noundef %sdev, i32 noundef %sub, ptr noundef %src, i32 noundef %size) #4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %blk_type) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end22, %if.end8
  %.pn = phi ptr [ %21, %if.end22 ], [ %16, %if.end8 ]
  %dest.0 = getelementptr i8, ptr %.pn, i32 %offset
  %23 = call ptr @memcpy(ptr %dest.0, ptr %src, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb26, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb26 ], [ 0, %sw.epilog ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_to_scratch(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @acp_get_bar_index(ptr nocapture readnone %sdev, i32 noundef returned %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %type
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dsp_pre_fw_run(ptr nocapture noundef readonly %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_pdata, align 4
  %fw_bin_size = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fw_bin_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_bin_size, align 4
  %add = add i32 %7, 4095
  %shr = lshr i32 %add, 12
  %fw_bin_page_count = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fw_bin_page_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %fw_bin_page_count, align 4
  tail call fastcc void @configure_pte_for_fw_loading(i32 noundef 0, i32 noundef %shr, ptr noundef %5)
  %bin_buf = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %bin_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bin_buf, align 4
  %call = tail call i32 @configure_and_run_sha_dma(ptr noundef %5, ptr noundef %10, i32 noundef 67108864, i32 noundef 0, i32 noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @configure_pte_for_fw_loading(i32 noundef 1, i32 noundef 128, ptr noundef %5)
  %13 = add i32 %7, 67112959
  %add3 = and i32 %13, -4096
  %fw_data_bin_size = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %fw_data_bin_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_data_bin_size, align 4
  %call4 = tail call i32 @configure_and_run_dma(ptr noundef %5, i32 noundef %add3, i32 noundef 16777216, i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef %call4) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @acp_dma_status(ptr noundef %5, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %call12) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end11.if.end19_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add20 = add i32 %23, 4095
  %shr22 = and i32 %add20, -4096
  %24 = ptrtoint ptr %bin_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bin_buf, align 4
  %sha_dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %sha_dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sha_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %shr22, ptr noundef %25, i32 noundef %27, i32 noundef 0) #4
  %data_buf = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_buf, align 4
  %dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 524288, ptr noundef %29, i32 noundef %31, i32 noundef 0) #4
  %32 = ptrtoint ptr %bin_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %bin_buf, align 4
  %33 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %data_buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call12, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_pte_for_fw_loading(i32 noundef %type, i32 noundef %num_pages, ptr nocapture noundef readonly %adata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adata, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sha_dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %adata, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fw_bin_page_count = getelementptr inbounds %struct.acp_dev_data, ptr %adata, i32 0, i32 3
  %3 = ptrtoint ptr %fw_bin_page_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_bin_page_count, align 4
  %mul = shl i32 %4, 3
  %dma_addr = getelementptr inbounds %struct.acp_dev_data, ptr %adata, i32 0, i32 6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %type) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %addr.0.in = phi ptr [ %dma_addr, %sw.bb1 ], [ %sha_dma_addr, %sw.bb ]
  %offset.0 = phi i32 [ %mul, %sw.bb1 ], [ 0, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp39 = icmp sgt i32 %num_pages, 0
  br i1 %cmp39, label %for.body.lr.ph, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog
  %7 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %addr.0 = load i32, ptr %addr.0.in, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %snd_sof_dsp_write.exit38.for.body_crit_edge, %for.body.lr.ph
  %offset.143 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %add7, %snd_sof_dsp_write.exit38.for.body_crit_edge ]
  %page_idx.042 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %snd_sof_dsp_write.exit38.for.body_crit_edge ]
  %addr.140 = phi i32 [ %addr.0, %for.body.lr.ph ], [ %add8, %snd_sof_dsp_write.exit38.for.body_crit_edge ]
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %offset.143, 65536
  %16 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add
  tail call void %15(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %addr.140) #4
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %for.body
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i, align 4
  %desc.i27 = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %desc.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i27, align 4
  %ops.i28 = getelementptr inbounds %struct.sof_dev_desc, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i28, align 4
  %write.i29 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %write.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i29, align 4
  %tobool.not.i30 = icmp eq ptr %27, null
  br i1 %tobool.not.i30, label %do.body.i36, label %if.then.i33

if.then.i33:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add6 = add i32 %offset.143, 65540
  %28 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %29, i32 %add6
  tail call void %27(ptr noundef %1, ptr noundef %add.ptr.i32, i32 noundef -2147483648) #4
  br label %snd_sof_dsp_write.exit38

do.body.i36:                                      ; preds = %snd_sof_dsp_write.exit
  %call.i34 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool6.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool6.not.i35, label %do.body.i36.snd_sof_dsp_write.exit38_crit_edge, label %do.end.i37

do.body.i36.snd_sof_dsp_write.exit38_crit_edge:   ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit38

do.end.i37:                                       ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit38

snd_sof_dsp_write.exit38:                         ; preds = %do.end.i37, %do.body.i36.snd_sof_dsp_write.exit38_crit_edge, %if.then.i33
  %add7 = add i32 %offset.143, 8
  %add8 = add i32 %addr.140, 4096
  %inc = add i16 %page_idx.042, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp slt i32 %conv, %num_pages
  br i1 %cmp, label %snd_sof_dsp_write.exit38.for.body_crit_edge, label %snd_sof_dsp_write.exit38.cleanup_crit_edge

snd_sof_dsp_write.exit38.cleanup_crit_edge:       ; preds = %snd_sof_dsp_write.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_sof_dsp_write.exit38.for.body_crit_edge:      ; preds = %snd_sof_dsp_write.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %snd_sof_dsp_write.exit38.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configure_and_run_sha_dma(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configure_and_run_dma(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @acp_dma_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_sof_dsp_run(ptr noundef %sdev) #0 align 64 {
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
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %8 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1044
  tail call void %7(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 0) #4
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
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i7 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i7, align 4
  %ops.i8 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i8, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %tobool.not.i9 = icmp eq ptr %19, null
  br i1 %tobool.not.i9, label %do.end.i14, label %if.then.i13

if.then.i13:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i10 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %20 = ptrtoint ptr %bar5.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %21, i32 1044
  %call.i12 = tail call i32 %19(ptr noundef %sdev, ptr noundef %add.ptr.i11) #4
  br label %snd_sof_dsp_read.exit

do.end.i14:                                       ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #7
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i14, %if.then.i13
  %retval.0.i15 = phi i32 [ %call.i12, %if.then.i13 ], [ -524, %do.end.i14 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_sof_dsp_run.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_sof_dsp_run, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_sof_dsp_run.__UNIQUE_ID_ddebug247, ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_sof_dsp_read.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @acp_dsp_block_read._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @acp_dsp_block_read._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_acp_dsp_block_read, !9, !"__ksymtab_acp_dsp_block_read", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 45, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 91, i32 3}
!12 = !{ptr @acp_dsp_block_write._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @acp_dsp_block_write._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_acp_dsp_block_write, !15, !"__ksymtab_acp_dsp_block_write", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 98, i32 1}
!16 = !{ptr @__ksymtab_acp_get_bar_index, !17, !"__ksymtab_acp_get_bar_index", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 104, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 161, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @acp_dsp_pre_fw_run._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @acp_dsp_pre_fw_run._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 170, i32 3}
!25 = !{ptr @acp_dsp_pre_fw_run._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @acp_dsp_pre_fw_run._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 176, i32 3}
!29 = !{ptr @acp_dsp_pre_fw_run._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @acp_dsp_pre_fw_run._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_acp_dsp_pre_fw_run, !32, !"__ksymtab_acp_dsp_pre_fw_run", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 187, i32 1}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 195, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @acp_sof_dsp_run.__UNIQUE_ID_ddebug247, !34, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!38 = !{ptr @__ksymtab_acp_sof_dsp_run, !39, !"__ksymtab_acp_sof_dsp_run", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 199, i32 1}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/amd/acp-loader.c", i32 126, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @configure_pte_for_fw_loading._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @configure_pte_for_fw_loading._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/amd/../ops.h", i32 299, i32 2}
!47 = !{ptr @snd_sof_dsp_write._rs, !46, !"_rs", i1 false, i1 false}
!48 = !{ptr @__func__.snd_sof_dsp_write, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @snd_sof_dsp_write._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_sof_dsp_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/amd/../ops.h", i32 319, i32 2}
!55 = !{ptr @snd_sof_dsp_read._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_sof_dsp_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148183810, i64 2148183815, i64 2148183828, i64 2148183872, i64 2148183906, i64 2148183927}
