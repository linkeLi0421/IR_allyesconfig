; ModuleID = '/llk/IR_all_yes/sound/soc/sof/mediatek/mt8195/mt8195-clk.c_pt.bc'
source_filename = "../sound/soc/sof/mediatek/mt8195/mt8195-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.adsp_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adsp_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audio_local_bus\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d7_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scp_adsp_audiodsp\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"audio_h\00", [24 x i8] zeroinitializer }, align 32
@adsp_default_clk_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_sof_mt8195\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adsp_default_clk_init\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/sof/mediatek/mt8195/mt8195-clk.c\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@adsp_default_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 124, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set dsp_sel to clk26m: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adsp_default_clk_init._entry_ptr = internal global ptr @adsp_default_clk_init._entry, section ".printk_index", align 4
@adsp_default_clk_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 131, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set audio_local_bus failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@adsp_default_clk_init._entry_ptr.17 = internal global ptr @adsp_default_clk_init._entry.15, section ".printk_index", align 4
@adsp_default_clk_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 137, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to adsp_enable_clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adsp_default_clk_init._entry_ptr.20 = internal global ptr @adsp_default_clk_init._entry.18, section ".printk_index", align 4
@adsp_enable_all_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 55, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s clk_prepare_enable(mainpll_d7_d2) fail %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adsp_enable_all_clock\00", [42 x i8] zeroinitializer }, align 32
@adsp_enable_all_clock._entry_ptr = internal global ptr @adsp_enable_all_clock._entry, section ".printk_index", align 4
@adsp_enable_all_clock._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 62, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s clk_prepare_enable(adsp_sel) fail %d\0A\00", [55 x i8] zeroinitializer }, align 32
@adsp_enable_all_clock._entry_ptr.25 = internal global ptr @adsp_enable_all_clock._entry.23, section ".printk_index", align 4
@adsp_enable_all_clock._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 69, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s clk_prepare_enable(audio_local_bus) fail %d\0A\00", [48 x i8] zeroinitializer }, align 32
@adsp_enable_all_clock._entry_ptr.28 = internal global ptr @adsp_enable_all_clock._entry.26, section ".printk_index", align 4
@adsp_enable_all_clock._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.8, i32 76, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s clk_prepare_enable(scp_adsp_audiodsp) fail %d\0A\00", [46 x i8] zeroinitializer }, align 32
@adsp_enable_all_clock._entry_ptr.31 = internal global ptr @adsp_enable_all_clock._entry.29, section ".printk_index", align 4
@adsp_enable_all_clock._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.8, i32 83, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s clk_prepare_enable(audio_h) fail %d\0A\00", [56 x i8] zeroinitializer }, align 32
@adsp_enable_all_clock._entry_ptr.34 = internal global ptr @adsp_enable_all_clock._entry.32, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 18, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 19, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 20, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 21, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 22, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 23, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 118, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 124, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 131, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 137, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 54, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 61, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 68, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 75, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [46 x i8] c"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 82, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @adsp_default_clk_init._entry, ptr @adsp_default_clk_init._entry.15, ptr @adsp_default_clk_init._entry.18, ptr @adsp_default_clk_init._entry_ptr, ptr @adsp_default_clk_init._entry_ptr.17, ptr @adsp_default_clk_init._entry_ptr.20, ptr @adsp_enable_all_clock._entry, ptr @adsp_enable_all_clock._entry.23, ptr @adsp_enable_all_clock._entry.26, ptr @adsp_enable_all_clock._entry.29, ptr @adsp_enable_all_clock._entry.32, ptr @adsp_enable_all_clock._entry_ptr, ptr @adsp_enable_all_clock._entry_ptr.25, ptr @adsp_enable_all_clock._entry_ptr.28, ptr @adsp_enable_all_clock._entry_ptr.31, ptr @adsp_enable_all_clock._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_default_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_default_clk_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_default_clk_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_enable_all_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_enable_all_clock._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_enable_all_clock._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_enable_all_clock._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_enable_all_clock._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8195_adsp_init_clock(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #3
  %clk = getelementptr inbounds %struct.adsp_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %clk, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %8, align 4
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.preheader.if.then9_crit_edge, label %for.cond

for.body.preheader.if.then9_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond:                                         ; preds = %for.body.preheader
  %call3.1 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %arrayidx5.1 = getelementptr ptr, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.1, ptr %arrayidx5.1, align 4
  %16 = load ptr, ptr %clk, align 4
  %arrayidx7.1 = getelementptr ptr, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7.1, align 4
  %cmp.i.1 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.if.then9_crit_edge, label %for.cond.1

for.cond.if.then9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond.1:                                       ; preds = %for.cond
  %call3.2 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.2) #3
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %arrayidx5.2 = getelementptr ptr, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3.2, ptr %arrayidx5.2, align 4
  %22 = load ptr, ptr %clk, align 4
  %arrayidx7.2 = getelementptr ptr, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.2, align 4
  %cmp.i.2 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.if.then9_crit_edge, label %for.cond.2

for.cond.1.if.then9_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond.2:                                       ; preds = %for.cond.1
  %call3.3 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.3) #3
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %arrayidx5.3 = getelementptr ptr, ptr %26, i32 3
  %27 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3.3, ptr %arrayidx5.3, align 4
  %28 = load ptr, ptr %clk, align 4
  %arrayidx7.3 = getelementptr ptr, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx7.3, align 4
  %cmp.i.3 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.if.then9_crit_edge, label %for.cond.3

for.cond.2.if.then9_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond.3:                                       ; preds = %for.cond.2
  %call3.4 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.4) #3
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %arrayidx5.4 = getelementptr ptr, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call3.4, ptr %arrayidx5.4, align 4
  %34 = load ptr, ptr %clk, align 4
  %arrayidx7.4 = getelementptr ptr, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.4, align 4
  %cmp.i.4 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.if.then9_crit_edge, label %for.cond.4

for.cond.3.if.then9_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

for.cond.4:                                       ; preds = %for.cond.3
  %call3.5 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.5) #3
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  %arrayidx5.5 = getelementptr ptr, ptr %38, i32 5
  %39 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call3.5, ptr %arrayidx5.5, align 4
  %40 = load ptr, ptr %clk, align 4
  %arrayidx7.5 = getelementptr ptr, ptr %40, i32 5
  %41 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx7.5, align 4
  %cmp.i.5 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.if.then9_crit_edge, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4.if.then9_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.then9:                                         ; preds = %for.cond.4.if.then9_crit_edge, %for.cond.3.if.then9_crit_edge, %for.cond.2.if.then9_crit_edge, %for.cond.1.if.then9_crit_edge, %for.cond.if.then9_crit_edge, %for.body.preheader.if.then9_crit_edge
  %.lcssa = phi ptr [ %12, %for.body.preheader.if.then9_crit_edge ], [ %18, %for.cond.if.then9_crit_edge ], [ %24, %for.cond.1.if.then9_crit_edge ], [ %30, %for.cond.2.if.then9_crit_edge ], [ %36, %for.cond.3.if.then9_crit_edge ], [ %42, %for.cond.4.if.then9_crit_edge ]
  %43 = ptrtoint ptr %.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.cond.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adsp_clock_on(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adsp_default_clk_init(ptr noundef %sdev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adsp_default_clk_init(ptr nocapture noundef readonly %sdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adsp_default_clk_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adsp_default_clk_init, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cond = select i1 %enable, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adsp_default_clk_init.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  %clk = getelementptr inbounds %struct.adsp_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx9 = getelementptr ptr, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %call10 = tail call i32 @clk_set_parent(ptr noundef %9, ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %call10) #6
  br label %cleanup

if.end16:                                         ; preds = %if.then7
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %arrayidx18 = getelementptr ptr, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr ptr, ptr %13, i32 3
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx20, align 4
  %call21 = tail call i32 @clk_set_parent(ptr noundef %15, ptr noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call21) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_pdata.i, align 4
  %clk.i = getelementptr inbounds %struct.adsp_priv, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end27.do.end.i_crit_edge

if.end27.do.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end27
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %27) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end27.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end27.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph.i) #6
  br label %do.end33

if.end.i:                                         ; preds = %if.end.i.i
  %28 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i72.i = tail call i32 @clk_prepare(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool.not.i73.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool.not.i73.i, label %if.end.i76.i, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end9.i

if.end.i76.i:                                     ; preds = %if.end.i
  %call1.i74.i = tail call i32 @clk_enable(ptr noundef %31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool2.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool2.not.i75.i, label %if.end10.i, label %if.then3.i77.i

if.then3.i77.i:                                   ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %31) #3
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then3.i77.i, %if.end.i.do.end9.i_crit_edge
  %retval.0.i78.ph.i = phi i32 [ %call1.i74.i, %if.then3.i77.i ], [ %call.i72.i, %if.end.i.do.end9.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i78.ph.i) #6
  br label %disable_mainpll_d7_d2_clk.i

if.end10.i:                                       ; preds = %if.end.i76.i
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 4
  %arrayidx12.i = getelementptr ptr, ptr %33, i32 2
  %34 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx12.i, align 4
  %call.i80.i = tail call i32 @clk_prepare(ptr noundef %35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %if.end.i84.i, label %if.end10.i.do.end18.i_crit_edge

if.end10.i.do.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end18.i

if.end.i84.i:                                     ; preds = %if.end10.i
  %call1.i82.i = tail call i32 @clk_enable(ptr noundef %35) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82.i)
  %tobool2.not.i83.i = icmp eq i32 %call1.i82.i, 0
  br i1 %tobool2.not.i83.i, label %if.end19.i, label %if.then3.i85.i

if.then3.i85.i:                                   ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %35) #3
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then3.i85.i, %if.end10.i.do.end18.i_crit_edge
  %retval.0.i86.ph.i = phi i32 [ %call1.i82.i, %if.then3.i85.i ], [ %call.i80.i, %if.end10.i.do.end18.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i86.ph.i) #6
  br label %disable_dsp_sel_clk.i

if.end19.i:                                       ; preds = %if.end.i84.i
  %36 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i, align 4
  %arrayidx21.i = getelementptr ptr, ptr %37, i32 4
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx21.i, align 4
  %call.i88.i = tail call i32 @clk_prepare(ptr noundef %39) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool.not.i89.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool.not.i89.i, label %if.end.i92.i, label %if.end19.i.do.end27.i_crit_edge

if.end19.i.do.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end27.i

if.end.i92.i:                                     ; preds = %if.end19.i
  %call1.i90.i = tail call i32 @clk_enable(ptr noundef %39) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90.i)
  %tobool2.not.i91.i = icmp eq i32 %call1.i90.i, 0
  br i1 %tobool2.not.i91.i, label %if.end28.i, label %if.then3.i93.i

if.then3.i93.i:                                   ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %39) #3
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.then3.i93.i, %if.end19.i.do.end27.i_crit_edge
  %retval.0.i94.ph.i = phi i32 [ %call1.i90.i, %if.then3.i93.i ], [ %call.i88.i, %if.end19.i.do.end27.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i94.ph.i) #6
  br label %disable_audio_local_bus_clk.i

if.end28.i:                                       ; preds = %if.end.i92.i
  %40 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i, align 4
  %arrayidx30.i = getelementptr ptr, ptr %41, i32 5
  %42 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx30.i, align 4
  %call.i96.i = tail call i32 @clk_prepare(ptr noundef %43) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %if.end.i100.i, label %if.end28.i.do.end36.i_crit_edge

if.end28.i.do.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end36.i

if.end.i100.i:                                    ; preds = %if.end28.i
  %call1.i98.i = tail call i32 @clk_enable(ptr noundef %43) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i)
  %tobool2.not.i99.i = icmp eq i32 %call1.i98.i, 0
  br i1 %tobool2.not.i99.i, label %if.end.i100.i.cleanup_crit_edge, label %if.then3.i101.i

if.end.i100.i.cleanup_crit_edge:                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3.i101.i:                                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %43) #3
  br label %do.end36.i

do.end36.i:                                       ; preds = %if.then3.i101.i, %if.end28.i.do.end36.i_crit_edge
  %retval.0.i102.ph.i = phi i32 [ %call1.i98.i, %if.then3.i101.i ], [ %call.i96.i, %if.end28.i.do.end36.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i102.ph.i) #6
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %arrayidx39.i = getelementptr ptr, ptr %45, i32 4
  %46 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx39.i, align 4
  tail call void @clk_disable(ptr noundef %47) #3
  tail call void @clk_unprepare(ptr noundef %47) #3
  br label %disable_audio_local_bus_clk.i

disable_audio_local_bus_clk.i:                    ; preds = %do.end36.i, %do.end27.i
  %ret.0.i = phi i32 [ %retval.0.i94.ph.i, %do.end27.i ], [ %retval.0.i102.ph.i, %do.end36.i ]
  %48 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i, align 4
  %arrayidx41.i = getelementptr ptr, ptr %49, i32 2
  %50 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx41.i, align 4
  tail call void @clk_disable(ptr noundef %51) #3
  tail call void @clk_unprepare(ptr noundef %51) #3
  br label %disable_dsp_sel_clk.i

disable_dsp_sel_clk.i:                            ; preds = %disable_audio_local_bus_clk.i, %do.end18.i
  %ret.1.i = phi i32 [ %retval.0.i86.ph.i, %do.end18.i ], [ %ret.0.i, %disable_audio_local_bus_clk.i ]
  %52 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  tail call void @clk_disable(ptr noundef %55) #3
  tail call void @clk_unprepare(ptr noundef %55) #3
  br label %disable_mainpll_d7_d2_clk.i

disable_mainpll_d7_d2_clk.i:                      ; preds = %disable_dsp_sel_clk.i, %do.end9.i
  %ret.2.i = phi i32 [ %retval.0.i78.ph.i, %do.end9.i ], [ %ret.1.i, %disable_dsp_sel_clk.i ]
  %56 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk.i, align 4
  %arrayidx45.i = getelementptr ptr, ptr %57, i32 3
  %58 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx45.i, align 4
  tail call void @clk_disable(ptr noundef %59) #3
  tail call void @clk_unprepare(ptr noundef %59) #3
  br label %do.end33

do.end33:                                         ; preds = %disable_mainpll_d7_d2_clk.i, %do.end.i
  %retval.0.i56.ph = phi i32 [ %ret.2.i, %disable_mainpll_d7_d2_clk.i ], [ %retval.0.i.ph.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i56.ph) #6
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata, align 4
  %hw_pdata.i58 = getelementptr inbounds %struct.snd_sof_pdata, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %hw_pdata.i58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_pdata.i58, align 4
  %clk.i59 = getelementptr inbounds %struct.adsp_priv, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %clk.i59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i59, align 4
  %arrayidx.i60 = getelementptr ptr, ptr %65, i32 5
  %66 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i60, align 4
  tail call void @clk_disable(ptr noundef %67) #3
  tail call void @clk_unprepare(ptr noundef %67) #3
  %68 = ptrtoint ptr %clk.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i59, align 4
  %arrayidx2.i = getelementptr ptr, ptr %69, i32 4
  %70 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @clk_disable(ptr noundef %71) #3
  tail call void @clk_unprepare(ptr noundef %71) #3
  %72 = ptrtoint ptr %clk.i59 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk.i59, align 4
  %arrayidx4.i = getelementptr ptr, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @clk_disable(ptr noundef %75) #3
  tail call void @clk_unprepare(ptr noundef %75) #3
  %76 = ptrtoint ptr %clk.i59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i59, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %79) #3
  tail call void @clk_unprepare(ptr noundef %79) #3
  %80 = ptrtoint ptr %clk.i59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk.i59, align 4
  %arrayidx8.i = getelementptr ptr, ptr %81, i32 3
  %82 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx8.i, align 4
  tail call void @clk_disable(ptr noundef %83) #3
  tail call void @clk_unprepare(ptr noundef %83) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end33, %if.end.i100.i.cleanup_crit_edge, %do.end26, %do.end15
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call21, %do.end26 ], [ %retval.0.i56.ph, %do.end33 ], [ 0, %if.else ], [ 0, %if.end.i100.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adsp_clock_off(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @adsp_default_clk_init(ptr noundef %sdev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 18, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 19, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 20, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 21, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 22, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 23, i32 22}
!12 = distinct !{null, !13, !"adsp_clks", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 17, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 118, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @adsp_default_clk_init.__UNIQUE_ID_ddebug244, !15, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!20 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 124, i32 4}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @adsp_default_clk_init._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @adsp_default_clk_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 131, i32 4}
!30 = !{ptr @adsp_default_clk_init._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adsp_default_clk_init._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 137, i32 4}
!34 = !{ptr @adsp_default_clk_init._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adsp_default_clk_init._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 54, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @adsp_enable_all_clock._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @adsp_enable_all_clock._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 61, i32 3}
!43 = !{ptr @adsp_enable_all_clock._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @adsp_enable_all_clock._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 68, i32 3}
!47 = !{ptr @adsp_enable_all_clock._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @adsp_enable_all_clock._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 75, i32 3}
!51 = !{ptr @adsp_enable_all_clock._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @adsp_enable_all_clock._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/mediatek/mt8195/mt8195-clk.c", i32 82, i32 3}
!55 = !{ptr @adsp_enable_all_clock._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @adsp_enable_all_clock._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148723910, i64 2148723915, i64 2148723928, i64 2148723972, i64 2148724006, i64 2148724027}
