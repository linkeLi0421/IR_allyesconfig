; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-ctrl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hda_dsp_ctrl_link_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error: failed to %s HDA controller gctl 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hda_dsp_ctrl_link_reset\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/sof/intel/hda-ctrl.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_link_reset._entry_ptr = internal global ptr @hda_dsp_ctrl_link_reset._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hda_dsp_ctrl_get_caps\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"checking for capabilities at offset 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid capability reg read\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found DSP capability at 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found SPIB capability at 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found DRSM capability at 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found GTS capability at 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found ML capability at 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.16, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found capability %d at 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: failed to reset HDA controller\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hda_dsp_ctrl_init_chip\00", [41 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_init_chip._entry_ptr = internal global ptr @hda_dsp_ctrl_init_chip._entry, section ".printk_index", align 4
@hda_dsp_ctrl_init_chip._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: failed to exit HDA controller reset\0A\00", [52 x i8] zeroinitializer }, align 32
@hda_dsp_ctrl_init_chip._entry_ptr.21 = internal global ptr @hda_dsp_ctrl_init_chip._entry.19, section ".printk_index", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.snd_sof_dsp_write, ptr @.str.24, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 58, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 84, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 90, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 98, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 104, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 110, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 116, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 121, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 126, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 206, i32 4 }
@___asan_gen_.93 = private constant [34 x i8] c"../sound/soc/sof/intel/hda-ctrl.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 215, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 319, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 299, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @hda_dsp_ctrl_init_chip._entry, ptr @hda_dsp_ctrl_init_chip._entry.19, ptr @hda_dsp_ctrl_init_chip._entry_ptr, ptr @hda_dsp_ctrl_init_chip._entry_ptr.21, ptr @hda_dsp_ctrl_link_reset._entry, ptr @hda_dsp_ctrl_link_reset._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @snd_sof_dsp_write._rs, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ctrl_link_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ctrl_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ctrl_init_chip._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %not.reset = xor i1 %reset, true
  %cond = zext i1 %not.reset to i32
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 8, i32 noundef 1, i32 noundef %cond) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub14 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp15 = icmp slt i32 %sub14, 0
  br i1 %cmp15, label %while.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

while.body.lr.ph:                                 ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
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
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %call.i = tail call i32 %9(ptr noundef %sdev, ptr noundef %add.ptr.i) #3
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp3 = icmp eq i32 %and, %cond
  br i1 %cmp3, label %snd_sof_dsp_read.exit.cleanup_crit_edge, label %if.end

snd_sof_dsp_read.exit.cleanup_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %snd_sof_dsp_read.exit
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %gctl.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ %retval.0.i, %if.end.do.end_crit_edge ]
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  %cond5 = select i1 %reset, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull %cond5, i32 noundef %gctl.0.lcssa) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %snd_sof_dsp_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %snd_sof_dsp_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ctrl_get_caps(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %call1 = tail call i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
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
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %12 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  %call.i = tail call i32 %11(ptr noundef %sdev, ptr noundef %add.ptr.i) #3
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i234 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %bar5.i240 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %remap_addr137 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %mlcap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 8
  %gtscap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 9
  %drsmcap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 10
  %arrayidx98 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 3
  %spbcap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 7
  %arrayidx75 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 2
  %ppcap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 6
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %snd_sof_dsp_read.exit
  %count.0 = phi i32 [ 0, %snd_sof_dsp_read.exit ], [ %inc, %land.rhs.do.body_crit_edge ]
  %offset.0 = phi i32 [ %retval.0.i234, %snd_sof_dsp_read.exit ], [ %and156, %land.rhs.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then11)) #3
          to label %do.end [label %if.then11], !srcloc !66

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  %and = and i32 %offset.0, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug247, ptr noundef %17, ptr noundef nonnull @.str.9, i32 noundef %and) #3
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %desc.i236 = getelementptr inbounds %struct.snd_sof_pdata, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %desc.i236 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i236, align 4
  %ops.i237 = getelementptr inbounds %struct.sof_dev_desc, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %ops.i237 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i237, align 4
  %read.i238 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %read.i238 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i238, align 4
  %tobool.not.i239 = icmp eq ptr %25, null
  br i1 %tobool.not.i239, label %if.end33.thread, label %snd_sof_dsp_read.exit246

if.end33.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  br label %do.body139

snd_sof_dsp_read.exit246:                         ; preds = %do.end
  %28 = ptrtoint ptr %bar5.i240 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bar5.i240, align 4
  %add.ptr.i241 = getelementptr i8, ptr %29, i32 %offset.0
  %call.i242 = tail call i32 %25(ptr noundef %sdev, ptr noundef %add.ptr.i241) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i242)
  %cmp14 = icmp eq i32 %call.i242, -1
  br i1 %cmp14, label %do.body16, label %if.end33

do.body16:                                        ; preds = %snd_sof_dsp_read.exit246
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then28)) #3
          to label %cleanup [label %if.then28], !srcloc !66

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %hbus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hbus.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug248, ptr noundef %31, ptr noundef nonnull @.str.10) #3
  br label %cleanup

if.end33:                                         ; preds = %snd_sof_dsp_read.exit246
  %and34 = lshr i32 %call.i242, 16
  %shr = and i32 %and34, 4095
  %32 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end33.do.body139_crit_edge [
    i32 3, label %do.body35
    i32 4, label %do.body54
    i32 5, label %do.body77
    i32 1, label %do.body100
    i32 2, label %do.body120
  ]

if.end33.do.body139_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body139

do.body35:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then47)) #3
          to label %do.end51 [label %if.then47], !srcloc !66

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug249, ptr noundef %34, ptr noundef nonnull @.str.11, i32 noundef %offset.0) #3
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %35 = ptrtoint ptr %remap_addr137 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr137, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %offset.0
  %37 = ptrtoint ptr %ppcap to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %ppcap, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr, ptr %arrayidx, align 4
  br label %sw.epilog

do.body54:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then66)) #3
          to label %do.end70 [label %if.then66], !srcloc !66

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug250, ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %offset.0) #3
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body54
  %41 = ptrtoint ptr %remap_addr137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr137, align 4
  %add.ptr72 = getelementptr i8, ptr %42, i32 %offset.0
  %43 = ptrtoint ptr %spbcap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr72, ptr %spbcap, align 4
  %44 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr72, ptr %arrayidx75, align 4
  br label %sw.epilog

do.body77:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then89)) #3
          to label %do.end93 [label %if.then89], !srcloc !66

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug251, ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %offset.0) #3
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body77
  %47 = ptrtoint ptr %remap_addr137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr137, align 4
  %add.ptr95 = getelementptr i8, ptr %48, i32 %offset.0
  %49 = ptrtoint ptr %drsmcap to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr95, ptr %drsmcap, align 4
  %50 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr95, ptr %arrayidx98, align 4
  br label %sw.epilog

do.body100:                                       ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then112)) #3
          to label %do.end116 [label %if.then112], !srcloc !66

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug252, ptr noundef %52, ptr noundef nonnull @.str.14, i32 noundef %offset.0) #3
  br label %do.end116

do.end116:                                        ; preds = %if.then112, %do.body100
  %53 = ptrtoint ptr %remap_addr137 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr137, align 4
  %add.ptr118 = getelementptr i8, ptr %54, i32 %offset.0
  %55 = ptrtoint ptr %gtscap to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr118, ptr %gtscap, align 4
  br label %sw.epilog

do.body120:                                       ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then132)) #3
          to label %do.end136 [label %if.then132], !srcloc !66

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug253, ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef %offset.0) #3
  br label %do.end136

do.end136:                                        ; preds = %if.then132, %do.body120
  %58 = ptrtoint ptr %remap_addr137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remap_addr137, align 4
  %add.ptr138 = getelementptr i8, ptr %59, i32 %offset.0
  %60 = ptrtoint ptr %mlcap to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr138, ptr %mlcap, align 4
  br label %sw.epilog

do.body139:                                       ; preds = %if.end33.do.body139_crit_edge, %if.end33.thread
  %shr257 = phi i32 [ 4095, %if.end33.thread ], [ %shr, %if.end33.do.body139_crit_edge ]
  %retval.0.i245250256 = phi i32 [ -524, %if.end33.thread ], [ %call.i242, %if.end33.do.body139_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ctrl_get_caps, %if.then151)) #3
          to label %sw.epilog [label %if.then151], !srcloc !66

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug254, ptr noundef %62, ptr noundef nonnull @.str.16, i32 noundef %shr257, i32 noundef %offset.0) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then151, %do.body139, %do.end136, %do.end116, %do.end93, %do.end70, %do.end51
  %retval.0.i245250255 = phi i32 [ %retval.0.i245250256, %if.then151 ], [ %call.i242, %do.end136 ], [ %call.i242, %do.end116 ], [ %call.i242, %do.end93 ], [ %call.i242, %do.end70 ], [ %call.i242, %do.end51 ], [ %retval.0.i245250256, %do.body139 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %count.0)
  %exitcond.not = icmp eq i32 %count.0, 11
  br i1 %exitcond.not, label %sw.epilog.cleanup_crit_edge, label %land.rhs

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %count.0, 1
  %and156 = and i32 %retval.0.i245250255, 65535
  %tobool159.not = icmp eq i32 %and156, 0
  br i1 %tobool159.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then28, %do.body16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %do.body16 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ctrl_ppcap_enable(ptr noundef %sdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, i32 1073741824, i32 0
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef 1073741824, i32 noundef %cond) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef %sdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, i32 -2147483648, i32 0
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648, i32 noundef %cond) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ctrl_misc_clock_gating(ptr noundef %sdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, i32 64, i32 0
  %call = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 72, i32 noundef 64, i32 noundef %cond) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_pci_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef %sdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, i32 2, i32 0
  %call = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 72, i32 noundef 2, i32 noundef %cond) #3
  %cond2 = select i1 %enable, i32 8192, i32 0
  %call3 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 4144, i32 noundef 8192, i32 noundef %cond2) #3
  %cond5 = select i1 %enable, i32 0, i32 4
  %call6 = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 68, i32 noundef 4, i32 noundef %cond5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ctrl_init_chip(ptr noundef %sdev, i1 noundef zeroext %full_reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %chip_init = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  %4 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %chip_init, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %bf.cast.not = icmp sgt i16 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 72, i32 noundef 64, i32 noundef 0) #3
  br i1 %full_reset, label %if.then1, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #6
  br label %err

if.end4:                                          ; preds = %if.then1
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #3
  %call5 = tail call i32 @hda_dsp_ctrl_link_reset(ptr noundef %sdev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.20) #6
  br label %err

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #3
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %9 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn119 = load ptr, ptr %stream_list, align 4
  %cmp15.not120 = icmp eq ptr %.pn119, %stream_list
  br i1 %cmp15.not120, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %snd_sof_dsp_write.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn121 = phi ptr [ %.pn119, %for.body.lr.ph ], [ %.pn, %snd_sof_dsp_write.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %index = getelementptr i8, ptr %.pn121, i32 -99
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index, align 1
  %conv = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add16 = add nuw nsw i32 %mul, 131
  %20 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add16
  tail call void %17(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 28) #3
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %for.body
  %call.i65 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool6.not.i = icmp eq i32 %call.i65, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %24 = ptrtoint ptr %.pn121 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn121, align 4
  %cmp15.not = icmp eq ptr %.pn, %stream_list
  br i1 %cmp15.not, label %snd_sof_dsp_write.exit.for.end_crit_edge, label %snd_sof_dsp_write.exit.for.body_crit_edge

snd_sof_dsp_write.exit.for.body_crit_edge:        ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

snd_sof_dsp_write.exit.for.end_crit_edge:         ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %snd_sof_dsp_write.exit.for.end_crit_edge, %if.end13.for.end_crit_edge
  %25 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata.i, align 4
  %desc.i67 = getelementptr inbounds %struct.snd_sof_pdata, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %desc.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc.i67, align 4
  %ops.i68 = getelementptr inbounds %struct.sof_dev_desc, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i68, align 4
  %write.i69 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %write.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i69, align 4
  %tobool.not.i70 = icmp eq ptr %32, null
  br i1 %tobool.not.i70, label %do.body.i76, label %if.then.i73

if.then.i73:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i71 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %33 = ptrtoint ptr %bar5.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bar5.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %34, i32 14
  tail call void %32(ptr noundef %sdev, ptr noundef %add.ptr.i72, i32 noundef 255) #3
  br label %snd_sof_dsp_write.exit78

do.body.i76:                                      ; preds = %for.end
  %call.i74 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool6.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool6.not.i75, label %do.body.i76.snd_sof_dsp_write.exit78_crit_edge, label %do.end.i77

do.body.i76.snd_sof_dsp_write.exit78_crit_edge:   ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit78

do.end.i77:                                       ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit78

snd_sof_dsp_write.exit78:                         ; preds = %do.end.i77, %do.body.i76.snd_sof_dsp_write.exit78_crit_edge, %if.then.i73
  %37 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i, align 4
  %desc.i80 = getelementptr inbounds %struct.snd_sof_pdata, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %desc.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc.i80, align 4
  %ops.i81 = getelementptr inbounds %struct.sof_dev_desc, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %ops.i81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i81, align 4
  %write.i82 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %write.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i82, align 4
  %tobool.not.i83 = icmp eq ptr %44, null
  br i1 %tobool.not.i83, label %do.body.i89, label %if.then.i86

if.then.i86:                                      ; preds = %snd_sof_dsp_write.exit78
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i84 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %45 = ptrtoint ptr %bar5.i84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bar5.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %46, i32 36
  tail call void %44(ptr noundef %sdev, ptr noundef %add.ptr.i85, i32 noundef 1073742079) #3
  br label %snd_sof_dsp_write.exit91

do.body.i89:                                      ; preds = %snd_sof_dsp_write.exit78
  %call.i87 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool6.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool6.not.i88, label %do.body.i89.snd_sof_dsp_write.exit91_crit_edge, label %do.end.i90

do.body.i89.snd_sof_dsp_write.exit91_crit_edge:   ; preds = %do.body.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit91

do.end.i90:                                       ; preds = %do.body.i89
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit91

snd_sof_dsp_write.exit91:                         ; preds = %do.end.i90, %do.body.i89.snd_sof_dsp_write.exit91_crit_edge, %if.then.i86
  %call22 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef -1073741824, i32 noundef -1073741824) #3
  %49 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load23 = load i16, ptr %chip_init, align 4
  %50 = and i16 %bf.load23, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %bf.cast25.not = icmp eq i16 %50, 0
  br i1 %bf.cast25.not, label %snd_sof_dsp_write.exit91.if.end34_crit_edge, label %land.lhs.true

snd_sof_dsp_write.exit91.if.end34_crit_edge:      ; preds = %snd_sof_dsp_write.exit91
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

land.lhs.true:                                    ; preds = %snd_sof_dsp_write.exit91
  %addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25, i32 2
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool27.not = icmp eq i32 %52, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end34_crit_edge, label %if.then28

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata.i, align 4
  %desc.i93 = getelementptr inbounds %struct.snd_sof_pdata, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %desc.i93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc.i93, align 4
  %ops.i94 = getelementptr inbounds %struct.sof_dev_desc, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %ops.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i94, align 4
  %write.i95 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %write.i95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i95, align 4
  %tobool.not.i96 = icmp eq ptr %60, null
  br i1 %tobool.not.i96, label %do.body.i102, label %if.then.i99

if.then.i99:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i97 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %61 = ptrtoint ptr %bar5.i97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bar5.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %62, i32 112
  tail call void %60(ptr noundef %sdev, ptr noundef %add.ptr.i98, i32 noundef %52) #3
  br label %snd_sof_dsp_write.exit104

do.body.i102:                                     ; preds = %if.then28
  %call.i100 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool6.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool6.not.i101, label %do.body.i102.snd_sof_dsp_write.exit104_crit_edge, label %do.end.i103

do.body.i102.snd_sof_dsp_write.exit104_crit_edge: ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit104

do.end.i103:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit104

snd_sof_dsp_write.exit104:                        ; preds = %do.end.i103, %do.body.i102.snd_sof_dsp_write.exit104_crit_edge, %if.then.i99
  %65 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdata.i, align 4
  %desc.i106 = getelementptr inbounds %struct.snd_sof_pdata, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %desc.i106 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i106, align 4
  %ops.i107 = getelementptr inbounds %struct.sof_dev_desc, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %ops.i107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i107, align 4
  %write.i108 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %write.i108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write.i108, align 4
  %tobool.not.i109 = icmp eq ptr %72, null
  br i1 %tobool.not.i109, label %do.body.i115, label %if.then.i112

if.then.i112:                                     ; preds = %snd_sof_dsp_write.exit104
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i110 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %73 = ptrtoint ptr %bar5.i110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bar5.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %74, i32 116
  tail call void %72(ptr noundef %sdev, ptr noundef %add.ptr.i111, i32 noundef 0) #3
  br label %if.end34

do.body.i115:                                     ; preds = %snd_sof_dsp_write.exit104
  %call.i113 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool6.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool6.not.i114, label %do.body.i115.if.end34_crit_edge, label %do.end.i116

do.body.i115.if.end34_crit_edge:                  ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

do.end.i116:                                      ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %if.end34

if.end34:                                         ; preds = %do.end.i116, %do.body.i115.if.end34_crit_edge, %if.then.i112, %land.lhs.true.if.end34_crit_edge, %snd_sof_dsp_write.exit91.if.end34_crit_edge
  %77 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load36 = load i16, ptr %chip_init, align 4
  %bf.set = or i16 %bf.load36, -32768
  store i16 %bf.set, ptr %chip_init, align 4
  br label %err

err:                                              ; preds = %if.end34, %do.end10, %do.end
  %ret.1 = phi i32 [ %call2, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end34 ]
  %call.i118 = tail call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 72, i32 noundef 64, i32 noundef 64) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_ctrl_stop_chip(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %chip_init = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  %4 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %chip_init, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %bf.cast.not = icmp sgt i16 %bf.load, -1
  br i1 %bf.cast.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream_list = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 27
  %5 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn121 = load ptr, ptr %stream_list, align 4
  %cmp.not122 = icmp eq ptr %.pn121, %stream_list
  br i1 %cmp.not122, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn123 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn121, %if.end.for.body_crit_edge ]
  %index = getelementptr i8, ptr %.pn123, i32 -99
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 1
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %call3 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 28, i32 noundef 0) #3
  %8 = ptrtoint ptr %.pn123 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn123, align 4
  %cmp.not = icmp eq ptr %.pn, %stream_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call9 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef 255, i32 noundef 0) #3
  %call10 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef -1073741824, i32 noundef 0) #3
  %9 = ptrtoint ptr %stream_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn67124 = load ptr, ptr %stream_list, align 4
  %cmp19.not125 = icmp eq ptr %.pn67124, %stream_list
  br i1 %cmp19.not125, label %for.end.for.end34_crit_edge, label %for.body22.lr.ph

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end34

for.body22.lr.ph:                                 ; preds = %for.end
  %bar5.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  br label %for.body22

for.body22:                                       ; preds = %snd_sof_dsp_write.exit.for.body22_crit_edge, %for.body22.lr.ph
  %.pn67126 = phi ptr [ %.pn67124, %for.body22.lr.ph ], [ %.pn67, %snd_sof_dsp_write.exit.for.body22_crit_edge ]
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #5
  %index23 = getelementptr i8, ptr %.pn67126, i32 -99
  %18 = ptrtoint ptr %index23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index23, align 1
  %conv24 = zext i8 %19 to i32
  %mul25 = shl nuw nsw i32 %conv24, 5
  %add27 = add nuw nsw i32 %mul25, 131
  %20 = ptrtoint ptr %bar5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bar5.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add27
  tail call void %17(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 28) #3
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %for.body22
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %24 = ptrtoint ptr %.pn67126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn67 = load ptr, ptr %.pn67126, align 4
  %cmp19.not = icmp eq ptr %.pn67, %stream_list
  br i1 %cmp19.not, label %snd_sof_dsp_write.exit.for.end34_crit_edge, label %snd_sof_dsp_write.exit.for.body22_crit_edge

snd_sof_dsp_write.exit.for.body22_crit_edge:      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body22

snd_sof_dsp_write.exit.for.end34_crit_edge:       ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end34

for.end34:                                        ; preds = %snd_sof_dsp_write.exit.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %25 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata.i, align 4
  %desc.i70 = getelementptr inbounds %struct.snd_sof_pdata, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %desc.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc.i70, align 4
  %ops.i71 = getelementptr inbounds %struct.sof_dev_desc, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %ops.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i71, align 4
  %write.i72 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %write.i72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i72, align 4
  %tobool.not.i73 = icmp eq ptr %32, null
  br i1 %tobool.not.i73, label %do.body.i79, label %if.then.i76

if.then.i76:                                      ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i74 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %33 = ptrtoint ptr %bar5.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bar5.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %34, i32 14
  tail call void %32(ptr noundef %sdev, ptr noundef %add.ptr.i75, i32 noundef 255) #3
  br label %snd_sof_dsp_write.exit81

do.body.i79:                                      ; preds = %for.end34
  %call.i77 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool6.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool6.not.i78, label %do.body.i79.snd_sof_dsp_write.exit81_crit_edge, label %do.end.i80

do.body.i79.snd_sof_dsp_write.exit81_crit_edge:   ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit81

do.end.i80:                                       ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit81

snd_sof_dsp_write.exit81:                         ; preds = %do.end.i80, %do.body.i79.snd_sof_dsp_write.exit81_crit_edge, %if.then.i76
  %37 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.i, align 4
  %desc.i83 = getelementptr inbounds %struct.snd_sof_pdata, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %desc.i83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc.i83, align 4
  %ops.i84 = getelementptr inbounds %struct.sof_dev_desc, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i84, align 4
  %write.i85 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %write.i85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i85, align 4
  %tobool.not.i86 = icmp eq ptr %44, null
  br i1 %tobool.not.i86, label %do.body.i92, label %if.then.i89

if.then.i89:                                      ; preds = %snd_sof_dsp_write.exit81
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i87 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %45 = ptrtoint ptr %bar5.i87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bar5.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %46, i32 36
  tail call void %44(ptr noundef %sdev, ptr noundef %add.ptr.i88, i32 noundef 1073742079) #3
  br label %snd_sof_dsp_write.exit94

do.body.i92:                                      ; preds = %snd_sof_dsp_write.exit81
  %call.i90 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool6.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool6.not.i91, label %do.body.i92.snd_sof_dsp_write.exit94_crit_edge, label %do.end.i93

do.body.i92.snd_sof_dsp_write.exit94_crit_edge:   ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit94

do.end.i93:                                       ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit94

snd_sof_dsp_write.exit94:                         ; preds = %do.end.i93, %do.body.i92.snd_sof_dsp_write.exit94_crit_edge, %if.then.i89
  %49 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load35 = load i16, ptr %chip_init, align 4
  %50 = and i16 %bf.load35, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %bf.cast37.not = icmp eq i16 %50, 0
  br i1 %bf.cast37.not, label %snd_sof_dsp_write.exit94.if.end40_crit_edge, label %land.lhs.true

snd_sof_dsp_write.exit94.if.end40_crit_edge:      ; preds = %snd_sof_dsp_write.exit94
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

land.lhs.true:                                    ; preds = %snd_sof_dsp_write.exit94
  %addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 25, i32 2
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %land.lhs.true.if.end40_crit_edge, label %if.then39

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata.i, align 4
  %desc.i96 = getelementptr inbounds %struct.snd_sof_pdata, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %desc.i96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %desc.i96, align 4
  %ops.i97 = getelementptr inbounds %struct.sof_dev_desc, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %ops.i97 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i97, align 4
  %write.i98 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %write.i98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i98, align 4
  %tobool.not.i99 = icmp eq ptr %60, null
  br i1 %tobool.not.i99, label %do.body.i105, label %if.then.i102

if.then.i102:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i100 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %61 = ptrtoint ptr %bar5.i100 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bar5.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %62, i32 112
  tail call void %60(ptr noundef %sdev, ptr noundef %add.ptr.i101, i32 noundef 0) #3
  br label %snd_sof_dsp_write.exit107

do.body.i105:                                     ; preds = %if.then39
  %call.i103 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool6.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool6.not.i104, label %do.body.i105.snd_sof_dsp_write.exit107_crit_edge, label %do.end.i106

do.body.i105.snd_sof_dsp_write.exit107_crit_edge: ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit107

do.end.i106:                                      ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit107

snd_sof_dsp_write.exit107:                        ; preds = %do.end.i106, %do.body.i105.snd_sof_dsp_write.exit107_crit_edge, %if.then.i102
  %65 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdata.i, align 4
  %desc.i109 = getelementptr inbounds %struct.snd_sof_pdata, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %desc.i109 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i109, align 4
  %ops.i110 = getelementptr inbounds %struct.sof_dev_desc, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %ops.i110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i110, align 4
  %write.i111 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %write.i111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write.i111, align 4
  %tobool.not.i112 = icmp eq ptr %72, null
  br i1 %tobool.not.i112, label %do.body.i118, label %if.then.i115

if.then.i115:                                     ; preds = %snd_sof_dsp_write.exit107
  call void @__sanitizer_cov_trace_pc() #5
  %bar5.i113 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %73 = ptrtoint ptr %bar5.i113 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bar5.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %74, i32 116
  tail call void %72(ptr noundef %sdev, ptr noundef %add.ptr.i114, i32 noundef 0) #3
  br label %if.end40

do.body.i118:                                     ; preds = %snd_sof_dsp_write.exit107
  %call.i116 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool6.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool6.not.i117, label %do.body.i118.if.end40_crit_edge, label %do.end.i119

do.body.i118.if.end40_crit_edge:                  ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

do.end.i119:                                      ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %if.end40

if.end40:                                         ; preds = %do.end.i119, %do.body.i118.if.end40_crit_edge, %if.then.i115, %land.lhs.true.if.end40_crit_edge, %snd_sof_dsp_write.exit94.if.end40_crit_edge
  %77 = ptrtoint ptr %chip_init to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load42 = load i16, ptr %chip_init, align 4
  %bf.clear43 = and i16 %bf.load42, 32767
  store i16 %bf.clear43, ptr %chip_init, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 58, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hda_dsp_ctrl_link_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hda_dsp_ctrl_link_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 84, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug247, !11, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 90, i32 4}
!17 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug248, !16, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 98, i32 4}
!20 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug249, !19, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 104, i32 4}
!23 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug250, !22, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 110, i32 4}
!26 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug251, !25, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 116, i32 4}
!29 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug252, !28, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 121, i32 4}
!32 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug253, !31, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 126, i32 4}
!35 = !{ptr @hda_dsp_ctrl_get_caps.__UNIQUE_ID_ddebug254, !34, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 206, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hda_dsp_ctrl_init_chip._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hda_dsp_ctrl_init_chip._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/intel/hda-ctrl.c", i32 215, i32 4}
!43 = !{ptr @hda_dsp_ctrl_init_chip._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hda_dsp_ctrl_init_chip._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @snd_sof_dsp_read._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @snd_sof_dsp_read._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!53 = !{ptr @snd_sof_dsp_write._rs, !52, !"_rs", i1 false, i1 false}
!54 = !{ptr @__func__.snd_sof_dsp_write, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_sof_dsp_write._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_sof_dsp_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148961374, i64 2148961379, i64 2148961392, i64 2148961436, i64 2148961470, i64 2148961491}
