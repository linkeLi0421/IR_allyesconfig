; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i32, i8, i8, i32, i32 }
%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_vbif_ops }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_vbif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_vbif_dynamic_ot_cfg = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_vbif_set_qos_params = type { i32, i32, i32, i32, i8 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid arguments vbif %d mdp %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_vbif_set_qos_remap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpu_vbif_set_qos_remap\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c\00", [55 x i8] zeroinitializer }, align 32
@dpu_vbif_set_qos_remap._entry_ptr = internal global ptr @dpu_vbif_set_qos_remap._entry, section ".printk_index", align 4
@dpu_vbif_set_qos_remap._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid vbif %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dpu_vbif_set_qos_remap._entry_ptr.6 = internal global ptr @dpu_vbif_set_qos_remap._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qos remap not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qos tbl not defined\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vbif:%d xin:%d lvl:%d/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VBIF %d: pnd 0x%X, src 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbif\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xin_halt_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_rd_ot_limit\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_wr_ot_limit\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dynamic_ot_rd_%d_pps\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dynamic_ot_rd_%d_ot_limit\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dynamic_ot_wr_%d_pps\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dynamic_ot_wr_%d_ot_limit\00", [38 x i8] zeroinitializer }, align 32
@_dpu_vbif_get_ot_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments vbif %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_dpu_vbif_get_ot_limit\00", [41 x i8] zeroinitializer }, align 32
@_dpu_vbif_get_ot_limit._entry_ptr = internal global ptr @_dpu_vbif_get_ot_limit._entry, section ".printk_index", align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vbif:%d xin:%d ot_lim:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\0A\00", [48 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_perf_set_ot = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_perf_set_ot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@_dpu_vbif_wait_for_xin_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.28, ptr @.str.3, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_dpu_vbif_wait_for_xin_halt\00", [36 x i8] zeroinitializer }, align 32
@_dpu_vbif_wait_for_xin_halt._entry_ptr = internal global ptr @_dpu_vbif_wait_for_xin_halt._entry, section ".printk_index", align 4
@_dpu_vbif_wait_for_xin_halt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[drm:%s:%d] [dpu error]VBIF %d client %d not halting. TIMEDOUT.\0A\00", [61 x i8] zeroinitializer }, align 32
@_dpu_vbif_wait_for_xin_halt._entry_ptr.31 = internal global ptr @_dpu_vbif_wait_for_xin_halt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VBIF %d client %d is halted\0A\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_vbif_wait_xin_halt_fail = external dso_local global %struct.tracepoint, align 4
@trace_dpu_vbif_wait_xin_halt_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 166, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 214, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 228, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 233, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 241, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 248, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 269, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 299, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 304, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 308, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 311, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 314, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 317, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 325, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 329, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 339, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 343, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 109, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 136, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 90, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 74, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 108, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 27, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 45, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 49, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @_dpu_vbif_get_ot_limit._entry, ptr @_dpu_vbif_get_ot_limit._entry_ptr, ptr @_dpu_vbif_wait_for_xin_halt._entry, ptr @_dpu_vbif_wait_for_xin_halt._entry.29, ptr @_dpu_vbif_wait_for_xin_halt._entry_ptr, ptr @_dpu_vbif_wait_for_xin_halt._entry_ptr.31, ptr @dpu_vbif_set_qos_remap._entry, ptr @dpu_vbif_set_qos_remap._entry.4, ptr @dpu_vbif_set_qos_remap._entry_ptr, ptr @dpu_vbif_set_qos_remap._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_vbif_set_qos_remap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_vbif_set_qos_remap._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_vbif_get_ot_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_vbif_wait_for_xin_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_vbif_wait_for_xin_halt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_vbif_set_ot_limit(ptr nocapture noundef readonly %dpu_kms, ptr noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_mdp = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 17
  %0 = ptrtoint ptr %hw_mdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_mdp, align 8
  %vbif_idx = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 7
  %arrayidx = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idx = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %6 = ptrtoint ptr %vbif_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbif_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  %spec.select = select i1 %cmp3, ptr %3, ptr null
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %entry.for.inc_crit_edge
  %vbif.1 = phi ptr [ null, %entry.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx.1 = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %idx.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.1, align 4
  %12 = ptrtoint ptr %vbif_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbif_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.1 = icmp eq i32 %11, %13
  %spec.select.1 = select i1 %cmp3.1, ptr %9, ptr %vbif.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc.for.inc.1_crit_edge
  %vbif.1.1 = phi ptr [ %vbif.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  %tobool6 = icmp ne ptr %vbif.1.1, null
  %tobool6.not = xor i1 %tobool6, true
  %tobool7.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.then8, label %if.end12

if.then8:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i1 %tobool6 to i32
  %cmp10 = icmp ne ptr %1, null
  %conv11 = zext i1 %cmp10 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv11) #7
  br label %cleanup

if.end12:                                         ; preds = %for.inc.1
  %setup_clk_force_ctrl = getelementptr inbounds %struct.dpu_hw_mdp, ptr %1, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %setup_clk_force_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setup_clk_force_ctrl, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %lor.lhs.false14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end12
  %ops15 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 3
  %16 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops15, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %set_halt_ctrl = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %set_halt_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_halt_ctrl, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %lor.lhs.false17.cleanup_crit_edge, label %if.end21

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false17
  %set_write_gather_en = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %set_write_gather_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_write_gather_en, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %land.lhs.true24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.end21
  %rd = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %22 = ptrtoint ptr %rd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rd, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true24.if.end29_crit_edge

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params, align 4
  tail call void %21(ptr noundef nonnull %vbif.1.1, i32 noundef %25) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true24.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  br i1 %tobool6, label %lor.lhs.false.i, label %if.end29._dpu_vbif_get_ot_limit.exit.thread_crit_edge

if.end29._dpu_vbif_get_ot_limit.exit.thread_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_get_ot_limit.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end29
  %cap.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 2
  %26 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i._dpu_vbif_get_ot_limit.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i._dpu_vbif_get_ot_limit.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_get_ot_limit.exit.thread

_dpu_vbif_get_ot_limit.exit.thread:               ; preds = %lor.lhs.false.i._dpu_vbif_get_ot_limit.exit.thread_crit_edge, %if.end29._dpu_vbif_get_ot_limit.exit.thread_crit_edge
  %conv.i = zext i1 %tobool6 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 109, i32 noundef %conv.i) #10
  br label %if.end33

if.end.i:                                         ; preds = %lor.lhs.false.i
  %default_ot_wr_limit.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %default_ot_wr_limit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %default_ot_wr_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i = icmp eq i32 %29, 0
  br i1 %tobool3.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %rd.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %30 = ptrtoint ptr %rd.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rd.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool4.not.i = icmp eq i8 %31, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.lor.lhs.false.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %default_ot_rd_limit.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %default_ot_rd_limit.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %default_ot_rd_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not.i = icmp eq i32 %33, 0
  br i1 %tobool9.not.i, label %if.else.i._dpu_vbif_get_ot_limit.exit_crit_edge, label %land.lhs.true10.i

if.else.i._dpu_vbif_get_ot_limit.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_get_ot_limit.exit

land.lhs.true10.i:                                ; preds = %if.else.i
  %rd11.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %34 = ptrtoint ptr %rd11.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rd11.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool12.not.i = icmp eq i8 %35, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i._dpu_vbif_get_ot_limit.exit_crit_edge, label %land.lhs.true10.i.lor.lhs.false.i.i_crit_edge

land.lhs.true10.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

land.lhs.true10.i._dpu_vbif_get_ot_limit.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_get_ot_limit.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true10.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i.i_crit_edge
  %ot_lim.0.i = phi i32 [ %29, %land.lhs.true.i.lor.lhs.false.i.i_crit_edge ], [ %33, %land.lhs.true10.i.lor.lhs.false.i.i_crit_edge ]
  %features.i.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %27, i32 0, i32 4
  %36 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_apply_dynamic_ot_limit.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %is_wfd.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 6
  %38 = ptrtoint ptr %is_wfd.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_wfd.i.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_apply_dynamic_ot_limit.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %frame_rate.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 4
  %40 = ptrtoint ptr %frame_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frame_rate.i.i, align 4
  %conv.i.i = zext i32 %41 to i64
  %width.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 2
  %42 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width.i.i, align 4
  %conv5.i.i = zext i32 %43 to i64
  %mul.i.i = mul nuw i64 %conv5.i.i, %conv.i.i
  %height.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 3
  %44 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i.i, align 4
  %conv6.i.i = zext i32 %45 to i64
  %mul7.i.i = mul i64 %mul.i.i, %conv6.i.i
  %rd.i.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %46 = ptrtoint ptr %rd.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rd.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not.i.i = icmp eq i8 %47, 0
  %dynamic_ot_rd_tbl.i.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %27, i32 0, i32 8
  %dynamic_ot_wr_tbl.i.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %27, i32 0, i32 9
  %cond.i.i = select i1 %tobool8.not.i.i, ptr %dynamic_ot_wr_tbl.i.i, ptr %dynamic_ot_rd_tbl.i.i
  %48 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp47.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp47.not.i.i, label %if.end4.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end4.i.i.for.end.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end4.i.i
  %cfg.i.i = getelementptr inbounds %struct.dpu_vbif_dynamic_ot_tbl, ptr %cond.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.048.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %51, i32 %i.048.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.i, i64 %53)
  %cmp14.not.i.i = icmp ugt i64 %mul7.i.i, %53
  br i1 %cmp14.not.i.i, label %for.inc.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ot_limit.i.i = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %51, i32 %i.048.i.i, i32 1
  %54 = ptrtoint ptr %ot_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ot_limit.i.i, align 8
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %49
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then16.i.i, %if.end4.i.i.for.end.i.i_crit_edge
  %ot_lim.1.i = phi i32 [ %ot_lim.0.i, %if.end4.i.i.for.end.i.i_crit_edge ], [ %55, %if.then16.i.i ], [ %ot_lim.0.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %idx.i.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 1
  %56 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %idx.i.i, align 4
  %58 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %params, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %57, i32 noundef %59, i32 noundef %43, i32 noundef %45, i32 noundef %41, i64 noundef %mul7.i.i, i32 noundef %ot_lim.1.i) #7
  br label %_dpu_vbif_apply_dynamic_ot_limit.exit.i

_dpu_vbif_apply_dynamic_ot_limit.exit.i:          ; preds = %for.end.i.i, %if.end.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge, %lor.lhs.false.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge
  %ot_lim.2.i = phi i32 [ %ot_lim.0.i, %lor.lhs.false.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge ], [ %ot_lim.0.i, %if.end.i.i._dpu_vbif_apply_dynamic_ot_limit.exit.i_crit_edge ], [ %ot_lim.1.i, %for.end.i.i ]
  %get_limit_conf.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %get_limit_conf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_limit_conf.i, align 4
  %tobool25.not.i = icmp eq ptr %61, null
  br i1 %tobool25.not.i, label %_dpu_vbif_apply_dynamic_ot_limit.exit.i._dpu_vbif_get_ot_limit.exit_crit_edge, label %if.then26.i

_dpu_vbif_apply_dynamic_ot_limit.exit.i._dpu_vbif_get_ot_limit.exit_crit_edge: ; preds = %_dpu_vbif_apply_dynamic_ot_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_get_ot_limit.exit

if.then26.i:                                      ; preds = %_dpu_vbif_apply_dynamic_ot_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %params, align 4
  %rd29.i = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %64 = ptrtoint ptr %rd29.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rd29.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool30.i = icmp ne i8 %65, 0
  %call31.i = tail call i32 %61(ptr noundef nonnull %vbif.1.1, i32 noundef %63, i1 noundef zeroext %tobool30.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i, i32 %ot_lim.2.i)
  %cmp32.i = icmp eq i32 %call31.i, %ot_lim.2.i
  %spec.select.i = select i1 %cmp32.i, i32 0, i32 %ot_lim.2.i
  br label %_dpu_vbif_get_ot_limit.exit

_dpu_vbif_get_ot_limit.exit:                      ; preds = %if.then26.i, %_dpu_vbif_apply_dynamic_ot_limit.exit.i._dpu_vbif_get_ot_limit.exit_crit_edge, %land.lhs.true10.i._dpu_vbif_get_ot_limit.exit_crit_edge, %if.else.i._dpu_vbif_get_ot_limit.exit_crit_edge
  %ot_lim.3.i = phi i32 [ %ot_lim.2.i, %_dpu_vbif_apply_dynamic_ot_limit.exit.i._dpu_vbif_get_ot_limit.exit_crit_edge ], [ 0, %if.else.i._dpu_vbif_get_ot_limit.exit_crit_edge ], [ 0, %land.lhs.true10.i._dpu_vbif_get_ot_limit.exit_crit_edge ], [ %spec.select.i, %if.then26.i ]
  %idx.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 1
  %66 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %idx.i, align 4
  %68 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %params, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %67, i32 noundef %69, i32 noundef %ot_lim.3.i) #7
  %and = and i32 %ot_lim.3.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %_dpu_vbif_get_ot_limit.exit.cleanup_crit_edge, label %_dpu_vbif_get_ot_limit.exit.if.end33_crit_edge

_dpu_vbif_get_ot_limit.exit.if.end33_crit_edge:   ; preds = %_dpu_vbif_get_ot_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

_dpu_vbif_get_ot_limit.exit.cleanup_crit_edge:    ; preds = %_dpu_vbif_get_ot_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %_dpu_vbif_get_ot_limit.exit.if.end33_crit_edge, %_dpu_vbif_get_ot_limit.exit.thread
  %and132 = phi i32 [ 234, %_dpu_vbif_get_ot_limit.exit.thread ], [ %and, %_dpu_vbif_get_ot_limit.exit.if.end33_crit_edge ]
  %num = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 1
  %70 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num, align 4
  %72 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %params, align 4
  %74 = ptrtoint ptr %vbif_idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vbif_idx, align 4
  tail call fastcc void @trace_dpu_perf_set_ot(i32 noundef %71, i32 noundef %73, i32 noundef %and132, i32 noundef %75)
  %76 = ptrtoint ptr %setup_clk_force_ctrl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %setup_clk_force_ctrl, align 4
  %clk_ctrl = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 8
  %78 = ptrtoint ptr %clk_ctrl to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %clk_ctrl, align 4
  %call38 = tail call zeroext i1 %77(ptr noundef nonnull %1, i32 noundef %79, i1 noundef zeroext true) #7
  %80 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops15, align 4
  %82 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %params, align 4
  %rd42 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %params, i32 0, i32 5
  %84 = ptrtoint ptr %rd42 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rd42, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool43 = icmp ne i8 %85, 0
  tail call void %81(ptr noundef nonnull %vbif.1.1, i32 noundef %83, i1 noundef zeroext %tobool43, i32 noundef %and132) #7
  %86 = ptrtoint ptr %set_halt_ctrl to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_halt_ctrl, align 4
  %88 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %params, align 4
  tail call void %87(ptr noundef nonnull %vbif.1.1, i32 noundef %89, i1 noundef zeroext true) #7
  %90 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %params, align 4
  br i1 %tobool6, label %lor.lhs.false.i118, label %if.end33.do.end.i122_crit_edge

if.end33.do.end.i122_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i122

lor.lhs.false.i118:                               ; preds = %if.end33
  %cap.i116 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 2
  %92 = ptrtoint ptr %cap.i116 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cap.i116, align 4
  %tobool1.not.i117 = icmp eq ptr %93, null
  br i1 %tobool1.not.i117, label %lor.lhs.false.i118.do.end.i122_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i118.do.end.i122_crit_edge:         ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i122

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i118
  %get_halt_ctrl.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %get_halt_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_halt_ctrl.i, align 4
  %tobool3.not.i119 = icmp eq ptr %95, null
  br i1 %tobool3.not.i119, label %lor.lhs.false2.i.do.end.i122_crit_edge, label %if.end.i124

lor.lhs.false2.i.do.end.i122_crit_edge:           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i122

do.end.i122:                                      ; preds = %lor.lhs.false2.i.do.end.i122_crit_edge, %lor.lhs.false.i118.do.end.i122_crit_edge, %if.end33.do.end.i122_crit_edge
  %conv.i120 = zext i1 %tobool6 to i32
  %call.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.28, i32 noundef 27, i32 noundef %conv.i120) #10
  br label %if.then50

if.end.i124:                                      ; preds = %lor.lhs.false2.i
  %call4.i = tail call i64 @ktime_get() #7
  %96 = ptrtoint ptr %cap.i116 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cap.i116, align 4
  %xin_halt_timeout.i = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %xin_halt_timeout.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %xin_halt_timeout.i, align 4
  %conv6.i = zext i32 %99 to i64
  %mul.i.i123 = mul nuw nsw i64 %conv6.i, 1000
  %add.i.i = add i64 %mul.i.i123, %call4.i
  %100 = ptrtoint ptr %get_halt_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_halt_ctrl.i, align 4
  %call1053.i = tail call zeroext i1 %101(ptr noundef nonnull %vbif.1.1, i32 noundef %91) #7
  br i1 %call1053.i, label %if.end.i124._dpu_vbif_wait_for_xin_halt.exit_crit_edge, label %if.end.i124.if.end13.i_crit_edge

if.end.i124.if.end13.i_crit_edge:                 ; preds = %if.end.i124
  br label %if.end13.i

if.end.i124._dpu_vbif_wait_for_xin_halt.exit_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_wait_for_xin_halt.exit

if.end13.i:                                       ; preds = %if.end24.i.if.end13.i_crit_edge, %if.end.i124.if.end13.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #7
  %sub.i = sub i64 %call14.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i.i = icmp sgt i64 %sub.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.not.i.i = icmp ne i64 %call14.i, %add.i.i
  %cmp17.i = and i1 %cmp3.not.i.i, %cmp.i.i
  br i1 %cmp17.i, label %for.end.i, label %if.end24.i

if.end24.i:                                       ; preds = %if.end13.i
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 1000, i32 noundef 2) #7
  %102 = ptrtoint ptr %get_halt_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %get_halt_ctrl.i, align 4
  %call10.i = tail call zeroext i1 %103(ptr noundef nonnull %vbif.1.1, i32 noundef %91) #7
  br i1 %call10.i, label %if.end24.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge, label %if.end24.i.if.end13.i_crit_edge

if.end24.i.if.end13.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end24.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_wait_for_xin_halt.exit

for.end.i:                                        ; preds = %if.end13.i
  %104 = ptrtoint ptr %get_halt_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %get_halt_ctrl.i, align 4
  %call22.i = tail call zeroext i1 %105(ptr noundef nonnull %vbif.1.1, i32 noundef %91) #7
  br i1 %call22.i, label %for.end.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge, label %if.then26.i126

for.end.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_dpu_vbif_wait_for_xin_halt.exit

if.then26.i126:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %idx.i125 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 1
  %106 = ptrtoint ptr %idx.i125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %idx.i125, align 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 46, i32 noundef %107, i32 noundef %91) #10
  br label %if.then50

_dpu_vbif_wait_for_xin_halt.exit:                 ; preds = %for.end.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge, %if.end24.i._dpu_vbif_wait_for_xin_halt.exit_crit_edge, %if.end.i124._dpu_vbif_wait_for_xin_halt.exit_crit_edge
  %idx33.i = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 1
  %108 = ptrtoint ptr %idx33.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %idx33.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %109, i32 noundef %91) #7
  br label %if.end53

if.then50:                                        ; preds = %if.then26.i126, %do.end.i122
  %idx51 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %vbif.1.1, i32 0, i32 1
  %110 = ptrtoint ptr %idx51 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %idx51, align 4
  %112 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %params, align 4
  tail call fastcc void @trace_dpu_vbif_wait_xin_halt_fail(i32 noundef %111, i32 noundef %113)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %_dpu_vbif_wait_for_xin_halt.exit
  %114 = ptrtoint ptr %set_halt_ctrl to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set_halt_ctrl, align 4
  %116 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %params, align 4
  tail call void %115(ptr noundef nonnull %vbif.1.1, i32 noundef %117, i1 noundef zeroext false) #7
  br i1 %call38, label %if.then58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %setup_clk_force_ctrl to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %setup_clk_force_ctrl, align 4
  %120 = ptrtoint ptr %clk_ctrl to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %clk_ctrl, align 4
  %call62 = tail call zeroext i1 %119(ptr noundef nonnull %1, i32 noundef %121, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end53.cleanup_crit_edge, %_dpu_vbif_get_ot_limit.exit.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_perf_set_ot(i32 noundef %pnum, i32 noundef %xin_id, i32 noundef %rd_lim, i32 noundef %vbif_idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_ot, i32 0, i32 1), ptr blockaddress(@trace_dpu_perf_set_ot, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  %call42 = tail call i32 @__traceiter_dpu_perf_set_ot(ptr noundef null, i32 noundef %pnum, i32 noundef %xin_id, i32 noundef %rd_lim, i32 noundef %vbif_idx) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_ot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_ot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_perf_set_ot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dpu_perf_set_ot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 92, ptr noundef nonnull @.str.26) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_vbif_wait_xin_halt_fail(i32 noundef %index, i32 noundef %xin_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, i32 0, i32 1), ptr blockaddress(@trace_dpu_vbif_wait_xin_halt_fail, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %call42 = tail call i32 @__traceiter_dpu_vbif_wait_xin_halt_fail(ptr noundef null, i32 noundef %index, i32 noundef %xin_id) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !82

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_vbif_wait_xin_halt_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dpu_vbif_wait_xin_halt_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 858, ptr noundef nonnull @.str.26) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #7
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_vbif_set_qos_remap(ptr nocapture noundef readonly %dpu_kms, ptr noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %params, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %hw_mdp = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 17
  %0 = ptrtoint ptr %hw_mdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_mdp, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %for.body.preheader

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.preheader:                               ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 214) #10
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  %idx = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp eq i32 %5, %7
  br i1 %cmp6, label %land.lhs.true.lor.lhs.false12_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.lor.lhs.false12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false12

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %9, null
  br i1 %tobool3.not.1, label %for.inc.do.end17_crit_edge, label %land.lhs.true.1

for.inc.do.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true.1:                                  ; preds = %for.inc
  %idx.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.1, align 4
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.1 = icmp eq i32 %11, %13
  br i1 %cmp6.1, label %land.lhs.true.1.lor.lhs.false12_crit_edge, label %land.lhs.true.1.do.end17_crit_edge

land.lhs.true.1.do.end17_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.lhs.true.1.lor.lhs.false12_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true.1.lor.lhs.false12_crit_edge, %land.lhs.true.lor.lhs.false12_crit_edge
  %.lcssa = phi ptr [ %3, %land.lhs.true.lor.lhs.false12_crit_edge ], [ %9, %land.lhs.true.1.lor.lhs.false12_crit_edge ]
  %cap = getelementptr inbounds %struct.dpu_hw_vbif, ptr %.lcssa, i32 0, i32 2
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cap, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %lor.lhs.false12.do.end17_crit_edge, label %if.end21

lor.lhs.false12.do.end17_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false12.do.end17_crit_edge, %land.lhs.true.1.do.end17_crit_edge, %for.inc.do.end17_crit_edge
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef %17) #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false12
  %set_qos_remap = getelementptr inbounds %struct.dpu_hw_vbif, ptr %.lcssa, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %set_qos_remap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_qos_remap, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.end21.if.then26_crit_edge, label %lor.lhs.false23

if.end21.if.then26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false23:                                  ; preds = %if.end21
  %setup_clk_force_ctrl = getelementptr inbounds %struct.dpu_hw_mdp, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %setup_clk_force_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup_clk_force_ctrl, align 4
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %lor.lhs.false23.if.then26_crit_edge, label %if.end27

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %if.end21.if.then26_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false23
  %is_rt = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %params, i32 0, i32 4
  %22 = ptrtoint ptr %is_rt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_rt, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  %qos_rt_tbl = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %15, i32 0, i32 10
  %qos_nrt_tbl = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %15, i32 0, i32 11
  %cond = select i1 %tobool28.not, ptr %qos_nrt_tbl, ptr %qos_rt_tbl
  %24 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  br i1 %tobool31.not, label %if.end27.if.then34_crit_edge, label %lor.lhs.false32

if.end27.if.then34_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false32:                                  ; preds = %if.end27
  %priority_lvl = getelementptr inbounds %struct.dpu_vbif_qos_tbl, ptr %cond, i32 0, i32 1
  %26 = ptrtoint ptr %priority_lvl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priority_lvl, align 4
  %tobool33.not = icmp eq ptr %27, null
  br i1 %tobool33.not, label %lor.lhs.false32.if.then34_crit_edge, label %if.end35

lor.lhs.false32.if.then34_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false32.if.then34_crit_edge, %if.end27.if.then34_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false32
  %clk_ctrl = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %clk_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_ctrl, align 4
  %call38 = tail call zeroext i1 %21(ptr noundef nonnull %1, i32 noundef %29, i1 noundef zeroext true) #7
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp41106.not = icmp eq i32 %31, 0
  br i1 %cmp41106.not, label %if.end35.for.end53_crit_edge, label %for.body42.lr.ph

if.end35.for.end53_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53

for.body42.lr.ph:                                 ; preds = %if.end35
  %xin_id = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %params, i32 0, i32 1
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.lr.ph
  %i.1107 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc52, %for.body42.for.body42_crit_edge ]
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %params, align 4
  %34 = ptrtoint ptr %xin_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xin_id, align 4
  %36 = ptrtoint ptr %priority_lvl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priority_lvl, align 4
  %arrayidx45 = getelementptr i32, ptr %37, i32 %i.1107
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx45, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %33, i32 noundef %35, i32 noundef %i.1107, i32 noundef %39) #7
  %40 = ptrtoint ptr %set_qos_remap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_qos_remap, align 4
  %42 = ptrtoint ptr %xin_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xin_id, align 4
  %44 = ptrtoint ptr %priority_lvl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priority_lvl, align 4
  %arrayidx50 = getelementptr i32, ptr %45, i32 %i.1107
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx50, align 4
  tail call void %41(ptr noundef nonnull %.lcssa, i32 noundef %43, i32 noundef %i.1107, i32 noundef %47) #7
  %inc52 = add nuw i32 %i.1107, 1
  %48 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cond, align 4
  %cmp41 = icmp ult i32 %inc52, %49
  br i1 %cmp41, label %for.body42.for.body42_crit_edge, label %for.body42.for.end53_crit_edge

for.body42.for.end53_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.end53:                                        ; preds = %for.body42.for.end53_crit_edge, %if.end35.for.end53_crit_edge
  br i1 %call38, label %if.then55, label %for.end53.cleanup_crit_edge

for.end53.cleanup_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %setup_clk_force_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %setup_clk_force_ctrl, align 4
  %52 = ptrtoint ptr %clk_ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clk_ctrl, align 4
  %call59 = tail call zeroext i1 %51(ptr noundef nonnull %1, i32 noundef %53, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %for.end53.cleanup_crit_edge, %if.then34, %if.then26, %do.end17, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_vbif_clear_errors(ptr nocapture noundef readonly %dpu_kms) local_unnamed_addr #0 align 64 {
entry:
  %pnd = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pnd) #7
  %0 = ptrtoint ptr %pnd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pnd, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #7
  %1 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %src, align 4, !annotation !89
  %arrayidx = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %clear_errors = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %clear_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_errors, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void %5(ptr noundef nonnull %3, ptr noundef nonnull %pnd, ptr noundef nonnull %src) #7
  %6 = ptrtoint ptr %pnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %idx = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %7, i32 noundef %13) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %clear_errors.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %15, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %clear_errors.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clear_errors.1, align 4
  %tobool1.not.1 = icmp eq ptr %17, null
  br i1 %tobool1.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void %17(ptr noundef nonnull %15, ptr noundef nonnull %pnd, ptr noundef nonnull %src) #7
  %18 = ptrtoint ptr %pnd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.1 = icmp eq i32 %19, 0
  br i1 %tobool4.not.1, label %lor.lhs.false.1, label %if.then.1.if.then6.1_crit_edge

if.then.1.if.then6.1_crit_edge:                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.1

lor.lhs.false.1:                                  ; preds = %if.then.1
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.1 = icmp eq i32 %21, 0
  br i1 %tobool5.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then6.1_crit_edge

lor.lhs.false.1.if.then6.1_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then6.1:                                       ; preds = %lor.lhs.false.1.if.then6.1_crit_edge, %if.then.1.if.then6.1_crit_edge
  %idx.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx.1, align 4
  %24 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %23, i32 noundef %19, i32 noundef %25) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %lor.lhs.false.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pnd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_vbif_init_memtypes(ptr nocapture noundef readonly %dpu_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc12_crit_edge, label %land.lhs.true

entry.for.inc12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

land.lhs.true:                                    ; preds = %entry
  %cap = getelementptr inbounds %struct.dpu_hw_vbif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cap, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc12_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

land.lhs.true2:                                   ; preds = %land.lhs.true
  %set_mem_type = getelementptr inbounds %struct.dpu_hw_vbif, ptr %1, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %set_mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mem_type, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true2.for.inc12_crit_edge, label %for.cond4.preheader

land.lhs.true2.for.inc12_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

for.cond4.preheader:                              ; preds = %land.lhs.true2
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap, align 4
  %memtype_count26 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %memtype_count26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %memtype_count26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp627.not = icmp eq i32 %9, 0
  br i1 %cmp627.not, label %for.cond4.preheader.for.inc12_crit_edge, label %for.cond4.preheader.for.body7_crit_edge

for.cond4.preheader.for.body7_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body7

for.cond4.preheader.for.inc12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond4.preheader.for.body7_crit_edge
  %10 = phi ptr [ %16, %for.body7.for.body7_crit_edge ], [ %7, %for.cond4.preheader.for.body7_crit_edge ]
  %j.028 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.cond4.preheader.for.body7_crit_edge ]
  %11 = ptrtoint ptr %set_mem_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mem_type, align 4
  %arrayidx11 = getelementptr %struct.dpu_vbif_cfg, ptr %10, i32 0, i32 13, i32 %j.028
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  tail call void %12(ptr noundef nonnull %1, i32 noundef %j.028, i32 noundef %14) #7
  %inc = add nuw i32 %j.028, 1
  %15 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cap, align 4
  %memtype_count = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %memtype_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memtype_count, align 4
  %cmp6 = icmp ult i32 %inc, %18
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.inc12_crit_edge

for.body7.for.inc12_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.inc12:                                        ; preds = %for.body7.for.inc12_crit_edge, %for.cond4.preheader.for.inc12_crit_edge, %land.lhs.true2.for.inc12_crit_edge, %land.lhs.true.for.inc12_crit_edge, %entry.for.inc12_crit_edge
  %arrayidx.1 = getelementptr %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %20, null
  br i1 %tobool.not.1, label %for.inc12.for.inc12.1_crit_edge, label %land.lhs.true.1

for.inc12.for.inc12.1_crit_edge:                  ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

land.lhs.true.1:                                  ; preds = %for.inc12
  %cap.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cap.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cap.1, align 4
  %tobool1.not.1 = icmp eq ptr %22, null
  br i1 %tobool1.not.1, label %land.lhs.true.1.for.inc12.1_crit_edge, label %land.lhs.true2.1

land.lhs.true.1.for.inc12.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

land.lhs.true2.1:                                 ; preds = %land.lhs.true.1
  %set_mem_type.1 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %20, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %set_mem_type.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mem_type.1, align 4
  %tobool3.not.1 = icmp eq ptr %24, null
  br i1 %tobool3.not.1, label %land.lhs.true2.1.for.inc12.1_crit_edge, label %for.cond4.preheader.1

land.lhs.true2.1.for.inc12.1_crit_edge:           ; preds = %land.lhs.true2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

for.cond4.preheader.1:                            ; preds = %land.lhs.true2.1
  %25 = ptrtoint ptr %cap.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cap.1, align 4
  %memtype_count26.1 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %memtype_count26.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %memtype_count26.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp627.not.1 = icmp eq i32 %28, 0
  br i1 %cmp627.not.1, label %for.cond4.preheader.1.for.inc12.1_crit_edge, label %for.cond4.preheader.1.for.body7.1_crit_edge

for.cond4.preheader.1.for.body7.1_crit_edge:      ; preds = %for.cond4.preheader.1
  br label %for.body7.1

for.cond4.preheader.1.for.inc12.1_crit_edge:      ; preds = %for.cond4.preheader.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

for.body7.1:                                      ; preds = %for.body7.1.for.body7.1_crit_edge, %for.cond4.preheader.1.for.body7.1_crit_edge
  %29 = phi ptr [ %35, %for.body7.1.for.body7.1_crit_edge ], [ %26, %for.cond4.preheader.1.for.body7.1_crit_edge ]
  %j.028.1 = phi i32 [ %inc.1, %for.body7.1.for.body7.1_crit_edge ], [ 0, %for.cond4.preheader.1.for.body7.1_crit_edge ]
  %30 = ptrtoint ptr %set_mem_type.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_mem_type.1, align 4
  %arrayidx11.1 = getelementptr %struct.dpu_vbif_cfg, ptr %29, i32 0, i32 13, i32 %j.028.1
  %32 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.1, align 4
  tail call void %31(ptr noundef nonnull %20, i32 noundef %j.028.1, i32 noundef %33) #7
  %inc.1 = add nuw i32 %j.028.1, 1
  %34 = ptrtoint ptr %cap.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cap.1, align 4
  %memtype_count.1 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %memtype_count.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %memtype_count.1, align 4
  %cmp6.1 = icmp ult i32 %inc.1, %37
  br i1 %cmp6.1, label %for.body7.1.for.body7.1_crit_edge, label %for.body7.1.for.inc12.1_crit_edge

for.body7.1.for.inc12.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

for.body7.1.for.body7.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.1

for.inc12.1:                                      ; preds = %for.body7.1.for.inc12.1_crit_edge, %for.cond4.preheader.1.for.inc12.1_crit_edge, %land.lhs.true2.1.for.inc12.1_crit_edge, %land.lhs.true.1.for.inc12.1_crit_edge, %for.inc12.for.inc12.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_vbif_init(ptr nocapture noundef readonly %dpu_kms, ptr noundef %debugfs_root) local_unnamed_addr #0 align 64 {
entry:
  %vbif_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vbif_name) #7
  %0 = call ptr @memset(ptr %vbif_name, i32 255, i32 32)
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %debugfs_root) #7
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 3
  %1 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %catalog, align 8
  %vbif_count74 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %vbif_count74 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vbif_count74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp75.not = icmp eq i32 %4, 0
  br i1 %cmp75.not, label %entry.for.end40_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.body:                                         ; preds = %for.end37.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %23, %for.end37.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %i.076 = phi i32 [ %inc39, %for.end37.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %vbif3 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %vbif3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbif3, align 4
  %id = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vbif_name, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %9)
  %call6 = call ptr @debugfs_create_dir(ptr noundef nonnull %vbif_name, ptr noundef %call) #7
  %features = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %call6, ptr noundef %features) #7
  %xin_halt_timeout = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %xin_halt_timeout) #7
  %default_ot_rd_limit = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 5
  call void @debugfs_create_u32(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %default_ot_rd_limit) #7
  %default_ot_wr_limit = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %default_ot_wr_limit) #7
  %dynamic_ot_rd_tbl = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 8
  %10 = ptrtoint ptr %dynamic_ot_rd_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dynamic_ot_rd_tbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp870.not = icmp eq i32 %11, 0
  br i1 %cmp870.not, label %for.body.for.cond19.preheader_crit_edge, label %for.body9.lr.ph

for.body.for.cond19.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader

for.body9.lr.ph:                                  ; preds = %for.body
  %cfg11 = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 8, i32 1
  br label %for.body9

for.cond19.preheader:                             ; preds = %for.body9.for.cond19.preheader_crit_edge, %for.body.for.cond19.preheader_crit_edge
  %dynamic_ot_wr_tbl = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 9
  %12 = ptrtoint ptr %dynamic_ot_wr_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dynamic_ot_wr_tbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2172.not = icmp eq i32 %13, 0
  br i1 %cmp2172.not, label %for.cond19.preheader.for.end37_crit_edge, label %for.body22.lr.ph

for.cond19.preheader.for.end37_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body22.lr.ph:                                 ; preds = %for.cond19.preheader
  %cfg25 = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 %i.076, i32 9, i32 1
  br label %for.body22

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %j.071 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9.for.body9_crit_edge ]
  %14 = ptrtoint ptr %cfg11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg11, align 4
  %arrayidx12 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %15, i32 %j.071
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vbif_name, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %j.071)
  call void @debugfs_create_u64(ptr noundef nonnull %vbif_name, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %arrayidx12) #7
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vbif_name, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %j.071)
  %ot_limit = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %15, i32 %j.071, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull %vbif_name, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %ot_limit) #7
  %inc = add nuw i32 %j.071, 1
  %16 = ptrtoint ptr %dynamic_ot_rd_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dynamic_ot_rd_tbl, align 4
  %cmp8 = icmp ult i32 %inc, %17
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.cond19.preheader_crit_edge

for.body9.for.cond19.preheader_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond19.preheader

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %j.173 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc36, %for.body22.for.body22_crit_edge ]
  %18 = ptrtoint ptr %cfg25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg25, align 4
  %arrayidx26 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %19, i32 %j.173
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vbif_name, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %j.173)
  call void @debugfs_create_u64(ptr noundef nonnull %vbif_name, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %arrayidx26) #7
  %call32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vbif_name, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %j.173)
  %ot_limit34 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %19, i32 %j.173, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull %vbif_name, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %ot_limit34) #7
  %inc36 = add nuw i32 %j.173, 1
  %20 = ptrtoint ptr %dynamic_ot_wr_tbl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dynamic_ot_wr_tbl, align 4
  %cmp21 = icmp ult i32 %inc36, %21
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.for.end37_crit_edge

for.body22.for.end37_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.end37:                                        ; preds = %for.body22.for.end37_crit_edge, %for.cond19.preheader.for.end37_crit_edge
  %inc39 = add nuw i32 %i.076, 1
  %22 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %catalog, align 8
  %vbif_count = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %vbif_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vbif_count, align 4
  %cmp = icmp ult i32 %inc39, %25
  br i1 %cmp, label %for.end37.for.body_crit_edge, label %for.end37.for.end40_crit_edge

for.end37.for.end40_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.end37.for.body_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end40:                                        ; preds = %for.end37.for.end40_crit_edge, %entry.for.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vbif_name) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_set_ot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_vbif_wait_xin_halt_fail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 166, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 214, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dpu_vbif_set_qos_remap._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dpu_vbif_set_qos_remap._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 228, i32 3}
!10 = !{ptr @dpu_vbif_set_qos_remap._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dpu_vbif_set_qos_remap._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 233, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 241, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 248, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 269, i32 5}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 299, i32 29}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 304, i32 42}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 308, i32 22}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 311, i32 22}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 314, i32 22}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 317, i32 22}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 325, i32 6}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 329, i32 6}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 339, i32 6}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 343, i32 6}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 109, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @_dpu_vbif_get_ot_limit._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @_dpu_vbif_get_ot_limit._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 136, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 90, i32 2}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 74, i32 1}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 27, i32 3}
!59 = !{ptr @_dpu_vbif_wait_for_xin_halt._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @_dpu_vbif_wait_for_xin_halt._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 45, i32 3}
!63 = !{ptr @_dpu_vbif_wait_for_xin_halt._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @_dpu_vbif_wait_for_xin_halt._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c", i32 49, i32 3}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 846, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148495400, i64 2148495405, i64 2148495418, i64 2148495462, i64 2148495496, i64 2148495517}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2157429976}
!84 = !{i64 2157430229}
!85 = !{i64 2149491807}
!86 = !{i64 2149492843}
!87 = !{i64 2158471701}
!88 = !{i64 2158471944}
!89 = !{!"auto-init"}
