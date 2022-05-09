; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_stage_cfg = type { [12 x [2 x i32]], [12 x [2 x i32]] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dpu_hw_ctl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to create dpu_hw_ctl %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpu_hw_ctl_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c\00", [53 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_init._entry_ptr = internal global ptr @dpu_hw_ctl_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CTL_MERGE_3D_FLUSH\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CTL_INTF_FLUSH\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CTL_FLUSH\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTL_TOP\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CTL_INTF_ACTIVE\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CTL_MERGE_3D_ACTIVE\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_hw_ctl_trigger_pending_flush = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_hw_ctl_trigger_pending_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_intf_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013unknown interface type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpu_hw_ctl_intf_cfg\00", [44 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_intf_cfg._entry_ptr = internal global ptr @dpu_hw_ctl_intf_cfg._entry, section ".printk_index", align 4
@__tracepoint_dpu_hw_ctl_clear_pending_flush = external dso_local global %struct.tracepoint, align 4
@trace_dpu_hw_ctl_clear_pending_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_hw_ctl_update_pending_flush = external dso_local global %struct.tracepoint, align 4
@trace_dpu_hw_ctl_update_pending_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CTL_START\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_hw_ctl_trigger_start = external dso_local global %struct.tracepoint, align 4
@trace_dpu_hw_ctl_trigger_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CTL_PREPARE\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_hw_ctl_trigger_prepare = external dso_local global %struct.tracepoint, align 4
@trace_dpu_hw_ctl_trigger_prepare.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_hw_ctl_reset_control.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpu_hw_ctl_reset_control\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"issuing hw ctl reset for ctl:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CTL_SW_RESET\00", [19 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_wait_reset_status.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpu_hw_ctl_wait_reset_status\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hw ctl reset is set for ctl:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_wait_reset_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hw recovery is not complete for ctl:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@dpu_hw_ctl_wait_reset_status._entry_ptr = internal global ptr @dpu_hw_ctl_wait_reset_status._entry, section ".printk_index", align 4
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CTL_LAYER(mixer_id)\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CTL_LAYER_EXT(mixer_id)\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CTL_LAYER_EXT2(mixer_id)\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CTL_LAYER_EXT3(mixer_id)\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CTL_FETCH_PIPE_ACTIVE\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CTL_LAYER(lm)\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CTL_LAYER_EXT(lm)\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CTL_LAYER_EXT2(lm)\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CTL_LAYER_EXT3(lm)\00", [45 x i8] zeroinitializer }, align 32
@fetch_tbl = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 65535, i32 16, i32 17, i32 18, i32 19, i32 65535, i32 65535, i32 65535, i32 65535, i32 0, i32 1, i32 2, i32 3, i32 65535, i32 65535], [36 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_ctl_update_pending_flush_intf = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_ctl_get_bitmask_sspp = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 2, i32 4, i32 262144, i32 8, i32 16, i32 32, i32 524288, i32 2048, i32 4096, i32 16777216, i32 33554432, i32 4194304, i32 8388608], [40 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_ctl_get_bitmask_mixer = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 131136, i32 131200, i32 131328, i32 131584, i32 132096, i32 1179648], [40 x i8] zeroinitializer }, align 32
@switch.table.dpu_hw_ctl_get_bitmask_dspp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8192, i32 16384, i32 32768, i32 2097152], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 616, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 126, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 129, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 132, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 515, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 516, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 518, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 947, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 108, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 545, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 92, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 99, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 316, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 317, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 334, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 336, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 351, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 352, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 353, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 354, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 357, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 488, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 489, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 490, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 491, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [10 x i8] c"fetch_tbl\00", align 1
@___asan_gen_.139 = private constant [46 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 41, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [50 x i8] c"switch.table.dpu_hw_ctl_update_pending_flush_intf\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [41 x i8] c"switch.table.dpu_hw_ctl_get_bitmask_sspp\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [42 x i8] c"switch.table.dpu_hw_ctl_get_bitmask_mixer\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [41 x i8] c"switch.table.dpu_hw_ctl_get_bitmask_dspp\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @dpu_hw_ctl_init._entry, ptr @dpu_hw_ctl_init._entry_ptr, ptr @dpu_hw_ctl_intf_cfg._entry, ptr @dpu_hw_ctl_intf_cfg._entry_ptr, ptr @dpu_hw_ctl_wait_reset_status._entry, ptr @dpu_hw_ctl_wait_reset_status._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @fetch_tbl, ptr @switch.table.dpu_hw_ctl_update_pending_flush_intf, ptr @switch.table.dpu_hw_ctl_get_bitmask_sspp, ptr @switch.table.dpu_hw_ctl_get_bitmask_mixer, ptr @switch.table.dpu_hw_ctl_get_bitmask_dspp], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_ctl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_ctl_intf_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_ctl_wait_reset_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fetch_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_ctl_update_pending_flush_intf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_ctl_get_bitmask_sspp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_ctl_get_bitmask_mixer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_hw_ctl_get_bitmask_dspp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_ctl_init(i32 noundef %idx, ptr noundef %addr, ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 1
  %ctl_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 4
  %1 = ptrtoint ptr %ctl_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ctl_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp25.not.i = icmp eq i32 %2, 0
  br i1 %cmp25.not.i, label %if.end.if.then4_crit_edge, label %for.body.lr.ph.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.end
  %ctl1.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 5
  %3 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_ctl_cfg, ptr %4, i32 %i.026.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp2.i = icmp eq i32 %6, %idx
  br i1 %cmp2.i, label %_ctl_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

_ctl_offset.exit:                                 ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_ctl_cfg, ptr %4, i32 %i.026.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_ctl_cfg, ptr %4, i32 %i.026.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m, align 4
  %hwversion7.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion7.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %log_mask.i, align 4
  %arrayidx9.i = getelementptr %struct.dpu_ctl_cfg, ptr %4, i32 %i.026.i
  %tobool.not.i = icmp eq ptr %arrayidx9.i, null
  %cmp.i = icmp ugt ptr %arrayidx9.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %_ctl_offset.exit.if.then4_crit_edge, label %if.end7

_ctl_offset.exit.if.then4_crit_edge:              ; preds = %_ctl_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %_ctl_offset.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idx) #13
  br label %cleanup

if.end7:                                          ; preds = %_ctl_offset.exit
  %caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx9.i, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9
  %features = getelementptr %struct.dpu_ctl_cfg, ptr %4, i32 %i.026.i, i32 4
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i26 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i26, label %if.end7.if.end.i_crit_edge, label %if.then.i27

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i27:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %update_pending_flush_merge_3d.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %update_pending_flush_merge_3d.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dpu_hw_ctl_update_pending_flush_merge_3d_v1, ptr %update_pending_flush_merge_3d.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i27, %if.end7.if.end.i_crit_edge
  %dpu_hw_ctl_trigger_flush_v1.sink.i = phi ptr [ @dpu_hw_ctl_trigger_flush_v1, %if.then.i27 ], [ @dpu_hw_ctl_trigger_flush, %if.end7.if.end.i_crit_edge ]
  %dpu_hw_ctl_intf_cfg_v1.sink.i = phi ptr [ @dpu_hw_ctl_intf_cfg_v1, %if.then.i27 ], [ @dpu_hw_ctl_intf_cfg, %if.end7.if.end.i_crit_edge ]
  %dpu_hw_ctl_update_pending_flush_intf_v1.sink.i = phi ptr [ @dpu_hw_ctl_update_pending_flush_intf_v1, %if.then.i27 ], [ @dpu_hw_ctl_update_pending_flush_intf, %if.end7.if.end.i_crit_edge ]
  %22 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dpu_hw_ctl_trigger_flush_v1.sink.i, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dpu_hw_ctl_intf_cfg_v1.sink.i, ptr %24, align 8
  %26 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dpu_hw_ctl_update_pending_flush_intf_v1.sink.i, ptr %26, align 8
  %clear_pending_flush.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %clear_pending_flush.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_ctl_clear_pending_flush, ptr %clear_pending_flush.i, align 4
  %update_pending_flush.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 4
  %29 = ptrtoint ptr %update_pending_flush.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_hw_ctl_update_pending_flush, ptr %update_pending_flush.i, align 4
  %get_pending_flush.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 3
  %30 = ptrtoint ptr %get_pending_flush.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_hw_ctl_get_pending_flush, ptr %get_pending_flush.i, align 8
  %get_flush_register.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %get_flush_register.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dpu_hw_ctl_get_flush_register, ptr %get_flush_register.i, align 4
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dpu_hw_ctl_trigger_start, ptr %ops, align 4
  %trigger_pending.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %trigger_pending.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dpu_hw_ctl_trigger_pending, ptr %trigger_pending.i, align 8
  %reset.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 10
  %34 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dpu_hw_ctl_reset_control, ptr %reset.i, align 4
  %wait_reset_status.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 11
  %35 = ptrtoint ptr %wait_reset_status.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dpu_hw_ctl_wait_reset_status, ptr %wait_reset_status.i, align 8
  %clear_all_blendstages.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 15
  %36 = ptrtoint ptr %clear_all_blendstages.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dpu_hw_ctl_clear_all_blendstages, ptr %clear_all_blendstages.i, align 8
  %setup_blendstage.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 16
  %37 = ptrtoint ptr %setup_blendstage.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dpu_hw_ctl_setup_blendstage, ptr %setup_blendstage.i, align 4
  %get_bitmask_sspp.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 12
  %38 = ptrtoint ptr %get_bitmask_sspp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dpu_hw_ctl_get_bitmask_sspp, ptr %get_bitmask_sspp.i, align 4
  %get_bitmask_mixer.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 13
  %39 = ptrtoint ptr %get_bitmask_mixer.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dpu_hw_ctl_get_bitmask_mixer, ptr %get_bitmask_mixer.i, align 8
  %get_bitmask_dspp.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 14
  %40 = ptrtoint ptr %get_bitmask_dspp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dpu_hw_ctl_get_bitmask_dspp, ptr %get_bitmask_dspp.i, align 4
  %and4.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i._setup_ctl_ops.exit_crit_edge, label %if.then6.i

if.end.i._setup_ctl_ops.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_setup_ctl_ops.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %set_active_pipes.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 9, i32 17
  %41 = ptrtoint ptr %set_active_pipes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @dpu_hw_ctl_set_fetch_pipe_active, ptr %set_active_pipes.i, align 8
  br label %_setup_ctl_ops.exit

_setup_ctl_ops.exit:                              ; preds = %if.then6.i, %if.end.i._setup_ctl_ops.exit_crit_edge
  %idx9 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %idx9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %idx, ptr %idx9, align 8
  %mixer_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 8
  %43 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mixer_count, align 4
  %mixer_count10 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %mixer_count10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mixer_count10, align 8
  %mixer = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %m, i32 0, i32 9
  %46 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mixer, align 4
  %mixer_hw_caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %mixer_hw_caps to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mixer_hw_caps, align 4
  br label %cleanup

cleanup:                                          ; preds = %_setup_ctl_ops.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then4 ], [ %call7.i.i, %_setup_ctl_ops.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_ctl_destroy(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ctx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_flush_v1(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %pending_merge_3d_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %pending_merge_3d_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_merge_3d_flush_mask, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 256, i32 noundef %3, ptr noundef nonnull @.str.3) #9
  %4 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %pending_flush_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = phi i32 [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool3.not = icmp sgt i32 %5, -1
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hw5 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %pending_intf_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %pending_intf_flush_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending_intf_flush_mask, align 4
  tail call void @dpu_reg_write(ptr noundef %hw5, i32 noundef 272, i32 noundef %7, ptr noundef nonnull @.str.4) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %hw7 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_flush_mask, align 4
  tail call void @dpu_reg_write(ptr noundef %hw7, i32 noundef 24, i32 noundef %9, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_intf_cfg_v1(ptr noundef %ctx, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %features = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %features, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -268435456
  %intf_mode_sel = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %intf_mode_sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intf_mode_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %or = or i32 %spec.select, 131072
  %mode_sel.1 = select i1 %cmp, i32 %or, i32 %spec.select
  %call3 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 244) #9
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg, align 4
  %sub = add i32 %8, -1
  %shl = shl nuw i32 1, %sub
  %or4 = or i32 %shl, %call3
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 20, i32 noundef %mode_sel.1, ptr noundef nonnull @.str.6) #9
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 244, i32 noundef %or4, ptr noundef nonnull @.str.7) #9
  %merge_3d = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %merge_3d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %merge_3d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %entry.if.end10_crit_edge, label %if.then6

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub8 = add i32 %10, -1
  %shl9 = shl nuw i32 1, %sub8
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 228, i32 noundef %shl9, ptr noundef nonnull @.str.8) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_intf_v1(ptr nocapture noundef %ctx, i32 noundef %intf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %intf, -1
  %shl = shl nuw i32 1, %sub
  %pending_intf_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %pending_intf_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_intf_flush_mask, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %pending_intf_flush_mask, align 4
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_flush_mask, align 4
  %or1 = or i32 %3, -2147483648
  store i32 %or1, ptr %pending_flush_mask, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_merge_3d_v1(ptr nocapture noundef %ctx, i32 noundef %merge_3d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %merge_3d, -1
  %shl = shl nuw i32 1, %sub
  %pending_merge_3d_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %pending_merge_3d_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_merge_3d_flush_mask, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %pending_merge_3d_flush_mask, align 4
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_flush_mask, align 4
  %or1 = or i32 %3, 8388608
  store i32 %or1, ptr %pending_flush_mask, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_flush(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  %hw.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call.i = tail call i32 @dpu_reg_read(ptr noundef %hw.i, i32 noundef 24) #9
  tail call fastcc void @trace_dpu_hw_ctl_trigger_pending_flush(i32 noundef %1, i32 noundef %call.i)
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_flush_mask, align 4
  tail call void @dpu_reg_write(ptr noundef %hw.i, i32 noundef 24, i32 noundef %3, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_intf_cfg(ptr noundef %ctx, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  %and = shl i32 %1, 4
  %shl = and i32 %and, 240
  %mode_3d = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %mode_3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_3d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %sub = shl i32 %3, 20
  %shl3 = add i32 %sub, -1048576
  %or1 = or i32 %shl3, %shl
  %or4 = or i32 %or1, 524288
  %intf_cfg.0 = select i1 %tobool.not, i32 %shl, i32 %or4
  %intf_mode_sel = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %cfg, i32 0, i32 3
  %4 = ptrtoint ptr %intf_mode_sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intf_mode_sel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stream_sel = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %cfg, i32 0, i32 4
  %7 = ptrtoint ptr %stream_sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_sel, align 4
  %and9 = shl i32 %8, 15
  %shl10 = and i32 %and9, 98304
  %or8 = or i32 %intf_cfg.0, %shl10
  %or11 = or i32 %or8, 131072
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %entry.sw.epilog_crit_edge
  %intf_cfg.1 = phi i32 [ %or11, %sw.bb7 ], [ %intf_cfg.0, %entry.sw.epilog_crit_edge ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 20, i32 noundef %intf_cfg.1, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_intf(ptr nocapture noundef %ctx, i32 noundef %intf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %intf, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_ctl_update_pending_flush_intf, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_flush_mask, align 4
  %or9 = or i32 %3, %switch.load
  store i32 %or9, ptr %pending_flush_mask, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_clear_pending_flush(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  %hw.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call.i = tail call i32 @dpu_reg_read(ptr noundef %hw.i, i32 noundef 24) #9
  tail call fastcc void @trace_dpu_hw_ctl_clear_pending_flush(i32 noundef %1, i32 noundef %call.i)
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pending_flush_mask, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush(ptr nocapture noundef %ctx, i32 noundef %flushbits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  tail call fastcc void @trace_dpu_hw_ctl_update_pending_flush(i32 noundef %flushbits, i32 noundef %1)
  %2 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_flush_mask, align 4
  %or = or i32 %3, %flushbits
  store i32 %or, ptr %pending_flush_mask, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_pending_flush(ptr nocapture noundef readonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_get_flush_register(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 24) #9
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_start(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  %hw.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call.i = tail call i32 @dpu_reg_read(ptr noundef %hw.i, i32 noundef 24) #9
  tail call fastcc void @trace_dpu_hw_ctl_trigger_start(i32 noundef %1, i32 noundef %call.i)
  tail call void @dpu_reg_write(ptr noundef %hw.i, i32 noundef 28, i32 noundef 1, ptr noundef nonnull @.str.14) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_pending(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pending_flush_mask = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %pending_flush_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_flush_mask, align 4
  %hw.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call.i = tail call i32 @dpu_reg_read(ptr noundef %hw.i, i32 noundef 24) #9
  tail call fastcc void @trace_dpu_hw_ctl_trigger_prepare(i32 noundef %1, i32 noundef %call.i)
  tail call void @dpu_reg_write(ptr noundef %hw.i, i32 noundef 208, i32 noundef 1, ptr noundef nonnull @.str.15) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_reset_control(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_hw_ctl_reset_control.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_ctl_reset_control, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_hw_ctl_reset_control.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.18, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 48, i32 noundef 1, ptr noundef nonnull @.str.19) #9
  %call.i = tail call i64 @ktime_get() #9
  %add.i.neg.i = sub i64 -2000000, %call.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %do.end
  %call2.i = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 48) #9
  %and.i = and i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge, label %if.then.i

do.body.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_hw_ctl_poll_reset_status.exit

if.then.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #9
  %call4.i = tail call i64 @ktime_get() #9
  %sub.i = add i64 %add.i.neg.i, %call4.i
  %cmp.i.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %if.then.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge

if.then.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_hw_ctl_poll_reset_status.exit

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

dpu_hw_ctl_poll_reset_status.exit:                ; preds = %if.then.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge, %do.body.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge
  %2 = phi i32 [ -22, %if.then.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge ], [ 0, %do.body.i.dpu_hw_ctl_poll_reset_status.exit_crit_edge ]
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_wait_reset_status(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %call = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 48) #9
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_hw_ctl_wait_reset_status.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_ctl_wait_reset_status, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !92

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_hw_ctl_wait_reset_status.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.21, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call.i = tail call i64 @ktime_get() #9
  %add.i.neg.i = sub i64 -2000000, %call.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i.do.body.i_crit_edge, %do.end
  %call2.i = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef 48) #9
  %and.i = and i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #9
  %call4.i = tail call i64 @ktime_get() #9
  %sub.i = add i64 %add.i.neg.i, %call4.i
  %cmp.i.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i.i, label %if.then.i.do.body.i_crit_edge, label %do.end12

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end12:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %idx14 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %idx14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_clear_all_blendstages(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %mixer_count = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mixer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mixer_hw_caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mixer_hw_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer_hw_caps, align 4
  %id = getelementptr %struct.dpu_lm_cfg, ptr %3, i32 %i.023, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1 = icmp eq i32 %5, 6
  %sub = shl i32 %5, 2
  %mul = add i32 %sub, -4
  %cond = select i1 %cmp1, i32 36, i32 %mul
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %cond, i32 noundef 0, ptr noundef nonnull @.str.23) #9
  %add = add i32 %sub, 60
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @.str.24) #9
  %add6 = add i32 %sub, 108
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add6, i32 noundef 0, ptr noundef nonnull @.str.25) #9
  %add9 = add i32 %sub, 156
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add9, i32 noundef 0, ptr noundef nonnull @.str.26) #9
  %inc = add nuw nsw i32 %i.023, 1
  %6 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mixer_count, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 252, i32 noundef 0, ptr noundef nonnull @.str.27) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_setup_blendstage(ptr noundef %ctx, i32 noundef %lm, ptr noundef readonly %stage_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  %mixer_hw_caps = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %mixer_hw_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer_hw_caps, align 4
  %mixer_count = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %mixer_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mixer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_lm_cfg, ptr %1, i32 %i.09.i, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lm)
  %cmp1.i = icmp eq i32 %5, %lm
  br i1 %cmp1.i, label %_mixer_stages.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

_mixer_stages.exit:                               ; preds = %for.body.i
  %sblk.i = getelementptr %struct.dpu_lm_cfg, ptr %1, i32 %i.09.i, i32 5
  %6 = ptrtoint ptr %sblk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sblk.i, align 4
  %maxblendstages.i = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %maxblendstages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxblendstages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %_mixer_stages.exit.cleanup_crit_edge, label %if.end

_mixer_stages.exit.cleanup_crit_edge:             ; preds = %_mixer_stages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %_mixer_stages.exit
  %features = getelementptr inbounds %struct.dpu_lm_cfg, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %features, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %tobool5.not = icmp eq ptr %stage_cfg, null
  br i1 %tobool5.not, label %if.end.exit_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.cond.loopexit:                                ; preds = %sw.epilog
  %cmp8.not = icmp sgt i32 %add, %9
  br i1 %cmp8.not, label %for.cond.loopexit.exit_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.exit_crit_edge:                 ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0291 = phi i32 [ %add, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mixercfg_ext3.0290 = phi i32 [ %mixercfg_ext3.2, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mixercfg_ext2.0289 = phi i32 [ %mixercfg_ext2.2, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mixercfg_ext.0288 = phi i32 [ %mixercfg_ext.2, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mixercfg.0287 = phi i32 [ %mixercfg.2, %for.cond.loopexit.for.body_crit_edge ], [ 16777216, %if.end.for.body_crit_edge ]
  %add = add i32 %i.0291, 1
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0291)
  %cmp9 = icmp sgt i32 %i.0291, 6
  %conv = zext i1 %cmp9 to i32
  %and155 = shl i32 %add, 26
  %shl156 = and i32 %and155, 1006632960
  %and150 = shl i32 %add, 20
  %shl151 = and i32 %and150, 15728640
  %and143 = and i32 %add, 15
  %and123 = shl i32 %add, 16
  %shl124 = and i32 %and123, 983040
  %shl115 = select i1 %cmp9, i32 262144, i32 0
  %and109 = shl i32 %add, 12
  %shl110 = and i32 %and109, 61440
  %shl101 = select i1 %cmp9, i32 65536, i32 0
  %and95 = shl i32 %add, 8
  %shl96 = and i32 %and95, 3840
  %shl88 = select i1 %cmp9, i32 16384, i32 0
  %shl83 = select i1 %cmp9, i32 4096, i32 0
  %shl78 = select i1 %cmp9, i32 1024, i32 0
  %shl73 = select i1 %cmp9, i32 256, i32 0
  %shl67 = select i1 %cmp9, i32 64, i32 0
  %shl53 = select i1 %cmp9, i32 16, i32 0
  %shl39 = select i1 %cmp9, i32 4, i32 0
  %and33 = shl i32 %add, 4
  %shl34 = and i32 %and33, 240
  br label %for.body13

for.body13:                                       ; preds = %sw.epilog.for.body13_crit_edge, %for.body
  %j.0285 = phi i32 [ 0, %for.body ], [ %inc, %sw.epilog.for.body13_crit_edge ]
  %mixercfg_ext3.1284 = phi i32 [ %mixercfg_ext3.0290, %for.body ], [ %mixercfg_ext3.2, %sw.epilog.for.body13_crit_edge ]
  %mixercfg_ext2.1283 = phi i32 [ %mixercfg_ext2.0289, %for.body ], [ %mixercfg_ext2.2, %sw.epilog.for.body13_crit_edge ]
  %mix.0282 = phi i32 [ %and, %for.body ], [ %mix.1, %sw.epilog.for.body13_crit_edge ]
  %mixercfg_ext.1281 = phi i32 [ %mixercfg_ext.0288, %for.body ], [ %mixercfg_ext.2, %sw.epilog.for.body13_crit_edge ]
  %mixercfg.1280 = phi i32 [ %mixercfg.0287, %for.body ], [ %mixercfg.2, %sw.epilog.for.body13_crit_edge ]
  %arrayidx14 = getelementptr %struct.dpu_hw_stage_cfg, ptr %stage_cfg, i32 0, i32 1, i32 %i.0291, i32 %j.0285
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr [12 x [2 x i32]], ptr %stage_cfg, i32 0, i32 %i.0291, i32 %j.0285
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %16, label %for.body13.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
    i32 3, label %sw.bb42
    i32 4, label %sw.bb56
    i32 5, label %sw.bb70
    i32 6, label %sw.bb75
    i32 7, label %sw.bb80
    i32 8, label %sw.bb85
    i32 9, label %sw.bb90
    i32 10, label %sw.bb104
    i32 11, label %sw.bb118
    i32 12, label %sw.bb133
    i32 13, label %sw.bb148
    i32 14, label %sw.bb153
  ]

for.body13.sw.epilog_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %mixercfg_ext3.1284, %and143
  br label %sw.epilog

if.else22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or24 = or i32 %mix.0282, %mixercfg.1280
  %or26 = or i32 %mixercfg_ext.1281, %conv
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp29 = icmp eq i32 %14, 2
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %or35 = or i32 %mixercfg_ext3.1284, %shl34
  br label %sw.epilog

if.else36:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %shl37 = shl i32 %mix.0282, 3
  %or38 = or i32 %shl37, %mixercfg.1280
  %or40 = or i32 %mixercfg_ext.1281, %shl39
  br label %sw.epilog

sw.bb42:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp43 = icmp eq i32 %14, 2
  br i1 %cmp43, label %if.then45, label %if.else50

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %or49 = or i32 %mixercfg_ext3.1284, %shl96
  br label %sw.epilog

if.else50:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %shl51 = shl i32 %mix.0282, 6
  %or52 = or i32 %shl51, %mixercfg.1280
  %or54 = or i32 %mixercfg_ext.1281, %shl53
  br label %sw.epilog

sw.bb56:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp57 = icmp eq i32 %14, 2
  br i1 %cmp57, label %if.then59, label %if.else64

if.then59:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %or63 = or i32 %mixercfg_ext3.1284, %shl110
  br label %sw.epilog

if.else64:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %shl65 = shl i32 %mix.0282, 26
  %or66 = or i32 %shl65, %mixercfg.1280
  %or68 = or i32 %mixercfg_ext.1281, %shl67
  br label %sw.epilog

sw.bb70:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %shl71 = shl i32 %mix.0282, 9
  %or72 = or i32 %shl71, %mixercfg.1280
  %or74 = or i32 %mixercfg_ext.1281, %shl73
  br label %sw.epilog

sw.bb75:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %shl76 = shl i32 %mix.0282, 12
  %or77 = or i32 %shl76, %mixercfg.1280
  %or79 = or i32 %mixercfg_ext.1281, %shl78
  br label %sw.epilog

sw.bb80:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %shl81 = shl i32 %mix.0282, 15
  %or82 = or i32 %shl81, %mixercfg.1280
  %or84 = or i32 %mixercfg_ext.1281, %shl83
  br label %sw.epilog

sw.bb85:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %shl86 = shl i32 %mix.0282, 29
  %or87 = or i32 %shl86, %mixercfg.1280
  %or89 = or i32 %mixercfg_ext.1281, %shl88
  br label %sw.epilog

sw.bb90:                                          ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp91 = icmp eq i32 %14, 2
  br i1 %cmp91, label %if.then93, label %if.else98

if.then93:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  %or97 = or i32 %mixercfg_ext2.1283, %shl96
  br label %sw.epilog

if.else98:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  %shl99 = shl i32 %mix.0282, 18
  %or100 = or i32 %shl99, %mixercfg.1280
  %or102 = or i32 %mixercfg_ext.1281, %shl101
  br label %sw.epilog

sw.bb104:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp105 = icmp eq i32 %14, 2
  br i1 %cmp105, label %if.then107, label %if.else112

if.then107:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  %or111 = or i32 %mixercfg_ext2.1283, %shl110
  br label %sw.epilog

if.else112:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  %shl113 = shl i32 %mix.0282, 21
  %or114 = or i32 %shl113, %mixercfg.1280
  %or116 = or i32 %mixercfg_ext.1281, %shl115
  br label %sw.epilog

sw.bb118:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp119 = icmp eq i32 %14, 2
  br i1 %cmp119, label %if.then121, label %if.else126

if.then121:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  %or125 = or i32 %mixercfg_ext2.1283, %shl124
  br label %sw.epilog

if.else126:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #11
  %or129 = or i32 %mix.0282, %and143
  %or131 = or i32 %mixercfg_ext2.1283, %or129
  br label %sw.epilog

sw.bb133:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp134 = icmp eq i32 %14, 2
  br i1 %cmp134, label %if.then136, label %if.else141

if.then136:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #11
  %or140 = or i32 %mixercfg_ext2.1283, %shl151
  br label %sw.epilog

if.else141:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #11
  %or144 = or i32 %mix.0282, %and143
  %shl145 = shl i32 %or144, 4
  %or146 = or i32 %shl145, %mixercfg_ext2.1283
  br label %sw.epilog

sw.bb148:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %or152 = or i32 %mixercfg_ext.1281, %shl151
  br label %sw.epilog

sw.bb153:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  %or157 = or i32 %mixercfg_ext.1281, %shl156
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb153, %sw.bb148, %if.else141, %if.then136, %if.else126, %if.then121, %if.else112, %if.then107, %if.else98, %if.then93, %sw.bb85, %sw.bb80, %sw.bb75, %sw.bb70, %if.else64, %if.then59, %if.else50, %if.then45, %if.else36, %if.then31, %if.else22, %if.then19, %for.body13.sw.epilog_crit_edge
  %mixercfg.2 = phi i32 [ %mixercfg.1280, %for.body13.sw.epilog_crit_edge ], [ %mixercfg.1280, %sw.bb153 ], [ %mixercfg.1280, %sw.bb148 ], [ %mixercfg.1280, %if.then136 ], [ %mixercfg.1280, %if.else141 ], [ %mixercfg.1280, %if.then121 ], [ %mixercfg.1280, %if.else126 ], [ %mixercfg.1280, %if.then107 ], [ %or114, %if.else112 ], [ %mixercfg.1280, %if.then93 ], [ %or100, %if.else98 ], [ %or87, %sw.bb85 ], [ %or82, %sw.bb80 ], [ %or77, %sw.bb75 ], [ %or72, %sw.bb70 ], [ %mixercfg.1280, %if.then59 ], [ %or66, %if.else64 ], [ %mixercfg.1280, %if.then45 ], [ %or52, %if.else50 ], [ %mixercfg.1280, %if.then31 ], [ %or38, %if.else36 ], [ %mixercfg.1280, %if.then19 ], [ %or24, %if.else22 ]
  %mixercfg_ext.2 = phi i32 [ %mixercfg_ext.1281, %for.body13.sw.epilog_crit_edge ], [ %or157, %sw.bb153 ], [ %or152, %sw.bb148 ], [ %mixercfg_ext.1281, %if.then136 ], [ %mixercfg_ext.1281, %if.else141 ], [ %mixercfg_ext.1281, %if.then121 ], [ %mixercfg_ext.1281, %if.else126 ], [ %mixercfg_ext.1281, %if.then107 ], [ %or116, %if.else112 ], [ %mixercfg_ext.1281, %if.then93 ], [ %or102, %if.else98 ], [ %or89, %sw.bb85 ], [ %or84, %sw.bb80 ], [ %or79, %sw.bb75 ], [ %or74, %sw.bb70 ], [ %mixercfg_ext.1281, %if.then59 ], [ %or68, %if.else64 ], [ %mixercfg_ext.1281, %if.then45 ], [ %or54, %if.else50 ], [ %mixercfg_ext.1281, %if.then31 ], [ %or40, %if.else36 ], [ %mixercfg_ext.1281, %if.then19 ], [ %or26, %if.else22 ]
  %mix.1 = phi i32 [ %mix.0282, %for.body13.sw.epilog_crit_edge ], [ %mix.0282, %sw.bb153 ], [ %mix.0282, %sw.bb148 ], [ %mix.0282, %if.then136 ], [ %or144, %if.else141 ], [ %mix.0282, %if.then121 ], [ %or129, %if.else126 ], [ %mix.0282, %if.then107 ], [ %mix.0282, %if.else112 ], [ %mix.0282, %if.then93 ], [ %mix.0282, %if.else98 ], [ %mix.0282, %sw.bb85 ], [ %mix.0282, %sw.bb80 ], [ %mix.0282, %sw.bb75 ], [ %mix.0282, %sw.bb70 ], [ %mix.0282, %if.then59 ], [ %mix.0282, %if.else64 ], [ %mix.0282, %if.then45 ], [ %mix.0282, %if.else50 ], [ %mix.0282, %if.then31 ], [ %mix.0282, %if.else36 ], [ %mix.0282, %if.then19 ], [ %mix.0282, %if.else22 ]
  %mixercfg_ext2.2 = phi i32 [ %mixercfg_ext2.1283, %for.body13.sw.epilog_crit_edge ], [ %mixercfg_ext2.1283, %sw.bb153 ], [ %mixercfg_ext2.1283, %sw.bb148 ], [ %or140, %if.then136 ], [ %or146, %if.else141 ], [ %or125, %if.then121 ], [ %or131, %if.else126 ], [ %or111, %if.then107 ], [ %mixercfg_ext2.1283, %if.else112 ], [ %or97, %if.then93 ], [ %mixercfg_ext2.1283, %if.else98 ], [ %mixercfg_ext2.1283, %sw.bb85 ], [ %mixercfg_ext2.1283, %sw.bb80 ], [ %mixercfg_ext2.1283, %sw.bb75 ], [ %mixercfg_ext2.1283, %sw.bb70 ], [ %mixercfg_ext2.1283, %if.then59 ], [ %mixercfg_ext2.1283, %if.else64 ], [ %mixercfg_ext2.1283, %if.then45 ], [ %mixercfg_ext2.1283, %if.else50 ], [ %mixercfg_ext2.1283, %if.then31 ], [ %mixercfg_ext2.1283, %if.else36 ], [ %mixercfg_ext2.1283, %if.then19 ], [ %mixercfg_ext2.1283, %if.else22 ]
  %mixercfg_ext3.2 = phi i32 [ %mixercfg_ext3.1284, %for.body13.sw.epilog_crit_edge ], [ %mixercfg_ext3.1284, %sw.bb153 ], [ %mixercfg_ext3.1284, %sw.bb148 ], [ %mixercfg_ext3.1284, %if.then136 ], [ %mixercfg_ext3.1284, %if.else141 ], [ %mixercfg_ext3.1284, %if.then121 ], [ %mixercfg_ext3.1284, %if.else126 ], [ %mixercfg_ext3.1284, %if.then107 ], [ %mixercfg_ext3.1284, %if.else112 ], [ %mixercfg_ext3.1284, %if.then93 ], [ %mixercfg_ext3.1284, %if.else98 ], [ %mixercfg_ext3.1284, %sw.bb85 ], [ %mixercfg_ext3.1284, %sw.bb80 ], [ %mixercfg_ext3.1284, %sw.bb75 ], [ %mixercfg_ext3.1284, %sw.bb70 ], [ %or63, %if.then59 ], [ %mixercfg_ext3.1284, %if.else64 ], [ %or49, %if.then45 ], [ %mixercfg_ext3.1284, %if.else50 ], [ %or35, %if.then31 ], [ %mixercfg_ext3.1284, %if.else36 ], [ %or, %if.then19 ], [ %mixercfg_ext3.1284, %if.else22 ]
  %inc = add nuw nsw i32 %j.0285, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.cond.loopexit, label %sw.epilog.for.body13_crit_edge

sw.epilog.for.body13_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

exit:                                             ; preds = %for.cond.loopexit.exit_crit_edge, %if.end.exit_crit_edge
  %mixercfg.3 = phi i32 [ 16777216, %if.end.exit_crit_edge ], [ %mixercfg.2, %for.cond.loopexit.exit_crit_edge ]
  %mixercfg_ext.3 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %mixercfg_ext.2, %for.cond.loopexit.exit_crit_edge ]
  %mixercfg_ext2.3 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %mixercfg_ext2.2, %for.cond.loopexit.exit_crit_edge ]
  %mixercfg_ext3.3 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %mixercfg_ext3.2, %for.cond.loopexit.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lm)
  %cmp161 = icmp eq i32 %lm, 6
  %sub = shl i32 %lm, 2
  %mul = add i32 %sub, -4
  %cond = select i1 %cmp161, i32 36, i32 %mul
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %cond, i32 noundef %mixercfg.3, ptr noundef nonnull @.str.28) #9
  %add165 = add i32 %sub, 60
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add165, i32 noundef %mixercfg_ext.3, ptr noundef nonnull @.str.29) #9
  %add168 = add i32 %sub, 108
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add168, i32 noundef %mixercfg_ext2.3, ptr noundef nonnull @.str.30) #9
  %add171 = add i32 %sub, 156
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add171, i32 noundef %mixercfg_ext3.3, ptr noundef nonnull @.str.31) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %_mixer_stages.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_sspp(ptr nocapture noundef readnone %ctx, i32 noundef %sspp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %sspp, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 14
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_sspp, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %flushbits.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %flushbits.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_mixer(ptr nocapture noundef readnone %ctx, i32 noundef %lm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %lm, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_mixer, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_dspp(ptr nocapture noundef readnone %ctx, i32 noundef %dspp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %dspp, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_dspp, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_set_fetch_pipe_active(ptr noundef %ctx, ptr noundef %fetch_active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fetch_active, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %val.014 = phi i32 [ %val.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %div3.i = lshr i32 %i.012, 5
  %arrayidx.i = getelementptr i32, ptr %fetch_active, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = shl nuw i32 1, %i.012
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = lshr i32 25057, %i.012
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.not = icmp eq i32 %5, 0
  br i1 %cmp2.not.not, label %if.then3, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [15 x i32], ptr @fetch_tbl, i32 0, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %val.014
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %val.1 = phi i32 [ %or, %if.then3 ], [ %val.014, %land.lhs.true.for.inc_crit_edge ], [ %val.014, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.inc.if.end5_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %val.2 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %val.1, %for.inc.if.end5_crit_edge ]
  %hw = getelementptr inbounds %struct.dpu_hw_ctl, ptr %ctx, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 252, i32 noundef %val.2, ptr noundef nonnull @.str.27) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_hw_ctl_trigger_pending_flush(i32 noundef %pending_mask, i32 noundef %ctl_flush) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, i32 0, i32 1), ptr blockaddress(@trace_dpu_hw_ctl_trigger_pending_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %call42 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_pending_flush(ptr noundef null, i32 noundef %pending_mask, i32 noundef %ctl_flush) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_hw_ctl_trigger_pending_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_hw_ctl_trigger_pending_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 951, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_hw_ctl_clear_pending_flush(i32 noundef %pending_mask, i32 noundef %ctl_flush) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, i32 0, i32 1), ptr blockaddress(@trace_dpu_hw_ctl_clear_pending_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %call42 = tail call i32 @__traceiter_dpu_hw_ctl_clear_pending_flush(ptr noundef null, i32 noundef %pending_mask, i32 noundef %ctl_flush) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_hw_ctl_clear_pending_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_hw_ctl_clear_pending_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 946, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_clear_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_hw_ctl_update_pending_flush(i32 noundef %new_bits, i32 noundef %pending_mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, i32 0, i32 1), ptr blockaddress(@trace_dpu_hw_ctl_update_pending_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %call42 = tail call i32 @__traceiter_dpu_hw_ctl_update_pending_flush(ptr noundef null, i32 noundef %new_bits, i32 noundef %pending_mask) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_hw_ctl_update_pending_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_hw_ctl_update_pending_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 927, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_update_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_hw_ctl_trigger_start(i32 noundef %pending_mask, i32 noundef %ctl_flush) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_start, i32 0, i32 1), ptr blockaddress(@trace_dpu_hw_ctl_trigger_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %call42 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_start(ptr noundef null, i32 noundef %pending_mask, i32 noundef %ctl_flush) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_hw_ctl_trigger_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_hw_ctl_trigger_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 959, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_hw_ctl_trigger_prepare(i32 noundef %pending_mask, i32 noundef %ctl_flush) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, i32 0, i32 1), ptr blockaddress(@trace_dpu_hw_ctl_trigger_prepare, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !92

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !93

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %call42 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_prepare(ptr noundef null, i32 noundef %pending_mask, i32 noundef %ctl_flush) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !93

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_hw_ctl_trigger_prepare.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_hw_ctl_trigger_prepare.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 955, ptr noundef nonnull @.str.10) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_prepare(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 616, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_hw_ctl_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_hw_ctl_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 126, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 129, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 132, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 515, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 516, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 518, i32 3}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 947, i32 1}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 545, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dpu_hw_ctl_intf_cfg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dpu_hw_ctl_intf_cfg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 943, i32 1}
!33 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 914, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 92, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 956, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 99, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 952, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 316, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dpu_hw_ctl_reset_control.__UNIQUE_ID_ddebug475, !48, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 317, i32 2}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 334, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dpu_hw_ctl_wait_reset_status.__UNIQUE_ID_ddebug476, !55, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 336, i32 3}
!60 = !{ptr @dpu_hw_ctl_wait_reset_status._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dpu_hw_ctl_wait_reset_status._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 351, i32 3}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 352, i32 3}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 353, i32 3}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 354, i32 3}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 357, i32 2}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 488, i32 2}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 489, i32 2}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 490, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 491, i32 2}
!80 = !{ptr @fetch_tbl, !81, !"fetch_tbl", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c", i32 41, i32 18}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148770022, i64 2148770027, i64 2148770040, i64 2148770084, i64 2148770118, i64 2148770139}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2158606935}
!95 = !{i64 2158607208}
!96 = !{i64 2149271178}
!97 = !{i64 2149272214}
!98 = !{i64 2158588921}
!99 = !{i64 2158589190}
!100 = !{i64 2158566878}
!101 = !{i64 2158567147}
!102 = !{i64 2158646384}
!103 = !{i64 2158646641}
!104 = !{i64 2158624829}
!105 = !{i64 2158625090}
