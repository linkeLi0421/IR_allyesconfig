; ModuleID = '/llk/IR_all_yes/sound/soc/sof/amd/acp.c_pt.bc'
source_filename = "../sound/soc/sof/amd/acp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+amd_sof_acp_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_amd_sof_acp_probe\09\09\09\09"
module asm "\09.long\09__crc_amd_sof_acp_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amd_sof_acp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22amd_sof_acp_probe\22\09\09\09\09\09"
module asm "__kstrtabns_amd_sof_acp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+amd_sof_acp_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_amd_sof_acp_remove\09\09\09\09"
module asm "\09.long\09__crc_amd_sof_acp_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amd_sof_acp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22amd_sof_acp_remove\22\09\09\09\09\09"
module asm "__kstrtabns_amd_sof_acp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_AMD_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.acp_dev_data = type { ptr, i32, i32, i32, i32, ptr, i32, ptr, [128 x %struct.dma_descriptor], [8 x %struct.acp_dsp_stream], ptr, ptr }
%struct.dma_descriptor = type { i32, i32, %union.dma_tx_cnt, i32 }
%union.dma_tx_cnt = type { %struct.anon.92 }
%struct.anon.92 = type { i32 }
%struct.acp_dsp_stream = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@configure_and_run_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acpbus_dma_start failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"configure_and_run_dma\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sof/amd/acp.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@configure_and_run_dma._entry_ptr = internal global ptr @configure_and_run_dma._entry, section ".printk_index", align 4
@configure_and_run_sha_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SHA DMA image address is NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"configure_and_run_sha_dma\00", [38 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma._entry_ptr = internal global ptr @configure_and_run_sha_dma._entry, section ".printk_index", align 4
@configure_and_run_sha_dma.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_sof_amd_acp\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW Poll Status: reg[%#x]=%#x successful\0A\00", [55 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW Poll Status: reg[%#x]=%#x timedout\0A\00", [57 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SHA DMA Failed to Reset\0A\00", [39 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma._entry_ptr.12 = internal global ptr @configure_and_run_sha_dma._entry.10, section ".printk_index", align 4
@configure_and_run_sha_dma.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@configure_and_run_sha_dma.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@configure_and_run_sha_dma._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SHA DMA Failed to Transfer Length %x\0A\00", [58 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma._entry_ptr.15 = internal global ptr @configure_and_run_sha_dma._entry.13, section ".printk_index", align 4
@configure_and_run_sha_dma._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PSP validation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@configure_and_run_sha_dma._entry_ptr.18 = internal global ptr @configure_and_run_sha_dma._entry.16, section ".printk_index", align 4
@acp_dma_status.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.19, ptr @.str.2, ptr @.str.8, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acp_dma_status\00", [17 x i8] zeroinitializer }, align 32
@acp_dma_status.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.19, ptr @.str.2, ptr @.str.9, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acp_dma_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.19, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA_CHANNEL %d status timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@acp_dma_status._entry_ptr = internal global ptr @acp_dma_status._entry, section ".printk_index", align 4
@amd_sof_acp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioremap error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amd_sof_acp_probe\00", [46 x i8] zeroinitializer }, align 32
@amd_sof_acp_probe._entry_ptr = internal global ptr @amd_sof_acp_probe._entry, section ".printk_index", align 4
@amd_sof_acp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no such device supported, chip id:%x\0A\00", [58 x i8] zeroinitializer }, align 32
@amd_sof_acp_probe._entry_ptr.25 = internal global ptr @amd_sof_acp_probe._entry.23, section ".printk_index", align 4
@amd_sof_acp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get host bridge device\0A\00", [62 x i8] zeroinitializer }, align 32
@amd_sof_acp_probe._entry_ptr.28 = internal global ptr @amd_sof_acp_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AudioDSP\00", [23 x i8] zeroinitializer }, align 32
@amd_sof_acp_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 411, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@amd_sof_acp_probe._entry_ptr.32 = internal global ptr @amd_sof_acp_probe._entry.30, section ".printk_index", align 4
@__kstrtab_amd_sof_acp_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_amd_sof_acp_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_amd_sof_acp_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amd_sof_acp_probe to i32), ptr @__kstrtab_amd_sof_acp_probe, ptr @__kstrtabns_amd_sof_acp_probe }, section "___ksymtab+amd_sof_acp_probe", align 4
@__kstrtab_amd_sof_acp_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_amd_sof_acp_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_amd_sof_acp_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amd_sof_acp_remove to i32), ptr @__kstrtab_amd_sof_acp_remove, ptr @__kstrtabns_amd_sof_acp_remove }, section "___ksymtab+amd_sof_acp_remove", align 4
@__UNIQUE_ID_description261 = internal constant [47 x i8] c"snd_sof_amd_acp.description=AMD ACP sof driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [55 x i8] c"snd_sof_amd_acp.file=sound/soc/sof/amd/snd-sof-amd-acp\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [37 x i8] c"snd_sof_amd_acp.license=Dual BSD/GPL\00", section ".modinfo", align 1
@acpbus_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"config dma ch failed:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acpbus_dma_start\00", [47 x i8] zeroinitializer }, align 32
@acpbus_dma_start._entry_ptr = internal global ptr @acpbus_dma_start._entry, section ".printk_index", align 4
@config_dma_channel.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.35, ptr @.str.2, ptr @.str.8, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_dma_channel\00", [45 x i8] zeroinitializer }, align 32
@config_dma_channel.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.35, ptr @.str.2, ptr @.str.9, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@config_dma_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.35, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ACP_DMA_ERR_STS :0x%x ACP_ERROR_STATUS :0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@config_dma_channel._entry_ptr = internal global ptr @config_dma_channel._entry, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/amd/../ops.h\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.snd_sof_dsp_write, ptr @.str.39, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@psp_fw_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FW validation timedout: status %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"psp_fw_validate\00", [16 x i8] zeroinitializer }, align 32
@psp_fw_validate._entry_ptr = internal global ptr @psp_fw_validate._entry, section ".printk_index", align 4
@acp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACP power on failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acp_init\00", [23 x i8] zeroinitializer }, align 32
@acp_init._entry_ptr = internal global ptr @acp_init._entry, section ".printk_index", align 4
@acp_power_on.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.45, ptr @.str.2, ptr @.str.8, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acp_power_on\00", [19 x i8] zeroinitializer }, align 32
@acp_power_on.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.45, ptr @.str.2, ptr @.str.9, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acp_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.45, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout in ACP_PGFSM_STATUS read\0A\00", [62 x i8] zeroinitializer }, align 32
@acp_power_on._entry_ptr = internal global ptr @acp_power_on._entry, section ".printk_index", align 4
@acp_reset.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.47, ptr @.str.2, ptr @.str.8, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acp_reset\00", [22 x i8] zeroinitializer }, align 32
@acp_reset.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.47, ptr @.str.2, ptr @.str.9, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.47, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timeout asserting reset\0A\00", [39 x i8] zeroinitializer }, align 32
@acp_reset._entry_ptr = internal global ptr @acp_reset._entry, section ".printk_index", align 4
@acp_reset.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.47, ptr @.str.2, ptr @.str.8, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acp_reset.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.47, ptr @.str.2, ptr @.str.9, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@acp_reset._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout in releasing reset\0A\00", [36 x i8] zeroinitializer }, align 32
@acp_reset._entry_ptr.51 = internal global ptr @acp_reset._entry.49, section ".printk_index", align 4
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 145, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 182, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 189, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 194, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 208, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 218, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 233, i32 9 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 237, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 386, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 396, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 402, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 408, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 410, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 122, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 87, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 94, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 319, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [30 x i8] c"../sound/soc/sof/amd/../ops.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 299, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 169, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 362, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 322, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 325, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 337, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 341, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [27 x i8] c"../sound/soc/sof/amd/acp.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 350, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__ksymtab_amd_sof_acp_probe, ptr @__ksymtab_amd_sof_acp_remove, ptr @acp_dma_status._entry, ptr @acp_dma_status._entry_ptr, ptr @acp_init._entry, ptr @acp_init._entry_ptr, ptr @acp_power_on._entry, ptr @acp_power_on._entry_ptr, ptr @acp_reset._entry, ptr @acp_reset._entry.49, ptr @acp_reset._entry_ptr, ptr @acp_reset._entry_ptr.51, ptr @acpbus_dma_start._entry, ptr @acpbus_dma_start._entry_ptr, ptr @amd_sof_acp_probe._entry, ptr @amd_sof_acp_probe._entry.23, ptr @amd_sof_acp_probe._entry.26, ptr @amd_sof_acp_probe._entry.30, ptr @amd_sof_acp_probe._entry_ptr, ptr @amd_sof_acp_probe._entry_ptr.25, ptr @amd_sof_acp_probe._entry_ptr.28, ptr @amd_sof_acp_probe._entry_ptr.32, ptr @config_dma_channel._entry, ptr @config_dma_channel._entry_ptr, ptr @configure_and_run_dma._entry, ptr @configure_and_run_dma._entry_ptr, ptr @configure_and_run_sha_dma._entry, ptr @configure_and_run_sha_dma._entry.10, ptr @configure_and_run_sha_dma._entry.13, ptr @configure_and_run_sha_dma._entry.16, ptr @configure_and_run_sha_dma._entry_ptr, ptr @configure_and_run_sha_dma._entry_ptr.12, ptr @configure_and_run_sha_dma._entry_ptr.15, ptr @configure_and_run_sha_dma._entry_ptr.18, ptr @psp_fw_validate._entry, ptr @psp_fw_validate._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @snd_sof_dsp_write._rs, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_and_run_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_and_run_sha_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_and_run_sha_dma._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_and_run_sha_dma._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_and_run_sha_dma._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_dma_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sof_acp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sof_acp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sof_acp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sof_acp_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acpbus_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_dma_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_fw_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_reset._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configure_and_run_dma(ptr noundef %adata, i32 noundef %src_addr, i32 noundef %dest_addr, i32 noundef %dsp_data_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dsp_data_size)
  %cmp155 = icmp sgt i32 %dsp_data_size, -1
  br i1 %cmp155, label %entry.for.body_crit_edge, label %do.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %for.end28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %desc_count.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dsp_data_size.addr.056 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %dsp_data_size, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %desc_count.057, 12
  %add = add i32 %mul, %src_addr
  %arrayidx = getelementptr %struct.acp_dev_data, ptr %adata, i32 0, i32 8, i32 %desc_count.057
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %arrayidx, align 4
  %add4 = add i32 %mul, %dest_addr
  %dest_addr7 = getelementptr %struct.acp_dev_data, ptr %adata, i32 0, i32 8, i32 %desc_count.057, i32 1
  %5 = ptrtoint ptr %dest_addr7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add4, ptr %dest_addr7, align 4
  %tx_cnt = getelementptr %struct.acp_dev_data, ptr %adata, i32 0, i32 8, i32 %desc_count.057, i32 2
  %6 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %tx_cnt, align 4
  %bf.clear = and i32 %bf.load, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dsp_data_size.addr.056)
  %cmp10 = icmp ult i32 %dsp_data_size.addr.056, 4096
  %bf.shl = shl i32 %dsp_data_size.addr.056, 13
  %spec.select = select i1 %cmp10, i32 %bf.shl, i32 33554432
  %storemerge = or i32 %bf.clear, %spec.select
  %7 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %tx_cnt, align 4
  %inc = add nuw nsw i32 %desc_count.057, 1
  %sub = add nsw i32 %dsp_data_size.addr.056, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %desc_count.057)
  %cmp = icmp ult i32 %desc_count.057, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dsp_data_size.addr.056)
  %cmp1 = icmp ugt i32 %dsp_data_size.addr.056, 4095
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %dscr_info17 = getelementptr %struct.acp_dev_data, ptr %adata, i32 0, i32 8
  %8 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adata, align 4
  %tobool.not.i = icmp eq ptr %dscr_info17, null
  br i1 %tobool.not.i, label %for.end.for.body23.preheader.sink.split_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.for.body23.preheader.sink.split_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23.preheader.sink.split

for.body.i:                                       ; preds = %configure_dma_descriptor.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %configure_dma_descriptor.exit.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %dscr_info.addr.02.i = phi ptr [ %incdec.ptr.i, %configure_dma_descriptor.exit.i.for.body.i_crit_edge ], [ %dscr_info17, %for.end.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.dma_descriptor, ptr %dscr_info.addr.02.i, i32 1
  %10 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adata, align 4
  %mul.i.i = shl nuw nsw i32 %indvars.iv, 4
  %pdata.i.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %dscr_info.addr.02.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dscr_info.addr.02.i, align 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 71696
  %bar5.i.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %11, i32 0, i32 21
  %22 = ptrtoint ptr %bar5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bar5.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %add.i.i
  tail call void %19(ptr noundef %11, ptr noundef %add.ptr.i.i.i, i32 noundef %21) #4
  br label %snd_sof_dsp_write.exit.i.i

do.body.i.i.i:                                    ; preds = %for.body.i
  %call.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit.i.i

snd_sof_dsp_write.exit.i.i:                       ; preds = %do.end.i.i.i, %do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge, %if.then.i.i.i
  %26 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i10.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %desc.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i10.i.i, align 4
  %ops.i11.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %ops.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i11.i.i, align 4
  %write.i12.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %write.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i12.i.i, align 4
  %tobool.not.i13.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i13.i.i, label %do.body.i19.i.i, label %if.then.i16.i.i

if.then.i16.i.i:                                  ; preds = %snd_sof_dsp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dest_addr.i.i = getelementptr inbounds %struct.dma_descriptor, ptr %dscr_info.addr.02.i, i32 0, i32 1
  %34 = ptrtoint ptr %dest_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dest_addr.i.i, align 4
  %add1.i.i = add nuw nsw i32 %mul.i.i, 71700
  %bar5.i14.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %11, i32 0, i32 21
  %36 = ptrtoint ptr %bar5.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bar5.i14.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %37, i32 %add1.i.i
  tail call void %33(ptr noundef %11, ptr noundef %add.ptr.i15.i.i, i32 noundef %35) #4
  br label %snd_sof_dsp_write.exit21.i.i

do.body.i19.i.i:                                  ; preds = %snd_sof_dsp_write.exit.i.i
  %call.i17.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool6.not.i18.i.i = icmp eq i32 %call.i17.i.i, 0
  br i1 %tobool6.not.i18.i.i, label %do.body.i19.i.i.snd_sof_dsp_write.exit21.i.i_crit_edge, label %do.end.i20.i.i

do.body.i19.i.i.snd_sof_dsp_write.exit21.i.i_crit_edge: ; preds = %do.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit21.i.i

do.end.i20.i.i:                                   ; preds = %do.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit21.i.i

snd_sof_dsp_write.exit21.i.i:                     ; preds = %do.end.i20.i.i, %do.body.i19.i.i.snd_sof_dsp_write.exit21.i.i_crit_edge, %if.then.i16.i.i
  %40 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i23.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %desc.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc.i23.i.i, align 4
  %ops.i24.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %ops.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i24.i.i, align 4
  %write.i25.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %write.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i25.i.i, align 4
  %tobool.not.i26.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i26.i.i, label %do.body.i32.i.i, label %if.then.i29.i.i

if.then.i29.i.i:                                  ; preds = %snd_sof_dsp_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tx_cnt.i.i = getelementptr inbounds %struct.dma_descriptor, ptr %dscr_info.addr.02.i, i32 0, i32 2
  %48 = ptrtoint ptr %tx_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_cnt.i.i, align 4
  %add2.i.i = add nuw nsw i32 %mul.i.i, 71704
  %bar5.i27.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %11, i32 0, i32 21
  %50 = ptrtoint ptr %bar5.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar5.i27.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %51, i32 %add2.i.i
  tail call void %47(ptr noundef %11, ptr noundef %add.ptr.i28.i.i, i32 noundef %49) #4
  br label %configure_dma_descriptor.exit.i

do.body.i32.i.i:                                  ; preds = %snd_sof_dsp_write.exit21.i.i
  %call.i30.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool6.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool6.not.i31.i.i, label %do.body.i32.i.i.configure_dma_descriptor.exit.i_crit_edge, label %do.end.i33.i.i

do.body.i32.i.i.configure_dma_descriptor.exit.i_crit_edge: ; preds = %do.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %configure_dma_descriptor.exit.i

do.end.i33.i.i:                                   ; preds = %do.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %configure_dma_descriptor.exit.i

configure_dma_descriptor.exit.i:                  ; preds = %do.end.i33.i.i, %do.body.i32.i.i.configure_dma_descriptor.exit.i_crit_edge, %if.then.i29.i.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv, %desc_count.057
  br i1 %exitcond.not, label %for.end.i, label %configure_dma_descriptor.exit.i.for.body.i_crit_edge

configure_dma_descriptor.exit.i.for.body.i_crit_edge: ; preds = %configure_dma_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %configure_dma_descriptor.exit.i
  %call.i = tail call fastcc i32 @config_dma_channel(ptr noundef %adata, i32 noundef %inc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %acpbus_dma_start.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.33, i32 noundef %call.i) #7
  br label %for.body23.preheader.sink.split

acpbus_dma_start.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %acpbus_dma_start.exit.for.body23.preheader_crit_edge, label %acpbus_dma_start.exit.for.body23.preheader.sink.split_crit_edge

acpbus_dma_start.exit.for.body23.preheader.sink.split_crit_edge: ; preds = %acpbus_dma_start.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23.preheader.sink.split

acpbus_dma_start.exit.for.body23.preheader_crit_edge: ; preds = %acpbus_dma_start.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23.preheader

for.body23.preheader.sink.split:                  ; preds = %acpbus_dma_start.exit.for.body23.preheader.sink.split_crit_edge, %do.end.i, %for.end.for.body23.preheader.sink.split_crit_edge
  %retval.0.i5473.ph = phi i32 [ %call.i, %do.end.i ], [ %call.i, %acpbus_dma_start.exit.for.body23.preheader.sink.split_crit_edge ], [ -22, %for.end.for.body23.preheader.sink.split_crit_edge ]
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str) #7
  br label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.body23.preheader.sink.split, %acpbus_dma_start.exit.for.body23.preheader_crit_edge
  %retval.0.i5473 = phi i32 [ 0, %acpbus_dma_start.exit.for.body23.preheader_crit_edge ], [ %retval.0.i5473.ph, %for.body23.preheader.sink.split ]
  %58 = shl nuw nsw i32 %inc, 4
  %59 = call ptr @memset(ptr %dscr_info17, i32 0, i32 %58)
  br label %for.end28

for.end28:                                        ; preds = %for.body23.preheader, %do.end.thread
  %retval.0.i5474 = phi i32 [ %retval.0.i5473, %for.body23.preheader ], [ -22, %do.end.thread ]
  ret i32 %retval.0.i5474
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configure_and_run_sha_dma(ptr nocapture noundef readonly %adata, ptr noundef readnone %image_addr, i32 noundef %start_addr, i32 noundef %dest_addr, i32 noundef %image_length) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adata, align 4
  %tobool.not = icmp eq ptr %image_addr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 6
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
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %if.end69

snd_sof_dsp_read.exit:                            ; preds = %if.end
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 7344
  %call.i = tail call i32 %11(ptr noundef %1, ptr noundef %add.ptr.i) #4
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %snd_sof_dsp_read.exit.if.end69_crit_edge, label %if.then3

snd_sof_dsp_read.exit.if.end69_crit_edge:         ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then3:                                         ; preds = %snd_sof_dsp_read.exit
  %16 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i, align 4
  %desc.i220 = getelementptr inbounds %struct.snd_sof_pdata, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %desc.i220 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i220, align 4
  %ops.i221 = getelementptr inbounds %struct.sof_dev_desc, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %ops.i221 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i221, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 4
  %tobool.not.i222 = icmp eq ptr %23, null
  br i1 %tobool.not.i222, label %do.body.i, label %if.then.i225

if.then.i225:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %25, i32 7344
  tail call void %23(ptr noundef %1, ptr noundef %add.ptr.i224, i32 noundef 2) #4
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.then3
  %call.i226 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool6.not.i = icmp eq i32 %call.i226, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i227

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit

do.end.i227:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i227, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i225
  %call4 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call4, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 192) #4
  br label %for.cond

for.cond:                                         ; preds = %if.then57, %snd_sof_dsp_write.exit
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 4
  %desc.i229 = getelementptr inbounds %struct.snd_sof_pdata, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %desc.i229 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i229, align 4
  %ops.i230 = getelementptr inbounds %struct.sof_dev_desc, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i230, align 4
  %read.i231 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read.i231 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i231, align 4
  %tobool.not.i232 = icmp eq ptr %35, null
  br i1 %tobool.not.i232, label %snd_sof_dsp_read.exit239.thread, label %snd_sof_dsp_read.exit239

snd_sof_dsp_read.exit239.thread:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %land.lhs.true

snd_sof_dsp_read.exit239:                         ; preds = %for.cond
  %38 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i234 = getelementptr i8, ptr %39, i32 7360
  %call.i235 = tail call i32 %35(ptr noundef %1, ptr noundef %add.ptr.i234) #4
  %and18 = and i32 %call.i235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %snd_sof_dsp_read.exit239.land.lhs.true_crit_edge, label %do.body21

snd_sof_dsp_read.exit239.land.lhs.true_crit_edge: ; preds = %snd_sof_dsp_read.exit239
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.body21:                                        ; preds = %snd_sof_dsp_read.exit239
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_and_run_sha_dma, %if.then26)) #4
          to label %for.end [label %if.then26], !srcloc !137

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_and_run_sha_dma.__UNIQUE_ID_ddebug249, ptr noundef %41, ptr noundef nonnull @.str.8, i32 noundef 7360, i32 noundef %call.i235) #4
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit239.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit239.thread
  %call33 = tail call i64 @ktime_get() #4
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then57

if.then36:                                        ; preds = %land.lhs.true
  %42 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i, align 4
  %desc.i242 = getelementptr inbounds %struct.snd_sof_pdata, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %desc.i242 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i242, align 4
  %ops.i243 = getelementptr inbounds %struct.sof_dev_desc, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %ops.i243 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i243, align 4
  %read.i244 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read.i244 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read.i244, align 4
  %tobool.not.i245 = icmp eq ptr %49, null
  br i1 %tobool.not.i245, label %do.end.i250, label %if.then.i249

if.then.i249:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %51, i32 7360
  %call.i248 = tail call i32 %49(ptr noundef %1, ptr noundef %add.ptr.i247) #4
  br label %snd_sof_dsp_read.exit252

do.end.i250:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit252

snd_sof_dsp_read.exit252:                         ; preds = %do.end.i250, %if.then.i249
  %retval.0.i251 = phi i32 [ %call.i248, %if.then.i249 ], [ -524, %do.end.i250 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_and_run_sha_dma, %if.then50)) #4
          to label %for.end [label %if.then50], !srcloc !137

if.then50:                                        ; preds = %snd_sof_dsp_read.exit252
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_and_run_sha_dma.__UNIQUE_ID_ddebug250, ptr noundef %55, ptr noundef nonnull @.str.9, i32 noundef 7360, i32 noundef %retval.0.i251) #4
  br label %for.end

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond

for.end:                                          ; preds = %if.then50, %snd_sof_dsp_read.exit252, %if.then26, %do.body21
  %val.0 = phi i32 [ %call.i235, %if.then26 ], [ %retval.0.i251, %if.then50 ], [ %call.i235, %do.body21 ], [ %retval.0.i251, %snd_sof_dsp_read.exit252 ]
  %and60 = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.end66, label %for.end.if.end69_crit_edge

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

do.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end69:                                         ; preds = %for.end.if.end69_crit_edge, %snd_sof_dsp_read.exit.if.end69_crit_edge, %snd_sof_dsp_read.exit.thread
  %58 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata.i, align 4
  %desc.i254 = getelementptr inbounds %struct.snd_sof_pdata, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %desc.i254 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i254, align 4
  %ops.i255 = getelementptr inbounds %struct.sof_dev_desc, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %ops.i255 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i255, align 4
  %write.i256 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %write.i256 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write.i256, align 4
  %tobool.not.i257 = icmp eq ptr %65, null
  br i1 %tobool.not.i257, label %do.body.i263, label %if.then.i260

if.then.i260:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i258 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %66 = ptrtoint ptr %bar5.i258 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bar5.i258, align 4
  %add.ptr.i259 = getelementptr i8, ptr %67, i32 7352
  tail call void %65(ptr noundef %1, ptr noundef %add.ptr.i259, i32 noundef %start_addr) #4
  br label %snd_sof_dsp_write.exit265

do.body.i263:                                     ; preds = %if.end69
  %call.i261 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool6.not.i262 = icmp eq i32 %call.i261, 0
  br i1 %tobool6.not.i262, label %do.body.i263.snd_sof_dsp_write.exit265_crit_edge, label %do.end.i264

do.body.i263.snd_sof_dsp_write.exit265_crit_edge: ; preds = %do.body.i263
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit265

do.end.i264:                                      ; preds = %do.body.i263
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit265

snd_sof_dsp_write.exit265:                        ; preds = %do.end.i264, %do.body.i263.snd_sof_dsp_write.exit265_crit_edge, %if.then.i260
  %70 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdata.i, align 4
  %desc.i267 = getelementptr inbounds %struct.snd_sof_pdata, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %desc.i267 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc.i267, align 4
  %ops.i268 = getelementptr inbounds %struct.sof_dev_desc, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %ops.i268 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i268, align 4
  %write.i269 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %write.i269 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write.i269, align 4
  %tobool.not.i270 = icmp eq ptr %77, null
  br i1 %tobool.not.i270, label %do.body.i276, label %if.then.i273

if.then.i273:                                     ; preds = %snd_sof_dsp_write.exit265
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i271 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %78 = ptrtoint ptr %bar5.i271 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bar5.i271, align 4
  %add.ptr.i272 = getelementptr i8, ptr %79, i32 7356
  tail call void %77(ptr noundef %1, ptr noundef %add.ptr.i272, i32 noundef %dest_addr) #4
  br label %snd_sof_dsp_write.exit278

do.body.i276:                                     ; preds = %snd_sof_dsp_write.exit265
  %call.i274 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool6.not.i275 = icmp eq i32 %call.i274, 0
  br i1 %tobool6.not.i275, label %do.body.i276.snd_sof_dsp_write.exit278_crit_edge, label %do.end.i277

do.body.i276.snd_sof_dsp_write.exit278_crit_edge: ; preds = %do.body.i276
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit278

do.end.i277:                                      ; preds = %do.body.i276
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit278

snd_sof_dsp_write.exit278:                        ; preds = %do.end.i277, %do.body.i276.snd_sof_dsp_write.exit278_crit_edge, %if.then.i273
  %82 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata.i, align 4
  %desc.i280 = getelementptr inbounds %struct.snd_sof_pdata, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %desc.i280 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %desc.i280, align 4
  %ops.i281 = getelementptr inbounds %struct.sof_dev_desc, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %ops.i281 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i281, align 4
  %write.i282 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %write.i282 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write.i282, align 4
  %tobool.not.i283 = icmp eq ptr %89, null
  br i1 %tobool.not.i283, label %do.body.i289, label %if.then.i286

if.then.i286:                                     ; preds = %snd_sof_dsp_write.exit278
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i284 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %90 = ptrtoint ptr %bar5.i284 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bar5.i284, align 4
  %add.ptr.i285 = getelementptr i8, ptr %91, i32 7348
  tail call void %89(ptr noundef %1, ptr noundef %add.ptr.i285, i32 noundef %image_length) #4
  br label %snd_sof_dsp_write.exit291

do.body.i289:                                     ; preds = %snd_sof_dsp_write.exit278
  %call.i287 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool6.not.i288 = icmp eq i32 %call.i287, 0
  br i1 %tobool6.not.i288, label %do.body.i289.snd_sof_dsp_write.exit291_crit_edge, label %do.end.i290

do.body.i289.snd_sof_dsp_write.exit291_crit_edge: ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit291

do.end.i290:                                      ; preds = %do.body.i289
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit291

snd_sof_dsp_write.exit291:                        ; preds = %do.end.i290, %do.body.i289.snd_sof_dsp_write.exit291_crit_edge, %if.then.i286
  %94 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdata.i, align 4
  %desc.i293 = getelementptr inbounds %struct.snd_sof_pdata, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %desc.i293 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc.i293, align 4
  %ops.i294 = getelementptr inbounds %struct.sof_dev_desc, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %ops.i294 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i294, align 4
  %write.i295 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %write.i295 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write.i295, align 4
  %tobool.not.i296 = icmp eq ptr %101, null
  br i1 %tobool.not.i296, label %do.body.i302, label %if.then.i299

if.then.i299:                                     ; preds = %snd_sof_dsp_write.exit291
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i297 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %102 = ptrtoint ptr %bar5.i297 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bar5.i297, align 4
  %add.ptr.i298 = getelementptr i8, ptr %103, i32 7344
  tail call void %101(ptr noundef %1, ptr noundef %add.ptr.i298, i32 noundef 1) #4
  br label %snd_sof_dsp_write.exit304

do.body.i302:                                     ; preds = %snd_sof_dsp_write.exit291
  %call.i300 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool6.not.i301 = icmp eq i32 %call.i300, 0
  br i1 %tobool6.not.i301, label %do.body.i302.snd_sof_dsp_write.exit304_crit_edge, label %do.end.i303

do.body.i302.snd_sof_dsp_write.exit304_crit_edge: ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit304

do.end.i303:                                      ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit304

snd_sof_dsp_write.exit304:                        ; preds = %do.end.i303, %do.body.i302.snd_sof_dsp_write.exit304_crit_edge, %if.then.i299
  %call73 = tail call i64 @ktime_get() #4
  %add.i305 = add i64 %call73, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 206) #4
  %bar5.i311 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  br label %for.cond87

for.cond87:                                       ; preds = %if.then135, %snd_sof_dsp_write.exit304
  %106 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdata.i, align 4
  %desc.i307 = getelementptr inbounds %struct.snd_sof_pdata, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %desc.i307 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc.i307, align 4
  %ops.i308 = getelementptr inbounds %struct.sof_dev_desc, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %ops.i308 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i308, align 4
  %read.i309 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %read.i309 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read.i309, align 4
  %tobool.not.i310 = icmp eq ptr %113, null
  br i1 %tobool.not.i310, label %do.end.i315, label %if.then.i314

if.then.i314:                                     ; preds = %for.cond87
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %bar5.i311 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bar5.i311, align 4
  %add.ptr.i312 = getelementptr i8, ptr %115, i32 7368
  %call.i313 = tail call i32 %113(ptr noundef %1, ptr noundef %add.ptr.i312) #4
  br label %snd_sof_dsp_read.exit317

do.end.i315:                                      ; preds = %for.cond87
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit317

snd_sof_dsp_read.exit317:                         ; preds = %do.end.i315, %if.then.i314
  %retval.0.i316 = phi i32 [ %call.i313, %if.then.i314 ], [ -524, %do.end.i315 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i316, i32 %image_length)
  %cmp89 = icmp eq i32 %retval.0.i316, %image_length
  br i1 %cmp89, label %do.body91, label %land.lhs.true110

do.body91:                                        ; preds = %snd_sof_dsp_read.exit317
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_and_run_sha_dma, %for.end139.thread)) #4
          to label %for.end139 [label %for.end139.thread], !srcloc !137

for.end139.thread:                                ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_and_run_sha_dma.__UNIQUE_ID_ddebug251, ptr noundef %119, ptr noundef nonnull @.str.8, i32 noundef 7368, i32 noundef %image_length) #4
  br label %if.end149

land.lhs.true110:                                 ; preds = %snd_sof_dsp_read.exit317
  %call111 = tail call i64 @ktime_get() #4
  %cmp3.i319 = icmp sgt i64 %call111, %add.i305
  br i1 %cmp3.i319, label %if.then114, label %if.then135

if.then114:                                       ; preds = %land.lhs.true110
  %120 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdata.i, align 4
  %desc.i323 = getelementptr inbounds %struct.snd_sof_pdata, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %desc.i323 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc.i323, align 4
  %ops.i324 = getelementptr inbounds %struct.sof_dev_desc, ptr %123, i32 0, i32 14
  %124 = ptrtoint ptr %ops.i324 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i324, align 4
  %read.i325 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %read.i325 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read.i325, align 4
  %tobool.not.i326 = icmp eq ptr %127, null
  br i1 %tobool.not.i326, label %do.end.i331, label %if.then.i330

if.then.i330:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  %128 = ptrtoint ptr %bar5.i311 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bar5.i311, align 4
  %add.ptr.i328 = getelementptr i8, ptr %129, i32 7368
  %call.i329 = tail call i32 %127(ptr noundef %1, ptr noundef %add.ptr.i328) #4
  br label %snd_sof_dsp_read.exit333

do.end.i331:                                      ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit333

snd_sof_dsp_read.exit333:                         ; preds = %do.end.i331, %if.then.i330
  %retval.0.i332 = phi i32 [ %call.i329, %if.then.i330 ], [ -524, %do.end.i331 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_and_run_sha_dma, %if.then128)) #4
          to label %for.end139 [label %if.then128], !srcloc !137

if.then128:                                       ; preds = %snd_sof_dsp_read.exit333
  call void @__sanitizer_cov_trace_pc() #6
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_and_run_sha_dma.__UNIQUE_ID_ddebug252, ptr noundef %133, ptr noundef nonnull @.str.9, i32 noundef 7368, i32 noundef %retval.0.i332) #4
  br label %for.end139

if.then135:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond87

for.end139:                                       ; preds = %if.then128, %snd_sof_dsp_read.exit333, %do.body91
  %tx_count.0 = phi i32 [ %retval.0.i332, %if.then128 ], [ %image_length, %do.body91 ], [ %retval.0.i332, %snd_sof_dsp_read.exit333 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_count.0, i32 %image_length)
  %cmp141 = icmp eq i32 %tx_count.0, %image_length
  br i1 %cmp141, label %for.end139.if.end149_crit_edge, label %do.end147

for.end139.if.end149_crit_edge:                   ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

do.end147:                                        ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.14, i32 noundef %tx_count.0) #7
  br label %cleanup

if.end149:                                        ; preds = %for.end139.if.end149_crit_edge, %for.end139.thread
  %136 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %138 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %data.i, align 4, !annotation !138
  %smn_dev.i = getelementptr inbounds %struct.acp_dev_data, ptr %adata, i32 0, i32 11
  %139 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %smn_dev.i, align 4
  %call.i.i = tail call i32 @pci_write_config_dword(ptr noundef %140, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i.i = tail call i32 @pci_write_config_dword(ptr noundef %140, i32 noundef 100, i32 noundef 3342336) #4
  tail call void @msleep(i32 noundef 20) #4
  %141 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %smn_dev.i, align 4
  %call.i10.i = tail call i32 @pci_write_config_dword(ptr noundef %142, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i11.i = call i32 @pci_read_config_dword(ptr noundef %142, i32 noundef 100, ptr noundef nonnull %data.i) #4
  %143 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %144)
  %tobool.not.i334 = icmp sgt i32 %144, -1
  br i1 %tobool.not.i334, label %for.cond.i, label %if.end149.if.end153_crit_edge

if.end149.if.end153_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

for.cond.i:                                       ; preds = %if.end149
  call void @msleep(i32 noundef 20) #4
  %145 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %smn_dev.i, align 4
  %call.i10.1.i = call i32 @pci_write_config_dword(ptr noundef %146, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i11.1.i = call i32 @pci_read_config_dword(ptr noundef %146, i32 noundef 100, ptr noundef nonnull %data.i) #4
  %147 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %148)
  %tobool.not.1.i = icmp sgt i32 %148, -1
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end153_crit_edge

for.cond.i.if.end153_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @msleep(i32 noundef 20) #4
  %149 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %smn_dev.i, align 4
  %call.i10.2.i = call i32 @pci_write_config_dword(ptr noundef %150, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i11.2.i = call i32 @pci_read_config_dword(ptr noundef %150, i32 noundef 100, ptr noundef nonnull %data.i) #4
  %151 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %tobool.not.2.i = icmp sgt i32 %152, -1
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end153_crit_edge

for.cond.1.i.if.end153_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @msleep(i32 noundef 20) #4
  %153 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %smn_dev.i, align 4
  %call.i10.3.i = call i32 @pci_write_config_dword(ptr noundef %154, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i11.3.i = call i32 @pci_read_config_dword(ptr noundef %154, i32 noundef 100, ptr noundef nonnull %data.i) #4
  %155 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %156)
  %tobool.not.3.i = icmp sgt i32 %156, -1
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.if.end153_crit_edge

for.cond.2.i.if.end153_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @msleep(i32 noundef 20) #4
  %157 = ptrtoint ptr %smn_dev.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %smn_dev.i, align 4
  %call.i10.4.i = call i32 @pci_write_config_dword(ptr noundef %158, i32 noundef 96, i32 noundef 58787184) #4
  %call1.i11.4.i = call i32 @pci_read_config_dword(ptr noundef %158, i32 noundef 100, ptr noundef nonnull %data.i) #4
  %159 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %tobool.not.4.i = icmp sgt i32 %160, -1
  br i1 %tobool.not.4.i, label %psp_fw_validate.exit, label %for.cond.3.i.if.end153_crit_edge

for.cond.3.i.if.end153_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

psp_fw_validate.exit:                             ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %161 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %137, align 4
  %and4.i = and i32 %160, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.41, i32 noundef %and4.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %cleanup

if.end153:                                        ; preds = %for.cond.3.i.if.end153_crit_edge, %for.cond.2.i.if.end153_crit_edge, %for.cond.1.i.if.end153_crit_edge, %for.cond.i.if.end153_crit_edge, %if.end149.if.end153_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  %163 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdata.i, align 4
  %desc.i337 = getelementptr inbounds %struct.snd_sof_pdata, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %desc.i337 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %desc.i337, align 4
  %ops.i338 = getelementptr inbounds %struct.sof_dev_desc, ptr %166, i32 0, i32 14
  %167 = ptrtoint ptr %ops.i338 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ops.i338, align 4
  %read.i339 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %168, i32 0, i32 9
  %169 = ptrtoint ptr %read.i339 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read.i339, align 4
  %tobool.not.i340 = icmp eq ptr %170, null
  br i1 %tobool.not.i340, label %snd_sof_dsp_read.exit347.thread, label %snd_sof_dsp_read.exit347

snd_sof_dsp_read.exit347.thread:                  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %do.end160

snd_sof_dsp_read.exit347:                         ; preds = %if.end153
  %173 = ptrtoint ptr %bar5.i311 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bar5.i311, align 4
  %add.ptr.i342 = getelementptr i8, ptr %174, i32 7280
  %call.i343 = call i32 %170(ptr noundef %1, ptr noundef %add.ptr.i342) #4
  %and155 = and i32 %call.i343, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %snd_sof_dsp_read.exit347.do.end160_crit_edge, label %snd_sof_dsp_read.exit347.cleanup_crit_edge

snd_sof_dsp_read.exit347.cleanup_crit_edge:       ; preds = %snd_sof_dsp_read.exit347
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_sof_dsp_read.exit347.do.end160_crit_edge:     ; preds = %snd_sof_dsp_read.exit347
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end160

do.end160:                                        ; preds = %snd_sof_dsp_read.exit347.do.end160_crit_edge, %snd_sof_dsp_read.exit347.thread
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.17) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %snd_sof_dsp_read.exit347.cleanup_crit_edge, %psp_fw_validate.exit, %do.end147, %do.end66, %do.end
  %retval.0 = phi i32 [ -110, %do.end66 ], [ -110, %do.end147 ], [ -22, %do.end160 ], [ -22, %do.end ], [ -110, %psp_fw_validate.exit ], [ 0, %snd_sof_dsp_read.exit347.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @acp_dma_status(ptr nocapture noundef readonly %adata, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adata, align 4
  %conv = zext i8 %ch to i32
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
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

snd_sof_dsp_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %if.end67

snd_sof_dsp_read.exit:                            ; preds = %entry
  %mul = shl nuw nsw i32 %conv, 2
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul
  %call.i = tail call i32 %9(ptr noundef %1, ptr noundef %add.ptr.i) #4
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_sof_dsp_read.exit.if.end67_crit_edge, label %if.then

snd_sof_dsp_read.exit.if.end67_crit_edge:         ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then:                                          ; preds = %snd_sof_dsp_read.exit
  %call1 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call1, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 235) #4
  br label %for.cond

for.cond:                                         ; preds = %if.then51, %if.then
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i88 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i88, align 4
  %ops.i89 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i89, align 4
  %read.i90 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i90, align 4
  %tobool.not.i91 = icmp eq ptr %21, null
  br i1 %tobool.not.i91, label %snd_sof_dsp_read.exit98.thread, label %snd_sof_dsp_read.exit98

snd_sof_dsp_read.exit98.thread:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %land.lhs.true

snd_sof_dsp_read.exit98:                          ; preds = %for.cond
  %24 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %25, i32 232
  %call.i94 = tail call i32 %21(ptr noundef %1, ptr noundef %add.ptr.i93) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool12.not = icmp eq i32 %call.i94, 0
  br i1 %tobool12.not, label %do.body14, label %snd_sof_dsp_read.exit98.land.lhs.true_crit_edge

snd_sof_dsp_read.exit98.land.lhs.true_crit_edge:  ; preds = %snd_sof_dsp_read.exit98
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.body14:                                        ; preds = %snd_sof_dsp_read.exit98
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_dma_status.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_dma_status, %for.end.thread)) #4
          to label %for.end [label %for.end.thread], !srcloc !137

for.end.thread:                                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_dma_status.__UNIQUE_ID_ddebug253, ptr noundef %27, ptr noundef nonnull @.str.8, i32 noundef 232, i32 noundef 0) #4
  br label %if.end67

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit98.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit98.thread
  %call26 = tail call i64 @ktime_get() #4
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then30, label %if.then51

if.then30:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 4
  %desc.i101 = getelementptr inbounds %struct.snd_sof_pdata, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %desc.i101 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i101, align 4
  %ops.i102 = getelementptr inbounds %struct.sof_dev_desc, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %ops.i102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i102, align 4
  %read.i103 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i103, align 4
  %tobool.not.i104 = icmp eq ptr %35, null
  br i1 %tobool.not.i104, label %do.end.i109, label %if.then.i108

if.then.i108:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %37, i32 232
  %call.i107 = tail call i32 %35(ptr noundef %1, ptr noundef %add.ptr.i106) #4
  br label %snd_sof_dsp_read.exit111

do.end.i109:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit111

snd_sof_dsp_read.exit111:                         ; preds = %do.end.i109, %if.then.i108
  %retval.0.i110 = phi i32 [ %call.i107, %if.then.i108 ], [ -524, %do.end.i109 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_dma_status.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_dma_status, %if.then44)) #4
          to label %for.end [label %if.then44], !srcloc !137

if.then44:                                        ; preds = %snd_sof_dsp_read.exit111
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_dma_status.__UNIQUE_ID_ddebug254, ptr noundef %41, ptr noundef nonnull @.str.9, i32 noundef 232, i32 noundef %retval.0.i110) #4
  br label %for.end

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond

for.end:                                          ; preds = %if.then44, %snd_sof_dsp_read.exit111, %do.body14
  %val.0 = phi i32 [ %retval.0.i110, %if.then44 ], [ 0, %do.body14 ], [ %retval.0.i110, %snd_sof_dsp_read.exit111 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool55.not = icmp eq i32 %val.0, 0
  br i1 %tobool55.not, label %for.end.if.end67_crit_edge, label %do.end63

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.20, i32 noundef %conv) #7
  br label %if.end67

if.end67:                                         ; preds = %do.end63, %for.end.if.end67_crit_edge, %for.end.thread, %snd_sof_dsp_read.exit.if.end67_crit_edge, %snd_sof_dsp_read.exit.thread
  %ret.0 = phi i32 [ -110, %do.end63 ], [ 0, %for.end.if.end67_crit_edge ], [ 0, %snd_sof_dsp_read.exit.if.end67_crit_edge ], [ 0, %snd_sof_dsp_read.exit.thread ], [ 0, %for.end.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memcpy_from_scratch(ptr noundef %sdev, i32 noundef %offset, ptr nocapture noundef writeonly %dst, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp6.not = icmp eq i32 %bytes, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %snd_sof_dsp_read.exit.for.body_crit_edge, %for.body.lr.ph
  %j.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %snd_sof_dsp_read.exit.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %add2, %snd_sof_dsp_read.exit.for.body_crit_edge ]
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

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add1 = add i32 %add, %i.07
  %8 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add1
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #4
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %arrayidx = getelementptr i32, ptr %dst, i32 %j.09
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %add2 = add i32 %i.07, 4
  %inc = add i32 %j.09, 1
  %cmp = icmp ult i32 %add2, %bytes
  br i1 %cmp, label %snd_sof_dsp_read.exit.for.body_crit_edge, label %snd_sof_dsp_read.exit.for.end_crit_edge

snd_sof_dsp_read.exit.for.end_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

snd_sof_dsp_read.exit.for.body_crit_edge:         ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %snd_sof_dsp_read.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memcpy_to_scratch(ptr noundef %sdev, i32 noundef %offset, ptr nocapture noundef readonly %src, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp6.not = icmp eq i32 %bytes, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %snd_sof_dsp_write.exit.for.body_crit_edge, %for.body.lr.ph
  %j.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %snd_sof_dsp_write.exit.for.body_crit_edge ]
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %add2, %snd_sof_dsp_write.exit.for.body_crit_edge ]
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

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i32, ptr %src, i32 %j.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add1 = add i32 %add, %i.07
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add1
  tail call void %7(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %9) #4
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
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %add2 = add i32 %i.07, 4
  %inc = add i32 %j.09, 1
  %cmp = icmp ult i32 %add2, %bytes
  br i1 %cmp, label %snd_sof_dsp_write.exit.for.body_crit_edge, label %snd_sof_dsp_write.exit.for.end_crit_edge

snd_sof_dsp_write.exit.for.end_crit_edge:         ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

snd_sof_dsp_write.exit.for.body_crit_edge:        ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %snd_sof_dsp_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sof_acp_probe(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2376, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sdev, ptr %call.i, align 4
  %resource = getelementptr i8, ptr %1, i32 936
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  %end = getelementptr i8, ptr %1, i32 940
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add
  %call12 = tail call ptr @devm_ioremap(ptr noundef %6, i32 noundef %4, i32 noundef %cond) #4
  %bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %9 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %bar, align 4
  %tobool16.not = icmp eq ptr %call12, null
  br i1 %tobool16.not, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %add.ptr) #4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %hw_pdata, align 4
  %15 = load ptr, ptr %pdata, align 4
  %desc1.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc1.i, align 4
  %chip_info.i = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip_info.i, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %device = getelementptr i8, ptr %1, i32 -102
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device, align 2
  %conv = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %conv) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %call29 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef %25, ptr noundef null) #4
  %smn_dev = getelementptr inbounds %struct.acp_dev_data, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %smn_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call29, ptr %smn_dev, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %irq = getelementptr i8, ptr %1, i32 932
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %31 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ipc_irq, align 4
  %call39 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @acp_irq_handler, ptr noundef nonnull @acp_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.29, ptr noundef %sdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  %34 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ipc_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.31, i32 noundef %35) #7
  %36 = ptrtoint ptr %smn_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smn_dev, align 4
  tail call void @pci_dev_put(ptr noundef %37) #4
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %call.i100 = tail call fastcc i32 @acp_power_on(ptr noundef %sdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.43) #7
  br label %acp_init.exit

if.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call fastcc i32 @acp_reset(ptr noundef %sdev) #4
  br label %acp_init.exit

acp_init.exit:                                    ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i100, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp51 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp51, label %if.then53, label %if.end57

if.then53:                                        ; preds = %acp_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ipc_irq, align 4
  %call55 = tail call ptr @free_irq(i32 noundef %41, ptr noundef %sdev) #4
  %42 = ptrtoint ptr %smn_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smn_dev, align 4
  tail call void @pci_dev_put(ptr noundef %43) #4
  br label %cleanup

if.end57:                                         ; preds = %acp_init.exit
  %44 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_pdata.i, align 4
  %call.i101 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 6164, i32 noundef 1, i32 noundef 1) #4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %pdata.i.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %53, i32 0, i32 14
  %54 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %49, i32 0, i32 21
  %58 = ptrtoint ptr %bar5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bar5.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 3076
  tail call void %57(ptr noundef %49, ptr noundef %add.ptr.i.i.i, i32 noundef -2113601536) #4
  br label %snd_sof_dsp_write.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end57
  %call.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit.i.i

snd_sof_dsp_write.exit.i.i:                       ; preds = %do.end.i.i.i, %do.body.i.i.i.snd_sof_dsp_write.exit.i.i_crit_edge, %if.then.i.i.i
  %62 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i4.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %desc.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i4.i.i, align 4
  %ops.i5.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %ops.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i5.i.i, align 4
  %write.i6.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %write.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i6.i.i, align 4
  %tobool.not.i7.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i7.i.i, label %do.body.i13.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %snd_sof_dsp_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i8.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %49, i32 0, i32 21
  %70 = ptrtoint ptr %bar5.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bar5.i8.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %71, i32 3072
  tail call void %69(ptr noundef %49, ptr noundef %add.ptr.i9.i.i, i32 noundef 2) #4
  br label %snd_sof_dsp_write.exit15.i.i

do.body.i13.i.i:                                  ; preds = %snd_sof_dsp_write.exit.i.i
  %call.i11.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool6.not.i12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool6.not.i12.i.i, label %do.body.i13.i.i.snd_sof_dsp_write.exit15.i.i_crit_edge, label %do.end.i14.i.i

do.body.i13.i.i.snd_sof_dsp_write.exit15.i.i_crit_edge: ; preds = %do.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit15.i.i

do.end.i14.i.i:                                   ; preds = %do.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit15.i.i

snd_sof_dsp_write.exit15.i.i:                     ; preds = %do.end.i14.i.i, %do.body.i13.i.i.snd_sof_dsp_write.exit15.i.i_crit_edge, %if.then.i10.i.i
  %74 = ptrtoint ptr %pdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata.i.i.i, align 4
  %desc.i17.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %desc.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc.i17.i.i, align 4
  %ops.i18.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %ops.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i18.i.i, align 4
  %write.i19.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %write.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i19.i.i, align 4
  %tobool.not.i20.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i20.i.i, label %do.body.i26.i.i, label %if.then.i23.i.i

if.then.i23.i.i:                                  ; preds = %snd_sof_dsp_write.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i21.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %49, i32 0, i32 21
  %82 = ptrtoint ptr %bar5.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bar5.i21.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %83, i32 3136
  tail call void %81(ptr noundef %49, ptr noundef %add.ptr.i22.i.i, i32 noundef 1) #4
  br label %configure_acp_groupregisters.exit.i

do.body.i26.i.i:                                  ; preds = %snd_sof_dsp_write.exit15.i.i
  %call.i24.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i)
  %tobool6.not.i25.i.i = icmp eq i32 %call.i24.i.i, 0
  br i1 %tobool6.not.i25.i.i, label %do.body.i26.i.i.configure_acp_groupregisters.exit.i_crit_edge, label %do.end.i27.i.i

do.body.i26.i.i.configure_acp_groupregisters.exit.i_crit_edge: ; preds = %do.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %configure_acp_groupregisters.exit.i

do.end.i27.i.i:                                   ; preds = %do.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %configure_acp_groupregisters.exit.i

configure_acp_groupregisters.exit.i:              ; preds = %do.end.i27.i.i, %do.body.i26.i.i.configure_acp_groupregisters.exit.i_crit_edge, %if.then.i23.i.i
  %86 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %47, align 4
  %pdata.i.i1.i = getelementptr inbounds %struct.snd_sof_dev, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %pdata.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata.i.i1.i, align 4
  %desc.i.i2.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %desc.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc.i.i2.i, align 4
  %ops.i.i3.i = getelementptr inbounds %struct.sof_dev_desc, ptr %91, i32 0, i32 14
  %92 = ptrtoint ptr %ops.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i.i3.i, align 4
  %write.i.i4.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %write.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write.i.i4.i, align 4
  %tobool.not.i.i5.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i5.i, label %do.body.i.i11.i, label %if.then.i.i8.i

if.then.i.i8.i:                                   ; preds = %configure_acp_groupregisters.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i.i6.i = getelementptr inbounds %struct.snd_sof_dev, ptr %87, i32 0, i32 21
  %96 = ptrtoint ptr %bar5.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bar5.i.i6.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %97, i32 224
  tail call void %95(ptr noundef %87, ptr noundef %add.ptr.i.i7.i, i32 noundef 33888272) #4
  br label %snd_sof_dsp_write.exit.i13.i

do.body.i.i11.i:                                  ; preds = %configure_acp_groupregisters.exit.i
  %call.i.i9.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i)
  %tobool6.not.i.i10.i = icmp eq i32 %call.i.i9.i, 0
  br i1 %tobool6.not.i.i10.i, label %do.body.i.i11.i.snd_sof_dsp_write.exit.i13.i_crit_edge, label %do.end.i.i12.i

do.body.i.i11.i.snd_sof_dsp_write.exit.i13.i_crit_edge: ; preds = %do.body.i.i11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit.i13.i

do.end.i.i12.i:                                   ; preds = %do.body.i.i11.i
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit.i13.i

snd_sof_dsp_write.exit.i13.i:                     ; preds = %do.end.i.i12.i, %do.body.i.i11.i.snd_sof_dsp_write.exit.i13.i_crit_edge, %if.then.i.i8.i
  %100 = ptrtoint ptr %pdata.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdata.i.i1.i, align 4
  %desc.i3.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %desc.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc.i3.i.i, align 4
  %ops.i4.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %103, i32 0, i32 14
  %104 = ptrtoint ptr %ops.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i4.i.i, align 4
  %write.i5.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %write.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write.i5.i.i, align 4
  %tobool.not.i6.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i6.i.i, label %do.body.i12.i.i, label %if.then.i9.i.i

if.then.i9.i.i:                                   ; preds = %snd_sof_dsp_write.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i7.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %87, i32 0, i32 21
  %108 = ptrtoint ptr %bar5.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bar5.i7.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %109, i32 228
  tail call void %107(ptr noundef %87, ptr noundef %add.ptr.i8.i.i, i32 noundef 2) #4
  br label %acp_memory_init.exit

do.body.i12.i.i:                                  ; preds = %snd_sof_dsp_write.exit.i13.i
  %call.i10.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool6.not.i11.i.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool6.not.i11.i.i, label %do.body.i12.i.i.acp_memory_init.exit_crit_edge, label %do.end.i13.i.i

do.body.i12.i.i.acp_memory_init.exit_crit_edge:   ; preds = %do.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %acp_memory_init.exit

do.end.i13.i.i:                                   ; preds = %do.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %acp_memory_init.exit

acp_memory_init.exit:                             ; preds = %do.end.i13.i.i, %do.body.i12.i.i.acp_memory_init.exit_crit_edge, %if.then.i9.i.i
  %call59 = tail call i32 @acp_dsp_stream_init(ptr noundef %sdev) #4
  br label %cleanup

cleanup:                                          ; preds = %acp_memory_init.exit, %if.then53, %do.end45, %do.end35, %do.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %do.end45 ], [ %retval.0.i, %if.then53 ], [ 0, %acp_memory_init.exit ], [ -19, %do.end35 ], [ -5, %do.end26 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %dev_id, i32 0, i32 12
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
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %12

snd_sof_dsp_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %dev_id, i32 0, i32 21
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 6168
  %call.i = tail call i32 %7(ptr noundef %dev_id, ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  br label %12

12:                                               ; preds = %snd_sof_dsp_read.exit, %snd_sof_dsp_read.exit.thread
  %13 = phi i32 [ 2, %snd_sof_dsp_read.exit.thread ], [ %spec.select, %snd_sof_dsp_read.exit ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acp_irq_thread(i32 noundef %irq, ptr noundef %context) #0 align 64 {
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
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %if.then

snd_sof_dsp_read.exit:                            ; preds = %entry
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 6152
  %call.i = tail call i32 %7(ptr noundef %context, ptr noundef %add.ptr.i) #4
  %and = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %snd_sof_dsp_read.exit.if.then_crit_edge

snd_sof_dsp_read.exit.if.then_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %snd_sof_dsp_read.exit.if.then_crit_edge, %snd_sof_dsp_read.exit.thread
  %retval.0.i54 = phi i32 [ -524, %snd_sof_dsp_read.exit.thread ], [ %call.i, %snd_sof_dsp_read.exit.if.then_crit_edge ]
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i18 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i18, align 4
  %ops.i19 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i19, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %19, null
  br i1 %tobool.not.i20, label %do.body.i, label %if.then.i23

if.then.i23:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i21 = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 21
  %20 = ptrtoint ptr %bar5.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 6152
  tail call void %19(ptr noundef %context, ptr noundef %add.ptr.i22, i32 noundef %retval.0.i54) #4
  br label %cleanup

do.body.i:                                        ; preds = %if.then
  %call.i24 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool6.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool6.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i25

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i25:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %cleanup

if.end:                                           ; preds = %snd_sof_dsp_read.exit
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i27 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i27, align 4
  %ops.i28 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i28, align 4
  %read.i29 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i29, align 4
  %tobool.not.i30 = icmp eq ptr %31, null
  br i1 %tobool.not.i30, label %snd_sof_dsp_read.exit37.thread, label %snd_sof_dsp_read.exit37

snd_sof_dsp_read.exit37.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %if.then4

snd_sof_dsp_read.exit37:                          ; preds = %if.end
  %34 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %35, i32 6168
  %call.i33 = tail call i32 %31(ptr noundef %context, ptr noundef %add.ptr.i32) #4
  %and2 = and i32 %call.i33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %snd_sof_dsp_read.exit37.cleanup_crit_edge, label %snd_sof_dsp_read.exit37.if.then4_crit_edge

snd_sof_dsp_read.exit37.if.then4_crit_edge:       ; preds = %snd_sof_dsp_read.exit37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

snd_sof_dsp_read.exit37.cleanup_crit_edge:        ; preds = %snd_sof_dsp_read.exit37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %snd_sof_dsp_read.exit37.if.then4_crit_edge, %snd_sof_dsp_read.exit37.thread
  %retval.0.i3658 = phi i32 [ -524, %snd_sof_dsp_read.exit37.thread ], [ %call.i33, %snd_sof_dsp_read.exit37.if.then4_crit_edge ]
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %irq_thread = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %irq_thread to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_thread, align 4
  %call5 = tail call i32 %43(i32 noundef %irq, ptr noundef %context) #4
  %44 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata.i, align 4
  %desc.i39 = getelementptr inbounds %struct.snd_sof_pdata, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %desc.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc.i39, align 4
  %ops.i40 = getelementptr inbounds %struct.sof_dev_desc, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i40, align 4
  %write.i41 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %write.i41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i41, align 4
  %tobool.not.i42 = icmp eq ptr %51, null
  br i1 %tobool.not.i42, label %do.body.i48, label %if.then.i45

if.then.i45:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %retval.0.i3658, 4
  %52 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %53, i32 6168
  tail call void %51(ptr noundef %context, ptr noundef %add.ptr.i44, i32 noundef %or) #4
  br label %cleanup

do.body.i48:                                      ; preds = %if.then4
  %call.i46 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool6.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool6.not.i47, label %do.body.i48.cleanup_crit_edge, label %do.end.i49

do.body.i48.cleanup_crit_edge:                    ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i49:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i49, %do.body.i48.cleanup_crit_edge, %if.then.i45, %snd_sof_dsp_read.exit37.cleanup_crit_edge, %do.end.i25, %do.body.i.cleanup_crit_edge, %if.then.i23
  %retval.0 = phi i32 [ 0, %snd_sof_dsp_read.exit37.cleanup_crit_edge ], [ 1, %if.then.i23 ], [ 1, %do.body.i.cleanup_crit_edge ], [ 1, %do.end.i25 ], [ 1, %if.then.i45 ], [ 1, %do.body.i48.cleanup_crit_edge ], [ 1, %do.end.i49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @acp_dsp_stream_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sof_acp_remove(ptr noundef %sdev) #0 align 64 {
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
  %smn_dev = getelementptr inbounds %struct.acp_dev_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %smn_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smn_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_dev_put(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %6 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %sdev) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @acp_reset(ptr noundef %sdev)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acp_reset(ptr noundef %sdev) unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %9, i32 4096
  tail call void %7(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 1) #4
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 339) #4
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i179257 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i179257 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i179257, align 4
  %ops.i180258 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i180258 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i180258, align 4
  %read.i259 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i259 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i259, align 4
  %tobool.not.i181260 = icmp eq ptr %19, null
  br i1 %tobool.not.i181260, label %snd_sof_dsp_write.exit.snd_sof_dsp_read.exit.thread_crit_edge, label %snd_sof_dsp_read.exit.lr.ph

snd_sof_dsp_write.exit.snd_sof_dsp_read.exit.thread_crit_edge: ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_read.exit.thread

snd_sof_dsp_read.exit.lr.ph:                      ; preds = %snd_sof_dsp_write.exit
  %bar5.i182 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %if.then45.snd_sof_dsp_read.exit.thread_crit_edge, %snd_sof_dsp_write.exit.snd_sof_dsp_read.exit.thread_crit_edge
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %do.body10

snd_sof_dsp_read.exit:                            ; preds = %if.then45.snd_sof_dsp_read.exit_crit_edge, %snd_sof_dsp_read.exit.lr.ph
  %22 = phi ptr [ %19, %snd_sof_dsp_read.exit.lr.ph ], [ %48, %if.then45.snd_sof_dsp_read.exit_crit_edge ]
  %23 = ptrtoint ptr %bar5.i182 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar5.i182, align 4
  %add.ptr.i183 = getelementptr i8, ptr %24, i32 4096
  %call.i184 = tail call i32 %22(ptr noundef %sdev, ptr noundef %add.ptr.i183) #4
  %and = and i32 %call.i184, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %snd_sof_dsp_read.exit.do.body10_crit_edge

snd_sof_dsp_read.exit.do.body10_crit_edge:        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body10:                                        ; preds = %snd_sof_dsp_read.exit.do.body10_crit_edge, %snd_sof_dsp_read.exit.thread
  %retval.0.i187246 = phi i32 [ -524, %snd_sof_dsp_read.exit.thread ], [ %call.i184, %snd_sof_dsp_read.exit.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_reset.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_reset, %if.then15)) #4
          to label %for.end [label %if.then15], !srcloc !137

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_reset.__UNIQUE_ID_ddebug257, ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef 4096, i32 noundef %retval.0.i187246) #4
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call21 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then45

if.then24:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.i, align 4
  %desc.i190 = getelementptr inbounds %struct.snd_sof_pdata, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %desc.i190 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc.i190, align 4
  %ops.i191 = getelementptr inbounds %struct.sof_dev_desc, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i191, align 4
  %read.i192 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %read.i192 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read.i192, align 4
  %tobool.not.i193 = icmp eq ptr %34, null
  br i1 %tobool.not.i193, label %do.end.i198, label %if.then.i197

if.then.i197:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %bar5.i182 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bar5.i182, align 4
  %add.ptr.i195 = getelementptr i8, ptr %36, i32 4096
  %call.i196 = tail call i32 %34(ptr noundef %sdev, ptr noundef %add.ptr.i195) #4
  br label %snd_sof_dsp_read.exit200

do.end.i198:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit200

snd_sof_dsp_read.exit200:                         ; preds = %do.end.i198, %if.then.i197
  %retval.0.i199 = phi i32 [ %call.i196, %if.then.i197 ], [ -524, %do.end.i198 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_reset.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_reset, %if.then38)) #4
          to label %for.end [label %if.then38], !srcloc !137

if.then38:                                        ; preds = %snd_sof_dsp_read.exit200
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_reset.__UNIQUE_ID_ddebug258, ptr noundef %40, ptr noundef nonnull @.str.9, i32 noundef 4096, i32 noundef %retval.0.i199) #4
  br label %for.end

if.then45:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  %41 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata.i, align 4
  %desc.i179 = getelementptr inbounds %struct.snd_sof_pdata, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %desc.i179 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc.i179, align 4
  %ops.i180 = getelementptr inbounds %struct.sof_dev_desc, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %ops.i180 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i180, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i, align 4
  %tobool.not.i181 = icmp eq ptr %48, null
  br i1 %tobool.not.i181, label %if.then45.snd_sof_dsp_read.exit.thread_crit_edge, label %if.then45.snd_sof_dsp_read.exit_crit_edge

if.then45.snd_sof_dsp_read.exit_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_read.exit

if.then45.snd_sof_dsp_read.exit.thread_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_read.exit.thread

for.end:                                          ; preds = %if.then38, %snd_sof_dsp_read.exit200, %if.then15, %do.body10
  %val.0 = phi i32 [ %retval.0.i187246, %if.then15 ], [ %retval.0.i199, %if.then38 ], [ %retval.0.i187246, %do.body10 ], [ %retval.0.i199, %snd_sof_dsp_read.exit200 ]
  %and48 = and i32 %val.0, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.end54, label %if.end56

do.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.48) #7
  br label %cleanup

if.end56:                                         ; preds = %for.end
  %51 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata.i, align 4
  %desc.i202 = getelementptr inbounds %struct.snd_sof_pdata, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %desc.i202 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i202, align 4
  %ops.i203 = getelementptr inbounds %struct.sof_dev_desc, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %ops.i203 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i203, align 4
  %write.i204 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %write.i204 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i204, align 4
  %tobool.not.i205 = icmp eq ptr %58, null
  br i1 %tobool.not.i205, label %do.body.i211, label %if.then.i208

if.then.i208:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i206 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %59 = ptrtoint ptr %bar5.i206 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bar5.i206, align 4
  %add.ptr.i207 = getelementptr i8, ptr %60, i32 4096
  tail call void %58(ptr noundef %sdev, ptr noundef %add.ptr.i207, i32 noundef 0) #4
  br label %snd_sof_dsp_write.exit213

do.body.i211:                                     ; preds = %if.end56
  %call.i209 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool6.not.i210 = icmp eq i32 %call.i209, 0
  br i1 %tobool6.not.i210, label %do.body.i211.snd_sof_dsp_write.exit213_crit_edge, label %do.end.i212

do.body.i211.snd_sof_dsp_write.exit213_crit_edge: ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit213

do.end.i212:                                      ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit213

snd_sof_dsp_write.exit213:                        ; preds = %do.end.i212, %do.body.i211.snd_sof_dsp_write.exit213_crit_edge, %if.then.i208
  %call60 = tail call i64 @ktime_get() #4
  %add.i214 = add i64 %call60, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 348) #4
  %bar5.i220 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.cond74

for.cond74:                                       ; preds = %if.then122, %snd_sof_dsp_write.exit213
  %63 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdata.i, align 4
  %desc.i216 = getelementptr inbounds %struct.snd_sof_pdata, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %desc.i216 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc.i216, align 4
  %ops.i217 = getelementptr inbounds %struct.sof_dev_desc, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %ops.i217 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i217, align 4
  %read.i218 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %read.i218 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read.i218, align 4
  %tobool.not.i219 = icmp eq ptr %70, null
  br i1 %tobool.not.i219, label %snd_sof_dsp_read.exit226.thread, label %snd_sof_dsp_read.exit226

snd_sof_dsp_read.exit226.thread:                  ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %land.lhs.true97

snd_sof_dsp_read.exit226:                         ; preds = %for.cond74
  %73 = ptrtoint ptr %bar5.i220 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bar5.i220, align 4
  %add.ptr.i221 = getelementptr i8, ptr %74, i32 4096
  %call.i222 = tail call i32 %70(ptr noundef %sdev, ptr noundef %add.ptr.i221) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool76.not = icmp eq i32 %call.i222, 0
  br i1 %tobool76.not, label %do.body78, label %snd_sof_dsp_read.exit226.land.lhs.true97_crit_edge

snd_sof_dsp_read.exit226.land.lhs.true97_crit_edge: ; preds = %snd_sof_dsp_read.exit226
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true97

do.body78:                                        ; preds = %snd_sof_dsp_read.exit226
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_reset.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_reset, %for.end126.thread)) #4
          to label %for.end126 [label %for.end126.thread], !srcloc !137

for.end126.thread:                                ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_reset.__UNIQUE_ID_ddebug259, ptr noundef %76, ptr noundef nonnull @.str.8, i32 noundef 4096, i32 noundef 0) #4
  br label %cleanup

land.lhs.true97:                                  ; preds = %snd_sof_dsp_read.exit226.land.lhs.true97_crit_edge, %snd_sof_dsp_read.exit226.thread
  %call98 = tail call i64 @ktime_get() #4
  %cmp3.i228 = icmp sgt i64 %call98, %add.i214
  br i1 %cmp3.i228, label %if.then101, label %if.then122

if.then101:                                       ; preds = %land.lhs.true97
  %77 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata.i, align 4
  %desc.i232 = getelementptr inbounds %struct.snd_sof_pdata, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %desc.i232 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc.i232, align 4
  %ops.i233 = getelementptr inbounds %struct.sof_dev_desc, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %ops.i233 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i233, align 4
  %read.i234 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %read.i234 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read.i234, align 4
  %tobool.not.i235 = icmp eq ptr %84, null
  br i1 %tobool.not.i235, label %do.end.i240, label %if.then.i239

if.then.i239:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %bar5.i220 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bar5.i220, align 4
  %add.ptr.i237 = getelementptr i8, ptr %86, i32 4096
  %call.i238 = tail call i32 %84(ptr noundef %sdev, ptr noundef %add.ptr.i237) #4
  br label %snd_sof_dsp_read.exit242

do.end.i240:                                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit242

snd_sof_dsp_read.exit242:                         ; preds = %do.end.i240, %if.then.i239
  %retval.0.i241 = phi i32 [ %call.i238, %if.then.i239 ], [ -524, %do.end.i240 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_reset.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_reset, %if.then115)) #4
          to label %for.end126 [label %if.then115], !srcloc !137

if.then115:                                       ; preds = %snd_sof_dsp_read.exit242
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_reset.__UNIQUE_ID_ddebug260, ptr noundef %90, ptr noundef nonnull @.str.9, i32 noundef 4096, i32 noundef %retval.0.i241) #4
  br label %for.end126

if.then122:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond74

for.end126:                                       ; preds = %if.then115, %snd_sof_dsp_read.exit242, %do.body78
  %val.1 = phi i32 [ %retval.0.i241, %if.then115 ], [ 0, %do.body78 ], [ %retval.0.i241, %snd_sof_dsp_read.exit242 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1)
  %tobool128.not = icmp eq i32 %val.1, 0
  br i1 %tobool128.not, label %for.end126.cleanup_crit_edge, label %do.end136

for.end126.cleanup_crit_edge:                     ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end136:                                        ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.50) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %for.end126.cleanup_crit_edge, %for.end126.thread, %do.end54
  %retval.0 = phi i32 [ -110, %do.end54 ], [ -110, %do.end136 ], [ 0, %for.end126.cleanup_crit_edge ], [ 0, %for.end126.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_dma_channel(ptr nocapture noundef readonly %adata, i32 noundef %dscr_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adata, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 12
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
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  tail call void %9(ptr noundef %1, ptr noundef %11, i32 noundef 17) #4
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
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 89) #4
  %bar5.i8 = getelementptr inbounds %struct.snd_sof_dev, ptr %1, i32 0, i32 21
  br label %for.cond

for.cond:                                         ; preds = %if.then46, %snd_sof_dsp_write.exit
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i5 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i5, align 4
  %ops.i6 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i6, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %tobool.not.i7 = icmp eq ptr %21, null
  br i1 %tobool.not.i7, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %land.lhs.true

snd_sof_dsp_read.exit:                            ; preds = %for.cond
  %24 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 240
  %call.i9 = tail call i32 %21(ptr noundef %1, ptr noundef %add.ptr.i) #4
  %and = and i32 %call.i9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_sof_dsp_read.exit.land.lhs.true_crit_edge, label %do.body10

snd_sof_dsp_read.exit.land.lhs.true_crit_edge:    ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.body10:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_dma_channel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_dma_channel, %if.then15)) #4
          to label %for.end [label %if.then15], !srcloc !137

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_dma_channel.__UNIQUE_ID_ddebug247, ptr noundef %27, ptr noundef nonnull @.str.8, i32 noundef 240, i32 noundef %call.i9) #4
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit.thread
  %call22 = tail call i64 @ktime_get() #4
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then46

if.then25:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 4
  %desc.i15 = getelementptr inbounds %struct.snd_sof_pdata, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %desc.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i15, align 4
  %ops.i16 = getelementptr inbounds %struct.sof_dev_desc, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i16, align 4
  %read.i17 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %read.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i17, align 4
  %tobool.not.i18 = icmp eq ptr %35, null
  br i1 %tobool.not.i18, label %do.end.i23, label %if.then.i22

if.then.i22:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i20 = getelementptr i8, ptr %37, i32 240
  %call.i21 = tail call i32 %35(ptr noundef %1, ptr noundef %add.ptr.i20) #4
  br label %snd_sof_dsp_read.exit25

do.end.i23:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit25

snd_sof_dsp_read.exit25:                          ; preds = %do.end.i23, %if.then.i22
  %retval.0.i24 = phi i32 [ %call.i21, %if.then.i22 ], [ -524, %do.end.i23 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_dma_channel.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_dma_channel, %if.then39)) #4
          to label %for.end [label %if.then39], !srcloc !137

if.then39:                                        ; preds = %snd_sof_dsp_read.exit25
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_dma_channel.__UNIQUE_ID_ddebug248, ptr noundef %41, ptr noundef nonnull @.str.9, i32 noundef 240, i32 noundef %retval.0.i24) #4
  br label %for.end

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond

for.end:                                          ; preds = %if.then39, %snd_sof_dsp_read.exit25, %if.then15, %do.body10
  %val.0 = phi i32 [ %call.i9, %if.then15 ], [ %retval.0.i24, %if.then39 ], [ %call.i9, %do.body10 ], [ %retval.0.i24, %snd_sof_dsp_read.exit25 ]
  %and51 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %42 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata.i, align 4
  %desc.i27 = getelementptr inbounds %struct.snd_sof_pdata, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %desc.i27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i27, align 4
  %ops.i28 = getelementptr inbounds %struct.sof_dev_desc, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i28, align 4
  br i1 %tobool52.not, label %if.then54, label %if.end63

if.then54:                                        ; preds = %for.end
  %read.i29 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %read.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read.i29, align 4
  %tobool.not.i30 = icmp eq ptr %49, null
  br i1 %tobool.not.i30, label %do.end.i35, label %if.then.i34

if.then.i34:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i32 = getelementptr i8, ptr %51, i32 6340
  %call.i33 = tail call i32 %49(ptr noundef %1, ptr noundef %add.ptr.i32) #4
  br label %snd_sof_dsp_read.exit37

do.end.i35:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit37

snd_sof_dsp_read.exit37:                          ; preds = %do.end.i35, %if.then.i34
  %retval.0.i36 = phi i32 [ %call.i33, %if.then.i34 ], [ -524, %do.end.i35 ]
  %54 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata.i, align 4
  %desc.i39 = getelementptr inbounds %struct.snd_sof_pdata, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %desc.i39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc.i39, align 4
  %ops.i40 = getelementptr inbounds %struct.sof_dev_desc, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i40, align 4
  %read.i41 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %read.i41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read.i41, align 4
  %tobool.not.i42 = icmp eq ptr %61, null
  br i1 %tobool.not.i42, label %do.end.i47, label %if.then.i46

if.then.i46:                                      ; preds = %snd_sof_dsp_read.exit37
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i44 = getelementptr i8, ptr %63, i32 192
  %call.i45 = tail call i32 %61(ptr noundef %1, ptr noundef %add.ptr.i44) #4
  br label %snd_sof_dsp_read.exit49

do.end.i47:                                       ; preds = %snd_sof_dsp_read.exit37
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit49

snd_sof_dsp_read.exit49:                          ; preds = %do.end.i47, %if.then.i46
  %retval.0.i48 = phi i32 [ %call.i45, %if.then.i46 ], [ -524, %do.end.i47 ]
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i48, i32 noundef %retval.0.i36) #7
  br label %cleanup

if.end63:                                         ; preds = %for.end
  %write.i53 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %47, i32 0, i32 8
  %68 = ptrtoint ptr %write.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i53, align 4
  %tobool.not.i54 = icmp eq ptr %69, null
  br i1 %tobool.not.i54, label %do.body.i59, label %if.then.i56

if.then.i56:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bar5.i8, align 4
  tail call void %69(ptr noundef %1, ptr noundef %71, i32 noundef 0) #4
  br label %snd_sof_dsp_write.exit61

do.body.i59:                                      ; preds = %if.end63
  %call.i57 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool6.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool6.not.i58, label %do.body.i59.snd_sof_dsp_write.exit61_crit_edge, label %do.end.i60

do.body.i59.snd_sof_dsp_write.exit61_crit_edge:   ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit61

do.end.i60:                                       ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit61

snd_sof_dsp_write.exit61:                         ; preds = %do.end.i60, %do.body.i59.snd_sof_dsp_write.exit61_crit_edge, %if.then.i56
  %74 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata.i, align 4
  %desc.i63 = getelementptr inbounds %struct.snd_sof_pdata, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %desc.i63 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc.i63, align 4
  %ops.i64 = getelementptr inbounds %struct.sof_dev_desc, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i64, align 4
  %write.i65 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %write.i65 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i65, align 4
  %tobool.not.i66 = icmp eq ptr %81, null
  br i1 %tobool.not.i66, label %do.body.i72, label %if.then.i69

if.then.i69:                                      ; preds = %snd_sof_dsp_write.exit61
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i68 = getelementptr i8, ptr %83, i32 64
  tail call void %81(ptr noundef %1, ptr noundef %add.ptr.i68, i32 noundef %dscr_count) #4
  br label %snd_sof_dsp_write.exit74

do.body.i72:                                      ; preds = %snd_sof_dsp_write.exit61
  %call.i70 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool6.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool6.not.i71, label %do.body.i72.snd_sof_dsp_write.exit74_crit_edge, label %do.end.i73

do.body.i72.snd_sof_dsp_write.exit74_crit_edge:   ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit74

do.end.i73:                                       ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit74

snd_sof_dsp_write.exit74:                         ; preds = %do.end.i73, %do.body.i72.snd_sof_dsp_write.exit74_crit_edge, %if.then.i69
  %86 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdata.i, align 4
  %desc.i76 = getelementptr inbounds %struct.snd_sof_pdata, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %desc.i76 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %desc.i76, align 4
  %ops.i77 = getelementptr inbounds %struct.sof_dev_desc, ptr %89, i32 0, i32 14
  %90 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i77, align 4
  %write.i78 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %write.i78 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write.i78, align 4
  %tobool.not.i79 = icmp eq ptr %93, null
  br i1 %tobool.not.i79, label %do.body.i85, label %if.then.i82

if.then.i82:                                      ; preds = %snd_sof_dsp_write.exit74
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i81 = getelementptr i8, ptr %95, i32 32
  tail call void %93(ptr noundef %1, ptr noundef %add.ptr.i81, i32 noundef 0) #4
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
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit87

snd_sof_dsp_write.exit87:                         ; preds = %do.end.i86, %do.body.i85.snd_sof_dsp_write.exit87_crit_edge, %if.then.i82
  %98 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdata.i, align 4
  %desc.i89 = getelementptr inbounds %struct.snd_sof_pdata, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %desc.i89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %desc.i89, align 4
  %ops.i90 = getelementptr inbounds %struct.sof_dev_desc, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i90, align 4
  %write.i91 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %write.i91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write.i91, align 4
  %tobool.not.i92 = icmp eq ptr %105, null
  br i1 %tobool.not.i92, label %do.body.i98, label %if.then.i95

if.then.i95:                                      ; preds = %snd_sof_dsp_write.exit87
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bar5.i8, align 4
  %add.ptr.i94 = getelementptr i8, ptr %107, i32 96
  tail call void %105(ptr noundef %1, ptr noundef %add.ptr.i94, i32 noundef 0) #4
  br label %snd_sof_dsp_write.exit100

do.body.i98:                                      ; preds = %snd_sof_dsp_write.exit87
  %call.i96 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool6.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool6.not.i97, label %do.body.i98.snd_sof_dsp_write.exit100_crit_edge, label %do.end.i99

do.body.i98.snd_sof_dsp_write.exit100_crit_edge:  ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit100

do.end.i99:                                       ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit100

snd_sof_dsp_write.exit100:                        ; preds = %do.end.i99, %do.body.i98.snd_sof_dsp_write.exit100_crit_edge, %if.then.i95
  %110 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdata.i, align 4
  %desc.i102 = getelementptr inbounds %struct.snd_sof_pdata, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %desc.i102 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc.i102, align 4
  %ops.i103 = getelementptr inbounds %struct.sof_dev_desc, ptr %113, i32 0, i32 14
  %114 = ptrtoint ptr %ops.i103 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i103, align 4
  %write.i104 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %write.i104 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write.i104, align 4
  %tobool.not.i105 = icmp eq ptr %117, null
  br i1 %tobool.not.i105, label %do.body.i110, label %if.then.i107

if.then.i107:                                     ; preds = %snd_sof_dsp_write.exit100
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %bar5.i8 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bar5.i8, align 4
  tail call void %117(ptr noundef %1, ptr noundef %119, i32 noundef 2) #4
  br label %cleanup

do.body.i110:                                     ; preds = %snd_sof_dsp_write.exit100
  %call.i108 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool6.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool6.not.i109, label %do.body.i110.cleanup_crit_edge, label %do.end.i111

do.body.i110.cleanup_crit_edge:                   ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i111:                                      ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #6
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i111, %do.body.i110.cleanup_crit_edge, %if.then.i107, %snd_sof_dsp_read.exit49
  %cond = phi i32 [ -110, %snd_sof_dsp_read.exit49 ], [ 0, %if.then.i107 ], [ 0, %do.body.i110.cleanup_crit_edge ], [ 0, %do.end.i111 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acp_power_on(ptr noundef %sdev) unnamed_addr #0 align 64 {
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
  br i1 %tobool.not.i, label %if.end.thread, label %snd_sof_dsp_read.exit

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %if.end2

snd_sof_dsp_read.exit:                            ; preds = %entry
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 5152
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %snd_sof_dsp_read.exit.cleanup_crit_edge, label %if.end

snd_sof_dsp_read.exit.cleanup_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %snd_sof_dsp_read.exit
  %and = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i87 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i87, align 4
  %ops.i88 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i88, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 4
  %tobool.not.i89 = icmp eq ptr %19, null
  br i1 %tobool.not.i89, label %do.body.i, label %if.then.i92

if.then.i92:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %21, i32 5148
  tail call void %19(ptr noundef %sdev, ptr noundef %add.ptr.i91, i32 noundef 1) #4
  br label %if.end2

do.body.i:                                        ; preds = %if.then1
  %call.i93 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool6.not.i = icmp eq i32 %call.i93, 0
  br i1 %tobool6.not.i, label %do.body.i.if.end2_crit_edge, label %do.end.i94

do.body.i.if.end2_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

do.end.i94:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %if.end2

if.end2:                                          ; preds = %do.end.i94, %do.body.i.if.end2_crit_edge, %if.then.i92, %if.end.if.end2_crit_edge, %if.end.thread
  %call3 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call3, 2000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 323) #4
  %bar5.i100 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.cond

for.cond:                                         ; preds = %if.then52, %if.end2
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i96 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i96 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i96, align 4
  %ops.i97 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i97, align 4
  %read.i98 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i98, align 4
  %tobool.not.i99 = icmp eq ptr %31, null
  br i1 %tobool.not.i99, label %snd_sof_dsp_read.exit106.thread, label %snd_sof_dsp_read.exit106

snd_sof_dsp_read.exit106.thread:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %land.lhs.true

snd_sof_dsp_read.exit106:                         ; preds = %for.cond
  %34 = ptrtoint ptr %bar5.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar5.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %35, i32 5152
  %call.i102 = tail call i32 %31(ptr noundef %sdev, ptr noundef %add.ptr.i101) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool15.not = icmp eq i32 %call.i102, 0
  br i1 %tobool15.not, label %do.body17, label %snd_sof_dsp_read.exit106.land.lhs.true_crit_edge

snd_sof_dsp_read.exit106.land.lhs.true_crit_edge: ; preds = %snd_sof_dsp_read.exit106
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.body17:                                        ; preds = %snd_sof_dsp_read.exit106
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_power_on.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_power_on, %for.end.thread)) #4
          to label %for.end [label %for.end.thread], !srcloc !137

for.end.thread:                                   ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_power_on.__UNIQUE_ID_ddebug255, ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef 5152, i32 noundef 0) #4
  br label %cleanup

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit106.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit106.thread
  %call28 = tail call i64 @ktime_get() #4
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %if.then31, label %if.then52

if.then31:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i, align 4
  %desc.i109 = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i109, align 4
  %ops.i110 = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i110, align 4
  %read.i111 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read.i111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i111, align 4
  %tobool.not.i112 = icmp eq ptr %45, null
  br i1 %tobool.not.i112, label %do.end.i117, label %if.then.i116

if.then.i116:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %bar5.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bar5.i100, align 4
  %add.ptr.i114 = getelementptr i8, ptr %47, i32 5152
  %call.i115 = tail call i32 %45(ptr noundef %sdev, ptr noundef %add.ptr.i114) #4
  br label %snd_sof_dsp_read.exit119

do.end.i117:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  br label %snd_sof_dsp_read.exit119

snd_sof_dsp_read.exit119:                         ; preds = %do.end.i117, %if.then.i116
  %retval.0.i118 = phi i32 [ %call.i115, %if.then.i116 ], [ -524, %do.end.i117 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acp_power_on.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acp_power_on, %if.then45)) #4
          to label %for.end [label %if.then45], !srcloc !137

if.then45:                                        ; preds = %snd_sof_dsp_read.exit119
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acp_power_on.__UNIQUE_ID_ddebug256, ptr noundef %51, ptr noundef nonnull @.str.9, i32 noundef 5152, i32 noundef %retval.0.i118) #4
  br label %for.end

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #4
  br label %for.cond

for.end:                                          ; preds = %if.then45, %snd_sof_dsp_read.exit119, %do.body17
  %val.0 = phi i32 [ %retval.0.i118, %if.then45 ], [ 0, %do.body17 ], [ %retval.0.i118, %snd_sof_dsp_read.exit119 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool55.not = icmp eq i32 %val.0, 0
  br i1 %tobool55.not, label %for.end.cleanup_crit_edge, label %do.end62

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.46) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %for.end.cleanup_crit_edge, %for.end.thread, %snd_sof_dsp_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_sof_dsp_read.exit.cleanup_crit_edge ], [ -110, %do.end62 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/amd/acp.c", i32 145, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @configure_and_run_dma._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @configure_and_run_dma._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/amd/acp.c", i32 182, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @configure_and_run_sha_dma._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @configure_and_run_sha_dma._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/amd/acp.c", i32 189, i32 9}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug249, !14, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug250, !14, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/amd/acp.c", i32 194, i32 4}
!21 = !{ptr @configure_and_run_sha_dma._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @configure_and_run_sha_dma._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug251, !24, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/amd/acp.c", i32 204, i32 8}
!25 = !{ptr @configure_and_run_sha_dma.__UNIQUE_ID_ddebug252, !24, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/amd/acp.c", i32 208, i32 3}
!28 = !{ptr @configure_and_run_sha_dma._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @configure_and_run_sha_dma._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/amd/acp.c", i32 218, i32 3}
!32 = !{ptr @configure_and_run_sha_dma._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @configure_and_run_sha_dma._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/amd/acp.c", i32 233, i32 9}
!36 = !{ptr @acp_dma_status.__UNIQUE_ID_ddebug253, !35, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!37 = !{ptr @acp_dma_status.__UNIQUE_ID_ddebug254, !35, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/amd/acp.c", i32 237, i32 4}
!40 = !{ptr @acp_dma_status._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @acp_dma_status._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/amd/acp.c", i32 386, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @amd_sof_acp_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @amd_sof_acp_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sof/amd/acp.c", i32 396, i32 3}
!49 = !{ptr @amd_sof_acp_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @amd_sof_acp_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sof/amd/acp.c", i32 402, i32 3}
!53 = !{ptr @amd_sof_acp_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @amd_sof_acp_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sof/amd/acp.c", i32 408, i32 21}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/amd/acp.c", i32 410, i32 3}
!59 = !{ptr @amd_sof_acp_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @amd_sof_acp_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @__ksymtab_amd_sof_acp_probe, !62, !"__ksymtab_amd_sof_acp_probe", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/amd/acp.c", i32 429, i32 1}
!63 = !{ptr @__ksymtab_amd_sof_acp_remove, !64, !"__ksymtab_amd_sof_acp_remove", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/amd/acp.c", i32 443, i32 1}
!65 = !{ptr @__UNIQUE_ID_description261, !66, !"__UNIQUE_ID_description261", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/amd/acp.c", i32 445, i32 1}
!67 = !{ptr @__UNIQUE_ID_file262, !68, !"__UNIQUE_ID_file262", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/amd/acp.c", i32 446, i32 1}
!69 = !{ptr @__UNIQUE_ID_license263, !68, !"__UNIQUE_ID_license263", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/amd/acp.c", i32 122, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @acpbus_dma_start._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @acpbus_dma_start._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/sof/amd/acp.c", i32 87, i32 8}
!77 = !{ptr @config_dma_channel.__UNIQUE_ID_ddebug247, !76, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!78 = !{ptr @config_dma_channel.__UNIQUE_ID_ddebug248, !76, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/sof/amd/acp.c", i32 94, i32 3}
!81 = !{ptr @config_dma_channel._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @config_dma_channel._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/sof/amd/../ops.h", i32 319, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_sof_dsp_read._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @snd_sof_dsp_read._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/amd/../ops.h", i32 299, i32 2}
!91 = !{ptr @snd_sof_dsp_write._rs, !90, !"_rs", i1 false, i1 false}
!92 = !{ptr @__func__.snd_sof_dsp_write, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_sof_dsp_write._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_sof_dsp_write._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/amd/acp.c", i32 169, i32 2}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @psp_fw_validate._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @psp_fw_validate._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/sof/amd/acp.c", i32 362, i32 3}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @acp_init._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @acp_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/sof/amd/acp.c", i32 322, i32 8}
!107 = !{ptr @acp_power_on.__UNIQUE_ID_ddebug255, !106, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!108 = !{ptr @acp_power_on.__UNIQUE_ID_ddebug256, !106, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/sof/amd/acp.c", i32 325, i32 3}
!111 = !{ptr @acp_power_on._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @acp_power_on._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/sof/amd/acp.c", i32 337, i32 8}
!115 = !{ptr @acp_reset.__UNIQUE_ID_ddebug257, !114, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!116 = !{ptr @acp_reset.__UNIQUE_ID_ddebug258, !114, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/sof/amd/acp.c", i32 341, i32 3}
!119 = !{ptr @acp_reset._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @acp_reset._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @acp_reset.__UNIQUE_ID_ddebug259, !122, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/amd/acp.c", i32 347, i32 8}
!123 = !{ptr @acp_reset.__UNIQUE_ID_ddebug260, !122, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/sof/amd/acp.c", i32 350, i32 3}
!126 = !{ptr @acp_reset._entry.49, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @acp_reset._entry_ptr.51, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2148162955, i64 2148162960, i64 2148162973, i64 2148163017, i64 2148163051, i64 2148163072}
!138 = !{!"auto-init"}
