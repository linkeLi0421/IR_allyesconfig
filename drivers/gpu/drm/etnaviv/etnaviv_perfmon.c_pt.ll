; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_perfmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_pm_domain_meta = type { i32, ptr, i32 }
%struct.etnaviv_pm_domain = type { [64 x i8], i32, i32, i8, ptr }
%struct.etnaviv_pm_signal = type { [64 x i8], i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_etnaviv_pm_domain = type { i32, i8, i8, i16, [64 x i8] }
%struct.drm_etnaviv_pm_signal = type { i32, i8, i8, i16, i16, [64 x i8] }
%struct.drm_etnaviv_gem_submit_pmr = type { i32, i8, i8, i16, i32, i32, i32 }
%struct.etnaviv_perfmon_request = type { i32, i8, i8, i32, ptr, i32 }

@doms_meta = internal constant { [3 x %struct.etnaviv_pm_domain_meta], [60 x i8] } { [3 x %struct.etnaviv_pm_domain_meta] [%struct.etnaviv_pm_domain_meta { i32 4, ptr @doms_3d, i32 8 }, %struct.etnaviv_pm_domain_meta { i32 512, ptr @doms_2d, i32 1 }, %struct.etnaviv_pm_domain_meta { i32 67108864, ptr @doms_vg, i32 0 }], [60 x i8] zeroinitializer }, align 32
@doms_3d = internal constant { [8 x %struct.etnaviv_pm_domain], [160 x i8] } { [8 x %struct.etnaviv_pm_domain] [%struct.etnaviv_pm_domain { [64 x i8] c"HI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1132, i32 1144, i8 7, ptr @.compoundliteral }, %struct.etnaviv_pm_domain { [64 x i8] c"PE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1108, i32 1136, i8 4, ptr @.compoundliteral.1 }, %struct.etnaviv_pm_domain { [64 x i8] c"SH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1116, i32 1136, i8 9, ptr @.compoundliteral.2 }, %struct.etnaviv_pm_domain { [64 x i8] c"PA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1120, i32 1140, i8 6, ptr @.compoundliteral.3 }, %struct.etnaviv_pm_domain { [64 x i8] c"SE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1124, i32 1140, i8 2, ptr @.compoundliteral.4 }, %struct.etnaviv_pm_domain { [64 x i8] c"RA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1096, i32 1140, i8 7, ptr @.compoundliteral.5 }, %struct.etnaviv_pm_domain { [64 x i8] c"TX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1100, i32 1140, i8 9, ptr @.compoundliteral.6 }, %struct.etnaviv_pm_domain { [64 x i8] c"MC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1128, i32 1144, i8 3, ptr @.compoundliteral.7 }], [160 x i8] zeroinitializer }, align 32
@doms_2d = internal constant { [1 x %struct.etnaviv_pm_domain], [48 x i8] } { [1 x %struct.etnaviv_pm_domain] [%struct.etnaviv_pm_domain { [64 x i8] c"PE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1108, i32 1136, i8 1, ptr @.compoundliteral.8 }], [48 x i8] zeroinitializer }, align 32
@doms_vg = internal constant { [0 x %struct.etnaviv_pm_domain], [32 x i8] } zeroinitializer, align 32
@.compoundliteral = internal constant { [7 x %struct.etnaviv_pm_signal], [104 x i8] } { [7 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_BYTES8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64, ptr @pipe_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_WRITE_BYTES8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 68, ptr @pipe_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @hi_total_cycle_read }, %struct.etnaviv_pm_signal { [64 x i8] c"IDLE_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @hi_total_idle_cycle_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_READ_REQUEST_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_WRITE_REQUEST_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"AXI_CYCLES_WRITE_DATA_STALLED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512, ptr @perf_reg_read }], [104 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { [4 x %struct.etnaviv_pm_signal], [64 x i8] } { [4 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_KILLED_BY_COLOR_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_KILLED_BY_DEPTH_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 65536, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_DRAWN_BY_COLOR_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 131072, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIXEL_COUNT_DRAWN_BY_DEPTH_PIPE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 196608, ptr @pipe_perf_reg_read }], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { [9 x %struct.etnaviv_pm_signal], [184 x i8] } { [9 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"SHADER_CYCLES\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 67108864, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PS_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 117440512, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"RENDERED_PIXEL_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 134217728, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VS_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150994944, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"RENDERED_VERTICE_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 167772160, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VTX_BRANCH_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184549376, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VTX_TEXLD_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 201326592, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PXL_BRANCH_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 218103808, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PXL_TEXLD_INST_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 234881024, ptr @pipe_perf_reg_read }], [184 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [6 x %struct.etnaviv_pm_signal], [112 x i8] } { [6 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"INPUT_VTX_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"INPUT_PRIM_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"OUTPUT_PRIM_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"DEPTH_CLIPPED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TRIVIAL_REJECTED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, ptr @pipe_perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, ptr @pipe_perf_reg_read }], [112 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { [2 x %struct.etnaviv_pm_signal], [48 x i8] } { [2 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"CULLED_TRIANGLE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_LINES_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256, ptr @perf_reg_read }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { [7 x %struct.etnaviv_pm_signal], [104 x i8] } { [7 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"VALID_PIXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_QUAD_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 65536, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"VALID_QUAD_COUNT_AFTER_EARLY_Z\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 131072, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_PRIMITIVE_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 196608, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PIPE_CACHE_MISS_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 589824, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"PREFETCH_CACHE_MISS_COUNTER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 655360, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CULLED_QUAD_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 720896, ptr @perf_reg_read }], [104 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { [9 x %struct.etnaviv_pm_signal], [184 x i8] } { [9 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_BILINEAR_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_TRILINEAR_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16777216, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_DISCARDED_TEXTURE_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33554432, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_TEXTURE_REQUESTS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50331648, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"MEM_READ_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 83886080, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"MEM_READ_IN_8B_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100663296, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_MISS_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 117440512, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_HIT_TEXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 134217728, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"CACHE_MISS_TEXEL_COUNT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150994944, ptr @perf_reg_read }], [184 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { [3 x %struct.etnaviv_pm_signal], [40 x i8] } { [3 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_REQ_8B_FROM_PIPELINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_READ_REQ_8B_FROM_IP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, ptr @perf_reg_read }, %struct.etnaviv_pm_signal { [64 x i8] c"TOTAL_WRITE_REQ_8B_FROM_PIPELINE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, ptr @perf_reg_read }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { [1 x %struct.etnaviv_pm_signal], [56 x i8] } { [1 x %struct.etnaviv_pm_signal] [%struct.etnaviv_pm_signal { [64 x i8] c"PIXELS_RENDERED_2D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 720896, ptr @pipe_perf_reg_read }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2176, i64 8192, i64 8448]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 2176, i64 8192, i64 8448]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"doms_meta\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 444, i32 44 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"doms_3d\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 123, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"doms_2d\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 425, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"doms_vg\00", align 1
@___asan_gen_.20 = private constant [45 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 441, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @doms_meta, ptr @doms_3d, ptr @doms_2d, ptr @doms_vg, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doms_meta to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doms_3d to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doms_2d to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @doms_vg to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_query_dom(ptr nocapture noundef readonly %gpu, ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features.i, align 4
  %and.i = shl i32 %1, 1
  %2 = and i32 %and.i, 8
  %and.1.i = lshr i32 %1, 9
  %3 = and i32 %and.1.i, 1
  %4 = or i32 %3, %2
  %iter = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %domain, i32 0, i32 1
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iter, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i35 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i = icmp eq i32 %and.i35, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp1.not.i = icmp ult i8 %6, 8
  %add.ptr.i = getelementptr %struct.etnaviv_pm_domain, ptr @doms_3d, i32 %conv
  %spec.select.i = select i1 %cmp1.not.i, ptr %add.ptr.i, ptr null
  %domain.1.i = select i1 %tobool.not.i, ptr null, ptr %spec.select.i
  %7 = or i1 %tobool.not.i, %cmp1.not.i
  %offset.1.neg.i = select i1 %7, i32 0, i32 -8
  %and.1.i36 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i36)
  %tobool.not.1.i = icmp eq i32 %and.1.i36, 0
  %sub.1.i = sub nsw i32 0, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.neg.i, i32 %sub.1.i)
  %cmp1.not.1.i = icmp eq i32 %offset.1.neg.i, %sub.1.i
  %spec.select22.i = select i1 %cmp1.not.1.i, ptr @doms_2d, ptr %domain.1.i
  %domain.1.1.i = select i1 %tobool.not.1.i, ptr %domain.1.i, ptr %spec.select22.i
  %tobool.not = icmp eq ptr %domain.1.1.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %domain, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %id, align 1
  %nr_signals = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain.1.1.i, i32 0, i32 3
  %9 = ptrtoint ptr %nr_signals to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_signals, align 4
  %conv8 = zext i8 %10 to i16
  %nr_signals9 = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %domain, i32 0, i32 3
  %11 = ptrtoint ptr %nr_signals9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv8, ptr %nr_signals9, align 2
  %name = getelementptr inbounds %struct.drm_etnaviv_pm_domain, ptr %domain, i32 0, i32 4
  %call12 = tail call ptr @strncpy(ptr noundef %name, ptr noundef nonnull %domain.1.1.i, i32 noundef 64)
  %inc = add i8 %6, 1
  %conv15 = zext i8 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv15)
  %cmp16 = icmp eq i32 %4, %conv15
  %spec.select = select i1 %cmp16, i8 -1, i8 %inc
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %iter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_query_sig(ptr nocapture noundef readonly %gpu, ptr noundef %signal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features.i, align 4
  %and.i = shl i32 %1, 1
  %2 = and i32 %and.i, 8
  %and.1.i = lshr i32 %1, 9
  %3 = and i32 %and.1.i, 1
  %4 = or i32 %3, %2
  %domain = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %signal, i32 0, i32 1
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %domain, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i45 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i = icmp eq i32 %and.i45, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp1.not.i = icmp ult i8 %6, 8
  %add.ptr.i = getelementptr %struct.etnaviv_pm_domain, ptr @doms_3d, i32 %conv
  %spec.select.i = select i1 %cmp1.not.i, ptr %add.ptr.i, ptr null
  %domain.1.i = select i1 %tobool.not.i, ptr null, ptr %spec.select.i
  %7 = or i1 %tobool.not.i, %cmp1.not.i
  %offset.1.neg.i = select i1 %7, i32 0, i32 -8
  %and.1.i46 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i46)
  %tobool.not.1.i = icmp eq i32 %and.1.i46, 0
  %sub.1.i = sub nsw i32 0, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.neg.i, i32 %sub.1.i)
  %cmp1.not.1.i = icmp eq i32 %offset.1.neg.i, %sub.1.i
  %spec.select22.i = select i1 %cmp1.not.1.i, ptr @doms_2d, ptr %domain.1.i
  %domain.1.1.i = select i1 %tobool.not.1.i, ptr %domain.1.i, ptr %spec.select22.i
  %tobool.not = icmp eq ptr %domain.1.1.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %iter = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %signal, i32 0, i32 3
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %iter, align 2
  %nr_signals = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain.1.1.i, i32 0, i32 3
  %10 = ptrtoint ptr %nr_signals to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_signals, align 4
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp9.not = icmp ult i16 %9, %12
  br i1 %cmp9.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = zext i16 %9 to i32
  %signal13 = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain.1.1.i, i32 0, i32 4
  %13 = ptrtoint ptr %signal13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal13, align 4
  %arrayidx = getelementptr %struct.etnaviv_pm_signal, ptr %14, i32 %conv7
  %id = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %signal, i32 0, i32 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %9, ptr %id, align 4
  %name = getelementptr inbounds %struct.drm_etnaviv_pm_signal, ptr %signal, i32 0, i32 5
  %call18 = tail call ptr @strncpy(ptr noundef %name, ptr noundef %arrayidx, i32 noundef 64)
  %inc = add nuw i16 %9, 1
  %16 = ptrtoint ptr %iter to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %inc, ptr %iter, align 2
  %17 = ptrtoint ptr %nr_signals to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_signals, align 4
  %19 = zext i8 %18 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %19)
  %cmp24 = icmp eq i16 %inc, %19
  %spec.store.select = select i1 %cmp24, i16 -1, i16 %inc
  %20 = ptrtoint ptr %iter to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %spec.store.select, ptr %iter, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_pm_req_validate(ptr nocapture noundef readonly %r, i32 noundef %exec_state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %domain, align 4
  %conv = zext i8 %1 to i32
  %nr_domains = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %exec_state, i32 2
  %2 = ptrtoint ptr %nr_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %domains = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %exec_state, i32 1
  %4 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domains, align 4
  %signal = getelementptr inbounds %struct.drm_etnaviv_gem_submit_pmr, ptr %r, i32 0, i32 3
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %signal, align 2
  %nr_signals = getelementptr %struct.etnaviv_pm_domain, ptr %5, i32 %conv, i32 3
  %8 = ptrtoint ptr %nr_signals to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_signals, align 4
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp6.not = icmp ult i16 %7, %10
  %. = select i1 %cmp6.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_perfmon_process(ptr noundef %gpu, ptr nocapture noundef readonly %pmr, i32 noundef %exec_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_vma = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %pmr, i32 0, i32 4
  %0 = ptrtoint ptr %bo_vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo_vma, align 4
  %domains = getelementptr [3 x %struct.etnaviv_pm_domain_meta], ptr @doms_meta, i32 0, i32 %exec_state, i32 1
  %2 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domains, align 4
  %domain = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %pmr, i32 0, i32 1
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %domain, align 4
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr %struct.etnaviv_pm_domain, ptr %3, i32 %conv
  %signal = getelementptr %struct.etnaviv_pm_domain, ptr %3, i32 %conv, i32 4
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 4
  %signal1 = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %pmr, i32 0, i32 2
  %8 = ptrtoint ptr %signal1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal1, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx2 = getelementptr %struct.etnaviv_pm_signal, ptr %7, i32 %idxprom
  %sample = getelementptr %struct.etnaviv_pm_signal, ptr %7, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sample, align 4
  %call = tail call i32 %11(ptr noundef %gpu, ptr noundef %add.ptr, ptr noundef %arrayidx2) #6
  %offset = getelementptr inbounds %struct.etnaviv_perfmon_request, ptr %pmr, i32 0, i32 5
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add.ptr3 = getelementptr i32, ptr %1, i32 %13
  %14 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %add.ptr3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_reg_read(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %signal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %pixel_pipes = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %3 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_pipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  %5 = and i32 %2, -61441
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %signal, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %value.014 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %shl.i = shl i32 %i.015, 20
  %and1.i = and i32 %shl.i, 15728640
  %or.i = or i32 %and1.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !20
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !17
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %add = add i32 %15, %value.014
  %inc = add nuw i32 %i.015, 1
  %16 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_pipes, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %value.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %5) #6, !srcloc !20
  ret i32 %value.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi_total_cycle_read(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readnone %domain, ptr nocapture noundef readnone %signal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identity, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 2176, label %entry.if.then_crit_edge
    i32 8192, label %entry.if.then_crit_edge11
    i32 8448, label %entry.if.then_crit_edge12
  ]

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge11, %entry.if.then_crit_edge12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ 1080, %if.then ], [ 120, %entry.if.end_crit_edge ]
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %reg.0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi_total_idle_cycle_read(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readnone %domain, ptr nocapture noundef readnone %signal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %identity = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identity, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 2176, label %entry.if.then_crit_edge
    i32 8192, label %entry.if.then_crit_edge11
    i32 8448, label %entry.if.then_crit_edge12
  ]

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge11, %entry.if.then_crit_edge12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ 120, %if.then ], [ 124, %entry.if.end_crit_edge ]
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %reg.0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_reg_read(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %signal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %profile_config = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %profile_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profile_config, align 4
  %data = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %signal, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !20
  %profile_read = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain, i32 0, i32 1
  %7 = ptrtoint ptr %profile_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profile_read, align 4
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6, !srcloc !17
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_perf_reg_read(ptr nocapture noundef readonly %gpu, ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %signal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 28
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %pixel_pipes = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 24
  %3 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_pipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  %5 = and i32 %2, -61441
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %profile_config.i = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.etnaviv_pm_signal, ptr %signal, i32 0, i32 1
  %profile_read.i = getelementptr inbounds %struct.etnaviv_pm_domain, ptr %domain, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %value.014 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %shl.i = shl i32 %i.015, 20
  %and1.i = and i32 %shl.i, 15728640
  %or.i = or i32 %and1.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !20
  %10 = ptrtoint ptr %profile_config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %profile_config.i, align 4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #6, !srcloc !20
  %17 = ptrtoint ptr %profile_read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %profile_read.i, align 4
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #6, !srcloc !17
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  %add = add i32 %22, %value.014
  %inc = add nuw i32 %i.015, 1
  %23 = ptrtoint ptr %pixel_pipes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixel_pipes, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %value.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %5) #6, !srcloc !20
  ret i32 %value.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @doms_meta, !1, !"doms_meta", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c", i32 444, i32 44}
!2 = !{ptr @doms_3d, !3, !"doms_3d", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c", i32 123, i32 39}
!4 = !{ptr @doms_2d, !5, !"doms_2d", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c", i32 425, i32 39}
!6 = !{ptr @doms_vg, !7, !"doms_vg", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_perfmon.c", i32 441, i32 39}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4697763}
!18 = !{i64 2156674390}
!19 = !{i64 2156673567}
!20 = !{i64 4697345}
