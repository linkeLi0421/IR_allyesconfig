; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_validate_shaders.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_validate_shaders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vc4_shader_validation_state = type { i32, i32, ptr, [2 x %struct.vc4_texture_sample_info], [2 x i32], [68 x i32], [68 x i8], [68 x i32], ptr, i8, i8, i8 }
%struct.vc4_texture_sample_info = type { i8, [4 x i32] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad write at ip %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Thread switch too soon after last switch at ip %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bad LOAD_IMM write at ip %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Branch in thread switch at ip %d\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unsupported QPU signal %d at instruction %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"shader failed to terminate before shader BO end at %zd\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Shader uses threading, but uses the upper half of the registers, too\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Branch at %d during delay slots\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"branching from register relative not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"relative branching required\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"branch target not aligned\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Branch at %d outside of shader (ip %d/%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Branch at %d continues past shader end (%d/%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Branch landed after QPU_SIG_PROG_END\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Branch target landed during TMU setup\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADD and MUL both set up textures\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"relative uniforms address change unsupported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported waddr %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"General VPM DMA unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"uniforms address change must be normal math\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Uniform address reset must be an ADD.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Uniform address reset must be unconditional.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No packing allowed on uniforms reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"First argument of uniform address write must be an immediate value.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Resetting uniforms with offset %db instead of %db\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Second argument of uniform address write must be a uniform.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"direct TMU read used small immediate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"direct TMU load wasn't an add\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"direct TMU load wasn't clamped\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"direct TMU load didn't add to a uniform\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"uniform read in the same instruction as texture setup.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TMU%d got too many parameters before dispatch\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Texturing with undefined uniform address\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Uniform read with undefined uniform address\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"branch instruction at %d wrote a register.\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 15]
@__sancov_gen_cov_switch_values.35 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 10, i64 11, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 19]
@__sancov_gen_cov_switch_values.39 = internal global [16 x i64] [i64 14, i64 32, i64 36, i64 38, i64 40, i64 47, i64 50, i64 51, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 840, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 858, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 870, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 881, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 888, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 901, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 910, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 663, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 669, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 675, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 685, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 691, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 702, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 712, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 753, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 562, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 420, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 455, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 459, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 339, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 345, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 350, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 356, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 361, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 367, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 375, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 203, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 212, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 223, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 241, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 249, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 256, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 268, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 617, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [46 x i8] c"../drivers/gpu/drm/vc4/vc4_validate_shaders.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 591, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_validate_shader(ptr nocapture noundef readonly %shader_obj) local_unnamed_addr #0 align 64 {
entry:
  %validation_state = alloca %struct.vc4_shader_validation_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 680, ptr nonnull %validation_state) #7
  %0 = call ptr @memset(ptr %validation_state, i32 0, i32 680)
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %shader_obj, i32 0, i32 3
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vaddr, align 8
  %shader = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 2
  %3 = ptrtoint ptr %shader to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %shader, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %shader_obj, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %div154 = lshr i32 %5, 3
  %max_ip = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 1
  %6 = ptrtoint ptr %max_ip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div154, ptr %max_ip, align 4
  %arrayidx1.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 0, i32 1, i32 0
  %arrayidx1.4.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 1, i32 1, i32 0
  %7 = call ptr @memset(ptr %arrayidx1.i, i32 255, i32 16)
  %8 = call ptr @memset(ptr %arrayidx1.4.i, i32 255, i32 16)
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %entry
  %i.124.i = phi i32 [ %inc9.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %entry ]
  %arrayidx5.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 %i.124.i
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 %i.124.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 %i.124.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx7.i, align 4
  %inc9.i = add nuw nsw i32 %i.124.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 68
  br i1 %exitcond.not.i, label %if.end7.i.i, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

if.end7.i.i:                                      ; preds = %for.body4.i
  %12 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_ip, align 4
  %sub = add i32 %13, 31
  %14 = lshr i32 %sub, 3
  %15 = and i32 %14, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #10
  %branch_targets = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 8
  %16 = ptrtoint ptr %branch_targets to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %branch_targets, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.fail.thread_crit_edge, label %if.end

if.end7.i.i.fail.thread_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.thread

if.end:                                           ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i180 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 28) #11
  %tobool5.not = icmp eq ptr %call7.i.i.i180, null
  br i1 %tobool5.not, label %if.end.fail.thread_crit_edge, label %if.end7

if.end.fail.thread_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail.thread

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp118.not.i = icmp eq i32 %19, 0
  br i1 %cmp118.not.i, label %if.end7.for.end73_crit_edge, label %for.body.i.preheader

if.end7.for.end73_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body.i.preheader:                             ; preds = %if.end7
  %20 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shader, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %22 = phi i32 [ %35, %for.inc.i.for.body.i_crit_edge ], [ %19, %for.body.i.preheader ]
  %last_branch.0122.i = phi i32 [ %last_branch.1.i, %for.inc.i.for.body.i_crit_edge ], [ -2, %for.body.i.preheader ]
  %ip.0120.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %max_branch_target.0119.i = phi i32 [ %max_branch_target.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i64, ptr %21, i32 %ip.0120.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %24 to i32
  %shr2.i = lshr i64 %24, 60
  %conv3.i = trunc i64 %shr2.i to i32
  %add.i = add i32 %ip.0120.i, 4
  %25 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv3.i, label %for.body.i.for.inc.i_crit_edge [
    i32 3, label %if.then.i
    i32 15, label %if.end11.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add6.i = add i32 %ip.0120.i, 3
  %26 = ptrtoint ptr %max_ip to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add6.i, ptr %max_ip, align 4
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %sub.i = sub i32 %ip.0120.i, %last_branch.0122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp12.i = icmp slt i32 %sub.i, 4
  br i1 %cmp12.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %ip.0120.i) #7
  br label %fail

if.end15.i:                                       ; preds = %if.end11.i
  %and16.i = and i64 %24, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #7
  br label %fail

if.end18.i:                                       ; preds = %if.end15.i
  %and19.i = and i64 %24, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end22.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #7
  br label %fail

if.end22.i:                                       ; preds = %if.end18.i
  %rem.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp23.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #7
  br label %fail

if.end26.i:                                       ; preds = %if.end22.i
  %shr27.i = ashr i32 %conv.i, 3
  %add28.i = add i32 %shr27.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i, i32 %22)
  %cmp30.not.i = icmp ult i32 %add28.i, %22
  br i1 %cmp30.not.i, label %if.end34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %ip.0120.i, i32 noundef %add28.i, i32 noundef %22) #7
  br label %fail

if.end34.i:                                       ; preds = %if.end26.i
  %27 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %branch_targets, align 4
  tail call void @_set_bit(i32 noundef %add28.i, ptr noundef %28) #7
  %29 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %30)
  %cmp36.not.i = icmp ult i32 %add.i, %30
  br i1 %cmp36.not.i, label %if.end40.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %ip.0120.i, i32 noundef %add.i, i32 noundef %30) #7
  br label %fail

if.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %branch_targets, align 4
  tail call void @_set_bit(i32 noundef %add.i, ptr noundef %32) #7
  %33 = tail call i32 @llvm.umax.i32(i32 %max_branch_target.0119.i, i32 %add.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end40.i, %if.then.i, %for.body.i.for.inc.i_crit_edge
  %max_branch_target.1.i = phi i32 [ %max_branch_target.0119.i, %if.then.i ], [ %33, %if.end40.i ], [ %max_branch_target.0119.i, %for.body.i.for.inc.i_crit_edge ]
  %last_branch.1.i = phi i32 [ %last_branch.0122.i, %if.then.i ], [ %ip.0120.i, %if.end40.i ], [ %last_branch.0122.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %ip.0120.i, 1
  %34 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_ip, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %phi.bo.i = add i32 %35, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %max_branch_target.1.i, i32 %phi.bo.i)
  %cmp50.i = icmp ugt i32 %max_branch_target.1.i, %phi.bo.i
  br i1 %cmp50.i, label %if.then52.i, label %vc4_validate_branches.exit

if.then52.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #7
  br label %fail

vc4_validate_branches.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp260.not = icmp eq i32 %35, 0
  br i1 %cmp260.not, label %vc4_validate_branches.exit.for.end73_crit_edge, label %for.body.lr.ph

vc4_validate_branches.exit.for.end73_crit_edge:   ; preds = %vc4_validate_branches.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body.lr.ph:                                   ; preds = %vc4_validate_branches.exit
  %tmu_write_count.i.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 4
  %arrayidx2.i.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 4, i32 1
  %needs_uniform_address_update.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 9
  %needs_uniform_address_for_loop.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 10
  %all_registers_used.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 11
  %is_threaded = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 64
  %arrayidx26 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 64
  %arrayidx27 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 64
  %arrayidx25.1 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 65
  %arrayidx26.1 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 65
  %arrayidx27.1 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 65
  %arrayidx25.2 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 66
  %arrayidx26.2 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 66
  %arrayidx27.2 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 66
  %arrayidx25.3 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 67
  %arrayidx26.3 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 67
  %arrayidx27.3 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 67
  br label %for.body

for.body:                                         ; preds = %for.inc71.for.body_crit_edge, %for.body.lr.ph
  %ip.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc72, %for.inc71.for.body_crit_edge ]
  %last_thread_switch_ip.0263 = phi i32 [ -3, %for.body.lr.ph ], [ %last_thread_switch_ip.1, %for.inc71.for.body_crit_edge ]
  %shader_end_ip.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %shader_end_ip.2, %for.inc71.for.body_crit_edge ]
  %found_shader_end.0.off0261 = phi i1 [ false, %for.body.lr.ph ], [ %found_shader_end.2.off0, %for.inc71.for.body_crit_edge ]
  %36 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shader, align 4
  %arrayidx = getelementptr i64, ptr %37, i32 %ip.0264
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx, align 8
  %shr = lshr i64 %39, 60
  %conv = trunc i64 %shr to i32
  %40 = ptrtoint ptr %validation_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %ip.0264, ptr %validation_state, align 4
  %41 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %branch_targets, align 4
  %div3.i.i = lshr i32 %ip.0264, 5
  %arrayidx.i.i = getelementptr i32, ptr %42, i32 %div3.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %ip.0264, 31
  %45 = shl nuw i32 1, %and.i.i
  %46 = and i32 %44, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i184 = icmp eq i32 %46, 0
  br i1 %tobool.not.i184, label %for.body.if.end16_crit_edge, label %if.end.i

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i:                                         ; preds = %for.body
  %47 = ptrtoint ptr %tmu_write_count.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmu_write_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i.i, label %texturing_in_progress.exit.i, label %if.end.i.vc4_handle_branch_target.exit_crit_edge

if.end.i.vc4_handle_branch_target.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_handle_branch_target.exit

texturing_in_progress.exit.i:                     ; preds = %if.end.i
  %49 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp3.i.not.i = icmp eq i32 %50, 0
  br i1 %cmp3.i.not.i, label %if.end4.i, label %texturing_in_progress.exit.i.vc4_handle_branch_target.exit_crit_edge

texturing_in_progress.exit.i.vc4_handle_branch_target.exit_crit_edge: ; preds = %texturing_in_progress.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vc4_handle_branch_target.exit

if.end4.i:                                        ; preds = %texturing_in_progress.exit.i
  %51 = call ptr @memset(ptr %arrayidx1.i, i32 255, i32 16)
  %52 = call ptr @memset(ptr %arrayidx1.4.i, i32 255, i32 16)
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %if.end4.i
  %i.124.i.i = phi i32 [ %inc9.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ 0, %if.end4.i ]
  %arrayidx5.i.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 %i.124.i.i
  %53 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 %i.124.i.i
  %54 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 %i.124.i.i
  %55 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %arrayidx7.i.i, align 4
  %inc9.i.i = add nuw nsw i32 %i.124.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc9.i.i, 68
  br i1 %exitcond.not.i.i, label %reset_validation_state.exit.i, label %for.body4.i.i.for.body4.i.i_crit_edge

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i.i

reset_validation_state.exit.i:                    ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %needs_uniform_address_update.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %needs_uniform_address_update.i, align 4
  br label %if.end16

vc4_handle_branch_target.exit:                    ; preds = %texturing_in_progress.exit.i.vc4_handle_branch_target.exit_crit_edge, %if.end.i.vc4_handle_branch_target.exit_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14) #7
  br label %fail

if.end16:                                         ; preds = %reset_validation_state.exit.i, %for.body.if.end16_crit_edge
  %add17 = add i32 %last_thread_switch_ip.0263, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.0264, i32 %add17)
  %cmp18 = icmp eq i32 %ip.0264, %add17
  br i1 %cmp18, label %for.body24.preheader, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body24.preheader:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %arrayidx25, align 4
  %58 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx26, align 4
  %59 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %arrayidx27, align 4
  %60 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %arrayidx25.1, align 4
  %61 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx26.1, align 1
  %62 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %arrayidx27.1, align 4
  %63 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %arrayidx25.2, align 4
  %64 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx26.2, align 2
  %65 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %arrayidx27.2, align 4
  %66 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %arrayidx25.3, align 4
  %67 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx26.3, align 1
  %68 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %arrayidx27.3, align 4
  br label %if.end28

if.end28:                                         ; preds = %for.body24.preheader, %if.end16.if.end28_crit_edge
  %69 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv, label %sw.default [
    i32 1, label %if.end28.sw.bb_crit_edge
    i32 4, label %if.end28.sw.bb_crit_edge452
    i32 5, label %if.end28.sw.bb_crit_edge453
    i32 8, label %if.end28.sw.bb_crit_edge454
    i32 10, label %if.end28.sw.bb_crit_edge455
    i32 11, label %if.end28.sw.bb_crit_edge456
    i32 3, label %if.end28.sw.bb_crit_edge457
    i32 13, label %if.end28.sw.bb_crit_edge458
    i32 2, label %if.end28.sw.bb_crit_edge459
    i32 6, label %if.end28.sw.bb_crit_edge460
    i32 14, label %sw.bb50
    i32 15, label %sw.bb54
  ]

if.end28.sw.bb_crit_edge460:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge459:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge458:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge457:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge456:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge455:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge454:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge453:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge452:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end28.sw.bb_crit_edge, %if.end28.sw.bb_crit_edge452, %if.end28.sw.bb_crit_edge453, %if.end28.sw.bb_crit_edge454, %if.end28.sw.bb_crit_edge455, %if.end28.sw.bb_crit_edge456, %if.end28.sw.bb_crit_edge457, %if.end28.sw.bb_crit_edge458, %if.end28.sw.bb_crit_edge459, %if.end28.sw.bb_crit_edge460
  %call29 = call fastcc zeroext i1 @check_instruction_writes(ptr noundef nonnull %call7.i.i.i180, ptr noundef nonnull %validation_state)
  br i1 %call29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %ip.0264) #7
  br label %fail

if.end31:                                         ; preds = %sw.bb
  %70 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shader, align 4
  %72 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %validation_state, align 4
  %arrayidx.i186 = getelementptr i64, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx.i186, align 8
  %76 = trunc i64 %75 to i32
  %shr5.i = lshr i64 %75, 60
  %conv6.i = trunc i64 %shr5.i to i32
  %77 = and i32 %76, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %77)
  %cmp.i187 = icmp eq i32 %77, 8388608
  br i1 %cmp.i187, label %if.end31.if.then.i191_crit_edge, label %lor.lhs.false.i

if.end31.if.then.i191_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i191

lor.lhs.false.i:                                  ; preds = %if.end31
  %78 = and i32 %76, 258048
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %78)
  %cmp8.i = icmp ne i32 %78, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv6.i)
  %cmp10.not.i = icmp eq i32 %conv6.i, 13
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp10.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end13.i_crit_edge, label %lor.lhs.false.i.if.then.i191_crit_edge

lor.lhs.false.i.if.then.i191_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i191

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then.i191:                                     ; preds = %lor.lhs.false.i.if.then.i191_crit_edge, %if.end31.if.then.i191_crit_edge
  %79 = ptrtoint ptr %call7.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call7.i.i.i180, align 8
  %add.i188 = add i32 %80, 4
  store i32 %add.i188, ptr %call7.i.i.i180, align 8
  %81 = ptrtoint ptr %needs_uniform_address_update.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %needs_uniform_address_update.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i190 = icmp eq i8 %82, 0
  br i1 %tobool.not.i190, label %if.then.i191.if.end13.i_crit_edge, label %check_instruction_reads.exit

if.then.i191.if.end13.i_crit_edge:                ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i191.if.end13.i_crit_edge, %lor.lhs.false.i.if.end13.i_crit_edge
  %83 = and i32 %76, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %83)
  %84 = icmp eq i32 %83, 4194304
  br i1 %84, label %if.end13.i.if.then28.i_crit_edge, label %lor.lhs.false19.i

if.end13.i.if.then28.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.lhs.false19.i:                                ; preds = %if.end13.i
  %85 = and i32 %76, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %85)
  %86 = icmp ne i32 %85, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv6.i)
  %cmp26.not.i = icmp eq i32 %conv6.i, 13
  %or.cond45.i = select i1 %86, i1 true, i1 %cmp26.not.i
  br i1 %or.cond45.i, label %lor.lhs.false19.i.if.end34_crit_edge, label %lor.lhs.false19.i.if.then28.i_crit_edge

lor.lhs.false19.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.lhs.false19.i.if.end34_crit_edge:             ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then28.i:                                      ; preds = %lor.lhs.false19.i.if.then28.i_crit_edge, %if.end13.i.if.then28.i_crit_edge
  %87 = ptrtoint ptr %all_registers_used.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %all_registers_used.i, align 2
  br label %if.end34

check_instruction_reads.exit:                     ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33) #7
  br label %fail

if.end34:                                         ; preds = %if.then28.i, %lor.lhs.false19.i.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %cmp35 = icmp eq i32 %conv, 3
  %spec.select = select i1 %cmp35, i1 true, i1 %found_shader_end.0.off0261
  %spec.select171 = select i1 %cmp35, i32 %ip.0264, i32 %shader_end_ip.0262
  %88 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %conv, label %if.end34.sw.epilog_crit_edge [
    i32 2, label %if.end34.if.then43_crit_edge
    i32 6, label %if.end34.if.then43_crit_edge461
  ]

if.end34.if.then43_crit_edge461:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end34.if.then43_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then43:                                        ; preds = %if.end34.if.then43_crit_edge, %if.end34.if.then43_crit_edge461
  %89 = ptrtoint ptr %is_threaded to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %is_threaded, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.0264, i32 %add17)
  %cmp45 = icmp ult i32 %ip.0264, %add17
  br i1 %cmp45, label %if.then47, label %if.then43.sw.epilog_crit_edge

if.then43.sw.epilog_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %ip.0264) #7
  br label %fail

sw.bb50:                                          ; preds = %if.end28
  %call51 = call fastcc zeroext i1 @check_instruction_writes(ptr noundef nonnull %call7.i.i.i180, ptr noundef nonnull %validation_state)
  br i1 %call51, label %sw.bb50.sw.epilog_crit_edge, label %if.then52

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then52:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %ip.0264) #7
  br label %fail

sw.bb54:                                          ; preds = %if.end28
  %90 = and i64 %39, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %cmp.not.i = icmp eq i64 %90, 0
  br i1 %cmp.not.i, label %sw.bb54.if.end.i194_crit_edge, label %if.then.i193

sw.bb54.if.end.i194_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i194

if.then.i193:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %needs_uniform_address_for_loop.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %needs_uniform_address_for_loop.i, align 1
  br label %if.end.i194

if.end.i194:                                      ; preds = %if.then.i193, %sw.bb54.if.end.i194_crit_edge
  %92 = and i64 %39, 17587891077120
  call void @__sanitizer_cov_trace_const_cmp8(i64 10887742095360, i64 %92)
  %93 = icmp eq i64 %92, 10887742095360
  br i1 %93, label %if.end57, label %check_branch.exit

check_branch.exit:                                ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %validation_state, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %95) #7
  br label %fail

if.end57:                                         ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.0264, i32 %add17)
  %cmp59 = icmp ult i32 %ip.0264, %add17
  br i1 %cmp59, label %if.then61, label %if.end57.sw.epilog_crit_edge

if.end57.sw.epilog_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %ip.0264) #7
  br label %fail

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = trunc i64 %shr to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %conv.le, i32 noundef %ip.0264) #7
  br label %fail

sw.epilog:                                        ; preds = %if.end57.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %if.then43.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge
  %found_shader_end.2.off0 = phi i1 [ %found_shader_end.0.off0261, %if.end57.sw.epilog_crit_edge ], [ %found_shader_end.0.off0261, %sw.bb50.sw.epilog_crit_edge ], [ %spec.select, %if.end34.sw.epilog_crit_edge ], [ %spec.select, %if.then43.sw.epilog_crit_edge ]
  %shader_end_ip.2 = phi i32 [ %shader_end_ip.0262, %if.end57.sw.epilog_crit_edge ], [ %shader_end_ip.0262, %sw.bb50.sw.epilog_crit_edge ], [ %spec.select171, %if.end34.sw.epilog_crit_edge ], [ %spec.select171, %if.then43.sw.epilog_crit_edge ]
  %last_thread_switch_ip.1 = phi i32 [ %last_thread_switch_ip.0263, %if.end57.sw.epilog_crit_edge ], [ %last_thread_switch_ip.0263, %sw.bb50.sw.epilog_crit_edge ], [ %last_thread_switch_ip.0263, %if.end34.sw.epilog_crit_edge ], [ %ip.0264, %if.then43.sw.epilog_crit_edge ]
  %add65 = add i32 %shader_end_ip.2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.0264, i32 %add65)
  %cmp66 = icmp eq i32 %ip.0264, %add65
  %or.cond = select i1 %found_shader_end.2.off0, i1 %cmp66, i1 false
  br i1 %or.cond, label %sw.epilog.for.end73_crit_edge, label %for.inc71

sw.epilog.for.end73_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.inc71:                                        ; preds = %sw.epilog
  %inc72 = add nuw i32 %ip.0264, 1
  %96 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_ip, align 4
  %cmp = icmp ult i32 %inc72, %97
  br i1 %cmp, label %for.inc71.for.body_crit_edge, label %for.inc71.for.end73_crit_edge

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.inc71.for.body_crit_edge:                     ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %sw.epilog.for.end73_crit_edge, %vc4_validate_branches.exit.for.end73_crit_edge, %if.end7.for.end73_crit_edge
  %ip.0.lcssa = phi i32 [ 0, %vc4_validate_branches.exit.for.end73_crit_edge ], [ 0, %if.end7.for.end73_crit_edge ], [ %ip.0264, %sw.epilog.for.end73_crit_edge ], [ %inc72, %for.inc71.for.end73_crit_edge ]
  %98 = ptrtoint ptr %max_ip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.0.lcssa, i32 %99)
  %cmp75 = icmp eq i32 %ip.0.lcssa, %99
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %101) #7
  br label %fail

if.end80:                                         ; preds = %for.end73
  %is_threaded81 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 6
  %102 = ptrtoint ptr %is_threaded81 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %is_threaded81, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool82.not = icmp eq i8 %103, 0
  br i1 %tobool82.not, label %if.end80.if.end88_crit_edge, label %land.lhs.true84

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true84:                                  ; preds = %if.end80
  %all_registers_used = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 11
  %104 = ptrtoint ptr %all_registers_used to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %all_registers_used, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool85.not = icmp eq i8 %105, 0
  br i1 %tobool85.not, label %land.lhs.true84.if.end88_crit_edge, label %if.then87

land.lhs.true84.if.end88_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then87:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #7
  br label %fail

if.end88:                                         ; preds = %land.lhs.true84.if.end88_crit_edge, %if.end80.if.end88_crit_edge
  %needs_uniform_address_for_loop = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 10
  %106 = ptrtoint ptr %needs_uniform_address_for_loop to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %needs_uniform_address_for_loop, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool89.not = icmp eq i8 %107, 0
  br i1 %tobool89.not, label %if.end88.if.end95_crit_edge, label %if.then90

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then90:                                        ; preds = %if.end88
  %call91 = call fastcc zeroext i1 @require_uniform_address_uniform(ptr noundef nonnull %call7.i.i.i180)
  br i1 %call91, label %if.end93, label %if.then90.fail_crit_edge

if.then90.fail_crit_edge:                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end93:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %call7.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %call7.i.i.i180, align 8
  %add94 = add i32 %109, 4
  store i32 %add94, ptr %call7.i.i.i180, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.end93, %if.end88.if.end95_crit_edge
  %110 = ptrtoint ptr %call7.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call7.i.i.i180, align 8
  %num_texture_samples = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 2
  %112 = ptrtoint ptr %num_texture_samples to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_texture_samples, align 8
  %mul = shl i32 %113, 2
  %add97 = add i32 %mul, %111
  %uniforms_src_size = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 1
  %114 = ptrtoint ptr %uniforms_src_size to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add97, ptr %uniforms_src_size, align 4
  %115 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %branch_targets, align 4
  call void @kfree(ptr noundef %116) #7
  br label %cleanup103

fail.thread:                                      ; preds = %if.end.fail.thread_crit_edge, %if.end7.i.i.fail.thread_crit_edge
  %117 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %branch_targets, align 4
  tail call void @kfree(ptr noundef %118) #7
  br label %cleanup103

fail:                                             ; preds = %if.then90.fail_crit_edge, %if.then87, %if.then77, %sw.default, %if.then61, %check_branch.exit, %if.then52, %if.then47, %check_instruction_reads.exit, %if.then30, %vc4_handle_branch_target.exit, %if.then52.i, %if.then38.i, %if.then32.i, %if.then25.i, %if.then21.i, %if.then17.i, %if.then14.i
  %119 = ptrtoint ptr %branch_targets to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %branch_targets, align 4
  call void @kfree(ptr noundef %120) #7
  %uniform_addr_offsets = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 5
  %121 = ptrtoint ptr %uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %uniform_addr_offsets, align 4
  call void @kfree(ptr noundef %122) #7
  %texture_samples = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %call7.i.i.i180, i32 0, i32 3
  %123 = ptrtoint ptr %texture_samples to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %texture_samples, align 4
  call void @kfree(ptr noundef %124) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i180) #7
  br label %cleanup103

cleanup103:                                       ; preds = %fail, %fail.thread, %if.end95
  %retval.0 = phi ptr [ %call7.i.i.i180, %if.end95 ], [ null, %fail ], [ null, %fail.thread ]
  call void @llvm.lifetime.end.p0(i64 680, ptr nonnull %validation_state) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_instruction_writes(ptr nocapture noundef %validated_shader, ptr noundef %validation_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shader = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 2
  %0 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shader, align 4
  %2 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %validation_state, align 4
  %arrayidx = getelementptr i64, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %6 = and i64 %5, 15633680957440
  call void @__sanitizer_cov_trace_const_cmp8(i64 15633680957440, i64 %6)
  %7 = icmp eq i64 %6, 15633680957440
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc zeroext i1 @check_reg_write(ptr noundef %validated_shader, ptr noundef %validation_state, i1 noundef zeroext false)
  br i1 %call7, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc zeroext i1 @check_reg_write(ptr noundef %validated_shader, ptr noundef %validation_state, i1 noundef zeroext true)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %8 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %call9, %land.rhs ]
  %9 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shader, align 4
  %11 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %validation_state, align 4
  %arrayidx.i = getelementptr i64, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i, align 8
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 24
  %conv.i = and i32 %16, 31
  %and1.i = lshr i64 %14, 38
  %17 = trunc i64 %and1.i to i32
  %conv3.i = and i32 %17, 63
  %and4.i = lshr i64 %14, 32
  %18 = trunc i64 %and4.i to i32
  %conv6.i = and i32 %18, 63
  %19 = lshr i32 %15, 6
  %conv15.i = and i32 %19, 7
  %20 = lshr i32 %15, 12
  %conv21.i = and i32 %20, 63
  %shr23.i = lshr i64 %14, 60
  %conv24.i = trunc i64 %shr23.i to i32
  %and25.i = and i64 %14, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25.i)
  %tobool.not.i = icmp eq i64 %and25.i, 0
  %21 = lshr i32 %15, 9
  %conv3.i.i = and i32 %21, 7
  %22 = zext i32 %conv3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %conv3.i.i, label %if.else16.i.i [
    i32 6, label %if.then.i.i
    i32 7, label %land.lhs.true.i.i
  ]

if.then.i.i:                                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = lshr i32 %15, 18
  %conv6.i.i = and i32 %23, 63
  br label %land.rhs.i

land.lhs.true.i.i:                                ; preds = %land.end
  %shr.mask.i.i = and i64 %14, -1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3458764513820540928, i64 %shr.mask.i.i)
  %cmp13.not.i.i = icmp eq i64 %shr.mask.i.i, -3458764513820540928
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.land.end.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.land.end.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add nuw nsw i32 %conv21.i, 32
  br label %land.rhs.i

if.else16.i.i:                                    ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv3.i.i)
  %cmp17.i.i = icmp ult i32 %conv3.i.i, 4
  %add20.i.i = or i32 %conv3.i.i, 64
  br i1 %cmp17.i.i, label %if.else16.i.i.land.rhs.i_crit_edge, label %if.else16.i.i.land.end.i_crit_edge

if.else16.i.i.land.end.i_crit_edge:               ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

if.else16.i.i.land.rhs.i_crit_edge:               ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.else16.i.i.land.rhs.i_crit_edge, %if.then15.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %add.i.i, %if.then15.i.i ], [ %conv6.i.i, %if.then.i.i ], [ %add20.i.i, %if.else16.i.i.land.rhs.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 %retval.0.i.ph.i
  %24 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx27.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.i = icmp ne i8 %25, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.else16.i.i.land.end.i_crit_edge, %land.lhs.true.i.i.land.end.i_crit_edge
  %26 = phi i1 [ %tobool28.i, %land.rhs.i ], [ false, %if.else16.i.i.land.end.i_crit_edge ], [ false, %land.lhs.true.i.i.land.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv3.i)
  %cmp.i.i = icmp ult i32 %conv3.i, 32
  br i1 %cmp.i.i, label %if.then.i147.i, label %if.else2.i.i

if.then.i147.i:                                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i145.i = add nuw nsw i32 %conv3.i, 32
  %spec.select.i146.i = select i1 %tobool.not.i, i32 %conv3.i, i32 %add.i145.i
  br label %waddr_to_live_reg_index.exit.i

if.else2.i.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %conv3.i)
  %cmp3.i.i = icmp ult i32 %conv3.i, 36
  %sub.i.i = add nuw nsw i32 %conv3.i, 32
  %spec.select11.i.i = select i1 %cmp3.i.i, i32 %sub.i.i, i32 -1
  br label %waddr_to_live_reg_index.exit.i

waddr_to_live_reg_index.exit.i:                   ; preds = %if.else2.i.i, %if.then.i147.i
  %retval.0.i148.i = phi i32 [ %spec.select.i146.i, %if.then.i147.i ], [ %spec.select11.i.i, %if.else2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv6.i)
  %cmp.i149.i = icmp ult i32 %conv6.i, 32
  br i1 %cmp.i149.i, label %if.then.i152.i, label %if.else2.i156.i

if.then.i152.i:                                   ; preds = %waddr_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i150.i = add nuw nsw i32 %conv6.i, 32
  %spec.select.i151.i = select i1 %tobool.not.i, i32 %add.i150.i, i32 %conv6.i
  br label %if.then.i

if.else2.i156.i:                                  ; preds = %waddr_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %conv6.i)
  %cmp3.i153.i = icmp ult i32 %conv6.i, 36
  %sub.i154.i = add nuw nsw i32 %conv6.i, 32
  br i1 %cmp3.i153.i, label %if.else2.i156.i.if.then.i_crit_edge, label %if.else2.i156.i.if.end.i_crit_edge

if.else2.i156.i.if.end.i_crit_edge:               ; preds = %if.else2.i156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else2.i156.i.if.then.i_crit_edge:              ; preds = %if.else2.i156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.else2.i156.i.if.then.i_crit_edge, %if.then.i152.i
  %retval.0.i157.ph.i = phi i32 [ %spec.select.i151.i, %if.then.i152.i ], [ %sub.i154.i, %if.else2.i156.i.if.then.i_crit_edge ]
  %arrayidx38.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 %retval.0.i157.ph.i
  %27 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 %retval.0.i157.ph.i
  %28 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx39.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else2.i156.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i148.i)
  %cmp40.not.i = icmp eq i32 %retval.0.i148.i, -1
  br i1 %cmp40.not.i, label %if.end.i.cleanup_crit_edge, label %if.then42.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42.i:                                      ; preds = %if.end.i
  %arrayidx44.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 6, i32 %retval.0.i148.i
  %29 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx44.i, align 1
  %arrayidx46.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 %retval.0.i148.i
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %arrayidx46.i, align 4
  %31 = and i64 %14, 3940649673949184
  call void @__sanitizer_cov_trace_const_cmp8(i64 562949953421312, i64 %31)
  %cmp48.not.i = icmp eq i64 %31, 562949953421312
  br i1 %cmp48.not.i, label %if.end51.i, label %if.then42.i.cleanup_crit_edge

if.then42.i.cleanup_crit_edge:                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51.i:                                       ; preds = %if.then42.i
  %32 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %conv.i, label %if.end51.i.cleanup_crit_edge [
    i32 19, label %if.then54.i
    i32 18, label %if.then71.i
  ]

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv24.i)
  %cmp55.not.i = icmp eq i32 %conv24.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21.i)
  %cmp57.not.i = icmp eq i32 %conv21.i, 0
  %or.cond.i = and i1 %cmp55.not.i, %cmp57.not.i
  br i1 %or.cond.i, label %lor.lhs.false59.i, label %if.then54.i.cleanup_crit_edge

if.then54.i.cleanup_crit_edge:                    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false59.i:                                ; preds = %if.then54.i
  %33 = and i64 %14, 3584
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %33)
  %cmp60.not.i = icmp eq i64 %33, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv15.i)
  %cmp62.not.i = icmp eq i32 %conv15.i, 7
  %or.cond141.i = or i1 %cmp60.not.i, %cmp62.not.i
  br i1 %or.cond141.i, label %if.end65.i, label %lor.lhs.false59.i.cleanup_crit_edge

lor.lhs.false59.i.cleanup_crit_edge:              ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65.i:                                       ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx44.i, align 1
  br label %cleanup

if.then71.i:                                      ; preds = %if.end51.i
  br i1 %26, label %if.end74.i, label %if.then71.i.cleanup_crit_edge

if.then71.i.cleanup_crit_edge:                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv15.i)
  %cmp75.i = icmp eq i32 %conv15.i, 6
  %35 = and i64 %14, 16515072
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %35)
  %cmp78.i = icmp eq i64 %35, 8388608
  %or.cond142.i = and i1 %cmp78.i, %cmp75.i
  br i1 %or.cond142.i, label %if.end74.i.if.end90.i_crit_edge, label %land.lhs.true80.i

if.end74.i.if.end90.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

land.lhs.true80.i:                                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv15.i)
  %cmp81.i = icmp ne i32 %conv15.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv21.i)
  %cmp84.i = icmp ne i32 %conv21.i, 32
  %or.cond143.not.i = or i1 %cmp81.i, %cmp84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv24.i)
  %cmp87.not.i = icmp eq i32 %conv24.i, 13
  %or.cond144.i = or i1 %cmp87.not.i, %or.cond143.not.i
  br i1 %or.cond144.i, label %land.lhs.true80.i.cleanup_crit_edge, label %land.lhs.true80.i.if.end90.i_crit_edge

land.lhs.true80.i.if.end90.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

land.lhs.true80.i.cleanup_crit_edge:              ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90.i:                                       ; preds = %land.lhs.true80.i.if.end90.i_crit_edge, %if.end74.i.if.end90.i_crit_edge
  %36 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %validated_shader, align 4
  %38 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx46.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90.i, %land.lhs.true80.i.cleanup_crit_edge, %if.then71.i.cleanup_crit_edge, %if.end65.i, %lor.lhs.false59.i.cleanup_crit_edge, %if.then54.i.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %if.then42.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %8, %if.end.i.cleanup_crit_edge ], [ %8, %if.then42.i.cleanup_crit_edge ], [ %8, %if.end51.i.cleanup_crit_edge ], [ %8, %if.then54.i.cleanup_crit_edge ], [ %8, %lor.lhs.false59.i.cleanup_crit_edge ], [ %8, %if.end65.i ], [ %8, %if.then71.i.cleanup_crit_edge ], [ %8, %land.lhs.true80.i.cleanup_crit_edge ], [ %8, %if.end90.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @require_uniform_address_uniform(ptr nocapture noundef %validated_shader) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_uniform_addr_offsets = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 4
  %0 = ptrtoint ptr %num_uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_uniform_addr_offsets, align 4
  %2 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %validated_shader, align 4
  %uniform_addr_offsets = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 5
  %4 = ptrtoint ptr %uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uniform_addr_offsets, align 4
  %add = shl i32 %1, 2
  %mul = add i32 %add, 4
  %call = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %mul, i32 noundef 3264) #12
  %6 = ptrtoint ptr %uniform_addr_offsets to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %uniform_addr_offsets, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div13 = lshr i32 %3, 2
  %arrayidx = getelementptr i32, ptr %call, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div13, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %num_uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_uniform_addr_offsets, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %num_uniform_addr_offsets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %10 = xor i1 %tobool.not, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_reg_write(ptr nocapture noundef %validated_shader, ptr noundef %validation_state, i1 noundef zeroext %is_mul) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shader = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 2
  %0 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shader, align 4
  %2 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %validation_state, align 4
  %arrayidx = getelementptr i64, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %cond.in.v.v = select i1 %is_mul, i64 32, i64 38
  %cond.in.v = lshr i64 %5, %cond.in.v.v
  %cond.in = trunc i64 %cond.in.v to i32
  %cond = and i32 %cond.in, 63
  %6 = and i64 %5, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %7 = icmp ne i64 %6, 0
  %tobool14 = xor i1 %7, %is_mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond)
  %cmp.i = icmp ult i32 %cond, 32
  br i1 %cmp.i, label %if.then.i, label %if.else2.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %cond, 32
  %spec.select.i = select i1 %tobool14, i32 %add.i, i32 %cond
  br label %if.then

if.else2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %cond)
  %cmp3.i = icmp ult i32 %cond, 36
  %sub.i = add nuw nsw i32 %cond, 32
  br i1 %cmp3.i, label %if.else2.i.if.then_crit_edge, label %if.else2.i.if.end51_crit_edge

if.else2.i.if.end51_crit_edge:                    ; preds = %if.else2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else2.i.if.then_crit_edge:                     ; preds = %if.else2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.else2.i.if.then_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ %spec.select.i, %if.then.i ], [ %sub.i, %if.else2.i.if.then_crit_edge ]
  %8 = and i64 %5, -1085367510196289536
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2305843009213693952, i64 %8)
  %9 = icmp eq i64 %8, -2305843009213693952
  br i1 %9, label %land.lhs.true31, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true31:                                  ; preds = %if.then
  %10 = and i64 %5, 492581209243648
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177664, i64 %10)
  %cmp35 = icmp eq i64 %10, 70368744177664
  %or.cond98 = select i1 %is_mul, i1 %cmp35, i1 false
  br i1 %or.cond98, label %land.lhs.true31.if.then41_crit_edge, label %lor.lhs.false

land.lhs.true31.if.then41_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %is_mul.not = xor i1 %is_mul, true
  %11 = and i64 %5, 3940649673949184
  call void @__sanitizer_cov_trace_const_cmp8(i64 562949953421312, i64 %11)
  %cmp39 = icmp eq i64 %11, 562949953421312
  %or.cond99 = select i1 %is_mul.not, i1 %cmp39, i1 false
  br i1 %or.cond99, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %land.lhs.true31.if.then41_crit_edge
  %conv44 = trunc i64 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then41, %lor.lhs.false.if.end_crit_edge, %if.then.if.end_crit_edge
  %.sink = phi i32 [ %conv44, %if.then41 ], [ -1, %lor.lhs.false.if.end_crit_edge ], [ -1, %if.then.if.end_crit_edge ]
  %arrayidx47 = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 %retval.0.i.ph
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %arrayidx47, align 4
  %13 = and i32 %retval.0.i.ph, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %if.then49, label %if.end.if.end51_crit_edge

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %all_registers_used = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 11
  %15 = ptrtoint ptr %all_registers_used to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %all_registers_used, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end.if.end51_crit_edge, %if.else2.i.if.end51_crit_edge
  %16 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cond, label %if.end51.cleanup_crit_edge [
    i32 40, label %sw.bb
    i32 50, label %sw.bb62
    i32 51, label %if.end51.sw.bb61_crit_edge
    i32 47, label %if.end51.sw.bb61_crit_edge131
    i32 56, label %if.end51.sw.bb58_crit_edge
    i32 57, label %if.end51.sw.bb58_crit_edge132
    i32 58, label %if.end51.sw.bb58_crit_edge133
    i32 59, label %if.end51.sw.bb58_crit_edge134
    i32 60, label %if.end51.sw.bb58_crit_edge135
    i32 61, label %if.end51.sw.bb58_crit_edge136
    i32 62, label %if.end51.sw.bb58_crit_edge137
    i32 63, label %if.end51.sw.bb58_crit_edge138
    i32 38, label %if.end51.sw.bb61_crit_edge139
    i32 36, label %if.end51.sw.bb61_crit_edge140
  ]

if.end51.sw.bb61_crit_edge140:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end51.sw.bb61_crit_edge139:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end51.sw.bb58_crit_edge138:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge137:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge136:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge135:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge134:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge133:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge132:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb58_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58

if.end51.sw.bb61_crit_edge131:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end51.sw.bb61_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end51
  br i1 %tobool14, label %if.then53, label %if.end54

if.then53:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end54:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shader, align 4
  %19 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %validation_state, align 4
  %arrayidx.i = getelementptr i64, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 6
  %conv.i = and i32 %24, 7
  %25 = lshr i32 %23, 9
  %conv3.i.i = and i32 %25, 7
  %26 = lshr i32 %23, 12
  %conv9.i.i = and i32 %26, 63
  %27 = zext i32 %conv3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %conv3.i.i, label %if.end54.if.else16.i.i_crit_edge [
    i32 6, label %if.then.i.i
    i32 7, label %land.lhs.true.i.i
  ]

if.end54.if.else16.i.i_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16.i.i

if.then.i.i:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %28 = lshr i32 %23, 18
  %conv6.i.i = and i32 %28, 63
  br label %raddr_add_a_to_live_reg_index.exit.i

land.lhs.true.i.i:                                ; preds = %if.end54
  %shr.mask.i.i = and i64 %22, -1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3458764513820540928, i64 %shr.mask.i.i)
  %cmp13.not.i.i = icmp eq i64 %shr.mask.i.i, -3458764513820540928
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.if.else16.i.i_crit_edge, label %if.then15.i.i

land.lhs.true.i.i.if.else16.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else16.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add nuw nsw i32 %conv9.i.i, 32
  br label %raddr_add_a_to_live_reg_index.exit.i

if.else16.i.i:                                    ; preds = %land.lhs.true.i.i.if.else16.i.i_crit_edge, %if.end54.if.else16.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv3.i.i)
  %cmp17.i.i = icmp ult i32 %conv3.i.i, 4
  %add20.i.i = or i32 %conv3.i.i, 64
  %spec.select.i.i = select i1 %cmp17.i.i, i32 %add20.i.i, i32 -1
  br label %raddr_add_a_to_live_reg_index.exit.i

raddr_add_a_to_live_reg_index.exit.i:             ; preds = %if.else16.i.i, %if.then15.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %add.i.i, %if.then15.i.i ], [ %spec.select.i.i, %if.else16.i.i ]
  %29 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %validated_shader, align 4
  %add.i100 = add i32 %30, 4
  %shr8.i = lshr i64 %22, 60
  %conv9.i = trunc i64 %shr8.i to i32
  %31 = zext i32 %conv9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %conv9.i, label %sw.default.i [
    i32 1, label %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge
    i32 5, label %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge141
    i32 8, label %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge142
    i32 10, label %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge143
    i32 11, label %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge144
  ]

raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge144: ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge143: ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge142: ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge141: ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge: ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %raddr_add_a_to_live_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19) #7
  br label %cleanup

sw.epilog.i:                                      ; preds = %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge, %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge141, %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge142, %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge143, %raddr_add_a_to_live_reg_index.exit.i.sw.epilog.i_crit_edge144
  %32 = and i64 %22, 520093696
  call void @__sanitizer_cov_trace_const_cmp8(i64 201326592, i64 %32)
  %cmp.not.i = icmp ne i64 %32, 201326592
  %33 = or i1 %cmp.not.i, %is_mul
  br i1 %33, label %if.then.i101, label %if.end.i

if.then.i101:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  %34 = and i64 %22, 3940649673949184
  call void @__sanitizer_cov_trace_const_cmp8(i64 562949953421312, i64 %34)
  %cmp18.not.i = icmp eq i64 %34, 562949953421312
  br i1 %cmp18.not.i, label %if.end21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end21.i:                                       ; preds = %if.end.i
  %35 = and i64 %22, 67553994410557440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp25.not.i = icmp ne i64 %35, 0
  %and27.i = and i64 %22, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27.i)
  %tobool28.not.i = icmp eq i64 %and27.i, 0
  %or.cond81.i = and i1 %cmp25.not.i, %tobool28.not.i
  br i1 %or.cond81.i, label %if.then29.i, label %if.end30.i

if.then29.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp31.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp31.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end34.i:                                       ; preds = %if.end30.i
  %arrayidx35.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 7, i32 %retval.0.i.i
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add.i100)
  %cmp36.not.i = icmp eq i32 %37, %add.i100
  br i1 %cmp36.not.i, label %if.end41.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %37, i32 noundef %add.i100) #7
  br label %cleanup

if.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv.i)
  %cmp42.i = icmp eq i32 %conv.i, 6
  %38 = and i64 %22, 16515072
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %38)
  %cmp45.i = icmp eq i64 %38, 8388608
  %or.cond82.i = and i1 %cmp45.i, %cmp42.i
  br i1 %or.cond82.i, label %if.end41.i.if.end54.i_crit_edge, label %land.lhs.true47.i

if.end41.i.if.end54.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

land.lhs.true47.i:                                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv.i)
  %cmp48.i = icmp eq i32 %conv.i, 7
  %39 = and i64 %22, 258048
  call void @__sanitizer_cov_trace_const_cmp8(i64 131072, i64 %39)
  %cmp51.i = icmp eq i64 %39, 131072
  %or.cond83.i = and i1 %cmp51.i, %cmp48.i
  br i1 %or.cond83.i, label %land.lhs.true47.i.if.end54.i_crit_edge, label %if.then53.i

land.lhs.true47.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then53.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25) #7
  br label %cleanup

if.end54.i:                                       ; preds = %land.lhs.true47.i.if.end54.i_crit_edge, %if.end41.i.if.end54.i_crit_edge
  %needs_uniform_address_update.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 9
  %40 = ptrtoint ptr %needs_uniform_address_update.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %needs_uniform_address_update.i, align 4
  %needs_uniform_address_for_loop.i = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 10
  %41 = ptrtoint ptr %needs_uniform_address_for_loop.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %needs_uniform_address_for_loop.i, align 1
  %num_uniform_addr_offsets.i.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 4
  %42 = ptrtoint ptr %num_uniform_addr_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_uniform_addr_offsets.i.i, align 4
  %44 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %validated_shader, align 4
  %uniform_addr_offsets.i.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 5
  %46 = ptrtoint ptr %uniform_addr_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uniform_addr_offsets.i.i, align 4
  %add.i84.i = shl i32 %43, 2
  %mul.i.i = add i32 %add.i84.i, 4
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef %47, i32 noundef %mul.i.i, i32 noundef 3264) #12
  %48 = ptrtoint ptr %uniform_addr_offsets.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i, ptr %uniform_addr_offsets.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end54.i.require_uniform_address_uniform.exit.i_crit_edge, label %if.end.i.i

if.end54.i.require_uniform_address_uniform.exit.i_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %require_uniform_address_uniform.exit.i

if.end.i.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %div13.i.i = lshr i32 %45, 2
  %arrayidx.i.i = getelementptr i32, ptr %call.i.i, i32 %43
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div13.i.i, ptr %arrayidx.i.i, align 4
  %50 = ptrtoint ptr %num_uniform_addr_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_uniform_addr_offsets.i.i, align 4
  %inc.i.i = add i32 %51, 1
  store i32 %inc.i.i, ptr %num_uniform_addr_offsets.i.i, align 4
  br label %require_uniform_address_uniform.exit.i

require_uniform_address_uniform.exit.i:           ; preds = %if.end.i.i, %if.end54.i.require_uniform_address_uniform.exit.i_crit_edge
  %52 = xor i1 %tobool.not.i.i, true
  br label %cleanup

sw.bb58:                                          ; preds = %if.end51.sw.bb58_crit_edge, %if.end51.sw.bb58_crit_edge132, %if.end51.sw.bb58_crit_edge133, %if.end51.sw.bb58_crit_edge134, %if.end51.sw.bb58_crit_edge135, %if.end51.sw.bb58_crit_edge136, %if.end51.sw.bb58_crit_edge137, %if.end51.sw.bb58_crit_edge138
  %53 = ptrtoint ptr %shader to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shader, align 4
  %55 = ptrtoint ptr %validation_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %validation_state, align 4
  %arrayidx.i104 = getelementptr i64, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i104, align 8
  %cond.in.v.i = lshr i64 %58, %cond.in.v.v
  %cond.in.i = trunc i64 %cond.in.v.i to i32
  %cond.i = and i32 %cond.in.i, 60
  %59 = trunc i64 %58 to i32
  %60 = lshr i32 %59, 18
  %conv6.i = and i32 %60, 63
  %61 = lshr i32 %59, 12
  %conv9.i105 = and i32 %61, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %cond.i)
  %cmp.i106 = icmp eq i32 %cond.i, 60
  %conv10.i = zext i1 %cmp.i106 to i32
  %62 = and i32 %cond.in.i, 59
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %62)
  %63 = icmp eq i32 %62, 56
  br i1 %63, label %land.end.i, label %land.end.thread.i

land.end.thread.i:                                ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  %shr19160.i = lshr i64 %58, 60
  %conv20161.i = trunc i64 %shr19160.i to i32
  br label %if.else.i

land.end.i:                                       ; preds = %sw.bb58
  %arrayidx14.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 4, i32 %conv10.i
  %64 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp15.i = icmp eq i32 %65, 0
  %shr19.i = lshr i64 %58, 60
  %conv20.i = trunc i64 %shr19.i to i32
  br i1 %cmp15.i, label %if.then.i107, label %land.end.i.if.else.i_crit_edge

land.end.i.if.else.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i107:                                     ; preds = %land.end.i
  %66 = lshr i32 %59, 6
  %conv24.i = and i32 %66, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv20.i)
  %cmp25.i = icmp eq i32 %conv20.i, 13
  br i1 %cmp25.i, label %if.then27.i, label %if.end.i108

if.then27.i:                                      ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end.i108:                                      ; preds = %if.then.i107
  %is_mul.not.i = xor i1 %is_mul, true
  %67 = and i64 %58, 520093696
  call void @__sanitizer_cov_trace_const_cmp8(i64 201326592, i64 %67)
  %cmp33.not.i = icmp eq i64 %67, 201326592
  %or.cond.i = select i1 %is_mul.not.i, i1 %cmp33.not.i, i1 false
  br i1 %or.cond.i, label %if.end36.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end36.i:                                       ; preds = %if.end.i108
  %68 = lshr i32 %59, 9
  %conv3.i.i109 = and i32 %68, 7
  %69 = zext i32 %conv3.i.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %conv3.i.i109, label %if.else16.i.i117 [
    i32 6, label %if.end36.i.if.end41.i118_crit_edge
    i32 7, label %land.lhs.true.i.i112
  ]

if.end36.i.if.end41.i118_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i118

land.lhs.true.i.i112:                             ; preds = %if.end36.i
  %shr.mask.i.i110 = and i64 %58, -1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3458764513820540928, i64 %shr.mask.i.i110)
  %cmp13.not.i.i111 = icmp eq i64 %shr.mask.i.i110, -3458764513820540928
  br i1 %cmp13.not.i.i111, label %land.lhs.true.i.i112.if.then40.i_crit_edge, label %if.then15.i.i114

land.lhs.true.i.i112.if.then40.i_crit_edge:       ; preds = %land.lhs.true.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

if.then15.i.i114:                                 ; preds = %land.lhs.true.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i113 = add nuw nsw i32 %conv9.i105, 32
  br label %if.end41.i118

if.else16.i.i117:                                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv3.i.i109)
  %cmp17.i.i115 = icmp ult i32 %conv3.i.i109, 4
  %add20.i.i116 = or i32 %conv3.i.i109, 64
  br i1 %cmp17.i.i115, label %if.else16.i.i117.if.end41.i118_crit_edge, label %if.else16.i.i117.if.then40.i_crit_edge

if.else16.i.i117.if.then40.i_crit_edge:           ; preds = %if.else16.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

if.else16.i.i117.if.end41.i118_crit_edge:         ; preds = %if.else16.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i118

if.then40.i:                                      ; preds = %if.else16.i.i117.if.then40.i_crit_edge, %land.lhs.true.i.i112.if.then40.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end41.i118:                                    ; preds = %if.else16.i.i117.if.end41.i118_crit_edge, %if.then15.i.i114, %if.end36.i.if.end41.i118_crit_edge
  %retval.0.i.ph.i = phi i32 [ %conv6.i, %if.end36.i.if.end41.i118_crit_edge ], [ %add.i.i113, %if.then15.i.i114 ], [ %add20.i.i116, %if.else16.i.i117.if.end41.i118_crit_edge ]
  %arrayidx42.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 5, i32 %retval.0.i.ph.i
  %70 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp43.i = icmp eq i32 %71, -1
  br i1 %cmp43.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end41.i118
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end46.i:                                       ; preds = %if.end41.i118
  %arrayidx47.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 %conv10.i
  %arrayidx48.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 %conv10.i, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv24.i)
  %cmp49.i = icmp eq i32 %conv24.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv6.i)
  %cmp51.i119 = icmp eq i32 %conv6.i, 32
  %or.cond156.i = select i1 %cmp49.i, i1 %cmp51.i119, i1 false
  br i1 %or.cond156.i, label %if.end46.i.if.end60.i_crit_edge, label %land.lhs.true53.i

if.end46.i.if.end60.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

land.lhs.true53.i:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv24.i)
  %cmp54.i = icmp eq i32 %conv24.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv9.i105)
  %cmp57.i = icmp eq i32 %conv9.i105, 32
  %or.cond157.i = select i1 %cmp54.i, i1 %cmp57.i, i1 false
  br i1 %or.cond157.i, label %land.lhs.true53.i.if.end60.i_crit_edge, label %if.then59.i

land.lhs.true53.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then59.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29) #7
  br label %cleanup

if.end60.i:                                       ; preds = %land.lhs.true53.i.if.end60.i_crit_edge, %if.end46.i.if.end60.i_crit_edge
  %73 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx47.i, align 4
  br label %if.end76.i

if.else.i:                                        ; preds = %land.end.i.if.else.i_crit_edge, %land.end.thread.i
  %conv20162.i = phi i32 [ %conv20161.i, %land.end.thread.i ], [ %conv20.i, %land.end.i.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv6.i)
  %cmp66.i = icmp eq i32 %conv6.i, 32
  br i1 %cmp66.i, label %if.else.i.if.then74.i_crit_edge, label %lor.lhs.false68.i

if.else.i.if.then74.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then74.i

lor.lhs.false68.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %conv20162.i)
  %cmp69.not.i = icmp ne i32 %conv20162.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv9.i105)
  %cmp72.i = icmp eq i32 %conv9.i105, 32
  %or.cond158.i = select i1 %cmp69.not.i, i1 %cmp72.i, i1 false
  br i1 %or.cond158.i, label %lor.lhs.false68.i.if.then74.i_crit_edge, label %lor.lhs.false68.i.if.end76.i_crit_edge

lor.lhs.false68.i.if.end76.i_crit_edge:           ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

lor.lhs.false68.i.if.then74.i_crit_edge:          ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then74.i

if.then74.i:                                      ; preds = %lor.lhs.false68.i.if.then74.i_crit_edge, %if.else.i.if.then74.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end76.i:                                       ; preds = %lor.lhs.false68.i.if.end76.i_crit_edge, %if.end60.i
  %74 = phi i1 [ true, %if.end60.i ], [ false, %lor.lhs.false68.i.if.end76.i_crit_edge ]
  %arrayidx78.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 4, i32 %conv10.i
  %75 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp79.i = icmp sgt i32 %76, 3
  br i1 %cmp79.i, label %if.then81.i, label %if.end82.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %conv10.i) #7
  br label %cleanup

if.end82.i:                                       ; preds = %if.end76.i
  %77 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %validated_shader, align 4
  %arrayidx88.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 %conv10.i, i32 1, i32 %76
  %79 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx88.i, align 4
  %80 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx78.i, align 4
  %inc.i = add i32 %81, 1
  store i32 %inc.i, ptr %arrayidx78.i, align 4
  br i1 %74, label %if.end82.i.if.end97.i_crit_edge, label %if.then92.i

if.end82.i.if.end97.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

if.then92.i:                                      ; preds = %if.end82.i
  %needs_uniform_address_update.i120 = getelementptr inbounds %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 9
  %82 = ptrtoint ptr %needs_uniform_address_update.i120 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %needs_uniform_address_update.i120, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool93.not.i = icmp eq i8 %83, 0
  br i1 %tobool93.not.i, label %if.end95.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32) #7
  br label %cleanup

if.end95.i:                                       ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %validated_shader, align 4
  %add.i121 = add i32 %85, 4
  store i32 %add.i121, ptr %validated_shader, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end95.i, %if.end82.i.if.end97.i_crit_edge
  br i1 %63, label %if.then99.i, label %if.end97.i.cleanup_crit_edge

if.end97.i.cleanup_crit_edge:                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99.i:                                      ; preds = %if.end97.i
  %num_texture_samples.i.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 2
  %86 = ptrtoint ptr %num_texture_samples.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_texture_samples.i.i, align 4
  %texture_samples.i.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %validated_shader, i32 0, i32 3
  %88 = ptrtoint ptr %texture_samples.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %texture_samples.i.i, align 4
  %add.i159.i = add i32 %87, 1
  %mul.i.i122 = mul i32 %add.i159.i, 20
  %call.i.i123 = tail call noalias ptr @krealloc(ptr noundef %89, i32 noundef %mul.i.i122, i32 noundef 3264) #12
  %tobool.not.i.i124 = icmp eq ptr %call.i.i123, null
  br i1 %tobool.not.i.i124, label %if.then99.i.cleanup_crit_edge, label %if.end102.i

if.then99.i.cleanup_crit_edge:                    ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end102.i:                                      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i125 = getelementptr %struct.vc4_texture_sample_info, ptr %call.i.i123, i32 %87
  %arrayidx1.i.i = getelementptr %struct.vc4_shader_validation_state, ptr %validation_state, i32 0, i32 3, i32 %conv10.i
  %90 = call ptr @memcpy(ptr %arrayidx.i.i125, ptr %arrayidx1.i.i, i32 20)
  %91 = ptrtoint ptr %num_texture_samples.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add.i159.i, ptr %num_texture_samples.i.i, align 4
  %92 = ptrtoint ptr %texture_samples.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i123, ptr %texture_samples.i.i, align 4
  %93 = select i1 %cmp.i106, i32 36, i32 16
  %uglygep.i.i = getelementptr i8, ptr %validation_state, i32 %93
  %94 = call ptr @memset(ptr %uglygep.i.i, i32 255, i32 16)
  %95 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx78.i, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end51.sw.bb61_crit_edge, %if.end51.sw.bb61_crit_edge131, %if.end51.sw.bb61_crit_edge139, %if.end51.sw.bb61_crit_edge140
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %cond) #7
  br label %cleanup

sw.bb62:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb62, %sw.bb61, %if.end102.i, %if.then99.i.cleanup_crit_edge, %if.end97.i.cleanup_crit_edge, %if.then94.i, %if.then81.i, %if.then74.i, %if.then59.i, %if.then45.i, %if.then40.i, %if.then35.i, %if.then27.i, %require_uniform_address_uniform.exit.i, %if.then53.i, %if.then38.i, %if.then33.i, %if.then29.i, %if.then20.i, %if.then.i101, %sw.default.i, %if.then53, %if.end51.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.bb62 ], [ false, %sw.bb61 ], [ false, %if.then53 ], [ true, %if.end51.cleanup_crit_edge ], [ false, %sw.default.i ], [ false, %if.then.i101 ], [ false, %if.then20.i ], [ false, %if.then33.i ], [ false, %if.then38.i ], [ %52, %require_uniform_address_uniform.exit.i ], [ false, %if.then53.i ], [ false, %if.then29.i ], [ false, %if.then81.i ], [ false, %if.then94.i ], [ false, %if.then74.i ], [ false, %if.then59.i ], [ false, %if.then45.i ], [ false, %if.then40.i ], [ false, %if.then35.i ], [ false, %if.then27.i ], [ true, %if.end102.i ], [ true, %if.end97.i.cleanup_crit_edge ], [ false, %if.then99.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 840, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 858, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 870, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 881, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 888, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 901, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 910, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 663, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 669, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 675, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 685, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 691, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 702, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 712, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 753, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 562, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 420, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 455, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 459, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 339, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 345, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 350, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 356, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 361, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 367, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 375, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 203, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 212, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 223, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 241, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 249, i32 4}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 256, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 268, i32 4}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 617, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/vc4/vc4_validate_shaders.c", i32 591, i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
