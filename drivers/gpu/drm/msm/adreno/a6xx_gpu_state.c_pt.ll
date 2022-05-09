; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.a6xx_registers = type { ptr, i32, i32, i32 }
%struct.a6xx_indexed_registers = type { ptr, i32, i32, i32 }
%struct.a6xx_shader_block = type { ptr, i32, i32 }
%struct.a6xx_cluster = type { i32, ptr, ptr, i32, i32, i32 }
%struct.a6xx_dbgahb_cluster = type { ptr, i32, i32, ptr, i32 }
%struct.a6xx_debugbus_block = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.a6xx_crashdumper = type { ptr, ptr, i64 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.106 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.82, ptr }
%union.anon.82 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.a6xx_gpu_state = type { %struct.msm_gpu_state, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, [2 x [8 x i32]], %struct.list_head, i8 }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timespec64 = type { i64, i32 }
%struct.anon = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.a6xx_state_memobj = type { %struct.list_head, [0 x i64] }
%struct.a6xx_gpu_state_obj = type { ptr, ptr }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }

@snapshot_debugbus = external dso_local local_unnamed_addr global i8, align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpu-initialized: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmu-log:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    iova: 0x%016llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    size: %zu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmu-hfi:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    queue-history[%u]:\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmu-debug:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"registers:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"registers-gmu:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"indexed-registers:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shader-blocks:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clusters:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debugbus:\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@a6xx_gmu_reglist = internal constant { [3 x %struct.a6xx_registers], [48 x i8] } { [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_gmu_cx_registers, i32 112, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_gmu_cx_rscc_registers, i32 22, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_gmu_gx_registers, i32 36, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@a6xx_gmu_cx_registers = internal constant { [112 x i32], [96 x i8] } { [112 x i32] [i32 19456, i32 19463, i32 19472, i32 19474, i32 19712, i32 19712, i32 19719, i32 19722, i32 20480, i32 20484, i32 20487, i32 20488, i32 20491, i32 20492, i32 20495, i32 20508, i32 20516, i32 20522, i32 20525, i32 20528, i32 20544, i32 20563, i32 20615, i32 20617, i32 20640, i32 20642, i32 20644, i32 20655, i32 20672, i32 20675, i32 20688, i32 20688, i32 20708, i32 20708, i32 20712, i32 20716, i32 20736, i32 20739, i32 20800, i32 20800, i32 20802, i32 20804, i32 20812, i32 20813, i32 20815, i32 20817, i32 20820, i32 20820, i32 20823, i32 20824, i32 20829, i32 20829, i32 20834, i32 20834, i32 20836, i32 20837, i32 20864, i32 20870, i32 20880, i32 20894, i32 20928, i32 20928, i32 20933, i32 20940, i32 20960, i32 20962, i32 20976, i32 20976, i32 20992, i32 20993, i32 37632, i32 37654, i32 37888, i32 37888, i32 38912, i32 38930, i32 38976, i32 38994, i32 39936, i32 39940, i32 39943, i32 39947, i32 39957, i32 39964, i32 39966, i32 39981, i32 39996, i32 39997, i32 39999, i32 40000, i32 40002, i32 40009, i32 40024, i32 40026, i32 40256, i32 40286, i32 40960, i32 40962, i32 41984, i32 41986, i32 44032, i32 44034, i32 45056, i32 45058, i32 46080, i32 46082, i32 47104, i32 47106, i32 48128, i32 48150, i32 48160, i32 48167], [96 x i8] zeroinitializer }, align 32
@a6xx_gmu_cx_rscc_registers = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 140, i32 140, i32 257, i32 258, i32 832, i32 834, i32 836, i32 839, i32 844, i32 903, i32 1004, i32 1007, i32 1012, i32 1071, i32 1172, i32 1175, i32 1180, i32 1239, i32 1340, i32 1343, i32 1348, i32 1407], [40 x i8] zeroinitializer }, align 32
@a6xx_gmu_gx_registers = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 16, i32 19, i32 22, i32 22, i32 24, i32 27, i32 30, i32 30, i32 32, i32 35, i32 38, i32 38, i32 40, i32 43, i32 46, i32 46, i32 48, i32 51, i32 54, i32 54, i32 56, i32 59, i32 62, i32 62, i32 64, i32 67, i32 70, i32 70, i32 128, i32 132, i32 256, i32 299, i32 320, i32 320], [48 x i8] zeroinitializer }, align 32
@a6xx_indexed_reglist = internal constant { [4 x %struct.a6xx_indexed_registers], [32 x i8] } { [4 x %struct.a6xx_indexed_registers] [%struct.a6xx_indexed_registers { ptr @.str.15, i32 2312, i32 2313, i32 51 }, %struct.a6xx_indexed_registers { ptr @.str.16, i32 2314, i32 2315, i32 256 }, %struct.a6xx_indexed_registers { ptr @.str.17, i32 2320, i32 2321, i32 24576 }, %struct.a6xx_indexed_registers { ptr @.str.18, i32 2316, i32 2317, i32 1024 }], [32 x i8] zeroinitializer }, align 32
@a6xx_cp_mempool_indexed = internal constant { %struct.a6xx_indexed_registers, [16 x i8] } { %struct.a6xx_indexed_registers { ptr @.str.19, i32 2318, i32 2319, i32 8288 }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CP_SQE_STAT\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CP_DRAW_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CP_UCODE_DBG_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CP_ROQ\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CP_MEMPOOL\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crashdump\00", [22 x i8] zeroinitializer }, align 32
@a6xx_ahb_reglist = internal constant { [1 x %struct.a6xx_registers], [16 x i8] } { [1 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_ahb_registers, i32 4, i32 0, i32 0 }], [16 x i8] zeroinitializer }, align 32
@a6xx_gbif_reglist = internal constant { %struct.a6xx_registers, [16 x i8] } { %struct.a6xx_registers { ptr @a6xx_gbif_registers, i32 8, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@a6xx_vbif_reglist = internal constant { %struct.a6xx_registers, [16 x i8] } { %struct.a6xx_registers { ptr @a6xx_vbif_registers, i32 84, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@a6xx_reglist = internal constant { [3 x %struct.a6xx_registers], [48 x i8] } { [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_registers, i32 156, i32 0, i32 0 }, %struct.a6xx_registers { ptr @a6xx_rb_rac_registers, i32 14, i32 36413, i32 0 }, %struct.a6xx_registers { ptr @a6xx_rb_rbp_registers, i32 12, i32 36413, i32 9 }], [48 x i8] zeroinitializer }, align 32
@a6xx_hlsq_reglist = internal constant { [3 x %struct.a6xx_registers], [48 x i8] } { [3 x %struct.a6xx_registers] [%struct.a6xx_registers { ptr @a6xx_hlsq_registers, i32 10, i32 194560, i32 64 }, %struct.a6xx_registers { ptr @a6xx_sp_registers, i32 14, i32 178176, i32 32 }, %struct.a6xx_registers { ptr @a6xx_tp_registers, i32 8, i32 186368, i32 0 }], [48 x i8] zeroinitializer }, align 32
@a6xx_ahb_registers = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 528, i32 531, i32 2085, i32 2085], [16 x i8] zeroinitializer }, align 32
@a6xx_gbif_registers = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 15360, i32 15371, i32 15424, i32 15431, i32 15552, i32 15569, i32 3642, i32 3642], [32 x i8] zeroinitializer }, align 32
@a6xx_vbif_registers = internal constant { [84 x i32], [80 x i8] } { [84 x i32] [i32 12288, i32 12295, i32 12300, i32 12308, i32 12312, i32 12333, i32 12336, i32 12337, i32 12340, i32 12342, i32 12348, i32 12349, i32 12352, i32 12352, i32 12354, i32 12354, i32 12361, i32 12361, i32 12376, i32 12376, i32 12378, i32 12385, i32 12388, i32 12392, i32 12396, i32 12397, i32 12416, i32 12424, i32 12427, i32 12428, i32 12432, i32 12436, i32 12440, i32 12440, i32 12444, i32 12444, i32 12480, i32 12480, i32 12488, i32 12488, i32 12496, i32 12496, i32 12504, i32 12504, i32 12512, i32 12512, i32 12544, i32 12544, i32 12552, i32 12552, i32 12560, i32 12560, i32 12568, i32 12568, i32 12576, i32 12576, i32 12580, i32 12581, i32 12585, i32 12585, i32 12593, i32 12593, i32 12628, i32 12628, i32 12630, i32 12630, i32 12632, i32 12632, i32 12634, i32 12634, i32 12636, i32 12636, i32 12638, i32 12638, i32 12640, i32 12640, i32 12642, i32 12642, i32 13324, i32 13324, i32 13328, i32 13328, i32 14336, i32 14337], [80 x i8] zeroinitializer }, align 32
@a6xx_registers = internal constant { [156 x i32], [144 x i8] } { [156 x i32] [i32 0, i32 2, i32 16, i32 16, i32 18, i32 18, i32 24, i32 27, i32 30, i32 50, i32 56, i32 60, i32 66, i32 66, i32 68, i32 68, i32 71, i32 71, i32 86, i32 86, i32 173, i32 174, i32 176, i32 251, i32 256, i32 285, i32 512, i32 525, i32 536, i32 573, i32 1024, i32 1273, i32 1280, i32 1280, i32 1285, i32 1291, i32 1294, i32 1297, i32 1331, i32 1331, i32 1344, i32 1365, i32 2048, i32 2056, i32 2064, i32 2067, i32 2080, i32 2081, i32 2083, i32 2084, i32 2086, i32 2087, i32 2096, i32 2099, i32 2112, i32 2115, i32 2127, i32 2159, i32 2176, i32 2186, i32 2208, i32 2219, i32 2240, i32 2244, i32 2256, i32 2269, i32 2288, i32 2291, i32 2304, i32 2307, i32 2312, i32 2321, i32 2344, i32 2366, i32 2370, i32 2381, i32 2432, i32 2436, i32 2445, i32 2454, i32 2456, i32 2462, i32 2464, i32 2470, i32 2472, i32 2478, i32 2480, i32 2481, i32 2498, i32 2504, i32 2560, i32 2563, i32 3072, i32 3076, i32 3078, i32 3078, i32 3088, i32 3289, i32 3584, i32 3598, i32 3600, i32 3603, i32 3607, i32 3609, i32 3612, i32 3627, i32 3632, i32 3634, i32 3640, i32 3641, i32 34304, i32 34305, i32 34320, i32 34331, i32 34336, i32 34336, i32 34344, i32 34347, i32 34352, i32 34359, i32 38400, i32 38404, i32 38436, i32 38455, i32 40448, i32 40449, i32 40451, i32 40462, i32 40465, i32 40470, i32 40473, i32 40473, i32 40476, i32 40476, i32 40480, i32 40483, i32 40496, i32 40497, i32 40500, i32 40500, i32 40560, i32 40562, i32 40568, i32 40569, i32 40576, i32 40959, i32 42496, i32 42497, i32 42499, i32 42499, i32 42506, i32 42506, i32 42512, i32 42519, i32 42544, i32 42544], [144 x i8] zeroinitializer }, align 32
@a6xx_rb_rac_registers = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 36356, i32 36357, i32 36359, i32 36360, i32 36368, i32 36380, i32 36384, i32 36389, i32 36392, i32 36392, i32 36396, i32 36399, i32 36432, i32 36434], [40 x i8] zeroinitializer }, align 32
@a6xx_rb_rbp_registers = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 36353, i32 36353, i32 36364, i32 36364, i32 36411, i32 36414, i32 36416, i32 36419, i32 36435, i32 36447, i32 36464, i32 36471], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c\00", [52 x i8] zeroinitializer }, align 32
@a6xx_hlsq_registers = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 48640, i32 48641, i32 48644, i32 48645, i32 48648, i32 48649, i32 48656, i32 48661, i32 48672, i32 48675], [56 x i8] zeroinitializer }, align 32
@a6xx_sp_registers = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 44544, i32 44548, i32 44556, i32 44556, i32 44559, i32 44587, i32 44592, i32 44594, i32 44597, i32 44597, i32 44602, i32 44607, i32 44624, i32 44626], [40 x i8] zeroinitializer }, align 32
@a6xx_tp_registers = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 46592, i32 46593, i32 46596, i32 46597, i32 46608, i32 46619, i32 46624, i32 46627], [32 x i8] zeroinitializer }, align 32
@a6xx_shader_blocks = internal constant { [42 x %struct.a6xx_shader_block], [104 x i8] } { [42 x %struct.a6xx_shader_block] [%struct.a6xx_shader_block { ptr @.str.22, i32 9, i32 512 }, %struct.a6xx_shader_block { ptr @.str.23, i32 10, i32 128 }, %struct.a6xx_shader_block { ptr @.str.24, i32 11, i32 960 }, %struct.a6xx_shader_block { ptr @.str.25, i32 25, i32 512 }, %struct.a6xx_shader_block { ptr @.str.26, i32 26, i32 128 }, %struct.a6xx_shader_block { ptr @.str.27, i32 27, i32 960 }, %struct.a6xx_shader_block { ptr @.str.28, i32 41, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.29, i32 42, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.30, i32 43, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.31, i32 44, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.32, i32 45, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.33, i32 46, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.34, i32 47, i32 512 }, %struct.a6xx_shader_block { ptr @.str.35, i32 48, i32 8192 }, %struct.a6xx_shader_block { ptr @.str.36, i32 49, i32 640 }, %struct.a6xx_shader_block { ptr @.str.37, i32 50, i32 128 }, %struct.a6xx_shader_block { ptr @.str.38, i32 51, i32 128 }, %struct.a6xx_shader_block { ptr @.str.39, i32 52, i32 128 }, %struct.a6xx_shader_block { ptr @.str.40, i32 53, i32 128 }, %struct.a6xx_shader_block { ptr @.str.41, i32 54, i32 128 }, %struct.a6xx_shader_block { ptr @.str.42, i32 55, i32 63 }, %struct.a6xx_shader_block { ptr @.str.43, i32 73, i32 448 }, %struct.a6xx_shader_block { ptr @.str.44, i32 74, i32 640 }, %struct.a6xx_shader_block { ptr @.str.45, i32 75, i32 64 }, %struct.a6xx_shader_block { ptr @.str.46, i32 76, i32 64 }, %struct.a6xx_shader_block { ptr @.str.47, i32 77, i32 4 }, %struct.a6xx_shader_block { ptr @.str.48, i32 78, i32 4 }, %struct.a6xx_shader_block { ptr @.str.49, i32 80, i32 448 }, %struct.a6xx_shader_block { ptr @.str.50, i32 81, i32 1408 }, %struct.a6xx_shader_block { ptr @.str.51, i32 82, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.52, i32 83, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.53, i32 84, i32 2048 }, %struct.a6xx_shader_block { ptr @.str.54, i32 85, i32 8 }, %struct.a6xx_shader_block { ptr @.str.55, i32 86, i32 4 }, %struct.a6xx_shader_block { ptr @.str.56, i32 87, i32 128 }, %struct.a6xx_shader_block { ptr @.str.57, i32 88, i32 12 }, %struct.a6xx_shader_block { ptr @.str.58, i32 89, i32 16 }, %struct.a6xx_shader_block { ptr @.str.59, i32 90, i32 40 }, %struct.a6xx_shader_block { ptr @.str.60, i32 91, i32 20 }, %struct.a6xx_shader_block { ptr @.str.61, i32 96, i32 64 }, %struct.a6xx_shader_block { ptr @.str.62, i32 97, i32 64 }, %struct.a6xx_shader_block { ptr @.str.63, i32 98, i32 64 }], [104 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_TP0_TMO_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_TP0_SMO_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"A6XX_TP0_MIPMAP_BASE_DATA\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_TP1_TMO_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_TP1_SMO_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"A6XX_TP1_MIPMAP_BASE_DATA\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_INST_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_0_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_1_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_2_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_3_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_4_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_SP_LB_5_DATA\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"A6XX_SP_CB_BINDLESS_DATA\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_SP_CB_LEGACY_DATA\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_SP_UAV_DATA\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_SP_INST_TAG\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_SP_CB_BINDLESS_TAG\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"A6XX_SP_TMO_UMO_TAG\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_SP_SMO_TAG\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_SP_STATE_DATA\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_HLSQ_CHUNK_CVS_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_HLSQ_CHUNK_CPS_RAM\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A6XX_HLSQ_CHUNK_CVS_RAM_TAG\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A6XX_HLSQ_CHUNK_CPS_RAM_TAG\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"A6XX_HLSQ_ICB_CVS_CB_BASE_TAG\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"A6XX_HLSQ_ICB_CPS_CB_BASE_TAG\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_HLSQ_CVS_MISC_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_HLSQ_CPS_MISC_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_HLSQ_INST_RAM\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A6XX_HLSQ_GFX_CVS_CONST_RAM\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A6XX_HLSQ_GFX_CPS_CONST_RAM\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"A6XX_HLSQ_CVS_MISC_RAM_TAG\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"A6XX_HLSQ_CPS_MISC_RAM_TAG\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_HLSQ_INST_RAM_TAG\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"A6XX_HLSQ_GFX_CVS_CONST_RAM_TAG\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"A6XX_HLSQ_GFX_CPS_CONST_RAM_TAG\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_HLSQ_PWR_REST_RAM\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"A6XX_HLSQ_PWR_REST_TAG\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_HLSQ_DATAPATH_META\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_HLSQ_FRONTEND_META\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"A6XX_HLSQ_INDIRECT_META\00", [40 x i8] zeroinitializer }, align 32
@a6xx_clusters = internal constant { [6 x %struct.a6xx_cluster], [48 x i8] } { [6 x %struct.a6xx_cluster] [%struct.a6xx_cluster { i32 3, ptr @.str.64, ptr @a6xx_gras_cluster, i32 18, i32 0, i32 0 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster_rac, i32 32, i32 36413, i32 0 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster_rbp, i32 14, i32 36413, i32 9 }, %struct.a6xx_cluster { i32 5, ptr @.str.65, ptr @a6xx_ps_cluster, i32 6, i32 0, i32 0 }, %struct.a6xx_cluster { i32 0, ptr @.str.66, ptr @a6xx_fe_cluster, i32 12, i32 0, i32 0 }, %struct.a6xx_cluster { i32 2, ptr @.str.67, ptr @a6xx_pc_vs_cluster, i32 8, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLUSTER_GRAS\00", [19 x i8] zeroinitializer }, align 32
@a6xx_gras_cluster = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 32768, i32 32774, i32 32784, i32 32914, i32 32916, i32 32925, i32 32928, i32 32934, i32 32943, i32 33009, i32 33024, i32 33031, i32 33033, i32 33033, i32 33040, i32 33040, i32 33792, i32 33803], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLUSTER_PS\00", [21 x i8] zeroinitializer }, align 32
@a6xx_ps_cluster_rac = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 34816, i32 34822, i32 34825, i32 34833, i32 34840, i32 34846, i32 34848, i32 34917, i32 34928, i32 34937, i32 34944, i32 34953, i32 34960, i32 34961, i32 34968, i32 34968, i32 35008, i32 35009, i32 35024, i32 35043, i32 35072, i32 35084, i32 35087, i32 35098, i32 35840, i32 35841, i32 35848, i32 35856, i32 35863, i32 35871, i32 35878, i32 35891], [32 x i8] zeroinitializer }, align 32
@a6xx_ps_cluster_rbp = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 35056, i32 35059, i32 35085, i32 35086, i32 35111, i32 35112, i32 35824, i32 35825, i32 35842, i32 35847, i32 35857, i32 35862, i32 35872, i32 35877], [40 x i8] zeroinitializer }, align 32
@a6xx_ps_cluster = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 37376, i32 37398, i32 37400, i32 37430, i32 37632, i32 37638], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLUSTER_FE\00", [21 x i8] zeroinitializer }, align 32
@a6xx_fe_cluster = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 37632, i32 37638, i32 38912, i32 38918, i32 39680, i32 39687, i32 40960, i32 40969, i32 40974, i32 41199, i32 41208, i32 41208], [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLUSTER_PC_VS\00", [18 x i8] zeroinitializer }, align 32
@a6xx_pc_vs_cluster = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 37120, i32 37128, i32 37632, i32 37638, i32 39296, i32 39297, i32 39680, i32 39687], [32 x i8] zeroinitializer }, align 32
@a6xx_dbgahb_clusters = internal constant { [15 x %struct.a6xx_dbgahb_cluster], [84 x i8] } { [15 x %struct.a6xx_dbgahb_cluster] [%struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 65, i32 188416, ptr @a6xx_sp_vs_hlsq_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 33, i32 172032, ptr @a6xx_sp_vs_sp_cluster, i32 12 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 65, i32 188416, ptr @a6xx_hlsq_duplicate_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 69, i32 192512, ptr @a6xx_hlsq_2d_duplicate_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 33, i32 172032, ptr @a6xx_sp_duplicate_cluster, i32 8 }, %struct.a6xx_dbgahb_cluster { ptr @.str.68, i32 1, i32 180224, ptr @a6xx_tp_duplicate_cluster, i32 6 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 66, i32 188416, ptr @a6xx_sp_ps_hlsq_cluster, i32 10 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 70, i32 192512, ptr @a6xx_sp_ps_hlsq_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 34, i32 172032, ptr @a6xx_sp_ps_sp_cluster, i32 12 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 38, i32 176128, ptr @a6xx_sp_ps_sp_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 2, i32 180224, ptr @a6xx_sp_ps_tp_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 6, i32 184320, ptr @a6xx_sp_ps_tp_2d_cluster, i32 2 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 66, i32 188416, ptr @a6xx_hlsq_duplicate_cluster, i32 4 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 34, i32 172032, ptr @a6xx_sp_duplicate_cluster, i32 8 }, %struct.a6xx_dbgahb_cluster { ptr @.str.69, i32 2, i32 180224, ptr @a6xx_tp_duplicate_cluster, i32 6 }], [84 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLUSTER_SP_VS\00", [18 x i8] zeroinitializer }, align 32
@a6xx_sp_vs_hlsq_cluster = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 47104, i32 47107, i32 47136, i32 47138], [16 x i8] zeroinitializer }, align 32
@a6xx_sp_vs_sp_cluster = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 43008, i32 43044, i32 43056, i32 43068, i32 43072, i32 43108, i32 43120, i32 43157, i32 43168, i32 43183, i32 43200, i32 43203], [48 x i8] zeroinitializer }, align 32
@a6xx_hlsq_duplicate_cluster = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 47888, i32 47889, i32 47904, i32 47913], [16 x i8] zeroinitializer }, align 32
@a6xx_hlsq_2d_duplicate_cluster = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 48512, i32 48512], [24 x i8] zeroinitializer }, align 32
@a6xx_sp_duplicate_cluster = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 43776, i32 43776, i32 43780, i32 43781, i32 43792, i32 43803, i32 43808, i32 43808], [32 x i8] zeroinitializer }, align 32
@a6xx_tp_duplicate_cluster = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 45824, i32 45831, i32 45833, i32 45833, i32 45952, i32 45954], [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLUSTER_SP_PS\00", [18 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_hlsq_cluster = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 47488, i32 47488, i32 47490, i32 47495, i32 47504, i32 47515, i32 47520, i32 47522, i32 47552, i32 47561], [56 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_hlsq_2d_cluster = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 48512, i32 48512], [24 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_sp_cluster = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 43392, i32 43432, i32 43440, i32 43452, i32 43472, i32 43475, i32 43488, i32 43507, i32 43520, i32 43520, i32 43568, i32 43569], [48 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_sp_2d_cluster = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 44224, i32 44224], [24 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_tp_cluster = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 45440, i32 45443, i32 45456, i32 45457], [16 x i8] zeroinitializer }, align 32
@a6xx_sp_ps_tp_2d_cluster = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 46272, i32 46289], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx_dbgc\00", [24 x i8] zeroinitializer }, align 32
@a6xx_debugbus_blocks = internal constant { [39 x %struct.a6xx_debugbus_block], [108 x i8] } { [39 x %struct.a6xx_debugbus_block] [%struct.a6xx_debugbus_block { ptr @.str.71, i32 1, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.72, i32 2, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.73, i32 4, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.74, i32 5, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.75, i32 6, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.76, i32 7, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.77, i32 8, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.78, i32 9, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.79, i32 10, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.80, i32 11, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.81, i32 12, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.82, i32 13, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.83, i32 14, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.84, i32 16, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.85, i32 17, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.86, i32 18, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.87, i32 20, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.88, i32 21, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.89, i32 22, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.90, i32 24, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.91, i32 25, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.92, i32 29, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.93, i32 30, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.94, i32 31, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.95, i32 32, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.96, i32 33, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.97, i32 36, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.98, i32 40, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.99, i32 41, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.100, i32 56, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.101, i32 57, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.102, i32 58, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.103, i32 59, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.104, i32 64, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.105, i32 65, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.106, i32 72, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.107, i32 73, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.108, i32 74, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.109, i32 75, i32 256 }], [108 x i8] zeroinitializer }, align 32
@a6xx_gbif_debugbus_block = internal constant { %struct.a6xx_debugbus_block, [20 x i8] } { %struct.a6xx_debugbus_block { ptr @.str.110, i32 3, i32 256 }, [20 x i8] zeroinitializer }, align 32
@a6xx_cx_debugbus_blocks = internal constant { [2 x %struct.a6xx_debugbus_block], [40 x i8] } { [2 x %struct.a6xx_debugbus_block] [%struct.a6xx_debugbus_block { ptr @.str.111, i32 19, i32 256 }, %struct.a6xx_debugbus_block { ptr @.str.112, i32 23, i32 256 }], [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A6XX_DBGBUS_CP\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_RBBM\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_HLSQ\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_UCHE\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_DPM\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_TESS\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A6XX_DBGBUS_PC\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_VFDP\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_VPC\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_TSE\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_RAS\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_VSC\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_COM\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_LRZ\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_A2D\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"A6XX_DBGBUS_CCUFCHE\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_RBP\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_DCS\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_DBGC\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_GMU_GX\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_TPFCHE\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"A6XX_DBGBUS_GPC\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_LARC\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"A6XX_DBGBUS_HLSQ_SPTP\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_RB_0\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_RB_1\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"A6XX_DBGBUS_UCHE_WRAPPER\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_CCU_0\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_CCU_1\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_VFD_0\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_VFD_1\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_VFD_2\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"A6XX_DBGBUS_VFD_3\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_SP_0\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_SP_1\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_TPL1_0\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_TPL1_1\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_TPL1_2\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_TPL1_3\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"A6XX_DBGBUS_VBIF\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"A6XX_DBGBUS_GMU_CX\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A6XX_DBGBUS_CX\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"  - { offset: 0x%06x, value: 0x%08x }\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  - regs-name: \00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    dwords: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    data: !!ascii85 |\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"      \00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  - type: \00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    - bank: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"      size: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  - cluster-name: \00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    - context: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"      - { offset: 0x%06x, value: 0x%08x }\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  - debugbus-block: A6XX_DBGBUS_VBIF\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    count: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  - debugbus-block: \00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1254, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1258, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1262, i32 17 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1263, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1268, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1276, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1278, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1280, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1286, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1296, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1307, i32 14 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1318, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1322, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1326, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1333, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"a6xx_gmu_reglist\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 363, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant [22 x i8] c"a6xx_gmu_cx_registers\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 333, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"a6xx_gmu_cx_rscc_registers\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 356, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"a6xx_gmu_gx_registers\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 324, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"a6xx_indexed_reglist\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 374, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"a6xx_cp_mempool_indexed\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 385, i32 44 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 375, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 377, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 379, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 381, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 386, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 128, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"a6xx_ahb_reglist\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 314, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"a6xx_gbif_reglist\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 321, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"a6xx_vbif_reglist\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 318, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant [13 x i8] c"a6xx_reglist\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 283, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"a6xx_hlsq_reglist\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 176, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"a6xx_ahb_registers\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 289, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"a6xx_gbif_registers\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 310, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"a6xx_vbif_registers\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 296, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant [15 x i8] c"a6xx_registers\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 244, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"a6xx_rb_rac_registers\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 234, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"a6xx_rb_rbp_registers\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 239, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 706, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"a6xx_hlsq_registers\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 151, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"a6xx_sp_registers\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 156, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant [18 x i8] c"a6xx_tp_registers\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 161, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"a6xx_shader_blocks\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 189, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 190, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 191, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 192, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 193, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 194, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 195, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 196, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 197, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 198, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 199, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 200, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 201, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 202, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 203, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 204, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 205, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 206, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 207, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 208, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 209, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 210, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 211, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 212, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 213, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 214, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 215, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 216, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 217, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 218, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 219, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 220, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 221, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 222, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 223, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 224, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 225, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 226, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 227, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 228, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 229, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 230, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 231, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [14 x i8] c"a6xx_clusters\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 63, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 64, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [18 x i8] c"a6xx_gras_cluster\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 12, i32 18 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 65, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c"a6xx_ps_cluster_rac\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 18, i32 18 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c"a6xx_ps_cluster_rbp\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 25, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant [16 x i8] c"a6xx_ps_cluster\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 30, i32 18 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 68, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"a6xx_fe_cluster\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 34, i32 18 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 69, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [19 x i8] c"a6xx_pc_vs_cluster\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 39, i32 18 }
@___asan_gen_.416 = private unnamed_addr constant [21 x i8] c"a6xx_dbgahb_clusters\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 133, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 134, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [24 x i8] c"a6xx_sp_vs_hlsq_cluster\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 72, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant [22 x i8] c"a6xx_sp_vs_sp_cluster\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 76, i32 18 }
@___asan_gen_.428 = private unnamed_addr constant [28 x i8] c"a6xx_hlsq_duplicate_cluster\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 81, i32 18 }
@___asan_gen_.431 = private unnamed_addr constant [31 x i8] c"a6xx_hlsq_2d_duplicate_cluster\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 85, i32 18 }
@___asan_gen_.434 = private unnamed_addr constant [26 x i8] c"a6xx_sp_duplicate_cluster\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 89, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant [26 x i8] c"a6xx_tp_duplicate_cluster\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 93, i32 18 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 140, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [24 x i8] c"a6xx_sp_ps_hlsq_cluster\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 97, i32 18 }
@___asan_gen_.446 = private unnamed_addr constant [27 x i8] c"a6xx_sp_ps_hlsq_2d_cluster\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 102, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant [22 x i8] c"a6xx_sp_ps_sp_cluster\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 106, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant [25 x i8] c"a6xx_sp_ps_sp_2d_cluster\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 111, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [22 x i8] c"a6xx_sp_ps_tp_cluster\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 115, i32 18 }
@___asan_gen_.458 = private unnamed_addr constant [25 x i8] c"a6xx_sp_ps_tp_2d_cluster\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 119, i32 18 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 358, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c"a6xx_debugbus_blocks\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 396, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant [25 x i8] c"a6xx_gbif_debugbus_block\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 438, i32 41 }
@___asan_gen_.470 = private unnamed_addr constant [24 x i8] c"a6xx_cx_debugbus_blocks\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 441, i32 41 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 397, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 398, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 399, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 400, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 401, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 402, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 403, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 404, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 405, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 406, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 407, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 408, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 409, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 410, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 411, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 412, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 413, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 414, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 415, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 416, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 417, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 418, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 419, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 420, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 421, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 422, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 423, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 424, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 425, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 426, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 427, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 428, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 429, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 430, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 431, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 432, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 433, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 434, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 435, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 439, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 442, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [47 x i8] c"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.597, i32 443, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1075, i32 18 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1194, i32 16 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1195, i32 16 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1094, i32 14 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1095, i32 14 }
@___asan_gen_.615 = private unnamed_addr constant [27 x i8] c"../include/linux/ascii85.h\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 28, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1122, i32 16 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1125, i32 17 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1126, i32 17 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1180, i32 17 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1144, i32 17 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1155, i32 19 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1230, i32 15 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1231, i32 17 }
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [47 x i8] c"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1204, i32 17 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @a6xx_gmu_reglist, ptr @a6xx_gmu_cx_registers, ptr @a6xx_gmu_cx_rscc_registers, ptr @a6xx_gmu_gx_registers, ptr @a6xx_indexed_reglist, ptr @a6xx_cp_mempool_indexed, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @a6xx_ahb_reglist, ptr @a6xx_gbif_reglist, ptr @a6xx_vbif_reglist, ptr @a6xx_reglist, ptr @a6xx_hlsq_reglist, ptr @a6xx_ahb_registers, ptr @a6xx_gbif_registers, ptr @a6xx_vbif_registers, ptr @a6xx_registers, ptr @a6xx_rb_rac_registers, ptr @a6xx_rb_rbp_registers, ptr @.str.21, ptr @a6xx_hlsq_registers, ptr @a6xx_sp_registers, ptr @a6xx_tp_registers, ptr @a6xx_shader_blocks, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @a6xx_clusters, ptr @.str.64, ptr @a6xx_gras_cluster, ptr @.str.65, ptr @a6xx_ps_cluster_rac, ptr @a6xx_ps_cluster_rbp, ptr @a6xx_ps_cluster, ptr @.str.66, ptr @a6xx_fe_cluster, ptr @.str.67, ptr @a6xx_pc_vs_cluster, ptr @a6xx_dbgahb_clusters, ptr @.str.68, ptr @a6xx_sp_vs_hlsq_cluster, ptr @a6xx_sp_vs_sp_cluster, ptr @a6xx_hlsq_duplicate_cluster, ptr @a6xx_hlsq_2d_duplicate_cluster, ptr @a6xx_sp_duplicate_cluster, ptr @a6xx_tp_duplicate_cluster, ptr @.str.69, ptr @a6xx_sp_ps_hlsq_cluster, ptr @a6xx_sp_ps_hlsq_2d_cluster, ptr @a6xx_sp_ps_sp_cluster, ptr @a6xx_sp_ps_sp_2d_cluster, ptr @a6xx_sp_ps_tp_cluster, ptr @a6xx_sp_ps_tp_2d_cluster, ptr @.str.70, ptr @a6xx_debugbus_blocks, ptr @a6xx_gbif_debugbus_block, ptr @a6xx_cx_debugbus_blocks, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_reglist to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_cx_registers to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_cx_rscc_registers to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gmu_gx_registers to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_indexed_reglist to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cp_mempool_indexed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_ahb_reglist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gbif_reglist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_vbif_reglist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_reglist to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hlsq_reglist to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_ahb_registers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gbif_registers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_vbif_registers to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_registers to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_rb_rac_registers to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_rb_rbp_registers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hlsq_registers to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_registers to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_tp_registers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_shader_blocks to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_clusters to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gras_cluster to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_ps_cluster_rac to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_ps_cluster_rbp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_ps_cluster to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_fe_cluster to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_pc_vs_cluster to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_dbgahb_clusters to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_vs_hlsq_cluster to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_vs_sp_cluster to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hlsq_duplicate_cluster to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hlsq_2d_duplicate_cluster to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_duplicate_cluster to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_tp_duplicate_cluster to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_hlsq_cluster to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_hlsq_2d_cluster to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_sp_cluster to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_sp_2d_cluster to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_tp_cluster to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_sp_ps_tp_2d_cluster to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_debugbus_blocks to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_gbif_debugbus_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_cx_debugbus_blocks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a6xx_gpu_state_get(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  %_dumper = alloca %struct.a6xx_crashdumper, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_dumper) #7
  %0 = call ptr @memset(ptr %_dumper, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 400) #10
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 2124
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  %and = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %objs = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 22
  %4 = ptrtoint ptr %objs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %objs, ptr %objs, align 8
  %prev.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %objs, ptr %prev.i, align 4
  %call8 = tail call i32 @adreno_gpu_state_get(ptr noundef %gpu, ptr noundef nonnull %call7.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %state_kcalloc.exit.thread.i, label %if.end.i.i

state_kcalloc.exit.thread.i:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gmu_registers28.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %gmu_registers28.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %gmu_registers28.i, align 8
  br label %a6xx_get_gmu_registers.exit

if.end.i.i:                                       ; preds = %if.end
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %9, ptr noundef %objs) #7
  br i1 %call.i.i.i.i, label %if.end.i.i3.i.i, label %if.end.i.i.state_kcalloc.exit.i_crit_edge

if.end.i.i.state_kcalloc.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i

if.end.i.i3.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i.i, ptr %prev.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %objs, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i.i.i, ptr %9, align 4
  br label %state_kcalloc.exit.i

state_kcalloc.exit.i:                             ; preds = %if.end.i.i3.i.i, %if.end.i.i.state_kcalloc.exit.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i, i32 0, i32 1
  %gmu_registers.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %gmu_registers.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data.i.i, ptr %gmu_registers.i, align 8
  %nr_gmu_registers.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %nr_gmu_registers.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %nr_gmu_registers.i, align 4
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @a6xx_gmu_reglist, ptr noundef nonnull %data.i.i, i1 noundef zeroext false) #7
  %16 = ptrtoint ptr %gmu_registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gmu_registers.i, align 8
  %arrayidx7.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %17, i32 1
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_gmu_reglist, i32 0, i32 1), ptr noundef %arrayidx7.i, i1 noundef zeroext true) #7
  %gmu.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %call8.i = tail call zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef %gmu.i) #7
  br i1 %call8.i, label %if.end10.i, label %state_kcalloc.exit.i.a6xx_get_gmu_registers.exit_crit_edge

state_kcalloc.exit.i.a6xx_get_gmu_registers.exit_crit_edge: ; preds = %state_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_gmu_registers.exit

if.end10.i:                                       ; preds = %state_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 150592
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #7
  %20 = ptrtoint ptr %gmu_registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gmu_registers.i, align 8
  %arrayidx12.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %21, i32 2
  tail call fastcc void @_a6xx_get_gmu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_gmu_reglist, i32 0, i32 2), ptr noundef %arrayidx12.i, i1 noundef zeroext false) #7
  br label %a6xx_get_gmu_registers.exit

a6xx_get_gmu_registers.exit:                      ; preds = %if.end10.i, %state_kcalloc.exit.i.a6xx_get_gmu_registers.exit_crit_edge, %state_kcalloc.exit.thread.i
  %gmu = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not.i.i84 = icmp eq ptr %call7.i.i.i.i83, null
  br i1 %tobool.not.i.i84, label %a6xx_get_gmu_registers.exit.a6xx_snapshot_gmu_bo.exit_crit_edge, label %if.end.i.i88

a6xx_get_gmu_registers.exit.a6xx_snapshot_gmu_bo.exit_crit_edge: ; preds = %a6xx_get_gmu_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit

if.end.i.i88:                                     ; preds = %a6xx_get_gmu_registers.exit
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i83, ptr noundef %24, ptr noundef %objs) #7
  br i1 %call.i.i.i.i87, label %if.end.i.i3.i.i90, label %if.end.i.i88.state_kcalloc.exit.i92_crit_edge

if.end.i.i88.state_kcalloc.exit.i92_crit_edge:    ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i92

if.end.i.i3.i.i90:                                ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i.i83, ptr %prev.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %objs, ptr %call7.i.i.i.i83, align 8
  %prev3.i.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i83, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i89, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i.i83, ptr %24, align 4
  br label %state_kcalloc.exit.i92

state_kcalloc.exit.i92:                           ; preds = %if.end.i.i3.i.i90, %if.end.i.i88.state_kcalloc.exit.i92_crit_edge
  %data.i.i91 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i83, i32 0, i32 1
  %iova.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 14, i32 3
  %29 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %iova.i, align 8
  %31 = ptrtoint ptr %data.i.i91 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %data.i.i91, align 8
  %size.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 14, i32 2
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 8
  %size2.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i83, i32 2
  %34 = ptrtoint ptr %size2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %size2.i, align 8
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %33, i32 noundef 3520, i32 noundef -1) #11
  %data.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i83, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i.i, ptr %data.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool6.not.i, label %state_kcalloc.exit.i92.a6xx_snapshot_gmu_bo.exit_crit_edge, label %if.end8.i

state_kcalloc.exit.i92.a6xx_snapshot_gmu_bo.exit_crit_edge: ; preds = %state_kcalloc.exit.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit

if.end8.i:                                        ; preds = %state_kcalloc.exit.i92
  call void @__sanitizer_cov_trace_pc() #9
  %virt.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 14, i32 1
  %36 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt.i, align 4
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 8
  %40 = call ptr @memcpy(ptr %call.i.i.i, ptr %37, i32 %39)
  br label %a6xx_snapshot_gmu_bo.exit

a6xx_snapshot_gmu_bo.exit:                        ; preds = %if.end8.i, %state_kcalloc.exit.i92.a6xx_snapshot_gmu_bo.exit_crit_edge, %a6xx_get_gmu_registers.exit.a6xx_snapshot_gmu_bo.exit_crit_edge
  %retval.0.i = phi ptr [ %data.i.i91, %if.end8.i ], [ null, %state_kcalloc.exit.i92.a6xx_snapshot_gmu_bo.exit_crit_edge ], [ null, %a6xx_get_gmu_registers.exit.a6xx_snapshot_gmu_bo.exit_crit_edge ]
  %gmu_log = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 18
  %41 = ptrtoint ptr %gmu_log to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i, ptr %gmu_log, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not.i.i94 = icmp eq ptr %call7.i.i.i.i93, null
  br i1 %tobool.not.i.i94, label %a6xx_snapshot_gmu_bo.exit.a6xx_snapshot_gmu_bo.exit112_crit_edge, label %if.end.i.i98

a6xx_snapshot_gmu_bo.exit.a6xx_snapshot_gmu_bo.exit112_crit_edge: ; preds = %a6xx_snapshot_gmu_bo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit112

if.end.i.i98:                                     ; preds = %a6xx_snapshot_gmu_bo.exit
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i97 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i93, ptr noundef %44, ptr noundef %objs) #7
  br i1 %call.i.i.i.i97, label %if.end.i.i3.i.i100, label %if.end.i.i98.state_kcalloc.exit.i102_crit_edge

if.end.i.i98.state_kcalloc.exit.i102_crit_edge:   ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i102

if.end.i.i3.i.i100:                               ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i.i93, ptr %prev.i, align 4
  %46 = ptrtoint ptr %call7.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %objs, ptr %call7.i.i.i.i93, align 8
  %prev3.i.i.i.i99 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i93, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i.i99, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i.i.i93, ptr %44, align 4
  br label %state_kcalloc.exit.i102

state_kcalloc.exit.i102:                          ; preds = %if.end.i.i3.i.i100, %if.end.i.i98.state_kcalloc.exit.i102_crit_edge
  %data.i.i101 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i93, i32 0, i32 1
  %iova.i103 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 9, i32 3
  %49 = ptrtoint ptr %iova.i103 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %iova.i103, align 8
  %51 = ptrtoint ptr %data.i.i101 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %data.i.i101, align 8
  %size.i104 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 9, i32 2
  %52 = ptrtoint ptr %size.i104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i104, align 8
  %size2.i105 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i93, i32 2
  %54 = ptrtoint ptr %size2.i105 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %size2.i105, align 8
  %call.i.i.i106 = tail call noalias ptr @kvmalloc_node(i32 noundef %53, i32 noundef 3520, i32 noundef -1) #11
  %data.i107 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i93, i32 2, i32 0, i32 1
  %55 = ptrtoint ptr %data.i107 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i.i106, ptr %data.i107, align 4
  %tobool6.not.i108 = icmp eq ptr %call.i.i.i106, null
  br i1 %tobool6.not.i108, label %state_kcalloc.exit.i102.a6xx_snapshot_gmu_bo.exit112_crit_edge, label %if.end8.i110

state_kcalloc.exit.i102.a6xx_snapshot_gmu_bo.exit112_crit_edge: ; preds = %state_kcalloc.exit.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit112

if.end8.i110:                                     ; preds = %state_kcalloc.exit.i102
  call void @__sanitizer_cov_trace_pc() #9
  %virt.i109 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 9, i32 1
  %56 = ptrtoint ptr %virt.i109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %virt.i109, align 4
  %58 = ptrtoint ptr %size.i104 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i104, align 8
  %60 = call ptr @memcpy(ptr %call.i.i.i106, ptr %57, i32 %59)
  br label %a6xx_snapshot_gmu_bo.exit112

a6xx_snapshot_gmu_bo.exit112:                     ; preds = %if.end8.i110, %state_kcalloc.exit.i102.a6xx_snapshot_gmu_bo.exit112_crit_edge, %a6xx_snapshot_gmu_bo.exit.a6xx_snapshot_gmu_bo.exit112_crit_edge
  %retval.0.i111 = phi ptr [ %data.i.i101, %if.end8.i110 ], [ null, %state_kcalloc.exit.i102.a6xx_snapshot_gmu_bo.exit112_crit_edge ], [ null, %a6xx_snapshot_gmu_bo.exit.a6xx_snapshot_gmu_bo.exit112_crit_edge ]
  %gmu_hfi = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %gmu_hfi to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i111, ptr %gmu_hfi, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not.i.i114 = icmp eq ptr %call7.i.i.i.i113, null
  br i1 %tobool.not.i.i114, label %a6xx_snapshot_gmu_bo.exit112.a6xx_snapshot_gmu_bo.exit132_crit_edge, label %if.end.i.i118

a6xx_snapshot_gmu_bo.exit112.a6xx_snapshot_gmu_bo.exit132_crit_edge: ; preds = %a6xx_snapshot_gmu_bo.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit132

if.end.i.i118:                                    ; preds = %a6xx_snapshot_gmu_bo.exit112
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i113, ptr noundef %64, ptr noundef %objs) #7
  br i1 %call.i.i.i.i117, label %if.end.i.i3.i.i120, label %if.end.i.i118.state_kcalloc.exit.i122_crit_edge

if.end.i.i118.state_kcalloc.exit.i122_crit_edge:  ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i122

if.end.i.i3.i.i120:                               ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i113, ptr %prev.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %objs, ptr %call7.i.i.i.i113, align 8
  %prev3.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i113, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i.i119, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i.i113, ptr %64, align 4
  br label %state_kcalloc.exit.i122

state_kcalloc.exit.i122:                          ; preds = %if.end.i.i3.i.i120, %if.end.i.i118.state_kcalloc.exit.i122_crit_edge
  %data.i.i121 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i113, i32 0, i32 1
  %iova.i123 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 10, i32 3
  %69 = ptrtoint ptr %iova.i123 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %iova.i123, align 8
  %71 = ptrtoint ptr %data.i.i121 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %data.i.i121, align 8
  %size.i124 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 10, i32 2
  %72 = ptrtoint ptr %size.i124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i124, align 8
  %size2.i125 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i113, i32 2
  %74 = ptrtoint ptr %size2.i125 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size2.i125, align 8
  %call.i.i.i126 = tail call noalias ptr @kvmalloc_node(i32 noundef %73, i32 noundef 3520, i32 noundef -1) #11
  %data.i127 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i113, i32 2, i32 0, i32 1
  %75 = ptrtoint ptr %data.i127 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i.i126, ptr %data.i127, align 4
  %tobool6.not.i128 = icmp eq ptr %call.i.i.i126, null
  br i1 %tobool6.not.i128, label %state_kcalloc.exit.i122.a6xx_snapshot_gmu_bo.exit132_crit_edge, label %if.end8.i130

state_kcalloc.exit.i122.a6xx_snapshot_gmu_bo.exit132_crit_edge: ; preds = %state_kcalloc.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_snapshot_gmu_bo.exit132

if.end8.i130:                                     ; preds = %state_kcalloc.exit.i122
  call void @__sanitizer_cov_trace_pc() #9
  %virt.i129 = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 10, i32 1
  %76 = ptrtoint ptr %virt.i129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %virt.i129, align 4
  %78 = ptrtoint ptr %size.i124 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size.i124, align 8
  %80 = call ptr @memcpy(ptr %call.i.i.i126, ptr %77, i32 %79)
  br label %a6xx_snapshot_gmu_bo.exit132

a6xx_snapshot_gmu_bo.exit132:                     ; preds = %if.end8.i130, %state_kcalloc.exit.i122.a6xx_snapshot_gmu_bo.exit132_crit_edge, %a6xx_snapshot_gmu_bo.exit112.a6xx_snapshot_gmu_bo.exit132_crit_edge
  %retval.0.i131 = phi ptr [ %data.i.i121, %if.end8.i130 ], [ null, %state_kcalloc.exit.i122.a6xx_snapshot_gmu_bo.exit132_crit_edge ], [ null, %a6xx_snapshot_gmu_bo.exit112.a6xx_snapshot_gmu_bo.exit132_crit_edge ]
  %gmu_debug = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 20
  %81 = ptrtoint ptr %gmu_debug to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %retval.0.i131, ptr %gmu_debug, align 4
  %history_idx.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 5
  %82 = ptrtoint ptr %history_idx.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %history_idx.i, align 4
  %84 = and i8 %83, 7
  %rem.i = zext i8 %84 to i32
  %arrayidx8.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.i
  %85 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 0
  %87 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx10.i, align 8
  %88 = add i8 %83, 1
  %89 = and i8 %88, 7
  %rem.1.i = zext i8 %89 to i32
  %arrayidx8.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.1.i
  %90 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx8.1.i, align 4
  %arrayidx10.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx10.1.i, align 4
  %93 = add i8 %83, 2
  %94 = and i8 %93, 7
  %rem.2.i = zext i8 %94 to i32
  %arrayidx8.2.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.2.i
  %95 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx8.2.i, align 4
  %arrayidx10.2.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx10.2.i, align 8
  %98 = add i8 %83, 3
  %99 = and i8 %98, 7
  %rem.3.i = zext i8 %99 to i32
  %arrayidx8.3.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.3.i
  %100 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx8.3.i, align 4
  %arrayidx10.3.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  %102 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx10.3.i, align 4
  %103 = add i8 %83, 4
  %104 = and i8 %103, 7
  %rem.4.i = zext i8 %104 to i32
  %arrayidx8.4.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.4.i
  %105 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx8.4.i, align 4
  %arrayidx10.4.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 4
  %107 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx10.4.i, align 8
  %108 = add i8 %83, 5
  %109 = and i8 %108, 7
  %rem.5.i = zext i8 %109 to i32
  %arrayidx8.5.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.5.i
  %110 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx8.5.i, align 4
  %arrayidx10.5.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 5
  %112 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx10.5.i, align 4
  %113 = add i8 %83, 6
  %114 = and i8 %113, 7
  %rem.6.i = zext i8 %114 to i32
  %arrayidx8.6.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.6.i
  %115 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx8.6.i, align 4
  %arrayidx10.6.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 6
  %117 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx10.6.i, align 8
  %118 = add i8 %83, 7
  %119 = and i8 %118, 7
  %rem.7.i = zext i8 %119 to i32
  %arrayidx8.7.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 0, i32 4, i32 %rem.7.i
  %120 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx8.7.i, align 4
  %arrayidx10.7.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 7
  %122 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx10.7.i, align 4
  %history_idx.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 5
  %123 = ptrtoint ptr %history_idx.1.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %history_idx.1.i, align 4
  %125 = and i8 %124, 7
  %rem.124.i = zext i8 %125 to i32
  %arrayidx8.125.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.124.i
  %126 = ptrtoint ptr %arrayidx8.125.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx8.125.i, align 4
  %arrayidx10.126.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 0
  %128 = ptrtoint ptr %arrayidx10.126.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx10.126.i, align 8
  %129 = add i8 %124, 1
  %130 = and i8 %129, 7
  %rem.1.1.i = zext i8 %130 to i32
  %arrayidx8.1.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.1.1.i
  %131 = ptrtoint ptr %arrayidx8.1.1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx8.1.1.i, align 4
  %arrayidx10.1.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 1
  %133 = ptrtoint ptr %arrayidx10.1.1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx10.1.1.i, align 4
  %134 = add i8 %124, 2
  %135 = and i8 %134, 7
  %rem.2.1.i = zext i8 %135 to i32
  %arrayidx8.2.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.2.1.i
  %136 = ptrtoint ptr %arrayidx8.2.1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx8.2.1.i, align 4
  %arrayidx10.2.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 2
  %138 = ptrtoint ptr %arrayidx10.2.1.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx10.2.1.i, align 8
  %139 = add i8 %124, 3
  %140 = and i8 %139, 7
  %rem.3.1.i = zext i8 %140 to i32
  %arrayidx8.3.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.3.1.i
  %141 = ptrtoint ptr %arrayidx8.3.1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx8.3.1.i, align 4
  %arrayidx10.3.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx10.3.1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx10.3.1.i, align 4
  %144 = add i8 %124, 4
  %145 = and i8 %144, 7
  %rem.4.1.i = zext i8 %145 to i32
  %arrayidx8.4.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.4.1.i
  %146 = ptrtoint ptr %arrayidx8.4.1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx8.4.1.i, align 4
  %arrayidx10.4.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 4
  %148 = ptrtoint ptr %arrayidx10.4.1.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx10.4.1.i, align 8
  %149 = add i8 %124, 5
  %150 = and i8 %149, 7
  %rem.5.1.i = zext i8 %150 to i32
  %arrayidx8.5.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.5.1.i
  %151 = ptrtoint ptr %arrayidx8.5.1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx8.5.1.i, align 4
  %arrayidx10.5.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 5
  %153 = ptrtoint ptr %arrayidx10.5.1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %arrayidx10.5.1.i, align 4
  %154 = add i8 %124, 6
  %155 = and i8 %154, 7
  %rem.6.1.i = zext i8 %155 to i32
  %arrayidx8.6.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.6.1.i
  %156 = ptrtoint ptr %arrayidx8.6.1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx8.6.1.i, align 4
  %arrayidx10.6.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 6
  %158 = ptrtoint ptr %arrayidx10.6.1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx10.6.1.i, align 8
  %159 = add i8 %124, 7
  %160 = and i8 %159, 7
  %rem.7.1.i = zext i8 %160 to i32
  %arrayidx8.7.1.i = getelementptr %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 27, i32 1, i32 4, i32 %rem.7.1.i
  %161 = ptrtoint ptr %arrayidx8.7.1.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx8.7.1.i, align 4
  %arrayidx10.7.1.i = getelementptr %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 7
  %163 = ptrtoint ptr %arrayidx10.7.1.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx10.7.1.i, align 4
  %call15 = tail call zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef %gmu) #7
  br i1 %call15, label %if.end18, label %a6xx_snapshot_gmu_bo.exit132.cleanup_crit_edge

a6xx_snapshot_gmu_bo.exit132.cleanup_crit_edge:   ; preds = %a6xx_snapshot_gmu_bo.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %a6xx_snapshot_gmu_bo.exit132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %164 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i133 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %164, i32 noundef 3520, i32 noundef 48) #10
  %tobool.not.i.i134 = icmp eq ptr %call7.i.i.i.i133, null
  br i1 %tobool.not.i.i134, label %state_kcalloc.exit.thread.i135, label %if.end.i.i139

state_kcalloc.exit.thread.i135:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %indexed_regs36.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 11
  %165 = ptrtoint ptr %indexed_regs36.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %indexed_regs36.i, align 8
  br label %a6xx_get_indexed_registers.exit

if.end.i.i139:                                    ; preds = %if.end18
  %166 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i133, ptr noundef %167, ptr noundef %objs) #7
  br i1 %call.i.i.i.i138, label %if.end.i.i3.i.i141, label %if.end.i.i139.state_kcalloc.exit.i143_crit_edge

if.end.i.i139.state_kcalloc.exit.i143_crit_edge:  ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i143

if.end.i.i3.i.i141:                               ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call7.i.i.i.i133, ptr %prev.i, align 4
  %169 = ptrtoint ptr %call7.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %objs, ptr %call7.i.i.i.i133, align 8
  %prev3.i.i.i.i140 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i133, i32 0, i32 1
  %170 = ptrtoint ptr %prev3.i.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev3.i.i.i.i140, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %call7.i.i.i.i133, ptr %167, align 4
  br label %state_kcalloc.exit.i143

state_kcalloc.exit.i143:                          ; preds = %if.end.i.i3.i.i141, %if.end.i.i139.state_kcalloc.exit.i143_crit_edge
  %data.i.i142 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i133, i32 0, i32 1
  %indexed_regs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 11
  %172 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %data.i.i142, ptr %indexed_regs.i, align 8
  tail call fastcc void @a6xx_get_indexed_regs(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @a6xx_indexed_reglist, ptr noundef %data.i.i142) #7
  %173 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %indexed_regs.i, align 8
  %arrayidx3.1.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %174, i32 1
  tail call fastcc void @a6xx_get_indexed_regs(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 1), ptr noundef %arrayidx3.1.i) #7
  %175 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %indexed_regs.i, align 8
  %arrayidx3.2.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %176, i32 2
  tail call fastcc void @a6xx_get_indexed_regs(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 2), ptr noundef %arrayidx3.2.i) #7
  %177 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %indexed_regs.i, align 8
  %arrayidx3.3.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %178, i32 3
  tail call fastcc void @a6xx_get_indexed_regs(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([4 x %struct.a6xx_indexed_registers], ptr @a6xx_indexed_reglist, i32 0, i32 3), ptr noundef %arrayidx3.3.i) #7
  %179 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i145 = getelementptr i8, ptr %180, i32 8972
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i145) #7
  %181 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %182, i32 8972
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i32.i) #7
  %183 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %indexed_regs.i, align 8
  %arrayidx6.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %184, i32 4
  tail call fastcc void @a6xx_get_indexed_regs(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @a6xx_cp_mempool_indexed, ptr noundef %arrayidx6.i) #7
  %185 = ptrtoint ptr %indexed_regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %indexed_regs.i, align 8
  %data.i146 = getelementptr %struct.a6xx_gpu_state_obj, ptr %186, i32 4, i32 1
  %187 = ptrtoint ptr %data.i146 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %data.i146, align 4
  %arrayidx9.i = getelementptr i32, ptr %188, i32 8192
  %189 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call.i.i, ptr %arrayidx9.i, align 4
  %190 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %191, i32 8972
  tail call void @msm_writel(i32 noundef %call.i.i, ptr noundef %add.ptr.i34.i) #7
  %nr_indexed_regs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 12
  %192 = ptrtoint ptr %nr_indexed_regs.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 5, ptr %nr_indexed_regs.i, align 4
  br label %a6xx_get_indexed_registers.exit

a6xx_get_indexed_registers.exit:                  ; preds = %state_kcalloc.exit.i143, %state_kcalloc.exit.thread.i135
  br i1 %tobool.not, label %land.lhs.true, label %a6xx_get_indexed_registers.exit.if.end25_crit_edge

a6xx_get_indexed_registers.exit.if.end25_crit_edge: ; preds = %a6xx_get_indexed_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %a6xx_get_indexed_registers.exit
  %needs_hw_init = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %193 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %needs_hw_init, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool20.not = icmp eq i8 %194, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true21:                                  ; preds = %land.lhs.true
  %dev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %195 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev.i, align 4
  %aspace.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %197 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %aspace.i, align 8
  %bo.i = getelementptr inbounds %struct.a6xx_crashdumper, ptr %_dumper, i32 0, i32 1
  %iova.i147 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %_dumper, i32 0, i32 2
  %call.i148 = call ptr @msm_gem_kernel_new(ptr noundef %196, i32 noundef 1048576, i32 noundef 131072, ptr noundef %198, ptr noundef %bo.i, ptr noundef %iova.i147) #7
  %199 = ptrtoint ptr %_dumper to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call.i148, ptr %_dumper, align 8
  %cmp.i.i = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true21.a6xx_crashdumper_init.exit_crit_edge, label %if.then.i

land.lhs.true21.a6xx_crashdumper_init.exit_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_crashdumper_init.exit

if.then.i:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bo.i, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %201, ptr noundef nonnull @.str.20) #7
  br label %a6xx_crashdumper_init.exit

a6xx_crashdumper_init.exit:                       ; preds = %if.then.i, %land.lhs.true21.a6xx_crashdumper_init.exit_crit_edge
  %202 = ptrtoint ptr %_dumper to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %_dumper, align 8
  %cmp.i.i.i.not = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i.i.i.not, ptr null, ptr %_dumper
  br label %if.end25

if.end25:                                         ; preds = %a6xx_crashdumper_init.exit, %land.lhs.true.if.end25_crit_edge, %a6xx_get_indexed_registers.exit.if.end25_crit_edge
  %dumper.0 = phi ptr [ null, %a6xx_get_indexed_registers.exit.if.end25_crit_edge ], [ null, %land.lhs.true.if.end25_crit_edge ], [ %spec.select, %a6xx_crashdumper_init.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %204 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i149 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %204, i32 noundef 3520, i32 noundef 72) #10
  %tobool.not.i.i150 = icmp eq ptr %call7.i.i.i.i149, null
  br i1 %tobool.not.i.i150, label %state_kcalloc.exit.thread.i151, label %if.end.i.i155

state_kcalloc.exit.thread.i151:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %registers158.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 3
  %205 = ptrtoint ptr %registers158.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %registers158.i, align 8
  br label %a6xx_get_registers.exit

if.end.i.i155:                                    ; preds = %if.end25
  %206 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i154 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i149, ptr noundef %207, ptr noundef %objs) #7
  br i1 %call.i.i.i.i154, label %if.end.i.i3.i.i157, label %if.end.i.i155.state_kcalloc.exit.i159_crit_edge

if.end.i.i155.state_kcalloc.exit.i159_crit_edge:  ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i159

if.end.i.i3.i.i157:                               ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i.i.i149, ptr %prev.i, align 4
  %209 = ptrtoint ptr %call7.i.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %objs, ptr %call7.i.i.i.i149, align 8
  %prev3.i.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i149, i32 0, i32 1
  %210 = ptrtoint ptr %prev3.i.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %207, ptr %prev3.i.i.i.i156, align 4
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %call7.i.i.i.i149, ptr %207, align 4
  br label %state_kcalloc.exit.i159

state_kcalloc.exit.i159:                          ; preds = %if.end.i.i3.i.i157, %if.end.i.i155.state_kcalloc.exit.i159_crit_edge
  %data.i.i158 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i149, i32 0, i32 1
  %registers.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 3
  %212 = ptrtoint ptr %registers.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %data.i.i158, ptr %registers.i, align 8
  %nr_registers.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 4
  %213 = ptrtoint ptr %nr_registers.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 8, ptr %nr_registers.i, align 4
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @a6xx_ahb_reglist, ptr noundef %data.i.i158) #7
  %revn.i.i.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %214 = ptrtoint ptr %revn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %revn.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %215)
  %cmp.i.i.not.i = icmp eq i32 %215, 630
  %216 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %registers.i, align 8
  %arrayidx12.i160 = getelementptr %struct.a6xx_gpu_state_obj, ptr %217, i32 1
  %a6xx_vbif_reglist.a6xx_gbif_reglist.i = select i1 %cmp.i.i.not.i, ptr @a6xx_vbif_reglist, ptr @a6xx_gbif_reglist
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %a6xx_vbif_reglist.a6xx_gbif_reglist.i, ptr noundef %arrayidx12.i160) #7
  %tobool14.not.i = icmp eq ptr %dumper.0, null
  br i1 %tobool14.not.i, label %a6xx_get_registers.exit.thread, label %for.cond27.preheader.i

a6xx_get_registers.exit.thread:                   ; preds = %state_kcalloc.exit.i159
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %registers.i, align 8
  %arrayidx22.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %219, i32 2
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @a6xx_reglist, ptr noundef %arrayidx22.i) #7
  %220 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %registers.i, align 8
  %arrayidx22.1.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %221, i32 3
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 1), ptr noundef %arrayidx22.1.i) #7
  %222 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %registers.i, align 8
  %arrayidx22.2.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %223, i32 4
  call fastcc void @a6xx_get_ahb_gpu_registers(ptr noundef %gpu, ptr noundef nonnull %call7.i.i, ptr noundef getelementptr inbounds ([3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 2), ptr noundef %arrayidx22.2.i) #7
  br label %if.end28

for.cond27.preheader.i:                           ; preds = %state_kcalloc.exit.i159
  %iova.i.i = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper.0, i32 0, i32 2
  br label %for.body29.i

for.body29.i:                                     ; preds = %a6xx_get_crashdumper_registers.exit.i.for.body29.i_crit_edge, %for.cond27.preheader.i
  %i.2164.i = phi i32 [ 0, %for.cond27.preheader.i ], [ %inc35.i, %a6xx_get_crashdumper_registers.exit.i.for.body29.i_crit_edge ]
  %index.3163.i = phi i32 [ 2, %for.cond27.preheader.i ], [ %inc32.i, %a6xx_get_crashdumper_registers.exit.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %i.2164.i
  %224 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %registers.i, align 8
  %inc32.i = add nuw nsw i32 %index.3163.i, 1
  %arrayidx33.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %225, i32 %index.3163.i
  %226 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dumper.0, align 8
  %228 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %iova.i.i, align 8
  %add.i.i = add i64 %229, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2164.i)
  %tobool.not.i90.i = icmp eq i32 %i.2164.i, 0
  br i1 %tobool.not.i90.i, label %for.body29.i.if.end.i91.i_crit_edge, label %if.then.i.i

for.body29.i.if.end.i91.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i91.i

if.then.i.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  %val0.i.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %i.2164.i, i32 2
  %230 = ptrtoint ptr %val0.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %val0.i.i, align 4
  %val1.i.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %i.2164.i, i32 3
  %232 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %val1.i.i, align 4
  %conv.i.i.i = zext i32 %233 to i64
  %234 = ptrtoint ptr %227 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %conv.i.i.i, ptr %227, align 8
  %conv1.i.i.i = zext i32 %231 to i64
  %shl.i.i.i = shl i64 %conv1.i.i.i, 44
  %or2.i.i.i = or i64 %shl.i.i.i, 2097153
  %arrayidx3.i.i.i = getelementptr i64, ptr %227, i32 1
  %235 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %or2.i.i.i, ptr %arrayidx3.i.i.i, align 8
  %add.ptr.i.i161 = getelementptr i64, ptr %227, i32 2
  br label %if.end.i91.i

if.end.i91.i:                                     ; preds = %if.then.i.i, %for.body29.i.if.end.i91.i_crit_edge
  %in.0.i.i = phi ptr [ %add.ptr.i.i161, %if.then.i.i ], [ %227, %for.body29.i.if.end.i91.i_crit_edge ]
  %count.i.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_reglist, i32 0, i32 %i.2164.i, i32 1
  %236 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %count.i.i, align 4
  %238 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx30.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i91.i
  %in.185.i.i = phi ptr [ %add.ptr10.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %in.0.i.i, %if.end.i91.i ]
  %out.084.i.i = phi i64 [ %add11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i.i, %if.end.i91.i ]
  %regcount.083.i.i = phi i32 [ %add12.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i91.i ]
  %i.082.i.i = phi i32 [ %add13.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i91.i ]
  %add3.i.i = or i32 %i.082.i.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %239, i32 %add3.i.i
  %240 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %239, i32 %i.082.i.i
  %242 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx5.i.i, align 4
  %sub.i.i = sub i32 %241, %243
  %add6.i.i = add i32 %sub.i.i, 1
  %244 = ptrtoint ptr %in.185.i.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %out.084.i.i, ptr %in.185.i.i, align 8
  %conv.i78.i.i = zext i32 %243 to i64
  %shl.i79.i.i = shl i64 %conv.i78.i.i, 44
  %conv1.i80.i.i = zext i32 %add6.i.i to i64
  %or.i.i.i = or i64 %shl.i79.i.i, %conv1.i80.i.i
  %arrayidx2.i.i.i = getelementptr i64, ptr %in.185.i.i, i32 1
  %245 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %or.i.i.i, ptr %arrayidx2.i.i.i, align 8
  %add.ptr10.i.i = getelementptr i64, ptr %in.185.i.i, i32 2
  %mul.i.i = shl i32 %add6.i.i, 2
  %conv.i.i = zext i32 %mul.i.i to i64
  %add11.i.i = add i64 %out.084.i.i, %conv.i.i
  %add12.i.i = add i32 %add6.i.i, %regcount.083.i.i
  %add13.i.i = add i32 %i.082.i.i, 2
  %cmp.i.i162 = icmp ult i32 %add13.i.i, %237
  br i1 %cmp.i.i162, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %phi.bo.i.i = shl i32 %add12.i.i, 2
  %246 = call ptr @memset(ptr %add.ptr10.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040384, i32 %phi.bo.i.i)
  %cmp16.i.i = icmp ugt i32 %phi.bo.i.i, 1040384
  br i1 %cmp16.i.i, label %do.end.i.i, label %if.end41.i.i, !prof !354

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 706, i32 noundef 9, ptr noundef null) #7
  br label %a6xx_get_crashdumper_registers.exit.i

if.end41.i.i:                                     ; preds = %for.end.i.i
  %call42.i.i = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr noundef nonnull %dumper.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end45.i.i, label %if.end41.i.i.a6xx_get_crashdumper_registers.exit.i_crit_edge

if.end41.i.i.a6xx_get_crashdumper_registers.exit.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_crashdumper_registers.exit.i

if.end45.i.i:                                     ; preds = %if.end41.i.i
  %247 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %arrayidx30.i, ptr %arrayidx33.i, align 4
  %248 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dumper.0, align 8
  %add.ptr47.i.i = getelementptr i8, ptr %249, i32 8192
  %add.i.i.i.i = add nuw nsw i32 %phi.bo.i.i, 8
  %call9.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i, i32 noundef 3520) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end45.i.i.state_kmemdup.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end45.i.i.state_kmemdup.exit.i.i_crit_edge:    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kmemdup.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end45.i.i
  %250 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.i, ptr noundef %251, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i3.i.i.i.i, label %if.end.i.i.i.i.state_kcalloc.exit.i.i.i_crit_edge

if.end.i.i.i.i.state_kcalloc.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i.i

if.end.i.i3.i.i.i.i:                              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call9.i.i.i.i.i.i, ptr %prev.i, align 4
  %253 = ptrtoint ptr %call9.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %objs, ptr %call9.i.i.i.i.i.i, align 128
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.i, i32 0, i32 1
  %254 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %251, ptr %prev3.i.i.i.i.i.i, align 4
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %call9.i.i.i.i.i.i, ptr %251, align 4
  br label %state_kcalloc.exit.i.i.i

state_kcalloc.exit.i.i.i:                         ; preds = %if.end.i.i3.i.i.i.i, %if.end.i.i.i.i.state_kcalloc.exit.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i.i, i32 0, i32 1
  %256 = call ptr @memcpy(ptr %data.i.i.i.i, ptr %add.ptr47.i.i, i32 %phi.bo.i.i)
  br label %state_kmemdup.exit.i.i

state_kmemdup.exit.i.i:                           ; preds = %state_kcalloc.exit.i.i.i, %if.end45.i.i.state_kmemdup.exit.i.i_crit_edge
  %retval.0.i6.i.i.i = phi ptr [ %data.i.i.i.i, %state_kcalloc.exit.i.i.i ], [ null, %if.end45.i.i.state_kmemdup.exit.i.i_crit_edge ]
  %data.i92.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %225, i32 %index.3163.i, i32 1
  %257 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %retval.0.i6.i.i.i, ptr %data.i92.i, align 4
  br label %a6xx_get_crashdumper_registers.exit.i

a6xx_get_crashdumper_registers.exit.i:            ; preds = %state_kmemdup.exit.i.i, %if.end41.i.i.a6xx_get_crashdumper_registers.exit.i_crit_edge, %do.end.i.i
  %inc35.i = add nuw nsw i32 %i.2164.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.i, 3
  br i1 %exitcond.not.i, label %a6xx_get_crashdumper_registers.exit.i.for.body39.i_crit_edge, label %a6xx_get_crashdumper_registers.exit.i.for.body29.i_crit_edge

a6xx_get_crashdumper_registers.exit.i.for.body29.i_crit_edge: ; preds = %a6xx_get_crashdumper_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i

a6xx_get_crashdumper_registers.exit.i.for.body39.i_crit_edge: ; preds = %a6xx_get_crashdumper_registers.exit.i
  br label %for.body39.i

for.body39.i:                                     ; preds = %a6xx_get_crashdumper_hlsq_registers.exit.i.for.body39.i_crit_edge, %a6xx_get_crashdumper_registers.exit.i.for.body39.i_crit_edge
  %i.3166.i = phi i32 [ %inc45.i, %a6xx_get_crashdumper_hlsq_registers.exit.i.for.body39.i_crit_edge ], [ 0, %a6xx_get_crashdumper_registers.exit.i.for.body39.i_crit_edge ]
  %index.4165.i = phi i32 [ %inc42.i, %a6xx_get_crashdumper_hlsq_registers.exit.i.for.body39.i_crit_edge ], [ 5, %a6xx_get_crashdumper_registers.exit.i.for.body39.i_crit_edge ]
  %arrayidx40.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %i.3166.i
  %258 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %registers.i, align 8
  %260 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dumper.0, align 8
  %262 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %iova.i.i, align 8
  %val1.i94.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %i.3166.i, i32 3
  %264 = ptrtoint ptr %val1.i94.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %val1.i94.i, align 4
  %conv.i.i95.i = zext i32 %265 to i64
  %266 = ptrtoint ptr %261 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %conv.i.i95.i, ptr %261, align 8
  %arrayidx3.i.i96.i = getelementptr i64, ptr %261, i32 1
  %267 = ptrtoint ptr %arrayidx3.i.i96.i to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 936748722495160321, ptr %arrayidx3.i.i96.i, align 8
  %count.i97.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %i.3166.i, i32 1
  %268 = ptrtoint ptr %count.i97.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %count.i97.i, align 4
  %in.076.i.i = getelementptr i64, ptr %261, i32 2
  %add.i99.i = add i64 %263, 8192
  %val0.i100.i = getelementptr [3 x %struct.a6xx_registers], ptr @a6xx_hlsq_reglist, i32 0, i32 %i.3166.i, i32 2
  %270 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx40.i, align 4
  %272 = ptrtoint ptr %val0.i100.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %val0.i100.i, align 4
  %shr.i.i = lshr i32 %273, 2
  %add8.i.i = sub nsw i32 51200, %shr.i.i
  br label %for.body.i113.i

for.body.i113.i:                                  ; preds = %for.body.i113.i.for.body.i113.i_crit_edge, %for.body39.i
  %in.082.i.i = phi ptr [ %in.076.i.i, %for.body39.i ], [ %in.0.i111.i, %for.body.i113.i.for.body.i113.i_crit_edge ]
  %.pn81.i.i = phi ptr [ %261, %for.body39.i ], [ %in.082.i.i, %for.body.i113.i.for.body.i113.i_crit_edge ]
  %out.080.i.i = phi i64 [ %add.i99.i, %for.body39.i ], [ %add12.i109.i, %for.body.i113.i.for.body.i113.i_crit_edge ]
  %i.079.i.i = phi i32 [ 0, %for.body39.i ], [ %add14.i.i, %for.body.i113.i.for.body.i113.i_crit_edge ]
  %regcount.078.i.i = phi i32 [ 0, %for.body39.i ], [ %add13.i110.i, %for.body.i113.i.for.body.i113.i_crit_edge ]
  %add2.i.i = or i32 %i.079.i.i, 1
  %arrayidx.i101.i = getelementptr i32, ptr %271, i32 %add2.i.i
  %274 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx.i101.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %271, i32 %i.079.i.i
  %276 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx4.i.i, align 4
  %sub.i102.i = sub i32 %275, %277
  %add5.i.i = add i32 %sub.i102.i, 1
  %sub9.i.i = add i32 %add8.i.i, %277
  %278 = ptrtoint ptr %in.082.i.i to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %out.080.i.i, ptr %in.082.i.i, align 8
  %conv.i75.i.i = zext i32 %sub9.i.i to i64
  %shl.i.i103.i = shl i64 %conv.i75.i.i, 44
  %conv1.i.i104.i = zext i32 %add5.i.i to i64
  %or.i.i105.i = or i64 %shl.i.i103.i, %conv1.i.i104.i
  %arrayidx2.i.i106.i = getelementptr i64, ptr %.pn81.i.i, i32 3
  %279 = ptrtoint ptr %arrayidx2.i.i106.i to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 %or.i.i105.i, ptr %arrayidx2.i.i106.i, align 8
  %mul.i107.i = shl i32 %add5.i.i, 2
  %conv.i108.i = zext i32 %mul.i107.i to i64
  %add12.i109.i = add i64 %out.080.i.i, %conv.i108.i
  %add13.i110.i = add i32 %add5.i.i, %regcount.078.i.i
  %add14.i.i = add i32 %i.079.i.i, 2
  %in.0.i111.i = getelementptr i64, ptr %in.082.i.i, i32 2
  %cmp.i112.i = icmp ult i32 %add14.i.i, %269
  br i1 %cmp.i112.i, label %for.body.i113.i.for.body.i113.i_crit_edge, label %for.end.i115.i

for.body.i113.i.for.body.i113.i_crit_edge:        ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i113.i

for.end.i115.i:                                   ; preds = %for.body.i113.i
  %inc42.i = add nuw nsw i32 %index.4165.i, 1
  %arrayidx43.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %259, i32 %index.4165.i
  %phi.bo.i114.i = shl i32 %add13.i110.i, 2
  %280 = call ptr @memset(ptr %in.0.i111.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040384, i32 %phi.bo.i114.i)
  %cmp17.i.i = icmp ugt i32 %phi.bo.i114.i, 1040384
  br i1 %cmp17.i.i, label %do.end.i116.i, label %if.end39.i.i, !prof !354

do.end.i116.i:                                    ; preds = %for.end.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 668, i32 noundef 9, ptr noundef null) #7
  br label %a6xx_get_crashdumper_hlsq_registers.exit.i

if.end39.i.i:                                     ; preds = %for.end.i115.i
  %call40.i.i = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr noundef nonnull %dumper.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end43.i.i, label %if.end39.i.i.a6xx_get_crashdumper_hlsq_registers.exit.i_crit_edge

if.end39.i.i.a6xx_get_crashdumper_hlsq_registers.exit.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_crashdumper_hlsq_registers.exit.i

if.end43.i.i:                                     ; preds = %if.end39.i.i
  %281 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %arrayidx40.i, ptr %arrayidx43.i, align 4
  %282 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dumper.0, align 8
  %add.ptr45.i.i = getelementptr i8, ptr %283, i32 8192
  %add.i.i.i117.i = add nuw nsw i32 %phi.bo.i114.i, 8
  %call9.i.i.i.i.i141.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i117.i, i32 noundef 3520) #11
  %tobool.not.i.i.i144.i = icmp eq ptr %call9.i.i.i.i.i141.i, null
  br i1 %tobool.not.i.i.i144.i, label %if.end43.i.i.state_kmemdup.exit.i156.i_crit_edge, label %if.end.i.i.i149.i

if.end43.i.i.state_kmemdup.exit.i156.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kmemdup.exit.i156.i

if.end.i.i.i149.i:                                ; preds = %if.end43.i.i
  %284 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i148.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i141.i, ptr noundef %285, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i148.i, label %if.end.i.i3.i.i.i151.i, label %if.end.i.i.i149.i.state_kcalloc.exit.i.i153.i_crit_edge

if.end.i.i.i149.i.state_kcalloc.exit.i.i153.i_crit_edge: ; preds = %if.end.i.i.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i153.i

if.end.i.i3.i.i.i151.i:                           ; preds = %if.end.i.i.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call9.i.i.i.i.i141.i, ptr %prev.i, align 4
  %287 = ptrtoint ptr %call9.i.i.i.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %objs, ptr %call9.i.i.i.i.i141.i, align 128
  %prev3.i.i.i.i.i150.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i141.i, i32 0, i32 1
  %288 = ptrtoint ptr %prev3.i.i.i.i.i150.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %285, ptr %prev3.i.i.i.i.i150.i, align 4
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile ptr %call9.i.i.i.i.i141.i, ptr %285, align 4
  br label %state_kcalloc.exit.i.i153.i

state_kcalloc.exit.i.i153.i:                      ; preds = %if.end.i.i3.i.i.i151.i, %if.end.i.i.i149.i.state_kcalloc.exit.i.i153.i_crit_edge
  %data.i.i.i152.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i141.i, i32 0, i32 1
  %290 = call ptr @memcpy(ptr %data.i.i.i152.i, ptr %add.ptr45.i.i, i32 %phi.bo.i114.i)
  br label %state_kmemdup.exit.i156.i

state_kmemdup.exit.i156.i:                        ; preds = %state_kcalloc.exit.i.i153.i, %if.end43.i.i.state_kmemdup.exit.i156.i_crit_edge
  %retval.0.i6.i.i154.i = phi ptr [ %data.i.i.i152.i, %state_kcalloc.exit.i.i153.i ], [ null, %if.end43.i.i.state_kmemdup.exit.i156.i_crit_edge ]
  %data.i155.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %259, i32 %index.4165.i, i32 1
  %291 = ptrtoint ptr %data.i155.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %retval.0.i6.i.i154.i, ptr %data.i155.i, align 4
  br label %a6xx_get_crashdumper_hlsq_registers.exit.i

a6xx_get_crashdumper_hlsq_registers.exit.i:       ; preds = %state_kmemdup.exit.i156.i, %if.end39.i.i.a6xx_get_crashdumper_hlsq_registers.exit.i_crit_edge, %do.end.i116.i
  %inc45.i = add nuw nsw i32 %i.3166.i, 1
  %exitcond170.not.i = icmp eq i32 %inc45.i, 3
  br i1 %exitcond170.not.i, label %a6xx_get_crashdumper_hlsq_registers.exit.i.a6xx_get_registers.exit_crit_edge, label %a6xx_get_crashdumper_hlsq_registers.exit.i.for.body39.i_crit_edge

a6xx_get_crashdumper_hlsq_registers.exit.i.for.body39.i_crit_edge: ; preds = %a6xx_get_crashdumper_hlsq_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39.i

a6xx_get_crashdumper_hlsq_registers.exit.i.a6xx_get_registers.exit_crit_edge: ; preds = %a6xx_get_crashdumper_hlsq_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_registers.exit

a6xx_get_registers.exit:                          ; preds = %a6xx_get_crashdumper_hlsq_registers.exit.i.a6xx_get_registers.exit_crit_edge, %state_kcalloc.exit.thread.i151
  %tobool26.not = icmp eq ptr %dumper.0, null
  br i1 %tobool26.not, label %a6xx_get_registers.exit.if.end28_crit_edge, label %if.then27

a6xx_get_registers.exit.if.end28_crit_edge:       ; preds = %a6xx_get_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %a6xx_get_registers.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %292 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i163 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %292, i32 noundef 3520, i32 noundef 344) #10
  %tobool.not.i.i164 = icmp eq ptr %call7.i.i.i.i163, null
  br i1 %tobool.not.i.i164, label %state_kcalloc.exit.thread.i165, label %if.end.i.i169

state_kcalloc.exit.thread.i165:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %shaders14.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 5
  %293 = ptrtoint ptr %shaders14.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr null, ptr %shaders14.i, align 8
  br label %a6xx_get_shaders.exit

if.end.i.i169:                                    ; preds = %if.then27
  %294 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i168 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i163, ptr noundef %295, ptr noundef %objs) #7
  br i1 %call.i.i.i.i168, label %if.end.i.i3.i.i171, label %if.end.i.i169.state_kcalloc.exit.i173_crit_edge

if.end.i.i169.state_kcalloc.exit.i173_crit_edge:  ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i173

if.end.i.i3.i.i171:                               ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  %296 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call7.i.i.i.i163, ptr %prev.i, align 4
  %297 = ptrtoint ptr %call7.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %objs, ptr %call7.i.i.i.i163, align 8
  %prev3.i.i.i.i170 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i163, i32 0, i32 1
  %298 = ptrtoint ptr %prev3.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %295, ptr %prev3.i.i.i.i170, align 4
  %299 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %299)
  store volatile ptr %call7.i.i.i.i163, ptr %295, align 4
  br label %state_kcalloc.exit.i173

state_kcalloc.exit.i173:                          ; preds = %if.end.i.i3.i.i171, %if.end.i.i169.state_kcalloc.exit.i173_crit_edge
  %data.i.i172 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i163, i32 0, i32 1
  %shaders.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 5
  %300 = ptrtoint ptr %shaders.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %data.i.i172, ptr %shaders.i, align 8
  %nr_shaders.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 6
  %301 = ptrtoint ptr %nr_shaders.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 42, ptr %nr_shaders.i, align 4
  %iova.i.i174 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper.0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %a6xx_get_shader_block.exit.i.for.body.i_crit_edge, %state_kcalloc.exit.i173
  %i.016.i = phi i32 [ 0, %state_kcalloc.exit.i173 ], [ %inc.i, %a6xx_get_shader_block.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %i.016.i
  %302 = ptrtoint ptr %shaders.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %shaders.i, align 8
  %arrayidx3.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %303, i32 %i.016.i
  %size.i.i = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %i.016.i, i32 2
  %304 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %size.i.i, align 4
  %mul1.i.i = mul i32 %305, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040384, i32 %mul1.i.i)
  %cmp.i.i175 = icmp ugt i32 %mul1.i.i, 1040384
  br i1 %cmp.i.i175, label %do.end.i.i183, label %for.cond.preheader.i.i, !prof !354

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %306 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dumper.0, align 8
  %type.i.i = getelementptr [42 x %struct.a6xx_shader_block], ptr @a6xx_shader_blocks, i32 0, i32 %i.016.i, i32 1
  %308 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %type.i.i, align 4
  %shl.i.i = shl i32 %309, 8
  %conv.i.i.i176 = zext i32 %shl.i.i to i64
  %310 = ptrtoint ptr %307 to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %conv.i.i.i176, ptr %307, align 8
  %arrayidx3.i.i.i177 = getelementptr i64, ptr %307, i32 1
  %311 = ptrtoint ptr %arrayidx3.i.i.i177 to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 936748722495160321, ptr %arrayidx3.i.i.i177, align 8
  %add.ptr.i.i178 = getelementptr i64, ptr %307, i32 2
  %312 = ptrtoint ptr %iova.i.i174 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %iova.i.i174, align 8
  %add.i.i179 = add i64 %313, 8192
  %314 = ptrtoint ptr %add.ptr.i.i178 to i32
  call void @__asan_store8_noabort(i32 %314)
  store i64 %add.i.i179, ptr %add.ptr.i.i178, align 8
  %conv1.i.i.i180 = zext i32 %305 to i64
  %or.i.i.i181 = or i64 %conv1.i.i.i180, 900719925474099200
  %arrayidx2.i.i.i182 = getelementptr i64, ptr %307, i32 3
  %315 = ptrtoint ptr %arrayidx2.i.i.i182 to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 %or.i.i.i181, ptr %arrayidx2.i.i.i182, align 8
  %add.ptr26.i.i = getelementptr i64, ptr %307, i32 4
  %or.1.i.i = or i32 %shl.i.i, 1
  %conv.i.1.i.i = zext i32 %or.1.i.i to i64
  %316 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %conv.i.1.i.i, ptr %add.ptr26.i.i, align 8
  %arrayidx3.i.1.i.i = getelementptr i64, ptr %307, i32 5
  %317 = ptrtoint ptr %arrayidx3.i.1.i.i to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 936748722495160321, ptr %arrayidx3.i.1.i.i, align 8
  %add.ptr.1.i.i = getelementptr i64, ptr %307, i32 6
  %318 = load i64, ptr %iova.i.i174, align 8
  %add.1.i.i = add i64 %318, 8192
  %319 = ptrtoint ptr %add.ptr.1.i.i to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %add.1.i.i, ptr %add.ptr.1.i.i, align 8
  %arrayidx2.i.1.i.i = getelementptr i64, ptr %307, i32 7
  %320 = ptrtoint ptr %arrayidx2.i.1.i.i to i32
  call void @__asan_store8_noabort(i32 %320)
  store i64 %or.i.i.i181, ptr %arrayidx2.i.1.i.i, align 8
  %add.ptr26.1.i.i = getelementptr i64, ptr %307, i32 8
  %or.2.i.i = or i32 %shl.i.i, 2
  %conv.i.2.i.i = zext i32 %or.2.i.i to i64
  %321 = ptrtoint ptr %add.ptr26.1.i.i to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %conv.i.2.i.i, ptr %add.ptr26.1.i.i, align 8
  %arrayidx3.i.2.i.i = getelementptr i64, ptr %307, i32 9
  %322 = ptrtoint ptr %arrayidx3.i.2.i.i to i32
  call void @__asan_store8_noabort(i32 %322)
  store i64 936748722495160321, ptr %arrayidx3.i.2.i.i, align 8
  %add.ptr.2.i.i = getelementptr i64, ptr %307, i32 10
  %323 = load i64, ptr %iova.i.i174, align 8
  %add.2.i.i = add i64 %323, 8192
  %324 = ptrtoint ptr %add.ptr.2.i.i to i32
  call void @__asan_store8_noabort(i32 %324)
  store i64 %add.2.i.i, ptr %add.ptr.2.i.i, align 8
  %arrayidx2.i.2.i.i = getelementptr i64, ptr %307, i32 11
  %325 = ptrtoint ptr %arrayidx2.i.2.i.i to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 %or.i.i.i181, ptr %arrayidx2.i.2.i.i, align 8
  %add.ptr26.2.i.i = getelementptr i64, ptr %307, i32 12
  %326 = call ptr @memset(ptr %add.ptr26.2.i.i, i32 0, i32 16)
  %call28.i.i = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr noundef %dumper.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %for.cond.preheader.i.i.a6xx_get_shader_block.exit.i_crit_edge

for.cond.preheader.i.i.a6xx_get_shader_block.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_shader_block.exit.i

do.end.i.i183:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 601, i32 noundef 9, ptr noundef null) #7
  br label %a6xx_get_shader_block.exit.i

if.end31.i.i:                                     ; preds = %for.cond.preheader.i.i
  %327 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %arrayidx.i, ptr %arrayidx3.i, align 4
  %328 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dumper.0, align 8
  %add.ptr33.i.i = getelementptr i8, ptr %329, i32 8192
  %add.i.i.i.i184 = add nuw nsw i32 %mul1.i.i, 8
  %call9.i.i.i.i.i.i208 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i184, i32 noundef 3520) #11
  %tobool.not.i.i.i.i211 = icmp eq ptr %call9.i.i.i.i.i.i208, null
  br i1 %tobool.not.i.i.i.i211, label %if.end31.i.i.state_kmemdup.exit.i.i220_crit_edge, label %if.end.i.i.i.i214

if.end31.i.i.state_kmemdup.exit.i.i220_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kmemdup.exit.i.i220

if.end.i.i.i.i214:                                ; preds = %if.end31.i.i
  %330 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i.i213 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.i208, ptr noundef %331, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i.i213, label %if.end.i.i3.i.i.i.i216, label %if.end.i.i.i.i214.state_kcalloc.exit.i.i.i218_crit_edge

if.end.i.i.i.i214.state_kcalloc.exit.i.i.i218_crit_edge: ; preds = %if.end.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i.i218

if.end.i.i3.i.i.i.i216:                           ; preds = %if.end.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #9
  %332 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call9.i.i.i.i.i.i208, ptr %prev.i, align 4
  %333 = ptrtoint ptr %call9.i.i.i.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %objs, ptr %call9.i.i.i.i.i.i208, align 128
  %prev3.i.i.i.i.i.i215 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.i208, i32 0, i32 1
  %334 = ptrtoint ptr %prev3.i.i.i.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %331, ptr %prev3.i.i.i.i.i.i215, align 4
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile ptr %call9.i.i.i.i.i.i208, ptr %331, align 4
  br label %state_kcalloc.exit.i.i.i218

state_kcalloc.exit.i.i.i218:                      ; preds = %if.end.i.i3.i.i.i.i216, %if.end.i.i.i.i214.state_kcalloc.exit.i.i.i218_crit_edge
  %data.i.i.i.i217 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i.i208, i32 0, i32 1
  %336 = call ptr @memcpy(ptr %data.i.i.i.i217, ptr %add.ptr33.i.i, i32 %mul1.i.i)
  br label %state_kmemdup.exit.i.i220

state_kmemdup.exit.i.i220:                        ; preds = %state_kcalloc.exit.i.i.i218, %if.end31.i.i.state_kmemdup.exit.i.i220_crit_edge
  %retval.0.i6.i.i.i219 = phi ptr [ %data.i.i.i.i217, %state_kcalloc.exit.i.i.i218 ], [ null, %if.end31.i.i.state_kmemdup.exit.i.i220_crit_edge ]
  %data.i12.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %303, i32 %i.016.i, i32 1
  %337 = ptrtoint ptr %data.i12.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %retval.0.i6.i.i.i219, ptr %data.i12.i, align 4
  br label %a6xx_get_shader_block.exit.i

a6xx_get_shader_block.exit.i:                     ; preds = %state_kmemdup.exit.i.i220, %do.end.i.i183, %for.cond.preheader.i.i.a6xx_get_shader_block.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i221 = icmp eq i32 %inc.i, 42
  br i1 %exitcond.not.i221, label %a6xx_get_shader_block.exit.i.a6xx_get_shaders.exit_crit_edge, label %a6xx_get_shader_block.exit.i.for.body.i_crit_edge

a6xx_get_shader_block.exit.i.for.body.i_crit_edge: ; preds = %a6xx_get_shader_block.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

a6xx_get_shader_block.exit.i.a6xx_get_shaders.exit_crit_edge: ; preds = %a6xx_get_shader_block.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_shaders.exit

a6xx_get_shaders.exit:                            ; preds = %a6xx_get_shader_block.exit.i.a6xx_get_shaders.exit_crit_edge, %state_kcalloc.exit.thread.i165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %338 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i222 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %338, i32 noundef 3520, i32 noundef 56) #10
  %tobool.not.i.i223 = icmp eq ptr %call7.i.i.i.i222, null
  br i1 %tobool.not.i.i223, label %state_kcalloc.exit.thread.i224, label %if.end.i.i228

state_kcalloc.exit.thread.i224:                   ; preds = %a6xx_get_shaders.exit
  call void @__sanitizer_cov_trace_pc() #9
  %clusters16.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 7
  %339 = ptrtoint ptr %clusters16.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr null, ptr %clusters16.i, align 8
  br label %a6xx_get_clusters.exit

if.end.i.i228:                                    ; preds = %a6xx_get_shaders.exit
  %340 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i227 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i222, ptr noundef %341, ptr noundef %objs) #7
  br i1 %call.i.i.i.i227, label %if.end.i.i3.i.i230, label %if.end.i.i228.state_kcalloc.exit.i232_crit_edge

if.end.i.i228.state_kcalloc.exit.i232_crit_edge:  ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i232

if.end.i.i3.i.i230:                               ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #9
  %342 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %call7.i.i.i.i222, ptr %prev.i, align 4
  %343 = ptrtoint ptr %call7.i.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %objs, ptr %call7.i.i.i.i222, align 8
  %prev3.i.i.i.i229 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i222, i32 0, i32 1
  %344 = ptrtoint ptr %prev3.i.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %341, ptr %prev3.i.i.i.i229, align 4
  %345 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %345)
  store volatile ptr %call7.i.i.i.i222, ptr %341, align 4
  br label %state_kcalloc.exit.i232

state_kcalloc.exit.i232:                          ; preds = %if.end.i.i3.i.i230, %if.end.i.i228.state_kcalloc.exit.i232_crit_edge
  %data.i.i231 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i222, i32 0, i32 1
  %clusters.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 7
  %346 = ptrtoint ptr %clusters.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %data.i.i231, ptr %clusters.i, align 8
  %nr_clusters.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 8
  %347 = ptrtoint ptr %nr_clusters.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 6, ptr %nr_clusters.i, align 4
  %iova.i.i233 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper.0, i32 0, i32 2
  br label %for.body.i237

for.body.i237:                                    ; preds = %a6xx_get_cluster.exit.i.for.body.i237_crit_edge, %state_kcalloc.exit.i232
  %i.030.i = phi i32 [ 0, %state_kcalloc.exit.i232 ], [ %inc.i297, %a6xx_get_cluster.exit.i.for.body.i237_crit_edge ]
  %arrayidx.i234 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %i.030.i
  %348 = ptrtoint ptr %clusters.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %clusters.i, align 8
  %arrayidx3.i235 = getelementptr %struct.a6xx_gpu_state_obj, ptr %349, i32 %i.030.i
  %350 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dumper.0, align 8
  %352 = ptrtoint ptr %iova.i.i233 to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %iova.i.i233, align 8
  %add.i.i236 = add i64 %353, 8192
  %354 = add nsw i32 %i.030.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %354)
  %355 = icmp ult i32 %354, -2
  br i1 %355, label %for.body.i237.if.end.i13.i_crit_edge, label %if.then.i.i244

for.body.i237.if.end.i13.i_crit_edge:             ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i13.i

if.then.i.i244:                                   ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #9
  %sel_reg.i.i = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %i.030.i, i32 4
  %356 = ptrtoint ptr %sel_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %sel_reg.i.i, align 4
  %sel_val.i.i = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %i.030.i, i32 5
  %358 = ptrtoint ptr %sel_val.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %sel_val.i.i, align 4
  %conv.i.i.i238 = zext i32 %359 to i64
  %360 = ptrtoint ptr %351 to i32
  call void @__asan_store8_noabort(i32 %360)
  store i64 %conv.i.i.i238, ptr %351, align 8
  %conv1.i.i.i239 = zext i32 %357 to i64
  %shl.i.i.i240 = shl i64 %conv1.i.i.i239, 44
  %or2.i.i.i241 = or i64 %shl.i.i.i240, 2097153
  %arrayidx3.i.i.i242 = getelementptr i64, ptr %351, i32 1
  %361 = ptrtoint ptr %arrayidx3.i.i.i242 to i32
  call void @__asan_store8_noabort(i32 %361)
  store i64 %or2.i.i.i241, ptr %arrayidx3.i.i.i242, align 8
  %add.ptr.i.i243 = getelementptr i64, ptr %351, i32 2
  br label %if.end.i13.i

if.end.i13.i:                                     ; preds = %if.then.i.i244, %for.body.i237.if.end.i13.i_crit_edge
  %in.0.i.i245 = phi ptr [ %add.ptr.i.i243, %if.then.i.i244 ], [ %351, %for.body.i237.if.end.i13.i_crit_edge ]
  %count.i.i246 = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %i.030.i, i32 3
  %registers.i.i = getelementptr [6 x %struct.a6xx_cluster], ptr @a6xx_clusters, i32 0, i32 %i.030.i, i32 2
  %362 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx.i234, align 4
  %shl.i.i247 = shl i32 %363, 8
  %conv.i99.i.i = zext i32 %shl.i.i247 to i64
  %364 = ptrtoint ptr %in.0.i.i245 to i32
  call void @__asan_store8_noabort(i32 %364)
  store i64 %conv.i99.i.i, ptr %in.0.i.i245, align 8
  %arrayidx3.i100.i.i = getelementptr i64, ptr %in.0.i.i245, i32 1
  %365 = ptrtoint ptr %arrayidx3.i100.i.i to i32
  call void @__asan_store8_noabort(i32 %365)
  store i64 45088772833935361, ptr %arrayidx3.i100.i.i, align 8
  %in.2104.i.i = getelementptr i64, ptr %in.0.i.i245, i32 2
  %366 = ptrtoint ptr %count.i.i246 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %count.i.i246, align 4
  %368 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %registers.i.i, align 4
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %if.end.i13.i
  %in.2110.i.i = phi ptr [ %in.2.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %in.2104.i.i, %if.end.i13.i ]
  %in.1.pn109.i.i = phi ptr [ %in.2110.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %in.0.i.i245, %if.end.i13.i ]
  %j.0108.i.i = phi i32 [ %add24.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %if.end.i13.i ]
  %regcount.1107.i.i = phi i32 [ %spec.select.i.i255, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %if.end.i13.i ]
  %out.1106.i.i = phi i64 [ %add18.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %add.i.i236, %if.end.i13.i ]
  %add10.i.i = or i32 %j.0108.i.i, 1
  %arrayidx.i.i248 = getelementptr i32, ptr %369, i32 %add10.i.i
  %370 = ptrtoint ptr %arrayidx.i.i248 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx.i.i248, align 4
  %arrayidx12.i.i = getelementptr i32, ptr %369, i32 %j.0108.i.i
  %372 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx12.i.i, align 4
  %sub.i.i249 = sub i32 %371, %373
  %add13.i.i250 = add i32 %sub.i.i249, 1
  %374 = ptrtoint ptr %in.2110.i.i to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 %out.1106.i.i, ptr %in.2110.i.i, align 8
  %conv.i101.i.i = zext i32 %373 to i64
  %shl.i102.i.i = shl i64 %conv.i101.i.i, 44
  %conv1.i103.i.i = zext i32 %add13.i.i250 to i64
  %or.i.i.i251 = or i64 %shl.i102.i.i, %conv1.i103.i.i
  %arrayidx2.i.i.i252 = getelementptr i64, ptr %in.1.pn109.i.i, i32 3
  %375 = ptrtoint ptr %arrayidx2.i.i.i252 to i32
  call void @__asan_store8_noabort(i32 %375)
  store i64 %or.i.i.i251, ptr %arrayidx2.i.i.i252, align 8
  %mul.i.i253 = shl i32 %add13.i.i250, 2
  %conv.i.i254 = zext i32 %mul.i.i253 to i64
  %add18.i.i = add i64 %out.1106.i.i, %conv.i.i254
  %spec.select.i.i255 = add i32 %add13.i.i250, %regcount.1107.i.i
  %add24.i.i = add i32 %j.0108.i.i, 2
  %in.2.i.i = getelementptr i64, ptr %in.2110.i.i, i32 2
  %cmp7.i.i = icmp ult i32 %add24.i.i, %367
  br i1 %cmp7.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge, label %for.end.i.i256

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i.i

for.end.i.i256:                                   ; preds = %for.body8.i.i
  %or3.1.i.i = or i32 %shl.i.i247, 17
  %conv.i99.1.i.i = zext i32 %or3.1.i.i to i64
  %376 = ptrtoint ptr %in.2.i.i to i32
  call void @__asan_store8_noabort(i32 %376)
  store i64 %conv.i99.1.i.i, ptr %in.2.i.i, align 8
  %arrayidx3.i100.1.i.i = getelementptr i64, ptr %in.2110.i.i, i32 3
  %377 = ptrtoint ptr %arrayidx3.i100.1.i.i to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 45088772833935361, ptr %arrayidx3.i100.1.i.i, align 8
  %in.2104.1.i.i = getelementptr i64, ptr %in.2110.i.i, i32 4
  br label %for.body8.1.i.i

for.body8.1.i.i:                                  ; preds = %for.body8.1.i.i.for.body8.1.i.i_crit_edge, %for.end.i.i256
  %in.2110.1.i.i = phi ptr [ %in.2.1.i.i, %for.body8.1.i.i.for.body8.1.i.i_crit_edge ], [ %in.2104.1.i.i, %for.end.i.i256 ]
  %in.1.pn109.1.i.i = phi ptr [ %in.2110.1.i.i, %for.body8.1.i.i.for.body8.1.i.i_crit_edge ], [ %in.2.i.i, %for.end.i.i256 ]
  %j.0108.1.i.i = phi i32 [ %add24.1.i.i, %for.body8.1.i.i.for.body8.1.i.i_crit_edge ], [ 0, %for.end.i.i256 ]
  %out.1106.1.i.i = phi i64 [ %add18.1.i.i, %for.body8.1.i.i.for.body8.1.i.i_crit_edge ], [ %add18.i.i, %for.end.i.i256 ]
  %add10.1.i.i = or i32 %j.0108.1.i.i, 1
  %arrayidx.1.i.i = getelementptr i32, ptr %369, i32 %add10.1.i.i
  %378 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx.1.i.i, align 4
  %arrayidx12.1.i.i = getelementptr i32, ptr %369, i32 %j.0108.1.i.i
  %380 = ptrtoint ptr %arrayidx12.1.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx12.1.i.i, align 4
  %sub.1.i.i = sub i32 %379, %381
  %add13.1.i.i = add i32 %sub.1.i.i, 1
  %382 = ptrtoint ptr %in.2110.1.i.i to i32
  call void @__asan_store8_noabort(i32 %382)
  store i64 %out.1106.1.i.i, ptr %in.2110.1.i.i, align 8
  %conv.i101.1.i.i = zext i32 %381 to i64
  %shl.i102.1.i.i = shl i64 %conv.i101.1.i.i, 44
  %conv1.i103.1.i.i = zext i32 %add13.1.i.i to i64
  %or.i.1.i.i = or i64 %shl.i102.1.i.i, %conv1.i103.1.i.i
  %arrayidx2.i.1.i.i257 = getelementptr i64, ptr %in.1.pn109.1.i.i, i32 3
  %383 = ptrtoint ptr %arrayidx2.i.1.i.i257 to i32
  call void @__asan_store8_noabort(i32 %383)
  store i64 %or.i.1.i.i, ptr %arrayidx2.i.1.i.i257, align 8
  %mul.1.i.i = shl i32 %add13.1.i.i, 2
  %conv.1.i.i = zext i32 %mul.1.i.i to i64
  %add18.1.i.i = add i64 %out.1106.1.i.i, %conv.1.i.i
  %add24.1.i.i = add i32 %j.0108.1.i.i, 2
  %in.2.1.i.i = getelementptr i64, ptr %in.2110.1.i.i, i32 2
  %cmp7.1.i.i = icmp ult i32 %add24.1.i.i, %367
  br i1 %cmp7.1.i.i, label %for.body8.1.i.i.for.body8.1.i.i_crit_edge, label %for.end.1.i.i

for.body8.1.i.i.for.body8.1.i.i_crit_edge:        ; preds = %for.body8.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.1.i.i

for.end.1.i.i:                                    ; preds = %for.body8.1.i.i
  %phi.bo.i.i258 = shl i32 %spec.select.i.i255, 3
  %384 = call ptr @memset(ptr %in.2.1.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040384, i32 %phi.bo.i.i258)
  %cmp30.i.i = icmp ugt i32 %phi.bo.i.i258, 1040384
  br i1 %cmp30.i.i, label %do.end.i.i259, label %if.end55.i.i, !prof !354

do.end.i.i259:                                    ; preds = %for.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 560, i32 noundef 9, ptr noundef null) #7
  br label %a6xx_get_cluster.exit.i

if.end55.i.i:                                     ; preds = %for.end.1.i.i
  %call56.i.i = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr noundef %dumper.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i)
  %tobool57.not.i.i = icmp eq i32 %call56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end59.i.i, label %if.end55.i.i.a6xx_get_cluster.exit.i_crit_edge

if.end55.i.i.a6xx_get_cluster.exit.i_crit_edge:   ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_cluster.exit.i

if.end59.i.i:                                     ; preds = %if.end55.i.i
  %385 = ptrtoint ptr %arrayidx3.i235 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %arrayidx.i234, ptr %arrayidx3.i235, align 4
  %386 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dumper.0, align 8
  %add.ptr61.i.i = getelementptr i8, ptr %387, i32 8192
  %add.i.i.i.i260 = add nuw nsw i32 %phi.bo.i.i258, 8
  %call9.i.i.i.i.i.i284 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i260, i32 noundef 3520) #11
  %tobool.not.i.i.i.i287 = icmp eq ptr %call9.i.i.i.i.i.i284, null
  br i1 %tobool.not.i.i.i.i287, label %if.end59.i.i.state_kmemdup.exit.i.i296_crit_edge, label %if.end.i.i.i.i290

if.end59.i.i.state_kmemdup.exit.i.i296_crit_edge: ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kmemdup.exit.i.i296

if.end.i.i.i.i290:                                ; preds = %if.end59.i.i
  %388 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i.i289 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.i284, ptr noundef %389, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i.i289, label %if.end.i.i3.i.i.i.i292, label %if.end.i.i.i.i290.state_kcalloc.exit.i.i.i294_crit_edge

if.end.i.i.i.i290.state_kcalloc.exit.i.i.i294_crit_edge: ; preds = %if.end.i.i.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i.i294

if.end.i.i3.i.i.i.i292:                           ; preds = %if.end.i.i.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  %390 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %call9.i.i.i.i.i.i284, ptr %prev.i, align 4
  %391 = ptrtoint ptr %call9.i.i.i.i.i.i284 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %objs, ptr %call9.i.i.i.i.i.i284, align 128
  %prev3.i.i.i.i.i.i291 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.i284, i32 0, i32 1
  %392 = ptrtoint ptr %prev3.i.i.i.i.i.i291 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %389, ptr %prev3.i.i.i.i.i.i291, align 4
  %393 = ptrtoint ptr %389 to i32
  call void @__asan_store4_noabort(i32 %393)
  store volatile ptr %call9.i.i.i.i.i.i284, ptr %389, align 4
  br label %state_kcalloc.exit.i.i.i294

state_kcalloc.exit.i.i.i294:                      ; preds = %if.end.i.i3.i.i.i.i292, %if.end.i.i.i.i290.state_kcalloc.exit.i.i.i294_crit_edge
  %data.i.i.i.i293 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i.i284, i32 0, i32 1
  %394 = call ptr @memcpy(ptr %data.i.i.i.i293, ptr %add.ptr61.i.i, i32 %phi.bo.i.i258)
  br label %state_kmemdup.exit.i.i296

state_kmemdup.exit.i.i296:                        ; preds = %state_kcalloc.exit.i.i.i294, %if.end59.i.i.state_kmemdup.exit.i.i296_crit_edge
  %retval.0.i6.i.i.i295 = phi ptr [ %data.i.i.i.i293, %state_kcalloc.exit.i.i.i294 ], [ null, %if.end59.i.i.state_kmemdup.exit.i.i296_crit_edge ]
  %data.i14.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %349, i32 %i.030.i, i32 1
  %395 = ptrtoint ptr %data.i14.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %retval.0.i6.i.i.i295, ptr %data.i14.i, align 4
  br label %a6xx_get_cluster.exit.i

a6xx_get_cluster.exit.i:                          ; preds = %state_kmemdup.exit.i.i296, %if.end55.i.i.a6xx_get_cluster.exit.i_crit_edge, %do.end.i.i259
  %inc.i297 = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i298 = icmp eq i32 %inc.i297, 6
  br i1 %exitcond.not.i298, label %a6xx_get_cluster.exit.i.a6xx_get_clusters.exit_crit_edge, label %a6xx_get_cluster.exit.i.for.body.i237_crit_edge

a6xx_get_cluster.exit.i.for.body.i237_crit_edge:  ; preds = %a6xx_get_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i237

a6xx_get_cluster.exit.i.a6xx_get_clusters.exit_crit_edge: ; preds = %a6xx_get_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_clusters.exit

a6xx_get_clusters.exit:                           ; preds = %a6xx_get_cluster.exit.i.a6xx_get_clusters.exit_crit_edge, %state_kcalloc.exit.thread.i224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %396 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i299 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %396, i32 noundef 3520, i32 noundef 128) #10
  %tobool.not.i.i300 = icmp eq ptr %call7.i.i.i.i299, null
  br i1 %tobool.not.i.i300, label %state_kcalloc.exit.thread.i301, label %if.end.i.i305

state_kcalloc.exit.thread.i301:                   ; preds = %a6xx_get_clusters.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dbgahb_clusters14.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 9
  %397 = ptrtoint ptr %dbgahb_clusters14.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr null, ptr %dbgahb_clusters14.i, align 8
  br label %a6xx_get_dbgahb_clusters.exit

if.end.i.i305:                                    ; preds = %a6xx_get_clusters.exit
  %398 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i304 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i299, ptr noundef %399, ptr noundef %objs) #7
  br i1 %call.i.i.i.i304, label %if.end.i.i3.i.i307, label %if.end.i.i305.state_kcalloc.exit.i309_crit_edge

if.end.i.i305.state_kcalloc.exit.i309_crit_edge:  ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i309

if.end.i.i3.i.i307:                               ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %call7.i.i.i.i299, ptr %prev.i, align 4
  %401 = ptrtoint ptr %call7.i.i.i.i299 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %objs, ptr %call7.i.i.i.i299, align 8
  %prev3.i.i.i.i306 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i299, i32 0, i32 1
  %402 = ptrtoint ptr %prev3.i.i.i.i306 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %399, ptr %prev3.i.i.i.i306, align 4
  %403 = ptrtoint ptr %399 to i32
  call void @__asan_store4_noabort(i32 %403)
  store volatile ptr %call7.i.i.i.i299, ptr %399, align 4
  br label %state_kcalloc.exit.i309

state_kcalloc.exit.i309:                          ; preds = %if.end.i.i3.i.i307, %if.end.i.i305.state_kcalloc.exit.i309_crit_edge
  %data.i.i308 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i299, i32 0, i32 1
  %dbgahb_clusters.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 9
  %404 = ptrtoint ptr %dbgahb_clusters.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %data.i.i308, ptr %dbgahb_clusters.i, align 8
  %nr_dbgahb_clusters.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 10
  %405 = ptrtoint ptr %nr_dbgahb_clusters.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 15, ptr %nr_dbgahb_clusters.i, align 4
  %iova.i.i310 = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper.0, i32 0, i32 2
  br label %for.body.i318

for.body.i318:                                    ; preds = %a6xx_get_dbgahb_cluster.exit.i.for.body.i318_crit_edge, %state_kcalloc.exit.i309
  %i.028.i = phi i32 [ 0, %state_kcalloc.exit.i309 ], [ %inc.i381, %a6xx_get_dbgahb_cluster.exit.i.for.body.i318_crit_edge ]
  %406 = ptrtoint ptr %dbgahb_clusters.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dbgahb_clusters.i, align 8
  %408 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dumper.0, align 8
  %410 = ptrtoint ptr %iova.i.i310 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %iova.i.i310, align 8
  %add.i.i311 = add i64 %411, 8192
  %statetype.i.i = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %i.028.i, i32 1
  %count.i.i312 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %i.028.i, i32 4
  %registers.i.i313 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %i.028.i, i32 3
  %base.i.i = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %i.028.i, i32 2
  %412 = ptrtoint ptr %statetype.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %statetype.i.i, align 4
  %shl.i.i314 = shl i32 %413, 8
  %conv.i.i.i315 = zext i32 %shl.i.i314 to i64
  %414 = ptrtoint ptr %409 to i32
  call void @__asan_store8_noabort(i32 %414)
  store i64 %conv.i.i.i315, ptr %409, align 8
  %arrayidx3.i.i.i316 = getelementptr i64, ptr %409, i32 1
  %415 = ptrtoint ptr %arrayidx3.i.i.i316 to i32
  call void @__asan_store8_noabort(i32 %415)
  store i64 936748722495160321, ptr %arrayidx3.i.i.i316, align 8
  %in.191.i.i = getelementptr i64, ptr %409, i32 2
  %416 = ptrtoint ptr %count.i.i312 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %count.i.i312, align 4
  %418 = ptrtoint ptr %registers.i.i313 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %registers.i.i313, align 4
  %420 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %base.i.i, align 4
  %shr.i.i317 = lshr i32 %421, 2
  %add12.i.i322 = sub nsw i32 51200, %shr.i.i317
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body.i318
  %in.197.i.i = phi ptr [ %in.1.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ %in.191.i.i, %for.body.i318 ]
  %in.0.pn96.i.i = phi ptr [ %in.197.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ %409, %for.body.i318 ]
  %out.195.i.i = phi i64 [ %add17.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ %add.i.i311, %for.body.i318 ]
  %j.094.i.i = phi i32 [ %add21.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i318 ]
  %regcount.193.i.i = phi i32 [ %spec.select.i.i328, %for.body4.i.i.for.body4.i.i_crit_edge ], [ 0, %for.body.i318 ]
  %add6.i.i319 = or i32 %j.094.i.i, 1
  %arrayidx.i.i320 = getelementptr i32, ptr %419, i32 %add6.i.i319
  %422 = ptrtoint ptr %arrayidx.i.i320 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx.i.i320, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %419, i32 %j.094.i.i
  %424 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx8.i.i, align 4
  %sub.i.i321 = sub i32 %423, %425
  %add9.i.i = add i32 %sub.i.i321, 1
  %sub13.i.i = add i32 %add12.i.i322, %425
  %426 = ptrtoint ptr %in.197.i.i to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %out.195.i.i, ptr %in.197.i.i, align 8
  %conv.i90.i.i = zext i32 %sub13.i.i to i64
  %shl.i.i.i323 = shl i64 %conv.i90.i.i, 44
  %conv1.i.i.i324 = zext i32 %add9.i.i to i64
  %or.i.i.i325 = or i64 %shl.i.i.i323, %conv1.i.i.i324
  %arrayidx2.i.i.i326 = getelementptr i64, ptr %in.0.pn96.i.i, i32 3
  %427 = ptrtoint ptr %arrayidx2.i.i.i326 to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %or.i.i.i325, ptr %arrayidx2.i.i.i326, align 8
  %mul16.i.i = shl i32 %add9.i.i, 2
  %conv.i.i327 = zext i32 %mul16.i.i to i64
  %add17.i.i = add i64 %out.195.i.i, %conv.i.i327
  %spec.select.i.i328 = add i32 %add9.i.i, %regcount.193.i.i
  %add21.i.i = add i32 %j.094.i.i, 2
  %in.1.i.i = getelementptr i64, ptr %in.197.i.i, i32 2
  %cmp3.i.i = icmp ult i32 %add21.i.i, %417
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.end.i.i332

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i.i

for.end.i.i332:                                   ; preds = %for.body4.i.i
  %shl.1.i.i = add i32 %shl.i.i314, 512
  %conv.i.1.i.i330 = zext i32 %shl.1.i.i to i64
  %428 = ptrtoint ptr %in.1.i.i to i32
  call void @__asan_store8_noabort(i32 %428)
  store i64 %conv.i.1.i.i330, ptr %in.1.i.i, align 8
  %arrayidx3.i.1.i.i331 = getelementptr i64, ptr %in.197.i.i, i32 3
  %429 = ptrtoint ptr %arrayidx3.i.1.i.i331 to i32
  call void @__asan_store8_noabort(i32 %429)
  store i64 936748722495160321, ptr %arrayidx3.i.1.i.i331, align 8
  %in.191.1.i.i = getelementptr i64, ptr %in.197.i.i, i32 4
  br label %for.body4.1.i.i

for.body4.1.i.i:                                  ; preds = %for.body4.1.i.i.for.body4.1.i.i_crit_edge, %for.end.i.i332
  %in.197.1.i.i = phi ptr [ %in.1.1.i.i, %for.body4.1.i.i.for.body4.1.i.i_crit_edge ], [ %in.191.1.i.i, %for.end.i.i332 ]
  %in.0.pn96.1.i.i = phi ptr [ %in.197.1.i.i, %for.body4.1.i.i.for.body4.1.i.i_crit_edge ], [ %in.1.i.i, %for.end.i.i332 ]
  %out.195.1.i.i = phi i64 [ %add17.1.i.i, %for.body4.1.i.i.for.body4.1.i.i_crit_edge ], [ %add17.i.i, %for.end.i.i332 ]
  %j.094.1.i.i = phi i32 [ %add21.1.i.i, %for.body4.1.i.i.for.body4.1.i.i_crit_edge ], [ 0, %for.end.i.i332 ]
  %add6.1.i.i = or i32 %j.094.1.i.i, 1
  %arrayidx.1.i.i333 = getelementptr i32, ptr %419, i32 %add6.1.i.i
  %430 = ptrtoint ptr %arrayidx.1.i.i333 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx.1.i.i333, align 4
  %arrayidx8.1.i.i = getelementptr i32, ptr %419, i32 %j.094.1.i.i
  %432 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx8.1.i.i, align 4
  %sub.1.i.i334 = sub i32 %431, %433
  %add9.1.i.i = add i32 %sub.1.i.i334, 1
  %sub13.1.i.i = add i32 %add12.i.i322, %433
  %434 = ptrtoint ptr %in.197.1.i.i to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 %out.195.1.i.i, ptr %in.197.1.i.i, align 8
  %conv.i90.1.i.i = zext i32 %sub13.1.i.i to i64
  %shl.i.1.i.i = shl i64 %conv.i90.1.i.i, 44
  %conv1.i.1.i.i = zext i32 %add9.1.i.i to i64
  %or.i.1.i.i335 = or i64 %shl.i.1.i.i, %conv1.i.1.i.i
  %arrayidx2.i.1.i.i336 = getelementptr i64, ptr %in.0.pn96.1.i.i, i32 3
  %435 = ptrtoint ptr %arrayidx2.i.1.i.i336 to i32
  call void @__asan_store8_noabort(i32 %435)
  store i64 %or.i.1.i.i335, ptr %arrayidx2.i.1.i.i336, align 8
  %mul16.1.i.i = shl i32 %add9.1.i.i, 2
  %conv.1.i.i337 = zext i32 %mul16.1.i.i to i64
  %add17.1.i.i = add i64 %out.195.1.i.i, %conv.1.i.i337
  %add21.1.i.i = add i32 %j.094.1.i.i, 2
  %in.1.1.i.i = getelementptr i64, ptr %in.197.1.i.i, i32 2
  %cmp3.1.i.i = icmp ult i32 %add21.1.i.i, %417
  br i1 %cmp3.1.i.i, label %for.body4.1.i.i.for.body4.1.i.i_crit_edge, label %for.end.1.i.i340

for.body4.1.i.i.for.body4.1.i.i_crit_edge:        ; preds = %for.body4.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.1.i.i

for.end.1.i.i340:                                 ; preds = %for.body4.1.i.i
  %arrayidx3.i329 = getelementptr %struct.a6xx_gpu_state_obj, ptr %407, i32 %i.028.i
  %arrayidx.i338 = getelementptr [15 x %struct.a6xx_dbgahb_cluster], ptr @a6xx_dbgahb_clusters, i32 0, i32 %i.028.i
  %phi.bo.i.i339 = shl i32 %spec.select.i.i328, 3
  %436 = call ptr @memset(ptr %in.1.1.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1040384, i32 %phi.bo.i.i339)
  %cmp27.i.i = icmp ugt i32 %phi.bo.i.i339, 1040384
  br i1 %cmp27.i.i, label %do.end.i.i341, label %if.end51.i.i, !prof !354

do.end.i.i341:                                    ; preds = %for.end.1.i.i340
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 489, i32 noundef 9, ptr noundef null) #7
  br label %a6xx_get_dbgahb_cluster.exit.i

if.end51.i.i:                                     ; preds = %for.end.1.i.i340
  %call52.i.i = call fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr noundef %dumper.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end55.i.i343, label %if.end51.i.i.a6xx_get_dbgahb_cluster.exit.i_crit_edge

if.end51.i.i.a6xx_get_dbgahb_cluster.exit.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_dbgahb_cluster.exit.i

if.end55.i.i343:                                  ; preds = %if.end51.i.i
  %437 = ptrtoint ptr %arrayidx3.i329 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %arrayidx.i338, ptr %arrayidx3.i329, align 4
  %438 = ptrtoint ptr %dumper.0 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %dumper.0, align 8
  %add.ptr57.i.i = getelementptr i8, ptr %439, i32 8192
  %add.i.i.i.i342 = add nuw nsw i32 %phi.bo.i.i339, 8
  %call9.i.i.i.i.i.i367 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i342, i32 noundef 3520) #11
  %tobool.not.i.i.i.i370 = icmp eq ptr %call9.i.i.i.i.i.i367, null
  br i1 %tobool.not.i.i.i.i370, label %if.end55.i.i343.state_kmemdup.exit.i.i380_crit_edge, label %if.end.i.i.i.i373

if.end55.i.i343.state_kmemdup.exit.i.i380_crit_edge: ; preds = %if.end55.i.i343
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kmemdup.exit.i.i380

if.end.i.i.i.i373:                                ; preds = %if.end55.i.i343
  %440 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i.i372 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.i367, ptr noundef %441, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i.i372, label %if.end.i.i3.i.i.i.i375, label %if.end.i.i.i.i373.state_kcalloc.exit.i.i.i377_crit_edge

if.end.i.i.i.i373.state_kcalloc.exit.i.i.i377_crit_edge: ; preds = %if.end.i.i.i.i373
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i.i377

if.end.i.i3.i.i.i.i375:                           ; preds = %if.end.i.i.i.i373
  call void @__sanitizer_cov_trace_pc() #9
  %442 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %call9.i.i.i.i.i.i367, ptr %prev.i, align 4
  %443 = ptrtoint ptr %call9.i.i.i.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %objs, ptr %call9.i.i.i.i.i.i367, align 128
  %prev3.i.i.i.i.i.i374 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.i367, i32 0, i32 1
  %444 = ptrtoint ptr %prev3.i.i.i.i.i.i374 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %441, ptr %prev3.i.i.i.i.i.i374, align 4
  %445 = ptrtoint ptr %441 to i32
  call void @__asan_store4_noabort(i32 %445)
  store volatile ptr %call9.i.i.i.i.i.i367, ptr %441, align 4
  br label %state_kcalloc.exit.i.i.i377

state_kcalloc.exit.i.i.i377:                      ; preds = %if.end.i.i3.i.i.i.i375, %if.end.i.i.i.i373.state_kcalloc.exit.i.i.i377_crit_edge
  %data.i.i.i.i376 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i.i367, i32 0, i32 1
  %446 = call ptr @memcpy(ptr %data.i.i.i.i376, ptr %add.ptr57.i.i, i32 %phi.bo.i.i339)
  br label %state_kmemdup.exit.i.i380

state_kmemdup.exit.i.i380:                        ; preds = %state_kcalloc.exit.i.i.i377, %if.end55.i.i343.state_kmemdup.exit.i.i380_crit_edge
  %retval.0.i6.i.i.i378 = phi ptr [ %data.i.i.i.i376, %state_kcalloc.exit.i.i.i377 ], [ null, %if.end55.i.i343.state_kmemdup.exit.i.i380_crit_edge ]
  %data.i12.i379 = getelementptr %struct.a6xx_gpu_state_obj, ptr %407, i32 %i.028.i, i32 1
  %447 = ptrtoint ptr %data.i12.i379 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %retval.0.i6.i.i.i378, ptr %data.i12.i379, align 4
  br label %a6xx_get_dbgahb_cluster.exit.i

a6xx_get_dbgahb_cluster.exit.i:                   ; preds = %state_kmemdup.exit.i.i380, %if.end51.i.i.a6xx_get_dbgahb_cluster.exit.i_crit_edge, %do.end.i.i341
  %inc.i381 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i382 = icmp eq i32 %inc.i381, 15
  br i1 %exitcond.not.i382, label %a6xx_get_dbgahb_cluster.exit.i.a6xx_get_dbgahb_clusters.exit_crit_edge, label %a6xx_get_dbgahb_cluster.exit.i.for.body.i318_crit_edge

a6xx_get_dbgahb_cluster.exit.i.for.body.i318_crit_edge: ; preds = %a6xx_get_dbgahb_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i318

a6xx_get_dbgahb_cluster.exit.i.a6xx_get_dbgahb_clusters.exit_crit_edge: ; preds = %a6xx_get_dbgahb_cluster.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_dbgahb_clusters.exit

a6xx_get_dbgahb_clusters.exit:                    ; preds = %a6xx_get_dbgahb_cluster.exit.i.a6xx_get_dbgahb_clusters.exit_crit_edge, %state_kcalloc.exit.thread.i301
  %bo = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper.0, i32 0, i32 1
  %448 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %bo, align 4
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %450 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %aspace, align 8
  call void @msm_gem_kernel_put(ptr noundef %449, ptr noundef %451) #7
  br label %if.end28

if.end28:                                         ; preds = %a6xx_get_dbgahb_clusters.exit, %a6xx_get_registers.exit.if.end28_crit_edge, %a6xx_get_registers.exit.thread
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @snapshot_debugbus to i32))
  %452 = load i8, ptr @snapshot_debugbus, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool29.not = icmp eq i8 %452, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  %453 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i384 = getelementptr i8, ptr %454, i32 6160
  call void @msm_writel(i32 noundef -268435456, ptr noundef %add.ptr.i.i384) #7
  %455 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i132.i = getelementptr i8, ptr %456, i32 6164
  call void @msm_writel(i32 noundef 251658240, ptr noundef %add.ptr.i132.i) #7
  %457 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i134.i = getelementptr i8, ptr %458, i32 6176
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i134.i) #7
  %459 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i136.i = getelementptr i8, ptr %460, i32 6180
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i136.i) #7
  %461 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i138.i = getelementptr i8, ptr %462, i32 6184
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i138.i) #7
  %463 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i140.i = getelementptr i8, ptr %464, i32 6188
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i140.i) #7
  %465 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i142.i = getelementptr i8, ptr %466, i32 6208
  call void @msm_writel(i32 noundef 1985229328, ptr noundef %add.ptr.i142.i) #7
  %467 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i144.i = getelementptr i8, ptr %468, i32 6212
  call void @msm_writel(i32 noundef -19088744, ptr noundef %add.ptr.i144.i) #7
  %469 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i146.i = getelementptr i8, ptr %470, i32 6192
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i146.i) #7
  %471 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i148.i = getelementptr i8, ptr %472, i32 6196
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i148.i) #7
  %473 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i150.i = getelementptr i8, ptr %474, i32 6200
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i150.i) #7
  %475 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i152.i = getelementptr i8, ptr %476, i32 6204
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i152.i) #7
  %pdev.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %477 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %pdev.i, align 8
  %call2.i = call ptr @platform_get_resource_byname(ptr noundef %478, i32 noundef 512, ptr noundef nonnull @.str.70) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then30.if.end20.i_crit_edge, label %if.end.i

if.then30.if.end20.i_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.end.i:                                         ; preds = %if.then30
  %479 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %call2.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call2.i, i32 0, i32 1
  %481 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %end.i.i, align 4
  %sub.i.i385 = sub i32 1, %480
  %add.i.i386 = add i32 %sub.i.i385, %482
  %call4.i = call ptr @ioremap(i32 noundef %480, i32 noundef %add.i.i386) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then6.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i387 = getelementptr i8, ptr %call4.i, i32 16
  call void @msm_writel(i32 noundef -268435456, ptr noundef %add.ptr.i387) #7
  %add.ptr9.i = getelementptr i8, ptr %call4.i, i32 20
  call void @msm_writel(i32 noundef 251658240, ptr noundef %add.ptr9.i) #7
  %add.ptr10.i = getelementptr i8, ptr %call4.i, i32 32
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr10.i) #7
  %add.ptr11.i = getelementptr i8, ptr %call4.i, i32 36
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.i) #7
  %add.ptr12.i = getelementptr i8, ptr %call4.i, i32 40
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr12.i) #7
  %add.ptr13.i = getelementptr i8, ptr %call4.i, i32 44
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr13.i) #7
  %add.ptr14.i = getelementptr i8, ptr %call4.i, i32 64
  call void @msm_writel(i32 noundef 1985229328, ptr noundef %add.ptr14.i) #7
  %add.ptr15.i = getelementptr i8, ptr %call4.i, i32 68
  call void @msm_writel(i32 noundef -19088744, ptr noundef %add.ptr15.i) #7
  %add.ptr16.i = getelementptr i8, ptr %call4.i, i32 48
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr16.i) #7
  %add.ptr17.i = getelementptr i8, ptr %call4.i, i32 52
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr17.i) #7
  %add.ptr18.i = getelementptr i8, ptr %call4.i, i32 56
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr18.i) #7
  %add.ptr19.i = getelementptr i8, ptr %call4.i, i32 60
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr19.i) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then6.i, %if.end.i.if.end20.i_crit_edge, %if.then30.if.end20.i_crit_edge
  %tobool5.not219.i = phi i1 [ false, %if.then6.i ], [ true, %if.end.i.if.end20.i_crit_edge ], [ true, %if.then30.if.end20.i_crit_edge ]
  %cxdbg.0218.i = phi ptr [ %call4.i, %if.then6.i ], [ null, %if.end.i.if.end20.i_crit_edge ], [ null, %if.then30.if.end20.i_crit_edge ]
  %revn.i.i.i388 = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %483 = ptrtoint ptr %revn.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %revn.i.i.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %484)
  %cmp.i.i.not.i389 = icmp eq i32 %484, 630
  %add.i153.i = select i1 %cmp.i.i.not.i389, i32 320, i32 328
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i153.i, i32 noundef 3520) #11
  %tobool.not.i.i391 = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i391, label %state_kcalloc.exit.thread.i392, label %if.end.i.i396

state_kcalloc.exit.thread.i392:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %debugbus221.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 13
  %485 = ptrtoint ptr %debugbus221.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr null, ptr %debugbus221.i, align 8
  br label %if.end39.i

if.end.i.i396:                                    ; preds = %if.end20.i
  %486 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i395 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i, ptr noundef %487, ptr noundef %objs) #7
  br i1 %call.i.i.i.i395, label %if.end.i.i3.i.i398, label %if.end.i.i396.state_kcalloc.exit.i400_crit_edge

if.end.i.i396.state_kcalloc.exit.i400_crit_edge:  ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i400

if.end.i.i3.i.i398:                               ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #9
  %488 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %call9.i.i.i.i, ptr %prev.i, align 4
  %489 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %objs, ptr %call9.i.i.i.i, align 128
  %prev3.i.i.i.i397 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i, i32 0, i32 1
  %490 = ptrtoint ptr %prev3.i.i.i.i397 to i32
  call void @__asan_store4_noabort(i32 %490)
  store ptr %487, ptr %prev3.i.i.i.i397, align 4
  %491 = ptrtoint ptr %487 to i32
  call void @__asan_store4_noabort(i32 %491)
  store volatile ptr %call9.i.i.i.i, ptr %487, align 4
  br label %state_kcalloc.exit.i400

state_kcalloc.exit.i400:                          ; preds = %if.end.i.i3.i.i398, %if.end.i.i396.state_kcalloc.exit.i400_crit_edge
  %data.i.i399 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i, i32 0, i32 1
  %debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 13
  %492 = ptrtoint ptr %debugbus.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %data.i.i399, ptr %debugbus.i, align 8
  br label %for.body.i404

for.body.i404:                                    ; preds = %for.body.i404.for.body.i404_crit_edge, %state_kcalloc.exit.i400
  %i.0230.i = phi i32 [ %inc.i402, %for.body.i404.for.body.i404_crit_edge ], [ 0, %state_kcalloc.exit.i400 ]
  %arrayidx.i401 = getelementptr [39 x %struct.a6xx_debugbus_block], ptr @a6xx_debugbus_blocks, i32 0, i32 %i.0230.i
  %493 = ptrtoint ptr %debugbus.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %debugbus.i, align 8
  %arrayidx28.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %494, i32 %i.0230.i
  call fastcc void @a6xx_get_debugbus_block(ptr noundef %gpu, ptr noundef %call7.i.i, ptr noundef %arrayidx.i401, ptr noundef %arrayidx28.i) #7
  %inc.i402 = add nuw nsw i32 %i.0230.i, 1
  %exitcond.not.i403 = icmp eq i32 %inc.i402, 39
  br i1 %exitcond.not.i403, label %for.end.i, label %for.body.i404.for.body.i404_crit_edge

for.body.i404.for.body.i404_crit_edge:            ; preds = %for.body.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i404

for.end.i:                                        ; preds = %for.body.i404
  %nr_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 14
  %495 = ptrtoint ptr %nr_debugbus.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 39, ptr %nr_debugbus.i, align 4
  %496 = ptrtoint ptr %revn.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %revn.i.i.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %497)
  %cmp.i.i155.not.i = icmp eq i32 %497, 630
  br i1 %cmp.i.i155.not.i, label %for.end.i.if.then44.i_crit_edge, label %if.then33.i

for.end.i.if.then44.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %498 = ptrtoint ptr %debugbus.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %debugbus.i, align 8
  %arrayidx35.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %499, i32 39
  call fastcc void @a6xx_get_debugbus_block(ptr noundef %gpu, ptr noundef %call7.i.i, ptr noundef nonnull @a6xx_gbif_debugbus_block, ptr noundef %arrayidx35.i) #7
  %500 = ptrtoint ptr %nr_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %nr_debugbus.i, align 4
  %add37.i = add i32 %501, 1
  store i32 %add37.i, ptr %nr_debugbus.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %state_kcalloc.exit.thread.i392
  %502 = ptrtoint ptr %revn.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %502)
  %.pr.i = load i32, ptr %revn.i.i.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %.pr.i)
  %cmp.i.i157.not.i = icmp eq i32 %.pr.i, 630
  br i1 %cmp.i.i157.not.i, label %if.end39.i.if.then44.i_crit_edge, label %if.end39.i.if.end51.i_crit_edge

if.end39.i.if.end51.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.end39.i.if.then44.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.end39.i.if.then44.i_crit_edge, %for.end.i.if.then44.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %503 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i162.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %503, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i165.i = icmp eq ptr %call7.i.i.i162.i, null
  br i1 %tobool.not.i165.i, label %state_kcalloc.exit176.thread.i, label %if.end.i170.i

state_kcalloc.exit176.thread.i:                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %vbif_debugbus225.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 15
  %504 = ptrtoint ptr %vbif_debugbus225.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store ptr null, ptr %vbif_debugbus225.i, align 8
  br label %if.end51.i

if.end.i170.i:                                    ; preds = %if.then44.i
  %505 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %prev.i, align 4
  %call.i.i.i169.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i162.i, ptr noundef %506, ptr noundef %objs) #7
  br i1 %call.i.i.i169.i, label %if.end.i.i3.i172.i, label %if.end.i170.i.state_kcalloc.exit176.i_crit_edge

if.end.i170.i.state_kcalloc.exit176.i_crit_edge:  ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit176.i

if.end.i.i3.i172.i:                               ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  %507 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %call7.i.i.i162.i, ptr %prev.i, align 4
  %508 = ptrtoint ptr %call7.i.i.i162.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %objs, ptr %call7.i.i.i162.i, align 8
  %prev3.i.i.i171.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i162.i, i32 0, i32 1
  %509 = ptrtoint ptr %prev3.i.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %506, ptr %prev3.i.i.i171.i, align 4
  %510 = ptrtoint ptr %506 to i32
  call void @__asan_store4_noabort(i32 %510)
  store volatile ptr %call7.i.i.i162.i, ptr %506, align 4
  br label %state_kcalloc.exit176.i

state_kcalloc.exit176.i:                          ; preds = %if.end.i.i3.i172.i, %if.end.i170.i.state_kcalloc.exit176.i_crit_edge
  %data.i173.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i162.i, i32 0, i32 1
  %vbif_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 15
  %511 = ptrtoint ptr %vbif_debugbus.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %data.i173.i, ptr %vbif_debugbus.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %512 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %512, i32 noundef 3520, i32 noundef 688) #10
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %state_kcalloc.exit.thread.i.i, label %if.end.i.i.i

state_kcalloc.exit.thread.i.i:                    ; preds = %state_kcalloc.exit176.i
  call void @__sanitizer_cov_trace_pc() #9
  %data83.i.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i162.i, i32 1, i32 0, i32 1
  %513 = ptrtoint ptr %data83.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr null, ptr %data83.i.i, align 4
  br label %if.end51.i

if.end.i.i.i:                                     ; preds = %state_kcalloc.exit176.i
  %514 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %515, ptr noundef %objs) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i3.i.i.i, label %if.end.i.i.i.state_kcalloc.exit.i.i_crit_edge

if.end.i.i.i.state_kcalloc.exit.i.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i.i

if.end.i.i3.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %516 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store ptr %call7.i.i.i.i.i, ptr %prev.i, align 4
  %517 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %objs, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %518 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr %515, ptr %prev3.i.i.i.i.i, align 4
  %519 = ptrtoint ptr %515 to i32
  call void @__asan_store4_noabort(i32 %519)
  store volatile ptr %call7.i.i.i.i.i, ptr %515, align 4
  br label %state_kcalloc.exit.i.i

state_kcalloc.exit.i.i:                           ; preds = %if.end.i.i3.i.i.i, %if.end.i.i.i.state_kcalloc.exit.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %data.i177.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i162.i, i32 1, i32 0, i32 1
  %520 = ptrtoint ptr %data.i177.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store ptr %data.i.i.i, ptr %data.i177.i, align 4
  %521 = ptrtoint ptr %data.i173.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr null, ptr %data.i173.i, align 8
  %522 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %523, i32 49156
  %call.i.i.i405 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #7
  %or.i.i = or i32 %call.i.i.i405, 2
  %524 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i51.i.i = getelementptr i8, ptr %525, i32 49156
  call void @msm_writel(i32 noundef %or.i.i, ptr noundef %add.ptr.i51.i.i) #7
  %526 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %527, i32 49684
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i53.i.i) #7
  %528 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i55.i.i = getelementptr i8, ptr %529, i32 49680
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i55.i.i) #7
  %530 = ptrtoint ptr %data.i177.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %data.i177.i, align 4
  %532 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %533, i32 49692
  call void @msm_writel(i32 noundef 65536, ptr noundef %add.ptr.i.i.i.i) #7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %state_kcalloc.exit.i.i
  %i.013.i.i.i = phi i32 [ 0, %state_kcalloc.exit.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %534 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %535, i32 49696
  call void @msm_writel(i32 noundef %i.013.i.i.i, ptr noundef %add.ptr.i9.i.i.i) #7
  %536 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i.i.i = getelementptr i8, ptr %537, i32 49712
  %call.i.i.i179.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i.i.i) #7
  %arrayidx.i.i.i = getelementptr i32, ptr %531, i32 %i.013.i.i.i
  %538 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %call.i.i.i179.i, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %vbif_debugbus_read.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

vbif_debugbus_read.exit.i.i:                      ; preds = %for.body.i.i.i
  %add.ptr.i180.i = getelementptr i32, ptr %531, i32 16
  %539 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i.1.i.i = getelementptr i8, ptr %540, i32 49692
  call void @msm_writel(i32 noundef 131072, ptr noundef %add.ptr.i.i.1.i.i) #7
  br label %for.body.i.1.i.i

for.body.i.1.i.i:                                 ; preds = %for.body.i.1.i.i.for.body.i.1.i.i_crit_edge, %vbif_debugbus_read.exit.i.i
  %i.013.i.1.i.i = phi i32 [ 0, %vbif_debugbus_read.exit.i.i ], [ %inc.i.1.i.i, %for.body.i.1.i.i.for.body.i.1.i.i_crit_edge ]
  %541 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i.1.i.i = getelementptr i8, ptr %542, i32 49696
  call void @msm_writel(i32 noundef %i.013.i.1.i.i, ptr noundef %add.ptr.i9.i.1.i.i) #7
  %543 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i.1.i.i = getelementptr i8, ptr %544, i32 49712
  %call.i.i.1.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i.1.i.i) #7
  %arrayidx.i.1.i.i = getelementptr i32, ptr %add.ptr.i180.i, i32 %i.013.i.1.i.i
  %545 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %call.i.i.1.i.i, ptr %arrayidx.i.1.i.i, align 4
  %inc.i.1.i.i = add nuw nsw i32 %i.013.i.1.i.i, 1
  %exitcond.not.i.1.i.i = icmp eq i32 %inc.i.1.i.i, 16
  br i1 %exitcond.not.i.1.i.i, label %vbif_debugbus_read.exit.1.i.i, label %for.body.i.1.i.i.for.body.i.1.i.i_crit_edge

for.body.i.1.i.i.for.body.i.1.i.i_crit_edge:      ; preds = %for.body.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1.i.i

vbif_debugbus_read.exit.1.i.i:                    ; preds = %for.body.i.1.i.i
  %add.ptr.1.i.i406 = getelementptr i32, ptr %531, i32 32
  %546 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i57.i.i = getelementptr i8, ptr %547, i32 49692
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i57.i.i) #7
  br label %for.body.i65.i.i

for.body.i65.i.i:                                 ; preds = %for.body.i65.i.i.for.body.i65.i.i_crit_edge, %vbif_debugbus_read.exit.1.i.i
  %i.013.i58.i.i = phi i32 [ 0, %vbif_debugbus_read.exit.1.i.i ], [ %inc.i63.i.i, %for.body.i65.i.i.for.body.i65.i.i_crit_edge ]
  %548 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i59.i.i = getelementptr i8, ptr %549, i32 49696
  call void @msm_writel(i32 noundef %i.013.i58.i.i, ptr noundef %add.ptr.i9.i59.i.i) #7
  %550 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i60.i.i = getelementptr i8, ptr %551, i32 49712
  %call.i.i61.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i60.i.i) #7
  %arrayidx.i62.i.i = getelementptr i32, ptr %add.ptr.1.i.i406, i32 %i.013.i58.i.i
  %552 = ptrtoint ptr %arrayidx.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %call.i.i61.i.i, ptr %arrayidx.i62.i.i, align 4
  %inc.i63.i.i = add nuw nsw i32 %i.013.i58.i.i, 1
  %exitcond.not.i64.i.i = icmp eq i32 %inc.i63.i.i, 18
  br i1 %exitcond.not.i64.i.i, label %vbif_debugbus_read.exit66.i.i, label %for.body.i65.i.i.for.body.i65.i.i_crit_edge

for.body.i65.i.i.for.body.i65.i.i_crit_edge:      ; preds = %for.body.i65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65.i.i

vbif_debugbus_read.exit66.i.i:                    ; preds = %for.body.i65.i.i
  %add.ptr10.i.i407 = getelementptr i32, ptr %531, i32 50
  %553 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i57.1.i.i = getelementptr i8, ptr %554, i32 49692
  call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i.i57.1.i.i) #7
  br label %for.body.i65.1.i.i

for.body.i65.1.i.i:                               ; preds = %for.body.i65.1.i.i.for.body.i65.1.i.i_crit_edge, %vbif_debugbus_read.exit66.i.i
  %i.013.i58.1.i.i = phi i32 [ 0, %vbif_debugbus_read.exit66.i.i ], [ %inc.i63.1.i.i, %for.body.i65.1.i.i.for.body.i65.1.i.i_crit_edge ]
  %555 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i59.1.i.i = getelementptr i8, ptr %556, i32 49696
  call void @msm_writel(i32 noundef %i.013.i58.1.i.i, ptr noundef %add.ptr.i9.i59.1.i.i) #7
  %557 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i60.1.i.i = getelementptr i8, ptr %558, i32 49712
  %call.i.i61.1.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i60.1.i.i) #7
  %arrayidx.i62.1.i.i = getelementptr i32, ptr %add.ptr10.i.i407, i32 %i.013.i58.1.i.i
  %559 = ptrtoint ptr %arrayidx.i62.1.i.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %call.i.i61.1.i.i, ptr %arrayidx.i62.1.i.i, align 4
  %inc.i63.1.i.i = add nuw nsw i32 %i.013.i58.1.i.i, 1
  %exitcond.not.i64.1.i.i = icmp eq i32 %inc.i63.1.i.i, 18
  br i1 %exitcond.not.i64.1.i.i, label %vbif_debugbus_read.exit66.1.i.i, label %for.body.i65.1.i.i.for.body.i65.1.i.i_crit_edge

for.body.i65.1.i.i.for.body.i65.1.i.i_crit_edge:  ; preds = %for.body.i65.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65.1.i.i

vbif_debugbus_read.exit66.1.i.i:                  ; preds = %for.body.i65.1.i.i
  %add.ptr10.1.i.i = getelementptr i32, ptr %531, i32 68
  %560 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i57.2.i.i = getelementptr i8, ptr %561, i32 49692
  call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i.i57.2.i.i) #7
  br label %for.body.i65.2.i.i

for.body.i65.2.i.i:                               ; preds = %for.body.i65.2.i.i.for.body.i65.2.i.i_crit_edge, %vbif_debugbus_read.exit66.1.i.i
  %i.013.i58.2.i.i = phi i32 [ 0, %vbif_debugbus_read.exit66.1.i.i ], [ %inc.i63.2.i.i, %for.body.i65.2.i.i.for.body.i65.2.i.i_crit_edge ]
  %562 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i59.2.i.i = getelementptr i8, ptr %563, i32 49696
  call void @msm_writel(i32 noundef %i.013.i58.2.i.i, ptr noundef %add.ptr.i9.i59.2.i.i) #7
  %564 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i60.2.i.i = getelementptr i8, ptr %565, i32 49712
  %call.i.i61.2.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i60.2.i.i) #7
  %arrayidx.i62.2.i.i = getelementptr i32, ptr %add.ptr10.1.i.i, i32 %i.013.i58.2.i.i
  %566 = ptrtoint ptr %arrayidx.i62.2.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %call.i.i61.2.i.i, ptr %arrayidx.i62.2.i.i, align 4
  %inc.i63.2.i.i = add nuw nsw i32 %i.013.i58.2.i.i, 1
  %exitcond.not.i64.2.i.i = icmp eq i32 %inc.i63.2.i.i, 18
  br i1 %exitcond.not.i64.2.i.i, label %vbif_debugbus_read.exit66.2.i.i, label %for.body.i65.2.i.i.for.body.i65.2.i.i_crit_edge

for.body.i65.2.i.i.for.body.i65.2.i.i_crit_edge:  ; preds = %for.body.i65.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65.2.i.i

vbif_debugbus_read.exit66.2.i.i:                  ; preds = %for.body.i65.2.i.i
  %add.ptr10.2.i.i = getelementptr i32, ptr %531, i32 86
  %567 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i57.3.i.i = getelementptr i8, ptr %568, i32 49692
  call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr.i.i57.3.i.i) #7
  br label %for.body.i65.3.i.i

for.body.i65.3.i.i:                               ; preds = %for.body.i65.3.i.i.for.body.i65.3.i.i_crit_edge, %vbif_debugbus_read.exit66.2.i.i
  %i.013.i58.3.i.i = phi i32 [ 0, %vbif_debugbus_read.exit66.2.i.i ], [ %inc.i63.3.i.i, %for.body.i65.3.i.i.for.body.i65.3.i.i_crit_edge ]
  %569 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i59.3.i.i = getelementptr i8, ptr %570, i32 49696
  call void @msm_writel(i32 noundef %i.013.i58.3.i.i, ptr noundef %add.ptr.i9.i59.3.i.i) #7
  %571 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i60.3.i.i = getelementptr i8, ptr %572, i32 49712
  %call.i.i61.3.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i60.3.i.i) #7
  %arrayidx.i62.3.i.i = getelementptr i32, ptr %add.ptr10.2.i.i, i32 %i.013.i58.3.i.i
  %573 = ptrtoint ptr %arrayidx.i62.3.i.i to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 %call.i.i61.3.i.i, ptr %arrayidx.i62.3.i.i, align 4
  %inc.i63.3.i.i = add nuw nsw i32 %i.013.i58.3.i.i, 1
  %exitcond.not.i64.3.i.i = icmp eq i32 %inc.i63.3.i.i, 18
  br i1 %exitcond.not.i64.3.i.i, label %vbif_debugbus_read.exit66.3.i.i, label %for.body.i65.3.i.i.for.body.i65.3.i.i_crit_edge

for.body.i65.3.i.i.for.body.i65.3.i.i_crit_edge:  ; preds = %for.body.i65.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65.3.i.i

vbif_debugbus_read.exit66.3.i.i:                  ; preds = %for.body.i65.3.i.i
  %add.ptr10.3.i.i = getelementptr i32, ptr %531, i32 104
  %574 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i57.4.i.i = getelementptr i8, ptr %575, i32 49692
  call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr.i.i57.4.i.i) #7
  br label %for.body.i65.4.i.i

for.body.i65.4.i.i:                               ; preds = %for.body.i65.4.i.i.for.body.i65.4.i.i_crit_edge, %vbif_debugbus_read.exit66.3.i.i
  %i.013.i58.4.i.i = phi i32 [ 0, %vbif_debugbus_read.exit66.3.i.i ], [ %inc.i63.4.i.i, %for.body.i65.4.i.i.for.body.i65.4.i.i_crit_edge ]
  %576 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i59.4.i.i = getelementptr i8, ptr %577, i32 49696
  call void @msm_writel(i32 noundef %i.013.i58.4.i.i, ptr noundef %add.ptr.i9.i59.4.i.i) #7
  %578 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i60.4.i.i = getelementptr i8, ptr %579, i32 49712
  %call.i.i61.4.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i60.4.i.i) #7
  %arrayidx.i62.4.i.i = getelementptr i32, ptr %add.ptr10.3.i.i, i32 %i.013.i58.4.i.i
  %580 = ptrtoint ptr %arrayidx.i62.4.i.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %call.i.i61.4.i.i, ptr %arrayidx.i62.4.i.i, align 4
  %inc.i63.4.i.i = add nuw nsw i32 %i.013.i58.4.i.i, 1
  %exitcond.not.i64.4.i.i = icmp eq i32 %inc.i63.4.i.i, 18
  br i1 %exitcond.not.i64.4.i.i, label %vbif_debugbus_read.exit66.4.i.i, label %for.body.i65.4.i.i.for.body.i65.4.i.i_crit_edge

for.body.i65.4.i.i.for.body.i65.4.i.i_crit_edge:  ; preds = %for.body.i65.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65.4.i.i

vbif_debugbus_read.exit66.4.i.i:                  ; preds = %for.body.i65.4.i.i
  %add.ptr10.4.i.i = getelementptr i32, ptr %531, i32 122
  %581 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i68.i.i = getelementptr i8, ptr %582, i32 49692
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i68.i.i) #7
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %vbif_debugbus_read.exit66.4.i.i
  %i.290.i.i = phi i32 [ 0, %vbif_debugbus_read.exit66.4.i.i ], [ %inc21.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ]
  %ptr.289.i.i = phi ptr [ %add.ptr10.4.i.i, %vbif_debugbus_read.exit66.4.i.i ], [ %add.ptr19.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ]
  %shl17.i.i = shl nuw nsw i32 1, %i.290.i.i
  %583 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i.i70.i.i = getelementptr i8, ptr %584, i32 49684
  call void @msm_writel(i32 noundef %shl17.i.i, ptr noundef %add.ptr.i.i70.i.i) #7
  %585 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.i.i = getelementptr i8, ptr %586, i32 49688
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i9.i72.i.i) #7
  %587 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.i.i = getelementptr i8, ptr %588, i32 49712
  %call.i.i74.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.i.i) #7
  %589 = ptrtoint ptr %ptr.289.i.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 %call.i.i74.i.i, ptr %ptr.289.i.i, align 4
  %590 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.1.i.i = getelementptr i8, ptr %591, i32 49688
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i9.i72.1.i.i) #7
  %592 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.1.i.i = getelementptr i8, ptr %593, i32 49712
  %call.i.i74.1.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.1.i.i) #7
  %arrayidx.i75.1.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 1
  %594 = ptrtoint ptr %arrayidx.i75.1.i.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 %call.i.i74.1.i.i, ptr %arrayidx.i75.1.i.i, align 4
  %595 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.2.i.i = getelementptr i8, ptr %596, i32 49688
  call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i9.i72.2.i.i) #7
  %597 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.2.i.i = getelementptr i8, ptr %598, i32 49712
  %call.i.i74.2.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.2.i.i) #7
  %arrayidx.i75.2.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 2
  %599 = ptrtoint ptr %arrayidx.i75.2.i.i to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 %call.i.i74.2.i.i, ptr %arrayidx.i75.2.i.i, align 4
  %600 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.3.i.i = getelementptr i8, ptr %601, i32 49688
  call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i9.i72.3.i.i) #7
  %602 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.3.i.i = getelementptr i8, ptr %603, i32 49712
  %call.i.i74.3.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.3.i.i) #7
  %arrayidx.i75.3.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 3
  %604 = ptrtoint ptr %arrayidx.i75.3.i.i to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 %call.i.i74.3.i.i, ptr %arrayidx.i75.3.i.i, align 4
  %605 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.4.i.i = getelementptr i8, ptr %606, i32 49688
  call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i9.i72.4.i.i) #7
  %607 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.4.i.i = getelementptr i8, ptr %608, i32 49712
  %call.i.i74.4.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.4.i.i) #7
  %arrayidx.i75.4.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 4
  %609 = ptrtoint ptr %arrayidx.i75.4.i.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %call.i.i74.4.i.i, ptr %arrayidx.i75.4.i.i, align 4
  %610 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.5.i.i = getelementptr i8, ptr %611, i32 49688
  call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i9.i72.5.i.i) #7
  %612 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.5.i.i = getelementptr i8, ptr %613, i32 49712
  %call.i.i74.5.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.5.i.i) #7
  %arrayidx.i75.5.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 5
  %614 = ptrtoint ptr %arrayidx.i75.5.i.i to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 %call.i.i74.5.i.i, ptr %arrayidx.i75.5.i.i, align 4
  %615 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.6.i.i = getelementptr i8, ptr %616, i32 49688
  call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr.i9.i72.6.i.i) #7
  %617 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.6.i.i = getelementptr i8, ptr %618, i32 49712
  %call.i.i74.6.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.6.i.i) #7
  %arrayidx.i75.6.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 6
  %619 = ptrtoint ptr %arrayidx.i75.6.i.i to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 %call.i.i74.6.i.i, ptr %arrayidx.i75.6.i.i, align 4
  %620 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.7.i.i = getelementptr i8, ptr %621, i32 49688
  call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i9.i72.7.i.i) #7
  %622 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.7.i.i = getelementptr i8, ptr %623, i32 49712
  %call.i.i74.7.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.7.i.i) #7
  %arrayidx.i75.7.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 7
  %624 = ptrtoint ptr %arrayidx.i75.7.i.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 %call.i.i74.7.i.i, ptr %arrayidx.i75.7.i.i, align 4
  %625 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.8.i.i = getelementptr i8, ptr %626, i32 49688
  call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr.i9.i72.8.i.i) #7
  %627 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.8.i.i = getelementptr i8, ptr %628, i32 49712
  %call.i.i74.8.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.8.i.i) #7
  %arrayidx.i75.8.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 8
  %629 = ptrtoint ptr %arrayidx.i75.8.i.i to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 %call.i.i74.8.i.i, ptr %arrayidx.i75.8.i.i, align 4
  %630 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.9.i.i = getelementptr i8, ptr %631, i32 49688
  call void @msm_writel(i32 noundef 9, ptr noundef %add.ptr.i9.i72.9.i.i) #7
  %632 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.9.i.i = getelementptr i8, ptr %633, i32 49712
  %call.i.i74.9.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.9.i.i) #7
  %arrayidx.i75.9.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 9
  %634 = ptrtoint ptr %arrayidx.i75.9.i.i to i32
  call void @__asan_store4_noabort(i32 %634)
  store i32 %call.i.i74.9.i.i, ptr %arrayidx.i75.9.i.i, align 4
  %635 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.10.i.i = getelementptr i8, ptr %636, i32 49688
  call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr.i9.i72.10.i.i) #7
  %637 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.10.i.i = getelementptr i8, ptr %638, i32 49712
  %call.i.i74.10.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.10.i.i) #7
  %arrayidx.i75.10.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 10
  %639 = ptrtoint ptr %arrayidx.i75.10.i.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store i32 %call.i.i74.10.i.i, ptr %arrayidx.i75.10.i.i, align 4
  %640 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9.i72.11.i.i = getelementptr i8, ptr %641, i32 49688
  call void @msm_writel(i32 noundef 11, ptr noundef %add.ptr.i9.i72.11.i.i) #7
  %642 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i11.i73.11.i.i = getelementptr i8, ptr %643, i32 49712
  %call.i.i74.11.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i11.i73.11.i.i) #7
  %arrayidx.i75.11.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 11
  %644 = ptrtoint ptr %arrayidx.i75.11.i.i to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 %call.i.i74.11.i.i, ptr %arrayidx.i75.11.i.i, align 4
  %add.ptr19.i.i = getelementptr i32, ptr %ptr.289.i.i, i32 12
  %inc21.i.i = add nuw nsw i32 %i.290.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc21.i.i, 4
  br i1 %exitcond.not.i.i, label %for.end22.i.i, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i.i

for.end22.i.i:                                    ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %645 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i81.i.i = getelementptr i8, ptr %646, i32 49156
  call void @msm_writel(i32 noundef %call.i.i.i405, ptr noundef %add.ptr.i81.i.i) #7
  br label %if.end51.i

if.end51.i:                                       ; preds = %for.end22.i.i, %state_kcalloc.exit.thread.i.i, %state_kcalloc.exit176.thread.i, %if.end39.i.if.end51.i_crit_edge
  br i1 %tobool5.not219.i, label %if.end51.i.if.end31_crit_edge, label %if.then53.i

if.end51.i.if.end31_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then53.i:                                      ; preds = %if.end51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %647 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i185.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %647, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i188.i = icmp eq ptr %call7.i.i.i185.i, null
  br i1 %tobool.not.i188.i, label %state_kcalloc.exit199.thread.i, label %if.end.i193.i

state_kcalloc.exit199.thread.i:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  %cx_debugbus228.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 16
  %648 = ptrtoint ptr %cx_debugbus228.i to i32
  call void @__asan_store4_noabort(i32 %648)
  store ptr null, ptr %cx_debugbus228.i, align 4
  br label %if.end68.i

if.end.i193.i:                                    ; preds = %if.then53.i
  %649 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %prev.i, align 4
  %call.i.i.i192.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i185.i, ptr noundef %650, ptr noundef %objs) #7
  br i1 %call.i.i.i192.i, label %if.end.i.i3.i195.i, label %if.end.i193.i.state_kcalloc.exit199.i_crit_edge

if.end.i193.i.state_kcalloc.exit199.i_crit_edge:  ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit199.i

if.end.i.i3.i195.i:                               ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  %651 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %651)
  store ptr %call7.i.i.i185.i, ptr %prev.i, align 4
  %652 = ptrtoint ptr %call7.i.i.i185.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store ptr %objs, ptr %call7.i.i.i185.i, align 8
  %prev3.i.i.i194.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i185.i, i32 0, i32 1
  %653 = ptrtoint ptr %prev3.i.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store ptr %650, ptr %prev3.i.i.i194.i, align 4
  %654 = ptrtoint ptr %650 to i32
  call void @__asan_store4_noabort(i32 %654)
  store volatile ptr %call7.i.i.i185.i, ptr %650, align 4
  br label %state_kcalloc.exit199.i

state_kcalloc.exit199.i:                          ; preds = %if.end.i.i3.i195.i, %if.end.i193.i.state_kcalloc.exit199.i_crit_edge
  %data.i196.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call7.i.i.i185.i, i32 0, i32 1
  %cx_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 16
  %655 = ptrtoint ptr %cx_debugbus.i to i32
  call void @__asan_store4_noabort(i32 %655)
  store ptr %data.i196.i, ptr %cx_debugbus.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %cxdbg.0218.i, i32 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %cxdbg.0218.i, i32 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %cxdbg.0218.i, i32 12
  %add.ptr5.i.i.i = getelementptr i8, ptr %cxdbg.0218.i, i32 192
  %add.ptr7.i.i.i = getelementptr i8, ptr %cxdbg.0218.i, i32 188
  %656 = load ptr, ptr %cx_debugbus.i, align 4
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef 2056, i32 noundef 3520) #11
  %tobool.not.i.i203.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i203.i, label %state_kcalloc.exit.thread.i204.i, label %if.end.i.i208.i

state_kcalloc.exit.thread.i204.i:                 ; preds = %state_kcalloc.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  %data16.i.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %656, i32 0, i32 1
  %657 = ptrtoint ptr %data16.i.i to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr null, ptr %data16.i.i, align 4
  br label %a6xx_get_cx_debugbus_block.exit.i

if.end.i.i208.i:                                  ; preds = %state_kcalloc.exit199.i
  %658 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i207.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i, ptr noundef %659, ptr noundef %objs) #7
  br i1 %call.i.i.i.i207.i, label %if.end.i.i3.i.i210.i, label %if.end.i.i208.i.state_kcalloc.exit.i213.i_crit_edge

if.end.i.i208.i.state_kcalloc.exit.i213.i_crit_edge: ; preds = %if.end.i.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i213.i

if.end.i.i3.i.i210.i:                             ; preds = %if.end.i.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  %660 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store ptr %call9.i.i.i.i.i, ptr %prev.i, align 4
  %661 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr %objs, ptr %call9.i.i.i.i.i, align 128
  %prev3.i.i.i.i209.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %662 = ptrtoint ptr %prev3.i.i.i.i209.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store ptr %659, ptr %prev3.i.i.i.i209.i, align 4
  %663 = ptrtoint ptr %659 to i32
  call void @__asan_store4_noabort(i32 %663)
  store volatile ptr %call9.i.i.i.i.i, ptr %659, align 4
  br label %state_kcalloc.exit.i213.i

state_kcalloc.exit.i213.i:                        ; preds = %if.end.i.i3.i.i210.i, %if.end.i.i208.i.state_kcalloc.exit.i213.i_crit_edge
  %data.i.i211.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %data.i212.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %656, i32 0, i32 1
  %664 = ptrtoint ptr %data.i212.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %data.i.i211.i, ptr %data.i212.i, align 4
  %665 = ptrtoint ptr %656 to i32
  call void @__asan_store4_noabort(i32 %665)
  store ptr @a6xx_cx_debugbus_blocks, ptr %656, align 4
  br label %for.body.i.i412

for.body.i.i412:                                  ; preds = %for.body.i.i412.for.body.i.i412_crit_edge, %state_kcalloc.exit.i213.i
  %ptr.020.i.i = phi ptr [ %data.i.i211.i, %state_kcalloc.exit.i213.i ], [ %add.ptr.i215.i, %for.body.i.i412.for.body.i.i412_crit_edge ]
  %i.019.i.i = phi i32 [ 0, %state_kcalloc.exit.i213.i ], [ %inc.i.i, %for.body.i.i412.for.body.i.i412_crit_edge ]
  %and.i.i.i.i = and i32 %i.019.i.i, 255
  %or.i.i.i411 = or i32 %and.i.i.i.i, 4864
  call void @msm_writel(i32 noundef %or.i.i.i411, ptr noundef %cxdbg.0218.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411, ptr noundef %add.ptr2.i.i.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411, ptr noundef %add.ptr3.i.i.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411, ptr noundef %add.ptr4.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %666 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %666(i32 noundef 214748) #7
  %call6.i.i.i = call i32 @msm_readl(ptr noundef %add.ptr5.i.i.i) #7
  %667 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %call6.i.i.i, ptr %ptr.020.i.i, align 4
  %call8.i.i.i = call i32 @msm_readl(ptr noundef %add.ptr7.i.i.i) #7
  %arrayidx9.i.i.i = getelementptr i32, ptr %ptr.020.i.i, i32 1
  %668 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 %call8.i.i.i, ptr %arrayidx9.i.i.i, align 4
  %add.ptr.i215.i = getelementptr i32, ptr %ptr.020.i.i, i32 2
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond234.not.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond234.not.i, label %for.body.i.i412.a6xx_get_cx_debugbus_block.exit.i_crit_edge, label %for.body.i.i412.for.body.i.i412_crit_edge

for.body.i.i412.for.body.i.i412_crit_edge:        ; preds = %for.body.i.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i412

for.body.i.i412.a6xx_get_cx_debugbus_block.exit.i_crit_edge: ; preds = %for.body.i.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_cx_debugbus_block.exit.i

a6xx_get_cx_debugbus_block.exit.i:                ; preds = %for.body.i.i412.a6xx_get_cx_debugbus_block.exit.i_crit_edge, %state_kcalloc.exit.thread.i204.i
  %669 = ptrtoint ptr %cx_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cx_debugbus.i, align 4
  %arrayidx64.i.1 = getelementptr %struct.a6xx_gpu_state_obj, ptr %670, i32 1
  %call9.i.i.i.i.i.1 = call noalias align 128 ptr @__kmalloc(i32 noundef 2056, i32 noundef 3520) #11
  %tobool.not.i.i203.i.1 = icmp eq ptr %call9.i.i.i.i.i.1, null
  br i1 %tobool.not.i.i203.i.1, label %state_kcalloc.exit.thread.i204.i.1, label %if.end.i.i208.i.1

if.end.i.i208.i.1:                                ; preds = %a6xx_get_cx_debugbus_block.exit.i
  %671 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i207.i.1 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i.i.1, ptr noundef %672, ptr noundef %objs) #7
  br i1 %call.i.i.i.i207.i.1, label %if.end.i.i3.i.i210.i.1, label %if.end.i.i208.i.1.state_kcalloc.exit.i213.i.1_crit_edge

if.end.i.i208.i.1.state_kcalloc.exit.i213.i.1_crit_edge: ; preds = %if.end.i.i208.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit.i213.i.1

if.end.i.i3.i.i210.i.1:                           ; preds = %if.end.i.i208.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %673 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr %call9.i.i.i.i.i.1, ptr %prev.i, align 4
  %674 = ptrtoint ptr %call9.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr %objs, ptr %call9.i.i.i.i.i.1, align 128
  %prev3.i.i.i.i209.i.1 = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i.1, i32 0, i32 1
  %675 = ptrtoint ptr %prev3.i.i.i.i209.i.1 to i32
  call void @__asan_store4_noabort(i32 %675)
  store ptr %672, ptr %prev3.i.i.i.i209.i.1, align 4
  %676 = ptrtoint ptr %672 to i32
  call void @__asan_store4_noabort(i32 %676)
  store volatile ptr %call9.i.i.i.i.i.1, ptr %672, align 4
  br label %state_kcalloc.exit.i213.i.1

state_kcalloc.exit.i213.i.1:                      ; preds = %if.end.i.i3.i.i210.i.1, %if.end.i.i208.i.1.state_kcalloc.exit.i213.i.1_crit_edge
  %data.i.i211.i.1 = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i.i.i.1, i32 0, i32 1
  %data.i212.i.1 = getelementptr %struct.a6xx_gpu_state_obj, ptr %670, i32 1, i32 1
  %677 = ptrtoint ptr %data.i212.i.1 to i32
  call void @__asan_store4_noabort(i32 %677)
  store ptr %data.i.i211.i.1, ptr %data.i212.i.1, align 4
  %678 = ptrtoint ptr %arrayidx64.i.1 to i32
  call void @__asan_store4_noabort(i32 %678)
  store ptr getelementptr inbounds ([2 x %struct.a6xx_debugbus_block], ptr @a6xx_cx_debugbus_blocks, i32 0, i32 1), ptr %arrayidx64.i.1, align 4
  br label %for.body.i.i412.1

for.body.i.i412.1:                                ; preds = %for.body.i.i412.1.for.body.i.i412.1_crit_edge, %state_kcalloc.exit.i213.i.1
  %ptr.020.i.i.1 = phi ptr [ %data.i.i211.i.1, %state_kcalloc.exit.i213.i.1 ], [ %add.ptr.i215.i.1, %for.body.i.i412.1.for.body.i.i412.1_crit_edge ]
  %i.019.i.i.1 = phi i32 [ 0, %state_kcalloc.exit.i213.i.1 ], [ %inc.i.i.1, %for.body.i.i412.1.for.body.i.i412.1_crit_edge ]
  %and.i.i.i.i.1 = and i32 %i.019.i.i.1, 255
  %or.i.i.i411.1 = or i32 %and.i.i.i.i.1, 5888
  call void @msm_writel(i32 noundef %or.i.i.i411.1, ptr noundef %cxdbg.0218.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411.1, ptr noundef %add.ptr2.i.i.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411.1, ptr noundef %add.ptr3.i.i.i) #7
  call void @msm_writel(i32 noundef %or.i.i.i411.1, ptr noundef %add.ptr4.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %679 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %679(i32 noundef 214748) #7
  %call6.i.i.i.1 = call i32 @msm_readl(ptr noundef %add.ptr5.i.i.i) #7
  %680 = ptrtoint ptr %ptr.020.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 %call6.i.i.i.1, ptr %ptr.020.i.i.1, align 4
  %call8.i.i.i.1 = call i32 @msm_readl(ptr noundef %add.ptr7.i.i.i) #7
  %arrayidx9.i.i.i.1 = getelementptr i32, ptr %ptr.020.i.i.1, i32 1
  %681 = ptrtoint ptr %arrayidx9.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %681)
  store i32 %call8.i.i.i.1, ptr %arrayidx9.i.i.i.1, align 4
  %add.ptr.i215.i.1 = getelementptr i32, ptr %ptr.020.i.i.1, i32 2
  %inc.i.i.1 = add nuw i32 %i.019.i.i.1, 1
  %exitcond234.not.i.1 = icmp eq i32 %inc.i.i.1, 256
  br i1 %exitcond234.not.i.1, label %for.body.i.i412.1.a6xx_get_cx_debugbus_block.exit.i.1_crit_edge, label %for.body.i.i412.1.for.body.i.i412.1_crit_edge

for.body.i.i412.1.for.body.i.i412.1_crit_edge:    ; preds = %for.body.i.i412.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i412.1

for.body.i.i412.1.a6xx_get_cx_debugbus_block.exit.i.1_crit_edge: ; preds = %for.body.i.i412.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_get_cx_debugbus_block.exit.i.1

state_kcalloc.exit.thread.i204.i.1:               ; preds = %a6xx_get_cx_debugbus_block.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %data16.i.i.1 = getelementptr %struct.a6xx_gpu_state_obj, ptr %670, i32 1, i32 1
  %682 = ptrtoint ptr %data16.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %682)
  store ptr null, ptr %data16.i.i.1, align 4
  br label %a6xx_get_cx_debugbus_block.exit.i.1

a6xx_get_cx_debugbus_block.exit.i.1:              ; preds = %state_kcalloc.exit.thread.i204.i.1, %for.body.i.i412.1.a6xx_get_cx_debugbus_block.exit.i.1_crit_edge
  %nr_cx_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 17
  %683 = ptrtoint ptr %nr_cx_debugbus.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 2, ptr %nr_cx_debugbus.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %a6xx_get_cx_debugbus_block.exit.i.1, %state_kcalloc.exit199.thread.i
  call void @iounmap(ptr noundef nonnull %cxdbg.0218.i) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end68.i, %if.end51.i.if.end31_crit_edge, %if.end28.if.end31_crit_edge
  %needs_hw_init32 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 20
  %684 = ptrtoint ptr %needs_hw_init32 to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %needs_hw_init32, align 8, !range !353
  %gpu_initialized = getelementptr inbounds %struct.a6xx_gpu_state, ptr %call7.i.i, i32 0, i32 23
  %686 = xor i8 %685, 1
  %687 = ptrtoint ptr %gpu_initialized to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 %686, ptr %gpu_initialized, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %a6xx_snapshot_gmu_bo.exit132.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end31 ], [ %call7.i.i, %a6xx_snapshot_gmu_bo.exit132.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_dumper) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adreno_gpu_state_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_gx_is_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_gpu_state_put(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %state, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !355
  tail call void @llvm.prefetch.p0(ptr nonnull %state, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %state, ptr nonnull %state, i32 1, ptr nonnull elementtype(i32) %state) #7, !srcloc !356
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !357

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %state, i32 noundef 3) #7
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !358
  %gmu_log.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 18
  %1 = ptrtoint ptr %gmu_log.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gmu_log.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  tail call void @kvfree(ptr noundef %4) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %gmu_hfi.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 19
  %5 = ptrtoint ptr %gmu_hfi.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gmu_hfi.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %6, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %data9.i.i = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data9.i.i, align 4
  tail call void @kvfree(ptr noundef %8) #7
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %objs.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 22
  %9 = ptrtoint ptr %objs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %objs.i.i, align 8
  %cmp.not36.i.i = icmp eq ptr %10, %objs.i.i
  br i1 %cmp.not36.i.i, label %if.end10.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge, label %if.end10.i.i.for.body.i.i_crit_edge

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  br label %for.body.i.i

if.end10.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_gpu_state_destroy.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.i.for.body.i.i_crit_edge
  %obj.037.i.i = phi ptr [ %tmp.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %10, %if.end10.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %obj.037.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.0.i.i = load ptr, ptr %obj.037.i.i, align 8
  tail call void @kfree(ptr noundef %obj.037.i.i) #7
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %objs.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_gpu_state_destroy.exit.i

a6xx_gpu_state_destroy.exit.i:                    ; preds = %for.body.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge, %if.end10.i.i.a6xx_gpu_state_destroy.exit.i_crit_edge
  tail call void @adreno_gpu_state_destroy(ptr noundef %state) #7
  tail call void @kfree(ptr noundef %state) #7
  br label %return

return:                                           ; preds = %a6xx_gpu_state_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %a6xx_gpu_state_destroy.exit.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_show(ptr noundef %gpu, ptr noundef %state, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %state, null
  %cmp.i = icmp ugt ptr %state, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup106

if.end:                                           ; preds = %entry
  %gpu_initialized = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 23
  %0 = ptrtoint ptr %gpu_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpu_initialized, align 8, !range !353
  %2 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str, i32 noundef %2) #7
  tail call void @adreno_show(ptr noundef %gpu, ptr noundef nonnull %state, ptr noundef %p) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.1) #7
  %gmu_log = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 18
  %3 = ptrtoint ptr %gmu_log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gmu_log, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i64 noundef %6) #7
  %size = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i32 noundef %8) #7
  %data = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %encoded = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %4, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %p, ptr noundef %data, i32 noundef %10, ptr noundef %encoded) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.4) #7
  %gmu_hfi = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 19
  %11 = ptrtoint ptr %gmu_hfi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gmu_hfi, align 8
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end6.if.end26_crit_edge, label %if.then8

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i64 noundef %14) #7
  %size13 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size13, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i32 noundef %16) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.5, i32 noundef 0) #7
  %arrayidx19 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 0
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %18) #7
  %arrayidx19.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %20) #7
  %arrayidx19.2 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19.2, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %22) #7
  %arrayidx19.3 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19.3, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %24) #7
  %arrayidx19.4 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19.4, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %26) #7
  %arrayidx19.5 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19.5, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %28) #7
  %arrayidx19.6 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19.6, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %30) #7
  %arrayidx19.7 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19.7, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %32) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %arrayidx19.1286 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 0
  %33 = ptrtoint ptr %arrayidx19.1286 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19.1286, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %34) #7
  %arrayidx19.1.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx19.1.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx19.1.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %36) #7
  %arrayidx19.2.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx19.2.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19.2.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %38) #7
  %arrayidx19.3.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx19.3.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx19.3.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %40) #7
  %arrayidx19.4.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx19.4.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx19.4.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %42) #7
  %arrayidx19.5.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx19.5.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19.5.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %44) #7
  %arrayidx19.6.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 6
  %45 = ptrtoint ptr %arrayidx19.6.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx19.6.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %46) #7
  %arrayidx19.7.1 = getelementptr %struct.a6xx_gpu_state, ptr %state, i32 0, i32 21, i32 1, i32 7
  %47 = ptrtoint ptr %arrayidx19.7.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx19.7.1, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %48) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %data23 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 2
  %49 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size13, align 8
  %encoded25 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %12, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %p, ptr noundef %data23, i32 noundef %50, ptr noundef %encoded25) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then8, %if.end6.if.end26_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.8) #7
  %gmu_debug = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 20
  %51 = ptrtoint ptr %gmu_debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gmu_debug, align 4
  %tobool27.not = icmp eq ptr %52, null
  br i1 %tobool27.not, label %if.end26.if.end36_crit_edge, label %if.then28

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i64 noundef %54) #7
  %size32 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %size32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size32, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i32 noundef %56) #7
  %data33 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %size32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size32, align 8
  %encoded35 = getelementptr inbounds %struct.msm_gpu_state_bo, ptr %52, i32 0, i32 3
  tail call void @adreno_show_object(ptr noundef %p, ptr noundef %data33, i32 noundef %58, ptr noundef %encoded35) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.end26.if.end36_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.9) #7
  %nr_registers = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 4
  %59 = ptrtoint ptr %nr_registers to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_registers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp38268 = icmp sgt i32 %60, 0
  br i1 %cmp38268, label %for.body40.lr.ph, label %if.end36.for.end51_crit_edge

if.end36.for.end51_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body40.lr.ph:                                 ; preds = %if.end36
  %registers = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 3
  br label %for.body40

for.body40:                                       ; preds = %cleanup.for.body40_crit_edge, %for.body40.lr.ph
  %i.0269 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc50, %cleanup.for.body40_crit_edge ]
  %61 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %registers, align 8
  %arrayidx41 = getelementptr %struct.a6xx_gpu_state_obj, ptr %62, i32 %i.0269
  %63 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx41, align 4
  %tobool43.not = icmp eq ptr %64, null
  br i1 %tobool43.not, label %for.body40.cleanup_crit_edge, label %if.end45

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %for.body40
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %data47 = getelementptr %struct.a6xx_gpu_state_obj, ptr %62, i32 %i.0269, i32 1
  %67 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data47, align 4
  %count = getelementptr inbounds %struct.a6xx_registers, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count, align 4
  %tobool.not.i205 = icmp ne ptr %68, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp36.i = icmp ne i32 %70, 0
  %or.cond.i = and i1 %tobool.not.i205, %cmp36.i
  br i1 %or.cond.i, label %if.end45.for.body.i_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %index.038.i = phi i32 [ %index.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %i.037.i = phi i32 [ %add16.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %add.i = or i32 %i.037.i, 1
  %arrayidx.i = getelementptr i32, ptr %66, i32 %add.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %66, i32 %i.037.i
  %73 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2.i, align 4
  %sub.i = add i32 %72, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %74)
  %cmp631.not.i = icmp eq i32 %sub.i, %74
  br i1 %cmp631.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body7.preheader.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.body.i
  %add3.i = sub i32 %sub.i, %74
  %umax.i = tail call i32 @llvm.umax.i32(i32 %add3.i, i32 1) #7
  %75 = add i32 %umax.i, %index.038.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %offset.033.i = phi i32 [ %inc13.i, %for.inc.i.for.body7.i_crit_edge ], [ %74, %for.body7.preheader.i ]
  %index.132.i = phi i32 [ %inc.i, %for.inc.i.for.body7.i_crit_edge ], [ %index.038.i, %for.body7.preheader.i ]
  %arrayidx8.i = getelementptr i32, ptr %68, i32 %index.132.i
  %76 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -558907731, i32 %77)
  %cmp9.i = icmp eq i32 %77, -558907731
  br i1 %cmp9.i, label %for.body7.i.for.inc.i_crit_edge, label %if.end11.i

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i32 %offset.033.i, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.113, i32 noundef %shl.i, i32 noundef %77) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body7.i.for.inc.i_crit_edge
  %inc.i = add i32 %index.132.i, 1
  %inc13.i = add i32 %offset.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %75
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %index.1.lcssa.i = phi i32 [ %index.038.i, %for.body.i.for.end.i_crit_edge ], [ %75, %for.inc.i.for.end.i_crit_edge ]
  %add16.i = add i32 %i.037.i, 2
  %cmp.i206 = icmp ult i32 %add16.i, %70
  br i1 %cmp.i206, label %for.end.i.for.body.i_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %for.end.i.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %for.body40.cleanup_crit_edge
  %inc50 = add nuw nsw i32 %i.0269, 1
  %78 = ptrtoint ptr %nr_registers to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_registers, align 4
  %cmp38 = icmp slt i32 %inc50, %79
  br i1 %cmp38, label %cleanup.for.body40_crit_edge, label %cleanup.for.end51_crit_edge

cleanup.for.end51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

cleanup.for.body40_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

for.end51:                                        ; preds = %cleanup.for.end51_crit_edge, %if.end36.for.end51_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.10) #7
  %nr_gmu_registers = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 2
  %80 = ptrtoint ptr %nr_gmu_registers to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_gmu_registers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp53271 = icmp sgt i32 %81, 0
  br i1 %cmp53271, label %for.body55.lr.ph, label %for.end51.for.end73_crit_edge

for.end51.for.end73_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body55.lr.ph:                                 ; preds = %for.end51
  %gmu_registers = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 1
  br label %for.body55

for.body55:                                       ; preds = %cleanup67.for.body55_crit_edge, %for.body55.lr.ph
  %i.1272 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc72, %cleanup67.for.body55_crit_edge ]
  %82 = ptrtoint ptr %gmu_registers to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gmu_registers, align 8
  %arrayidx57 = getelementptr %struct.a6xx_gpu_state_obj, ptr %83, i32 %i.1272
  %84 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx57, align 4
  %tobool61.not = icmp eq ptr %85, null
  br i1 %tobool61.not, label %for.body55.cleanup67_crit_edge, label %if.end63

for.body55.cleanup67_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end63:                                         ; preds = %for.body55
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %data65 = getelementptr %struct.a6xx_gpu_state_obj, ptr %83, i32 %i.1272, i32 1
  %88 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data65, align 4
  %count66 = getelementptr inbounds %struct.a6xx_registers, ptr %85, i32 0, i32 1
  %90 = ptrtoint ptr %count66 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count66, align 4
  %tobool.not.i207 = icmp ne ptr %89, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp36.i208 = icmp ne i32 %91, 0
  %or.cond.i209 = and i1 %tobool.not.i207, %cmp36.i208
  br i1 %or.cond.i209, label %if.end63.for.body.i217_crit_edge, label %if.end63.cleanup67_crit_edge

if.end63.cleanup67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end63.for.body.i217_crit_edge:                 ; preds = %if.end63
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.end.i235.for.body.i217_crit_edge, %if.end63.for.body.i217_crit_edge
  %index.038.i210 = phi i32 [ %index.1.lcssa.i232, %for.end.i235.for.body.i217_crit_edge ], [ 0, %if.end63.for.body.i217_crit_edge ]
  %i.037.i211 = phi i32 [ %add16.i233, %for.end.i235.for.body.i217_crit_edge ], [ 0, %if.end63.for.body.i217_crit_edge ]
  %add.i212 = or i32 %i.037.i211, 1
  %arrayidx.i213 = getelementptr i32, ptr %87, i32 %add.i212
  %92 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i213, align 4
  %arrayidx2.i214 = getelementptr i32, ptr %87, i32 %i.037.i211
  %94 = ptrtoint ptr %arrayidx2.i214 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx2.i214, align 4
  %sub.i215 = add i32 %93, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i215, i32 %95)
  %cmp631.not.i216 = icmp eq i32 %sub.i215, %95
  br i1 %cmp631.not.i216, label %for.body.i217.for.end.i235_crit_edge, label %for.body7.preheader.i220

for.body.i217.for.end.i235_crit_edge:             ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i235

for.body7.preheader.i220:                         ; preds = %for.body.i217
  %add3.i218 = sub i32 %sub.i215, %95
  %umax.i219 = tail call i32 @llvm.umax.i32(i32 %add3.i218, i32 1) #7
  %96 = add i32 %umax.i219, %index.038.i210
  br label %for.body7.i225

for.body7.i225:                                   ; preds = %for.inc.i231.for.body7.i225_crit_edge, %for.body7.preheader.i220
  %offset.033.i221 = phi i32 [ %inc13.i229, %for.inc.i231.for.body7.i225_crit_edge ], [ %95, %for.body7.preheader.i220 ]
  %index.132.i222 = phi i32 [ %inc.i228, %for.inc.i231.for.body7.i225_crit_edge ], [ %index.038.i210, %for.body7.preheader.i220 ]
  %arrayidx8.i223 = getelementptr i32, ptr %89, i32 %index.132.i222
  %97 = ptrtoint ptr %arrayidx8.i223 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx8.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -558907731, i32 %98)
  %cmp9.i224 = icmp eq i32 %98, -558907731
  br i1 %cmp9.i224, label %for.body7.i225.for.inc.i231_crit_edge, label %if.end11.i227

for.body7.i225.for.inc.i231_crit_edge:            ; preds = %for.body7.i225
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i231

if.end11.i227:                                    ; preds = %for.body7.i225
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i226 = shl i32 %offset.033.i221, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.113, i32 noundef %shl.i226, i32 noundef %98) #7
  br label %for.inc.i231

for.inc.i231:                                     ; preds = %if.end11.i227, %for.body7.i225.for.inc.i231_crit_edge
  %inc.i228 = add i32 %index.132.i222, 1
  %inc13.i229 = add i32 %offset.033.i221, 1
  %exitcond.not.i230 = icmp eq i32 %inc.i228, %96
  br i1 %exitcond.not.i230, label %for.inc.i231.for.end.i235_crit_edge, label %for.inc.i231.for.body7.i225_crit_edge

for.inc.i231.for.body7.i225_crit_edge:            ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i225

for.inc.i231.for.end.i235_crit_edge:              ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i235

for.end.i235:                                     ; preds = %for.inc.i231.for.end.i235_crit_edge, %for.body.i217.for.end.i235_crit_edge
  %index.1.lcssa.i232 = phi i32 [ %index.038.i210, %for.body.i217.for.end.i235_crit_edge ], [ %96, %for.inc.i231.for.end.i235_crit_edge ]
  %add16.i233 = add i32 %i.037.i211, 2
  %cmp.i234 = icmp ult i32 %add16.i233, %91
  br i1 %cmp.i234, label %for.end.i235.for.body.i217_crit_edge, label %for.end.i235.cleanup67_crit_edge

for.end.i235.cleanup67_crit_edge:                 ; preds = %for.end.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

for.end.i235.for.body.i217_crit_edge:             ; preds = %for.end.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i217

cleanup67:                                        ; preds = %for.end.i235.cleanup67_crit_edge, %if.end63.cleanup67_crit_edge, %for.body55.cleanup67_crit_edge
  %inc72 = add nuw nsw i32 %i.1272, 1
  %99 = ptrtoint ptr %nr_gmu_registers to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr_gmu_registers, align 4
  %cmp53 = icmp slt i32 %inc72, %100
  br i1 %cmp53, label %cleanup67.for.body55_crit_edge, label %cleanup67.for.end73_crit_edge

cleanup67.for.end73_crit_edge:                    ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

cleanup67.for.body55_crit_edge:                   ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body55

for.end73:                                        ; preds = %cleanup67.for.end73_crit_edge, %for.end51.for.end73_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.11) #7
  %nr_indexed_regs = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 12
  %101 = ptrtoint ptr %nr_indexed_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_indexed_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp75274 = icmp sgt i32 %102, 0
  br i1 %cmp75274, label %for.body77.lr.ph, label %for.end73.for.end81_crit_edge

for.end73.for.end81_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.body77.lr.ph:                                 ; preds = %for.end73
  %indexed_regs = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 11
  br label %for.body77

for.body77:                                       ; preds = %a6xx_show_indexed_regs.exit.for.body77_crit_edge, %for.body77.lr.ph
  %i.2275 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc80, %a6xx_show_indexed_regs.exit.for.body77_crit_edge ]
  %103 = ptrtoint ptr %indexed_regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %indexed_regs, align 8
  %arrayidx78 = getelementptr %struct.a6xx_gpu_state_obj, ptr %104, i32 %i.2275
  %105 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx78, align 4
  %tobool.not.i237 = icmp eq ptr %106, null
  br i1 %tobool.not.i237, label %for.body77.a6xx_show_indexed_regs.exit_crit_edge, label %if.end.i

for.body77.a6xx_show_indexed_regs.exit_crit_edge: ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_indexed_regs.exit

if.end.i:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.114) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %108) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %count.i = getelementptr inbounds %struct.a6xx_indexed_registers, ptr %106, i32 0, i32 3
  %109 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.115, i32 noundef %110) #7
  %111 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count.i, align 4
  %shl.i238 = shl i32 %112, 2
  %data.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %104, i32 %i.2275, i32 1
  %113 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i, align 4
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl.i238, ptr noundef %114) #7
  br label %a6xx_show_indexed_regs.exit

a6xx_show_indexed_regs.exit:                      ; preds = %if.end.i, %for.body77.a6xx_show_indexed_regs.exit_crit_edge
  %inc80 = add nuw nsw i32 %i.2275, 1
  %115 = ptrtoint ptr %nr_indexed_regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr_indexed_regs, align 4
  %cmp75 = icmp slt i32 %inc80, %116
  br i1 %cmp75, label %a6xx_show_indexed_regs.exit.for.body77_crit_edge, label %a6xx_show_indexed_regs.exit.for.end81_crit_edge

a6xx_show_indexed_regs.exit.for.end81_crit_edge:  ; preds = %a6xx_show_indexed_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

a6xx_show_indexed_regs.exit.for.body77_crit_edge: ; preds = %a6xx_show_indexed_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77

for.end81:                                        ; preds = %a6xx_show_indexed_regs.exit.for.end81_crit_edge, %for.end73.for.end81_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.12) #7
  %nr_shaders = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 6
  %117 = ptrtoint ptr %nr_shaders to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_shaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp83277 = icmp sgt i32 %118, 0
  br i1 %cmp83277, label %for.body85.lr.ph, label %for.end81.for.end89_crit_edge

for.end81.for.end89_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body85.lr.ph:                                 ; preds = %for.end81
  %shaders = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 5
  br label %for.body85

for.body85:                                       ; preds = %a6xx_show_shader.exit.for.body85_crit_edge, %for.body85.lr.ph
  %i.3278 = phi i32 [ 0, %for.body85.lr.ph ], [ %inc88, %a6xx_show_shader.exit.for.body85_crit_edge ]
  %119 = ptrtoint ptr %shaders to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %shaders, align 8
  %arrayidx86 = getelementptr %struct.a6xx_gpu_state_obj, ptr %120, i32 %i.3278
  %121 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx86, align 4
  %tobool.not.i239 = icmp eq ptr %122, null
  br i1 %tobool.not.i239, label %for.body85.a6xx_show_shader.exit_crit_edge, label %if.end.i241

for.body85.a6xx_show_shader.exit_crit_edge:       ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_shader.exit

if.end.i241:                                      ; preds = %for.body85
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.119) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %124) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %size.i = getelementptr inbounds %struct.a6xx_shader_block, ptr %122, i32 0, i32 2
  %data.i240 = getelementptr %struct.a6xx_gpu_state_obj, ptr %120, i32 %i.3278, i32 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.120, i32 noundef 0) #7
  %125 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.121, i32 noundef %126) #7
  %127 = ptrtoint ptr %data.i240 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i240, align 4
  %tobool2.not.i = icmp eq ptr %128, null
  br i1 %tobool2.not.i, label %if.end.i241.for.inc.i243_crit_edge, label %if.end4.i

if.end.i241.for.inc.i243_crit_edge:               ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i243

if.end4.i:                                        ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i, align 4
  %shl.i242 = shl i32 %130, 2
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl.i242, ptr noundef nonnull %128) #7
  br label %for.inc.i243

for.inc.i243:                                     ; preds = %if.end4.i, %if.end.i241.for.inc.i243_crit_edge
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.120, i32 noundef 1) #7
  %131 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.121, i32 noundef %132) #7
  %133 = ptrtoint ptr %data.i240 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i240, align 4
  %tobool2.not.1.i = icmp eq ptr %134, null
  br i1 %tobool2.not.1.i, label %for.inc.i243.for.inc.1.i_crit_edge, label %if.end4.1.i

for.inc.i243.for.inc.1.i_crit_edge:               ; preds = %for.inc.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end4.1.i:                                      ; preds = %for.inc.i243
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size.i, align 4
  %shl.1.i = shl i32 %136, 2
  %add.ptr.1.i = getelementptr i32, ptr %134, i32 %136
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl.1.i, ptr noundef %add.ptr.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end4.1.i, %for.inc.i243.for.inc.1.i_crit_edge
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.120, i32 noundef 2) #7
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.121, i32 noundef %138) #7
  %139 = ptrtoint ptr %data.i240 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i240, align 4
  %tobool2.not.2.i = icmp eq ptr %140, null
  br i1 %tobool2.not.2.i, label %for.inc.1.i.a6xx_show_shader.exit_crit_edge, label %if.end4.2.i

for.inc.1.i.a6xx_show_shader.exit_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_shader.exit

if.end4.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %size.i, align 4
  %shl.2.i = shl i32 %142, 2
  %mul.2.i = shl i32 %142, 1
  %add.ptr.2.i = getelementptr i32, ptr %140, i32 %mul.2.i
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl.2.i, ptr noundef %add.ptr.2.i) #7
  br label %a6xx_show_shader.exit

a6xx_show_shader.exit:                            ; preds = %if.end4.2.i, %for.inc.1.i.a6xx_show_shader.exit_crit_edge, %for.body85.a6xx_show_shader.exit_crit_edge
  %inc88 = add nuw nsw i32 %i.3278, 1
  %143 = ptrtoint ptr %nr_shaders to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr_shaders, align 4
  %cmp83 = icmp slt i32 %inc88, %144
  br i1 %cmp83, label %a6xx_show_shader.exit.for.body85_crit_edge, label %a6xx_show_shader.exit.for.end89_crit_edge

a6xx_show_shader.exit.for.end89_crit_edge:        ; preds = %a6xx_show_shader.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

a6xx_show_shader.exit.for.body85_crit_edge:       ; preds = %a6xx_show_shader.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

for.end89:                                        ; preds = %a6xx_show_shader.exit.for.end89_crit_edge, %for.end81.for.end89_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.13) #7
  %nr_clusters = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 8
  %145 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp91280 = icmp sgt i32 %146, 0
  br i1 %cmp91280, label %for.body93.lr.ph, label %for.end89.for.cond98.preheader_crit_edge

for.end89.for.cond98.preheader_crit_edge:         ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond98.preheader

for.body93.lr.ph:                                 ; preds = %for.end89
  %clusters = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 7
  br label %for.body93

for.cond98.preheader:                             ; preds = %a6xx_show_cluster.exit.for.cond98.preheader_crit_edge, %for.end89.for.cond98.preheader_crit_edge
  %nr_dbgahb_clusters = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 10
  %147 = ptrtoint ptr %nr_dbgahb_clusters to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr_dbgahb_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp99283 = icmp sgt i32 %148, 0
  br i1 %cmp99283, label %for.body101.lr.ph, label %for.cond98.preheader.for.end105_crit_edge

for.cond98.preheader.for.end105_crit_edge:        ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105

for.body101.lr.ph:                                ; preds = %for.cond98.preheader
  %dbgahb_clusters = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 9
  br label %for.body101

for.body93:                                       ; preds = %a6xx_show_cluster.exit.for.body93_crit_edge, %for.body93.lr.ph
  %i.4281 = phi i32 [ 0, %for.body93.lr.ph ], [ %inc96, %a6xx_show_cluster.exit.for.body93_crit_edge ]
  %149 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %clusters, align 8
  %arrayidx94 = getelementptr %struct.a6xx_gpu_state_obj, ptr %150, i32 %i.4281
  %151 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx94, align 4
  %tobool.not.i244 = icmp eq ptr %152, null
  br i1 %tobool.not.i244, label %for.body93.a6xx_show_cluster.exit_crit_edge, label %if.then.i

for.body93.a6xx_show_cluster.exit_crit_edge:      ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_cluster.exit

if.then.i:                                        ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.a6xx_cluster, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %name.i, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.122) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %154) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %registers.i = getelementptr inbounds %struct.a6xx_cluster, ptr %152, i32 0, i32 2
  %155 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %registers.i, align 4
  %count.i245 = getelementptr inbounds %struct.a6xx_cluster, ptr %152, i32 0, i32 3
  %157 = ptrtoint ptr %count.i245 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count.i245, align 4
  %data.i246 = getelementptr %struct.a6xx_gpu_state_obj, ptr %150, i32 %i.4281, i32 1
  %159 = ptrtoint ptr %data.i246 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data.i246, align 4
  tail call fastcc void @a6xx_show_cluster_data(ptr noundef %156, i32 noundef %158, ptr noundef %160, ptr noundef %p) #7
  br label %a6xx_show_cluster.exit

a6xx_show_cluster.exit:                           ; preds = %if.then.i, %for.body93.a6xx_show_cluster.exit_crit_edge
  %inc96 = add nuw nsw i32 %i.4281, 1
  %161 = ptrtoint ptr %nr_clusters to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nr_clusters, align 4
  %cmp91 = icmp slt i32 %inc96, %162
  br i1 %cmp91, label %a6xx_show_cluster.exit.for.body93_crit_edge, label %a6xx_show_cluster.exit.for.cond98.preheader_crit_edge

a6xx_show_cluster.exit.for.cond98.preheader_crit_edge: ; preds = %a6xx_show_cluster.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond98.preheader

a6xx_show_cluster.exit.for.body93_crit_edge:      ; preds = %a6xx_show_cluster.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93

for.body101:                                      ; preds = %a6xx_show_dbgahb_cluster.exit.for.body101_crit_edge, %for.body101.lr.ph
  %i.5284 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc104, %a6xx_show_dbgahb_cluster.exit.for.body101_crit_edge ]
  %163 = ptrtoint ptr %dbgahb_clusters to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dbgahb_clusters, align 8
  %arrayidx102 = getelementptr %struct.a6xx_gpu_state_obj, ptr %164, i32 %i.5284
  %165 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx102, align 4
  %tobool.not.i248 = icmp eq ptr %166, null
  br i1 %tobool.not.i248, label %for.body101.a6xx_show_dbgahb_cluster.exit_crit_edge, label %if.then.i252

for.body101.a6xx_show_dbgahb_cluster.exit_crit_edge: ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_dbgahb_cluster.exit

if.then.i252:                                     ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.122) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %168) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %registers.i249 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, ptr %166, i32 0, i32 3
  %169 = ptrtoint ptr %registers.i249 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %registers.i249, align 4
  %count.i250 = getelementptr inbounds %struct.a6xx_dbgahb_cluster, ptr %166, i32 0, i32 4
  %171 = ptrtoint ptr %count.i250 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %count.i250, align 4
  %data.i251 = getelementptr %struct.a6xx_gpu_state_obj, ptr %164, i32 %i.5284, i32 1
  %173 = ptrtoint ptr %data.i251 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data.i251, align 4
  tail call fastcc void @a6xx_show_cluster_data(ptr noundef %170, i32 noundef %172, ptr noundef %174, ptr noundef %p) #7
  br label %a6xx_show_dbgahb_cluster.exit

a6xx_show_dbgahb_cluster.exit:                    ; preds = %if.then.i252, %for.body101.a6xx_show_dbgahb_cluster.exit_crit_edge
  %inc104 = add nuw nsw i32 %i.5284, 1
  %175 = ptrtoint ptr %nr_dbgahb_clusters to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nr_dbgahb_clusters, align 4
  %cmp99 = icmp slt i32 %inc104, %176
  br i1 %cmp99, label %a6xx_show_dbgahb_cluster.exit.for.body101_crit_edge, label %a6xx_show_dbgahb_cluster.exit.for.end105_crit_edge

a6xx_show_dbgahb_cluster.exit.for.end105_crit_edge: ; preds = %a6xx_show_dbgahb_cluster.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105

a6xx_show_dbgahb_cluster.exit.for.body101_crit_edge: ; preds = %a6xx_show_dbgahb_cluster.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body101

for.end105:                                       ; preds = %a6xx_show_dbgahb_cluster.exit.for.end105_crit_edge, %for.cond98.preheader.for.end105_crit_edge
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.14) #7
  %nr_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 14
  %177 = ptrtoint ptr %nr_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nr_debugbus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp36.i254 = icmp sgt i32 %178, 0
  br i1 %cmp36.i254, label %for.body.lr.ph.i, label %for.end105.for.end.i262_crit_edge

for.end105.for.end.i262_crit_edge:                ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i262

for.body.lr.ph.i:                                 ; preds = %for.end105
  %debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 13
  br label %for.body.i257

for.body.i257:                                    ; preds = %a6xx_show_debugbus_block.exit.i.for.body.i257_crit_edge, %for.body.lr.ph.i
  %i.037.i255 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i259, %a6xx_show_debugbus_block.exit.i.for.body.i257_crit_edge ]
  %179 = ptrtoint ptr %debugbus.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %debugbus.i, align 8
  %arrayidx.i256 = getelementptr %struct.a6xx_gpu_state_obj, ptr %180, i32 %i.037.i255
  %181 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i256, align 4
  %tobool.not.i.i = icmp eq ptr %182, null
  br i1 %tobool.not.i.i, label %for.body.i257.a6xx_show_debugbus_block.exit.i_crit_edge, label %if.then.i.i

for.body.i257.a6xx_show_debugbus_block.exit.i_crit_edge: ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_debugbus_block.exit.i

if.then.i.i:                                      ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #9
  %data.i258 = getelementptr %struct.a6xx_gpu_state_obj, ptr %180, i32 %i.037.i255, i32 1
  %183 = ptrtoint ptr %data.i258 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data.i258, align 4
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %182, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.127) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %186) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %count.i.i = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %182, i32 0, i32 2
  %187 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %count.i.i, align 4
  %shl.i.i = shl i32 %188, 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.126, i32 noundef %shl.i.i) #7
  %189 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %count.i.i, align 4
  %shl2.i.i = shl i32 %190, 3
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl2.i.i, ptr noundef %184) #7
  br label %a6xx_show_debugbus_block.exit.i

a6xx_show_debugbus_block.exit.i:                  ; preds = %if.then.i.i, %for.body.i257.a6xx_show_debugbus_block.exit.i_crit_edge
  %inc.i259 = add nuw nsw i32 %i.037.i255, 1
  %191 = ptrtoint ptr %nr_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %nr_debugbus.i, align 4
  %cmp.i260 = icmp slt i32 %inc.i259, %192
  br i1 %cmp.i260, label %a6xx_show_debugbus_block.exit.i.for.body.i257_crit_edge, label %a6xx_show_debugbus_block.exit.i.for.end.i262_crit_edge

a6xx_show_debugbus_block.exit.i.for.end.i262_crit_edge: ; preds = %a6xx_show_debugbus_block.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i262

a6xx_show_debugbus_block.exit.i.for.body.i257_crit_edge: ; preds = %a6xx_show_debugbus_block.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i257

for.end.i262:                                     ; preds = %a6xx_show_debugbus_block.exit.i.for.end.i262_crit_edge, %for.end105.for.end.i262_crit_edge
  %vbif_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 15
  %193 = ptrtoint ptr %vbif_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %vbif_debugbus.i, align 8
  %tobool.not.i261 = icmp eq ptr %194, null
  br i1 %tobool.not.i261, label %for.end.i262.if.end.i264_crit_edge, label %if.then.i263

for.end.i262.if.end.i264_crit_edge:               ; preds = %for.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i264

if.then.i263:                                     ; preds = %for.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.125) #7
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.126, i32 noundef 170) #7
  %data3.i = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data3.i, align 4
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef 680, ptr noundef %196) #7
  br label %if.end.i264

if.end.i264:                                      ; preds = %if.then.i263, %for.end.i262.if.end.i264_crit_edge
  %nr_cx_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 17
  %197 = ptrtoint ptr %nr_cx_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nr_cx_debugbus.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp539.i = icmp sgt i32 %198, 0
  br i1 %cmp539.i, label %for.body6.lr.ph.i, label %if.end.i264.cleanup106_crit_edge

if.end.i264.cleanup106_crit_edge:                 ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup106

for.body6.lr.ph.i:                                ; preds = %if.end.i264
  %cx_debugbus.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %state, i32 0, i32 16
  br label %for.body6.i

for.body6.i:                                      ; preds = %a6xx_show_debugbus_block.exit35.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %i.140.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc12.i, %a6xx_show_debugbus_block.exit35.i.for.body6.i_crit_edge ]
  %199 = ptrtoint ptr %cx_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cx_debugbus.i, align 4
  %arrayidx8.i265 = getelementptr %struct.a6xx_gpu_state_obj, ptr %200, i32 %i.140.i
  %201 = ptrtoint ptr %arrayidx8.i265 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx8.i265, align 4
  %tobool.not.i30.i = icmp eq ptr %202, null
  br i1 %tobool.not.i30.i, label %for.body6.i.a6xx_show_debugbus_block.exit35.i_crit_edge, label %if.then.i34.i

for.body6.i.a6xx_show_debugbus_block.exit35.i_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a6xx_show_debugbus_block.exit35.i

if.then.i34.i:                                    ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  %data10.i = getelementptr %struct.a6xx_gpu_state_obj, ptr %200, i32 %i.140.i, i32 1
  %203 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data10.i, align 4
  %205 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %202, align 4
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.127) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef %206) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  %count.i31.i = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %202, i32 0, i32 2
  %207 = ptrtoint ptr %count.i31.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %count.i31.i, align 4
  %shl.i32.i = shl i32 %208, 1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.126, i32 noundef %shl.i32.i) #7
  %209 = ptrtoint ptr %count.i31.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %count.i31.i, align 4
  %shl2.i33.i = shl i32 %210, 3
  tail call fastcc void @print_ascii85(ptr noundef %p, i32 noundef %shl2.i33.i, ptr noundef %204) #7
  br label %a6xx_show_debugbus_block.exit35.i

a6xx_show_debugbus_block.exit35.i:                ; preds = %if.then.i34.i, %for.body6.i.a6xx_show_debugbus_block.exit35.i_crit_edge
  %inc12.i = add nuw nsw i32 %i.140.i, 1
  %211 = ptrtoint ptr %nr_cx_debugbus.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nr_cx_debugbus.i, align 8
  %cmp5.i = icmp slt i32 %inc12.i, %212
  br i1 %cmp5.i, label %a6xx_show_debugbus_block.exit35.i.for.body6.i_crit_edge, label %a6xx_show_debugbus_block.exit35.i.cleanup106_crit_edge

a6xx_show_debugbus_block.exit35.i.cleanup106_crit_edge: ; preds = %a6xx_show_debugbus_block.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup106

a6xx_show_debugbus_block.exit35.i.for.body6.i_crit_edge: ; preds = %a6xx_show_debugbus_block.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

cleanup106:                                       ; preds = %a6xx_show_debugbus_block.exit35.i.cleanup106_crit_edge, %if.end.i264.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_show_object(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_a6xx_get_gmu_registers(ptr nocapture noundef readonly %gpu, ptr noundef %a6xx_state, ptr noundef %regs, ptr nocapture noundef %obj, i1 noundef zeroext %rscc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.a6xx_registers, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp77.not = icmp eq i32 %1, 0
  br i1 %cmp77.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %regcount.079 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %for.body.for.body_crit_edge ]
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %add9, %for.body.for.body_crit_edge ]
  %add = or i32 %i.078, 1
  %arrayidx = getelementptr i32, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr i32, ptr %3, i32 %i.078
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %sub = add i32 %regcount.079, 1
  %add7 = add i32 %sub, %5
  %add8 = sub i32 %add7, %7
  %add9 = add i32 %i.078, 2
  %cmp = icmp ult i32 %add9, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl i32 %add8, 2
  %phi.bo88 = add i32 %phi.bo, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %regcount.0.lcssa = phi i32 [ 8, %entry.for.end_crit_edge ], [ %phi.bo88, %for.end.loopexit ]
  %8 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %regs, ptr %obj, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %regcount.0.lcssa, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %state_kcalloc.exit.thread, label %if.end.i

state_kcalloc.exit.thread:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %data74 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %data74 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %data74, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %objs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22
  %prev.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %11, ptr noundef %objs.i) #7
  br i1 %call.i.i.i, label %if.end.i.i3.i, label %if.end.i.state_kcalloc.exit_crit_edge

if.end.i.state_kcalloc.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit

if.end.i.i3.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %objs.i, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i.i.i, ptr %11, align 4
  br label %state_kcalloc.exit

state_kcalloc.exit:                               ; preds = %if.end.i.i3.i, %if.end.i.state_kcalloc.exit_crit_edge
  %data.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %data, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1384.not = icmp eq i32 %18, 0
  br i1 %cmp1384.not, label %state_kcalloc.exit.cleanup_crit_edge, label %for.body14.lr.ph

state_kcalloc.exit.cleanup_crit_edge:             ; preds = %state_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body14.lr.ph:                                 ; preds = %state_kcalloc.exit
  %mmio.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 3
  %rscc.i = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4, i32 4
  %rscc.i.mmio.i = select i1 %rscc, ptr %rscc.i, ptr %mmio.i
  br label %for.body14

for.body14:                                       ; preds = %for.end38.for.body14_crit_edge, %for.body14.lr.ph
  %index.087 = phi i32 [ 0, %for.body14.lr.ph ], [ %index.1.lcssa, %for.end38.for.body14_crit_edge ]
  %i.185 = phi i32 [ 0, %for.body14.lr.ph ], [ %add40, %for.end38.for.body14_crit_edge ]
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add17 = or i32 %i.185, 1
  %arrayidx18 = getelementptr i32, ptr %20, i32 %add17
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i32, ptr %20, i32 %i.185
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20, align 4
  %sub21 = add i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %24)
  %cmp2480.not = icmp eq i32 %sub21, %24
  br i1 %cmp2480.not, label %for.body14.for.end38_crit_edge, label %for.body25.preheader

for.body14.for.end38_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body25.preheader:                             ; preds = %for.body14
  %add22 = sub i32 %sub21, %24
  %umax = call i32 @llvm.umax.i32(i32 %add22, i32 1)
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.preheader
  %j.082 = phi i32 [ %inc37, %for.body25.for.body25_crit_edge ], [ 0, %for.body25.preheader ]
  %index.181 = phi i32 [ %inc, %for.body25.for.body25_crit_edge ], [ %index.087, %for.body25.preheader ]
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %arrayidx27 = getelementptr i32, ptr %26, i32 %i.185
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %28, %j.082
  %29 = ptrtoint ptr %rscc.i.mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.sink = load ptr, ptr %rscc.i.mmio.i, align 4
  %shl.i70 = shl i32 %add28, 2
  %add.ptr.i71 = getelementptr i8, ptr %.sink, i32 %shl.i70
  %call.i72 = tail call i32 @msm_readl(ptr noundef %add.ptr.i71) #7
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %inc = add i32 %index.181, 1
  %arrayidx35 = getelementptr i32, ptr %31, i32 %index.181
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i72, ptr %arrayidx35, align 4
  %inc37 = add nuw i32 %j.082, 1
  %exitcond.not = icmp eq i32 %inc37, %umax
  br i1 %exitcond.not, label %for.body25.for.end38_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.body25.for.end38_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.end38:                                        ; preds = %for.body25.for.end38_crit_edge, %for.body14.for.end38_crit_edge
  %index.1.lcssa = phi i32 [ %index.087, %for.body14.for.end38_crit_edge ], [ %inc, %for.body25.for.end38_crit_edge ]
  %add40 = add i32 %i.185, 2
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  %cmp13 = icmp ult i32 %add40, %34
  br i1 %cmp13, label %for.end38.for.body14_crit_edge, label %for.end38.cleanup_crit_edge

for.end38.cleanup_crit_edge:                      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end38.for.body14_crit_edge:                   ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14

cleanup:                                          ; preds = %for.end38.cleanup_crit_edge, %state_kcalloc.exit.cleanup_crit_edge, %state_kcalloc.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_get_indexed_regs(ptr nocapture noundef readonly %gpu, ptr noundef %a6xx_state, ptr noundef %indexed, ptr nocapture noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %indexed, ptr %obj, align 4
  %count = getelementptr inbounds %struct.a6xx_indexed_registers, ptr %indexed, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  %mul.i = shl i32 %2, 2
  %add.i = add i32 %mul.i, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %state_kcalloc.exit.thread, label %if.end.i

state_kcalloc.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data20 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data20, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %objs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22
  %prev.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %5, ptr noundef %objs.i) #7
  br i1 %call.i.i.i, label %if.end.i.i3.i, label %if.end.i.state_kcalloc.exit_crit_edge

if.end.i.state_kcalloc.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit

if.end.i.i3.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %objs.i, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call9.i.i.i, ptr %5, align 4
  br label %state_kcalloc.exit

state_kcalloc.exit:                               ; preds = %if.end.i.i3.i, %if.end.i.state_kcalloc.exit_crit_edge
  %data.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i, ptr %data, align 4
  %addr = getelementptr inbounds %struct.a6xx_indexed_registers, ptr %indexed, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %12, 2
  %add.ptr.i = getelementptr i8, ptr %14, i32 %shl.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #7
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22.not = icmp eq i32 %16, 0
  br i1 %cmp22.not, label %state_kcalloc.exit.cleanup_crit_edge, label %for.body.lr.ph

state_kcalloc.exit.cleanup_crit_edge:             ; preds = %state_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %state_kcalloc.exit
  %data3 = getelementptr inbounds %struct.a6xx_indexed_registers, ptr %indexed, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data3, align 4
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 8
  %shl.i17 = shl i32 %18, 2
  %add.ptr.i18 = getelementptr i8, ptr %20, i32 %shl.i17
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i18) #7
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i32, ptr %22, i32 %i.023
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.023, 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %state_kcalloc.exit.cleanup_crit_edge, %state_kcalloc.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_get_ahb_gpu_registers(ptr nocapture noundef readonly %gpu, ptr noundef %a6xx_state, ptr noundef %regs, ptr nocapture noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.a6xx_registers, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp61.not = icmp eq i32 %1, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %regcount.063 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.body.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %for.body.for.body_crit_edge ]
  %add = or i32 %i.062, 1
  %arrayidx = getelementptr i32, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %3, i32 %i.062
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %sub = add i32 %regcount.063, 1
  %add3 = add i32 %sub, %5
  %add4 = sub i32 %add3, %7
  %add5 = add i32 %i.062, 2
  %cmp = icmp ult i32 %add5, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl i32 %add4, 2
  %phi.bo72 = add i32 %phi.bo, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %regcount.0.lcssa = phi i32 [ 8, %entry.for.end_crit_edge ], [ %phi.bo72, %for.end.loopexit ]
  %8 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %regs, ptr %obj, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %regcount.0.lcssa, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %state_kcalloc.exit.thread, label %if.end.i

state_kcalloc.exit.thread:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %data58 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %data58 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %data58, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %objs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22
  %prev.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %11, ptr noundef %objs.i) #7
  br i1 %call.i.i.i, label %if.end.i.i3.i, label %if.end.i.state_kcalloc.exit_crit_edge

if.end.i.state_kcalloc.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit

if.end.i.i3.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %objs.i, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call9.i.i.i, ptr %11, align 4
  br label %state_kcalloc.exit

state_kcalloc.exit:                               ; preds = %if.end.i.i3.i, %if.end.i.state_kcalloc.exit_crit_edge
  %data.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %data, align 4
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp968.not = icmp eq i32 %18, 0
  br i1 %cmp968.not, label %state_kcalloc.exit.cleanup_crit_edge, label %for.body10.lr.ph

state_kcalloc.exit.cleanup_crit_edge:             ; preds = %state_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body10.lr.ph:                                 ; preds = %state_kcalloc.exit
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body10

for.body10:                                       ; preds = %for.end30.for.body10_crit_edge, %for.body10.lr.ph
  %index.071 = phi i32 [ 0, %for.body10.lr.ph ], [ %index.1.lcssa, %for.end30.for.body10_crit_edge ]
  %i.169 = phi i32 [ 0, %for.body10.lr.ph ], [ %add32, %for.end30.for.body10_crit_edge ]
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add13 = or i32 %i.169, 1
  %arrayidx14 = getelementptr i32, ptr %20, i32 %add13
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr i32, ptr %20, i32 %i.169
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx16, align 4
  %sub17 = add i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %24)
  %cmp2064.not = icmp eq i32 %sub17, %24
  br i1 %cmp2064.not, label %for.body10.for.end30_crit_edge, label %for.body21.preheader

for.body10.for.end30_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.body21.preheader:                             ; preds = %for.body10
  %add18 = sub i32 %sub17, %24
  %umax = call i32 @llvm.umax.i32(i32 %add18, i32 1)
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.preheader
  %j.066 = phi i32 [ %inc29, %for.body21.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %index.165 = phi i32 [ %inc, %for.body21.for.body21_crit_edge ], [ %index.071, %for.body21.preheader ]
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %arrayidx23 = getelementptr i32, ptr %26, i32 %i.169
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %28, %j.066
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 8
  %shl.i = shl i32 %add24, 2
  %add.ptr.i = getelementptr i8, ptr %30, i32 %shl.i
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %inc = add i32 %index.165, 1
  %arrayidx27 = getelementptr i32, ptr %32, i32 %index.165
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i, ptr %arrayidx27, align 4
  %inc29 = add nuw i32 %j.066, 1
  %exitcond.not = icmp eq i32 %inc29, %umax
  br i1 %exitcond.not, label %for.body21.for.end30_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.body21.for.end30_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30

for.end30:                                        ; preds = %for.body21.for.end30_crit_edge, %for.body10.for.end30_crit_edge
  %index.1.lcssa = phi i32 [ %index.071, %for.body10.for.end30_crit_edge ], [ %inc, %for.body21.for.end30_crit_edge ]
  %add32 = add i32 %i.169, 2
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count, align 4
  %cmp9 = icmp ult i32 %add32, %35
  br i1 %cmp9, label %for.end30.for.body10_crit_edge, label %for.end30.cleanup_crit_edge

for.end30.cleanup_crit_edge:                      ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end30.for.body10_crit_edge:                   ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

cleanup:                                          ; preds = %for.end30.cleanup_crit_edge, %state_kcalloc.exit.cleanup_crit_edge, %state_kcalloc.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_crashdumper_run(ptr noundef %gpu, ptr nocapture noundef readonly %dumper) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dumper to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dumper, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gmu = getelementptr inbounds %struct.a6xx_gpu, ptr %gpu, i32 0, i32 4
  %call4 = tail call zeroext i1 @a6xx_gmu_sptprac_is_on(ptr noundef %gmu) #7
  br i1 %call4, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !359
  tail call void @arm_heavy_mb() #7
  %iova = getelementptr inbounds %struct.a6xx_crashdumper, ptr %dumper, i32 0, i32 2
  %2 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %iova, align 8
  %conv.i = trunc i64 %3 to i32
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 9216
  tail call void @msm_writel(i32 noundef %conv.i, ptr noundef %add.ptr.i) #7
  %shr.i = lshr i64 %3, 32
  %conv2.i = trunc i64 %shr.i to i32
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %7, i32 9220
  tail call void @msm_writel(i32 noundef %conv2.i, ptr noundef %add.ptr5.i) #7
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %9, i32 9224
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i60) #7
  %call7 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call7, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 156) #7
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr2065 = getelementptr i8, ptr %11, i32 9228
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2065) #7, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !361
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not67 = icmp eq i32 %13, 0
  br i1 %tobool.not67, label %do.body.land.lhs.true_crit_edge, label %do.body.for.end.thread_crit_edge

do.body.for.end.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then40.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call27 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 9228
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !361
  %17 = and i32 %16, 33554432
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then40.land.lhs.true_crit_edge, label %if.then40.for.end.thread_crit_edge

if.then40.for.end.thread_crit_edge:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

if.then40.land.lhs.true_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr34 = getelementptr i8, ptr %19, i32 9228
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !362
  %21 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool44.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then40.for.end.thread_crit_edge, %do.body.for.end.thread_crit_edge
  %22 = phi i32 [ 0, %do.body.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then40.for.end.thread_crit_edge ]
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %24, i32 9224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i63) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %for.end.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a6xx_gmu_sptprac_is_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_get_debugbus_block(ptr nocapture noundef readonly %gpu, ptr noundef %a6xx_state, ptr noundef %block, ptr nocapture noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %block, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %mul.i = shl i32 %1, 3
  %add.i = add i32 %mul.i, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %state_kcalloc.exit.thread, label %if.end.i

state_kcalloc.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data16 = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data16, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %objs.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22
  %prev.i.i = getelementptr inbounds %struct.a6xx_gpu_state, ptr %a6xx_state, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %4, ptr noundef %objs.i) #7
  br i1 %call.i.i.i, label %if.end.i.i3.i, label %if.end.i.state_kcalloc.exit_crit_edge

if.end.i.state_kcalloc.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %state_kcalloc.exit

if.end.i.i3.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %objs.i, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call9.i.i.i, ptr %4, align 4
  br label %state_kcalloc.exit

state_kcalloc.exit:                               ; preds = %if.end.i.i3.i, %if.end.i.state_kcalloc.exit_crit_edge
  %data.i = getelementptr inbounds %struct.a6xx_state_memobj, ptr %call9.i.i.i, i32 0, i32 1
  %data = getelementptr inbounds %struct.a6xx_gpu_state_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %data, align 4
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %block, ptr %obj, align 4
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18.not = icmp eq i32 %12, 0
  br i1 %cmp18.not, label %state_kcalloc.exit.cleanup_crit_edge, label %for.body.lr.ph

state_kcalloc.exit.cleanup_crit_edge:             ; preds = %state_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %state_kcalloc.exit
  %id = getelementptr inbounds %struct.a6xx_debugbus_block, ptr %block, i32 0, i32 1
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ptr.020 = phi ptr [ %data.i, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %and.i.i = and i32 %i.019, 255
  %shl.i.i = shl i32 %14, 8
  %and.i1.i = and i32 %shl.i.i, 65280
  %or.i = or i32 %and.i1.i, %and.i.i
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 6144
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i) #7
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %18, i32 6148
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i3.i) #7
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %20, i32 6152
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i5.i) #7
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %22, i32 6156
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i7.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %25, i32 6336
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i9.i) #7
  %26 = ptrtoint ptr %ptr.020 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i.i, ptr %ptr.020, align 4
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %28, i32 6332
  %call.i12.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i11.i) #7
  %arrayidx4.i = getelementptr i32, ptr %ptr.020, i32 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i12.i, ptr %arrayidx4.i, align 4
  %add.ptr = getelementptr i32, ptr %ptr.020, i32 2
  %inc = add nuw i32 %i.019, 1
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %state_kcalloc.exit.cleanup_crit_edge, %state_kcalloc.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_gpu_state_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_ascii85(ptr noundef %p, i32 noundef %len, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %out = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %out) #7
  %0 = getelementptr inbounds [6 x i8], ptr %out, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %out, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %out, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %out, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %out, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp27.not = icmp ult i32 %len, 4
  %5 = call ptr @memset(ptr %out, i32 255, i32 6)
  br i1 %cmp27.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %datalen.029 = phi i32 [ %datalen.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.028
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %add = shl i32 %i.028, 2
  %shl = add nuw i32 %add, 4
  %datalen.1 = select i1 %tobool.not, i32 %datalen.029, i32 %shl
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen.1)
  %cmp1 = icmp eq i32 %datalen.1, 0
  br i1 %cmp1, label %for.end.cleanup_crit_edge, label %if.end3

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %for.end
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.116) #7
  tail call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.117) #7
  %sub.i = add i32 %datalen.1, 3
  %div.i = sdiv i32 %sub.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i)
  %cmp530 = icmp sgt i32 %sub.i, 3
  br i1 %cmp530, label %if.end3.for.body6_crit_edge, label %if.end3.for.end11_crit_edge

if.end3.for.end11_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

if.end3.for.body6_crit_edge:                      ; preds = %if.end3
  br label %for.body6

for.body6:                                        ; preds = %ascii85_encode.exit.for.body6_crit_edge, %if.end3.for.body6_crit_edge
  %i.131 = phi i32 [ %inc10, %ascii85_encode.exit.for.body6_crit_edge ], [ 0, %if.end3.for.body6_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %data, i32 %i.131
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %for.body6.ascii85_encode.exit_crit_edge, label %if.end.i

for.body6.ascii85_encode.exit_crit_edge:          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ascii85_encode.exit

if.end.i:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  %.frozen = freeze i32 %9
  %div.i26 = udiv i32 %.frozen, 85
  %11 = mul i32 %div.i26, 85
  %rem.i.decomposed = sub i32 %.frozen, %11
  %12 = trunc i32 %rem.i.decomposed to i8
  %conv.i = add nuw nsw i8 %12, 33
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %3, align 1
  %rem.1.i = urem i32 %div.i26, 85
  %14 = trunc i32 %rem.1.i to i8
  %conv.1.i = add nuw nsw i8 %14, 33
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.1.i, ptr %2, align 1
  %div.1.i = udiv i32 %9, 7225
  %rem.2.i = urem i32 %div.1.i, 85
  %16 = trunc i32 %rem.2.i to i8
  %conv.2.i = add nuw nsw i8 %16, 33
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.2.i, ptr %1, align 1
  %div.2.i = udiv i32 %9, 614125
  %rem.3.lhs.trunc.i = trunc i32 %div.2.i to i16
  %rem.39.i = urem i16 %rem.3.lhs.trunc.i, 85
  %18 = trunc i16 %rem.39.i to i8
  %conv.3.i = add nuw nsw i8 %18, 33
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.3.i, ptr %0, align 1
  %div.3.i = udiv i32 %9, 52200625
  %20 = trunc i32 %div.3.i to i8
  %conv.4.i = add nuw nsw i8 %20, 33
  %21 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.4.i, ptr %out, align 1
  br label %ascii85_encode.exit

ascii85_encode.exit:                              ; preds = %if.end.i, %for.body6.ascii85_encode.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.118, %for.body6.ascii85_encode.exit_crit_edge ], [ %out, %if.end.i ]
  call void @drm_puts(ptr noundef %p, ptr noundef nonnull %retval.0.i) #7
  %inc10 = add nuw nsw i32 %i.131, 1
  %exitcond32.not = icmp eq i32 %inc10, %div.i
  br i1 %exitcond32.not, label %ascii85_encode.exit.for.end11_crit_edge, label %ascii85_encode.exit.for.body6_crit_edge

ascii85_encode.exit.for.body6_crit_edge:          ; preds = %ascii85_encode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

ascii85_encode.exit.for.end11_crit_edge:          ; preds = %ascii85_encode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

for.end11:                                        ; preds = %ascii85_encode.exit.for.end11_crit_edge, %if.end3.for.end11_crit_edge
  call void @drm_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end11, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %out) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a6xx_show_cluster_data(ptr nocapture noundef readonly %registers, i32 noundef %size, ptr nocapture noundef readonly %data, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp240 = icmp sgt i32 %size, 0
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.123, i32 noundef 0) #7
  br i1 %cmp240, label %entry.for.body3_crit_edge, label %for.end17.thread

entry.for.body3_crit_edge:                        ; preds = %entry
  br label %for.body3

for.end17.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.123, i32 noundef 1) #7
  br label %for.end17.1

for.body3:                                        ; preds = %for.end.for.body3_crit_edge, %entry.for.body3_crit_edge
  %j.042 = phi i32 [ %add16, %for.end.for.body3_crit_edge ], [ 0, %entry.for.body3_crit_edge ]
  %index.141 = phi i32 [ %index.2.lcssa, %for.end.for.body3_crit_edge ], [ 0, %entry.for.body3_crit_edge ]
  %add = or i32 %j.042, 1
  %arrayidx = getelementptr i32, ptr %registers, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr i32, ptr %registers, i32 %j.042
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %sub = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp835.not = icmp eq i32 %sub, %3
  br i1 %cmp835.not, label %for.body3.for.end_crit_edge, label %for.body9.preheader

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body9.preheader:                              ; preds = %for.body3
  %add5 = sub i32 %sub, %3
  %umax = call i32 @llvm.umax.i32(i32 %add5, i32 1)
  %4 = add i32 %index.141, %umax
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.preheader
  %offset.037 = phi i32 [ %inc13, %for.inc.for.body9_crit_edge ], [ %3, %for.body9.preheader ]
  %index.236 = phi i32 [ %inc, %for.inc.for.body9_crit_edge ], [ %index.141, %for.body9.preheader ]
  %arrayidx10 = getelementptr i32, ptr %data, i32 %index.236
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -558907731, i32 %6)
  %cmp11 = icmp eq i32 %6, -558907731
  br i1 %cmp11, label %for.body9.for.inc_crit_edge, label %if.end

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %offset.037, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.124, i32 noundef %shl, i32 noundef %6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body9.for.inc_crit_edge
  %inc = add i32 %index.236, 1
  %inc13 = add i32 %offset.037, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body3.for.end_crit_edge
  %index.2.lcssa = phi i32 [ %index.141, %for.body3.for.end_crit_edge ], [ %4, %for.inc.for.end_crit_edge ]
  %add16 = add i32 %j.042, 2
  %cmp2 = icmp slt i32 %add16, %size
  br i1 %cmp2, label %for.end.for.body3_crit_edge, label %for.end17

for.end.for.body3_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end17:                                        ; preds = %for.end
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.123, i32 noundef 1) #7
  br i1 %cmp240, label %for.end17.for.body3.1_crit_edge, label %for.end17.for.end17.1_crit_edge

for.end17.for.end17.1_crit_edge:                  ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17.1

for.end17.for.body3.1_crit_edge:                  ; preds = %for.end17
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.end.1.for.body3.1_crit_edge, %for.end17.for.body3.1_crit_edge
  %j.042.1 = phi i32 [ %add16.1, %for.end.1.for.body3.1_crit_edge ], [ 0, %for.end17.for.body3.1_crit_edge ]
  %index.141.1 = phi i32 [ %index.2.lcssa.1, %for.end.1.for.body3.1_crit_edge ], [ %index.2.lcssa, %for.end17.for.body3.1_crit_edge ]
  %add.1 = or i32 %j.042.1, 1
  %arrayidx.1 = getelementptr i32, ptr %registers, i32 %add.1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %arrayidx4.1 = getelementptr i32, ptr %registers, i32 %j.042.1
  %9 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.1, align 4
  %sub.1 = add i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %10)
  %cmp835.not.1 = icmp eq i32 %sub.1, %10
  br i1 %cmp835.not.1, label %for.body3.1.for.end.1_crit_edge, label %for.body9.preheader.1

for.body3.1.for.end.1_crit_edge:                  ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.body9.preheader.1:                            ; preds = %for.body3.1
  %add5.1 = sub i32 %sub.1, %10
  %umax.1 = call i32 @llvm.umax.i32(i32 %add5.1, i32 1)
  %11 = add i32 %index.141.1, %umax.1
  br label %for.body9.1

for.body9.1:                                      ; preds = %for.inc.1.for.body9.1_crit_edge, %for.body9.preheader.1
  %offset.037.1 = phi i32 [ %inc13.1, %for.inc.1.for.body9.1_crit_edge ], [ %10, %for.body9.preheader.1 ]
  %index.236.1 = phi i32 [ %inc.1, %for.inc.1.for.body9.1_crit_edge ], [ %index.141.1, %for.body9.preheader.1 ]
  %arrayidx10.1 = getelementptr i32, ptr %data, i32 %index.236.1
  %12 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -558907731, i32 %13)
  %cmp11.1 = icmp eq i32 %13, -558907731
  br i1 %cmp11.1, label %for.body9.1.for.inc.1_crit_edge, label %if.end.1

for.body9.1.for.inc.1_crit_edge:                  ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #9
  %shl.1 = shl i32 %offset.037.1, 2
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.124, i32 noundef %shl.1, i32 noundef %13) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.body9.1.for.inc.1_crit_edge
  %inc.1 = add i32 %index.236.1, 1
  %inc13.1 = add i32 %offset.037.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %11
  br i1 %exitcond.1.not, label %for.inc.1.for.end.1_crit_edge, label %for.inc.1.for.body9.1_crit_edge

for.inc.1.for.body9.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.1

for.inc.1.for.end.1_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1

for.end.1:                                        ; preds = %for.inc.1.for.end.1_crit_edge, %for.body3.1.for.end.1_crit_edge
  %index.2.lcssa.1 = phi i32 [ %index.141.1, %for.body3.1.for.end.1_crit_edge ], [ %11, %for.inc.1.for.end.1_crit_edge ]
  %add16.1 = add i32 %j.042.1, 2
  %cmp2.1 = icmp slt i32 %add16.1, %size
  br i1 %cmp2.1, label %for.end.1.for.body3.1_crit_edge, label %for.end.1.for.end17.1_crit_edge

for.end.1.for.end17.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17.1

for.end.1.for.body3.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.1

for.end17.1:                                      ; preds = %for.end.1.for.end17.1_crit_edge, %for.end17.for.end17.1_crit_edge, %for.end17.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1254, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1258, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1262, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1263, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1268, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1276, i32 18}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1278, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1280, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1286, i32 14}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1296, i32 14}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1307, i32 14}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1318, i32 14}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1322, i32 14}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1326, i32 14}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1333, i32 14}
!30 = !{ptr @a6xx_gmu_reglist, !31, !"a6xx_gmu_reglist", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 363, i32 36}
!32 = !{ptr @a6xx_gmu_cx_registers, !33, !"a6xx_gmu_cx_registers", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 333, i32 18}
!34 = !{ptr @a6xx_gmu_cx_rscc_registers, !35, !"a6xx_gmu_cx_rscc_registers", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 356, i32 18}
!36 = !{ptr @a6xx_gmu_gx_registers, !37, !"a6xx_gmu_gx_registers", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 324, i32 18}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 375, i32 4}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 377, i32 4}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 379, i32 4}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 381, i32 4}
!46 = !{ptr @a6xx_indexed_reglist, !47, !"a6xx_indexed_reglist", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 374, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 386, i32 2}
!50 = !{ptr @a6xx_cp_mempool_indexed, !51, !"a6xx_cp_mempool_indexed", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 385, i32 44}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 128, i32 39}
!54 = !{ptr @a6xx_ahb_reglist, !55, !"a6xx_ahb_reglist", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 314, i32 36}
!56 = !{ptr @a6xx_ahb_registers, !57, !"a6xx_ahb_registers", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 289, i32 18}
!58 = !{ptr @a6xx_gbif_reglist, !59, !"a6xx_gbif_reglist", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 321, i32 36}
!60 = !{ptr @a6xx_gbif_registers, !61, !"a6xx_gbif_registers", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 310, i32 18}
!62 = !{ptr @a6xx_vbif_reglist, !63, !"a6xx_vbif_reglist", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 318, i32 36}
!64 = !{ptr @a6xx_vbif_registers, !65, !"a6xx_vbif_registers", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 296, i32 18}
!66 = !{ptr @a6xx_reglist, !67, !"a6xx_reglist", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 283, i32 36}
!68 = !{ptr @a6xx_registers, !69, !"a6xx_registers", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 244, i32 18}
!70 = !{ptr @a6xx_rb_rac_registers, !71, !"a6xx_rb_rac_registers", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 234, i32 18}
!72 = !{ptr @a6xx_rb_rbp_registers, !73, !"a6xx_rb_rbp_registers", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 239, i32 18}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 706, i32 6}
!76 = !{ptr @a6xx_hlsq_reglist, !77, !"a6xx_hlsq_reglist", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 176, i32 36}
!78 = !{ptr @a6xx_hlsq_registers, !79, !"a6xx_hlsq_registers", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 151, i32 18}
!80 = !{ptr @a6xx_sp_registers, !81, !"a6xx_sp_registers", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 156, i32 18}
!82 = !{ptr @a6xx_tp_registers, !83, !"a6xx_tp_registers", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 161, i32 18}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 190, i32 2}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 191, i32 2}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 192, i32 2}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 193, i32 2}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 194, i32 2}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 195, i32 2}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 196, i32 2}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 197, i32 2}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 198, i32 2}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 199, i32 2}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 200, i32 2}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 201, i32 2}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 202, i32 2}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 203, i32 2}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 204, i32 2}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 205, i32 2}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 206, i32 2}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 207, i32 2}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 208, i32 2}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 209, i32 2}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 210, i32 2}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 211, i32 2}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 212, i32 2}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 213, i32 2}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 214, i32 2}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 215, i32 2}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 216, i32 2}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 217, i32 2}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 218, i32 2}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 219, i32 2}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 220, i32 2}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 221, i32 2}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 222, i32 2}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 223, i32 2}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 224, i32 2}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 225, i32 2}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 226, i32 2}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 227, i32 2}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 228, i32 2}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 229, i32 2}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 230, i32 2}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 231, i32 2}
!168 = !{ptr @a6xx_shader_blocks, !169, !"a6xx_shader_blocks", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 189, i32 3}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 64, i32 2}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 65, i32 2}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 68, i32 2}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 69, i32 2}
!178 = !{ptr @a6xx_clusters, !179, !"a6xx_clusters", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 63, i32 3}
!180 = !{ptr @a6xx_gras_cluster, !181, !"a6xx_gras_cluster", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 12, i32 18}
!182 = !{ptr @a6xx_ps_cluster_rac, !183, !"a6xx_ps_cluster_rac", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 18, i32 18}
!184 = !{ptr @a6xx_ps_cluster_rbp, !185, !"a6xx_ps_cluster_rbp", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 25, i32 18}
!186 = !{ptr @a6xx_ps_cluster, !187, !"a6xx_ps_cluster", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 30, i32 18}
!188 = !{ptr @a6xx_fe_cluster, !189, !"a6xx_fe_cluster", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 34, i32 18}
!190 = !{ptr @a6xx_pc_vs_cluster, !191, !"a6xx_pc_vs_cluster", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 39, i32 18}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 134, i32 2}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 140, i32 2}
!196 = !{ptr @a6xx_dbgahb_clusters, !197, !"a6xx_dbgahb_clusters", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 133, i32 3}
!198 = !{ptr @a6xx_sp_vs_hlsq_cluster, !199, !"a6xx_sp_vs_hlsq_cluster", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 72, i32 18}
!200 = !{ptr @a6xx_sp_vs_sp_cluster, !201, !"a6xx_sp_vs_sp_cluster", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 76, i32 18}
!202 = !{ptr @a6xx_hlsq_duplicate_cluster, !203, !"a6xx_hlsq_duplicate_cluster", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 81, i32 18}
!204 = !{ptr @a6xx_hlsq_2d_duplicate_cluster, !205, !"a6xx_hlsq_2d_duplicate_cluster", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 85, i32 18}
!206 = !{ptr @a6xx_sp_duplicate_cluster, !207, !"a6xx_sp_duplicate_cluster", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 89, i32 18}
!208 = !{ptr @a6xx_tp_duplicate_cluster, !209, !"a6xx_tp_duplicate_cluster", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 93, i32 18}
!210 = !{ptr @a6xx_sp_ps_hlsq_cluster, !211, !"a6xx_sp_ps_hlsq_cluster", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 97, i32 18}
!212 = !{ptr @a6xx_sp_ps_hlsq_2d_cluster, !213, !"a6xx_sp_ps_hlsq_2d_cluster", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 102, i32 18}
!214 = !{ptr @a6xx_sp_ps_sp_cluster, !215, !"a6xx_sp_ps_sp_cluster", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 106, i32 18}
!216 = !{ptr @a6xx_sp_ps_sp_2d_cluster, !217, !"a6xx_sp_ps_sp_2d_cluster", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 111, i32 18}
!218 = !{ptr @a6xx_sp_ps_tp_cluster, !219, !"a6xx_sp_ps_tp_cluster", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 115, i32 18}
!220 = !{ptr @a6xx_sp_ps_tp_2d_cluster, !221, !"a6xx_sp_ps_tp_2d_cluster", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 119, i32 18}
!222 = !{ptr @.str.70, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 358, i32 4}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 397, i32 2}
!226 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 398, i32 2}
!228 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 399, i32 2}
!230 = !{ptr @.str.74, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 400, i32 2}
!232 = !{ptr @.str.75, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 401, i32 2}
!234 = !{ptr @.str.76, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 402, i32 2}
!236 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 403, i32 2}
!238 = !{ptr @.str.78, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 404, i32 2}
!240 = !{ptr @.str.79, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 405, i32 2}
!242 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 406, i32 2}
!244 = !{ptr @.str.81, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 407, i32 2}
!246 = !{ptr @.str.82, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 408, i32 2}
!248 = !{ptr @.str.83, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 409, i32 2}
!250 = !{ptr @.str.84, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 410, i32 2}
!252 = !{ptr @.str.85, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 411, i32 2}
!254 = !{ptr @.str.86, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 412, i32 2}
!256 = !{ptr @.str.87, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 413, i32 2}
!258 = !{ptr @.str.88, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 414, i32 2}
!260 = !{ptr @.str.89, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 415, i32 2}
!262 = !{ptr @.str.90, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 416, i32 2}
!264 = !{ptr @.str.91, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 417, i32 2}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 418, i32 2}
!268 = !{ptr @.str.93, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 419, i32 2}
!270 = !{ptr @.str.94, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 420, i32 2}
!272 = !{ptr @.str.95, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 421, i32 2}
!274 = !{ptr @.str.96, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 422, i32 2}
!276 = !{ptr @.str.97, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 423, i32 2}
!278 = !{ptr @.str.98, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 424, i32 2}
!280 = !{ptr @.str.99, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 425, i32 2}
!282 = !{ptr @.str.100, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 426, i32 2}
!284 = !{ptr @.str.101, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 427, i32 2}
!286 = !{ptr @.str.102, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 428, i32 2}
!288 = !{ptr @.str.103, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 429, i32 2}
!290 = !{ptr @.str.104, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 430, i32 2}
!292 = !{ptr @.str.105, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 431, i32 2}
!294 = !{ptr @.str.106, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 432, i32 2}
!296 = !{ptr @.str.107, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 433, i32 2}
!298 = !{ptr @.str.108, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 434, i32 2}
!300 = !{ptr @.str.109, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 435, i32 2}
!302 = !{ptr @a6xx_debugbus_blocks, !303, !"a6xx_debugbus_blocks", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 396, i32 3}
!304 = !{ptr @.str.110, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 439, i32 4}
!306 = !{ptr @a6xx_gbif_debugbus_block, !307, !"a6xx_gbif_debugbus_block", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 438, i32 41}
!308 = !{ptr @.str.111, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 442, i32 2}
!310 = !{ptr @.str.112, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 443, i32 2}
!312 = !{ptr @a6xx_cx_debugbus_blocks, !313, !"a6xx_cx_debugbus_blocks", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h", i32 441, i32 41}
!314 = !{ptr @.str.113, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1075, i32 18}
!316 = !{ptr @.str.114, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1194, i32 16}
!318 = !{ptr @.str.115, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1195, i32 16}
!320 = !{ptr @.str.116, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1094, i32 14}
!322 = !{ptr @.str.117, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1095, i32 14}
!324 = !{ptr @.str.118, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../include/linux/ascii85.h", i32 28, i32 10}
!326 = !{ptr @.str.119, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1122, i32 16}
!328 = !{ptr @.str.120, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1125, i32 17}
!330 = !{ptr @.str.121, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1126, i32 17}
!332 = !{ptr @.str.122, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1180, i32 17}
!334 = !{ptr @.str.123, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1144, i32 17}
!336 = !{ptr @.str.124, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1155, i32 19}
!338 = !{ptr @.str.125, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1230, i32 15}
!340 = !{ptr @.str.126, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1231, i32 17}
!342 = !{ptr @.str.127, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c", i32 1204, i32 17}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{i8 0, i8 2}
!354 = !{!"branch_weights", i32 1, i32 2000}
!355 = !{i64 2148309364}
!356 = !{i64 2148223828, i64 2148223860, i64 2148223889, i64 2148223923, i64 2148223954, i64 2148223977}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{i64 2149249540}
!359 = !{i64 2157981380}
!360 = !{i64 6819113}
!361 = !{i64 2157983277}
!362 = !{i64 2157983843}
