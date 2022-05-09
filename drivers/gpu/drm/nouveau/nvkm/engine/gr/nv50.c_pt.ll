; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.137 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nv50_gr_chan = type { %struct.nvkm_object, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv50_gr = type { %struct.nvkm_gr, ptr, %struct.spinlock, i32 }

@nv50_gr_object = dso_local constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_gr_object_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@nv50_gr_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_gr_chan_bind, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INVALID_OPERATION\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_VALUE\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INVALID_ENUM\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INVALID_OBJECT\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ_ONLY_OBJECT\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SUPERVISOR_OBJECT\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INVALID_ADDRESS_ALIGNMENT\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INVALID_BITFIELD\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BEGIN_END_ACTIVE\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SEMANTIC_COLOR_BACK_OVER_LIMIT\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VIEWPORT_ID_NEEDS_GP\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RT_DOUBLE_BIND\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RT_TYPES_MISMATCH\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RT_LINEAR_WITH_ZETA\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FP_TOO_FEW_REGS\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ZETA_FORMAT_CSAA_MISMATCH\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RT_LINEAR_WITH_MSAA\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FP_INTERPOLANT_START_OVER_LIMIT\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SEMANTIC_LAYER_OVER_LIMIT\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RT_INVALID_ALIGNMENT\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SAMPLER_OVER_LIMIT\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TEXTURE_OVER_LIMIT\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GP_TOO_MANY_OUTPUTS\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT_BPP128_WITH_MS8\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Z_OUT_OF_BOUNDS\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"XY_OUT_OF_BOUNDS\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VP_ZERO_INPUTS\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CP_MORE_PARAMS_THAN_SHARED\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CP_NO_REG_SPACE_STRIPED\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CP_NO_REG_SPACE_PACKED\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CP_NOT_ENOUGH_WARPS\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CP_BLOCK_SIZE_MISMATCH\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP_NOT_ENOUGH_LOCAL_WARPS\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP_NOT_ENOUGH_STACK_WARPS\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CP_NO_BLOCKDIM_LATCH\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ENG2D_FORMAT_MISMATCH\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PRIMITIVE_ID_NEEDS_GP\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SEMANTIC_VIEWPORT_OVER_LIMIT\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SEMANTIC_COLOR_FRONT_OVER_LIMIT\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LAYER_ID_NEEDS_GP\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SEMANTIC_CLIP_OVER_LIMIT\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SEMANTIC_PTSZ_OVER_LIMIT\00", [39 x i8] zeroinitializer }, align 32
@nv50_data_error_names = dso_local constant { [43 x %struct.nvkm_enum], [196 x i8] } { [43 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 3, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.2, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.32, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.34, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 49, ptr @.str.35, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 63, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 68, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 69, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 70, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 71, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 72, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [196 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv50_gr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 650, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: DATA_ERROR %08x [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv50_gr_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_gr_intr._entry_ptr = internal global ptr @nv50_gr_intr._entry, section ".printk_index", align 4
@.str.48 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nv50_gr_intr_name = internal constant { [11 x %struct.nvkm_bitfield], [40 x i8] } { [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.111 }, %struct.nvkm_bitfield { i32 2, ptr @.str.182 }, %struct.nvkm_bitfield { i32 16, ptr @.str.183 }, %struct.nvkm_bitfield { i32 32, ptr @.str.184 }, %struct.nvkm_bitfield { i32 64, ptr @.str.185 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.186 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.187 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.188 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.189 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.190 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nv50_gr_intr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.45, i32 669, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: %08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@nv50_gr_intr._entry_ptr.51 = internal global ptr @nv50_gr_intr._entry.49, section ".printk_index", align 4
@nv50_gr_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gr->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_gr_trap_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.45, i32 405, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: TRAP: no units reporting traps?\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_gr_trap_handler\00", [43 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr = internal global ptr @nv50_gr_trap_handler._entry, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.45, i32 415, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: TRAP_DISPATCH - no ustatus?\0A\00", [63 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.57 = internal global ptr @nv50_gr_trap_handler._entry.55, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.45, i32 430, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: TRAP DISPATCH_FAULT\0A\00", [39 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.60 = internal global ptr @nv50_gr_trap_handler._entry.58, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.45, i32 437, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s: ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x%08x 400808 %08x 400848 %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.63 = internal global ptr @nv50_gr_trap_handler._entry.61, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.45, i32 440, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: no stuck command?\0A\00", [41 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.66 = internal global ptr @nv50_gr_trap_handler._entry.64, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.45, i32 456, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: TRAP DISPATCH_QUERY\0A\00", [39 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.69 = internal global ptr @nv50_gr_trap_handler._entry.67, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.45, i32 462, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x 40084c %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.72 = internal global ptr @nv50_gr_trap_handler._entry.70, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.45, i32 465, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.74 = internal global ptr @nv50_gr_trap_handler._entry.73, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.54, ptr @.str.45, i32 474, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: TRAP_DISPATCH (unknown %08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.77 = internal global ptr @nv50_gr_trap_handler._entry.75, section ".printk_index", align 4
@nv50_gr_trap_m2mf = internal constant { [4 x %struct.nvkm_bitfield], [32 x i8] } { [4 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.111 }, %struct.nvkm_bitfield { i32 2, ptr @.str.112 }, %struct.nvkm_bitfield { i32 4, ptr @.str.113 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.54, ptr @.str.45, i32 491, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: TRAP_M2MF %08x [%s]\0A\00", [39 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.80 = internal global ptr @nv50_gr_trap_handler._entry.78, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.54, ptr @.str.45, i32 496, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: TRAP_M2MF %08x %08x %08x %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.83 = internal global ptr @nv50_gr_trap_handler._entry.81, section ".printk_index", align 4
@nv50_gr_trap_vfetch = internal constant { [2 x %struct.nvkm_bitfield], [16 x i8] } { [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.114 }, %struct.nvkm_bitfield zeroinitializer], [16 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.54, ptr @.str.45, i32 514, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: TRAP_VFETCH %08x [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.86 = internal global ptr @nv50_gr_trap_handler._entry.84, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.54, ptr @.str.45, i32 519, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: TRAP_VFETCH %08x %08x %08x %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.89 = internal global ptr @nv50_gr_trap_handler._entry.87, section ".printk_index", align 4
@nv50_gr_trap_strmout = internal constant { [2 x %struct.nvkm_bitfield], [16 x i8] } { [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.114 }, %struct.nvkm_bitfield zeroinitializer], [16 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.54, ptr @.str.45, i32 534, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: TRAP_STRMOUT %08x [%s]\0A\00", [36 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.92 = internal global ptr @nv50_gr_trap_handler._entry.90, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.54, ptr @.str.45, i32 539, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: TRAP_STRMOUT %08x %08x %08x %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.95 = internal global ptr @nv50_gr_trap_handler._entry.93, section ".printk_index", align 4
@nv50_gr_trap_ccache = internal constant { [2 x %struct.nvkm_bitfield], [16 x i8] } { [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.114 }, %struct.nvkm_bitfield zeroinitializer], [16 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.54, ptr @.str.45, i32 557, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: TRAP_CCACHE %08x [%s]\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.98 = internal global ptr @nv50_gr_trap_handler._entry.96, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.54, ptr @.str.45, i32 566, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: TRAP_CCACHE %08x %08x %08x %08x %08x %08x %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.101 = internal global ptr @nv50_gr_trap_handler._entry.99, section ".printk_index", align 4
@nv50_gr_trap_handler._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.54, ptr @.str.45, i32 580, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: TRAP_UNKC04 %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.104 = internal global ptr @nv50_gr_trap_handler._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRAP_TEXTURE\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TRAP_MP\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TRAP_PROP\00", [22 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.54, ptr @.str.45, i32 612, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TRAP: unknown %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@nv50_gr_trap_handler._entry_ptr.110 = internal global ptr @nv50_gr_trap_handler._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAULT\00", [26 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.45, i32 349, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: magic set %d:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv50_gr_tp_trap\00", [16 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr = internal global ptr @nv50_gr_tp_trap._entry, section ".printk_index", align 4
@nv50_gr_tp_trap._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.45, i32 352, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: \09%08x: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr.119 = internal global ptr @nv50_gr_tp_trap._entry.117, section ".printk_index", align 4
@nv50_tex_traps = internal constant { [6 x %struct.nvkm_bitfield], [48 x i8] } { [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.48 }, %struct.nvkm_bitfield { i32 2, ptr @.str.114 }, %struct.nvkm_bitfield { i32 4, ptr @.str.132 }, %struct.nvkm_bitfield { i32 8, ptr @.str.133 }, %struct.nvkm_bitfield { i32 32, ptr @.str.134 }, %struct.nvkm_bitfield zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.45, i32 358, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s - TP%d: %08x [%s]\0A\00", [38 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr.122 = internal global ptr @nv50_gr_tp_trap._entry.120, section ".printk_index", align 4
@nv50_mpc_traps = internal constant { [11 x %struct.nvkm_bitfield], [40 x i8] } { [11 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.147 }, %struct.nvkm_bitfield { i32 16, ptr @.str.148 }, %struct.nvkm_bitfield { i32 64, ptr @.str.149 }, %struct.nvkm_bitfield { i32 256, ptr @.str.150 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.151 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.152 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.153 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.154 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.155 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.156 }, %struct.nvkm_bitfield zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.45, i32 372, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr.124 = internal global ptr @nv50_gr_tp_trap._entry.123, section ".printk_index", align 4
@nv50_gr_tp_trap._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.116, ptr @.str.45, i32 385, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %s - TP%d: Unhandled ustatus %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr.127 = internal global ptr @nv50_gr_tp_trap._entry.125, section ".printk_index", align 4
@nv50_gr_tp_trap._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.116, ptr @.str.45, i32 391, ptr @.str.130, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %s - No TPs claiming errors?\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nv50_gr_tp_trap._entry_ptr.131 = internal global ptr @nv50_gr_tp_trap._entry.128, section ".printk_index", align 4
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"STORAGE_TYPE_MISMATCH\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LINEAR_MISMATCH\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WRONG_MEMTYPE\00", [18 x i8] zeroinitializer }, align 32
@nv50_mp_exec_errors = internal constant { [8 x %struct.nvkm_bitfield], [32 x i8] } { [8 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.140 }, %struct.nvkm_bitfield { i32 2, ptr @.str.141 }, %struct.nvkm_bitfield { i32 4, ptr @.str.142 }, %struct.nvkm_bitfield { i32 8, ptr @.str.143 }, %struct.nvkm_bitfield { i32 16, ptr @.str.144 }, %struct.nvkm_bitfield { i32 32, ptr @.str.145 }, %struct.nvkm_bitfield { i32 64, ptr @.str.146 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv50_gr_mp_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.45, i32 313, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: TRAP_MP_EXEC - TP %d MP %d: %08x [%s] at %06x warp %d, opcode %08x %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv50_gr_mp_trap\00", [16 x i8] zeroinitializer }, align 32
@nv50_gr_mp_trap._entry_ptr = internal global ptr @nv50_gr_mp_trap._entry, section ".printk_index", align 4
@nv50_gr_mp_trap._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.45, i32 321, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: TRAP_MP_EXEC - TP %d: No MPs claiming errors?\0A\00", [45 x i8] zeroinitializer }, align 32
@nv50_gr_mp_trap._entry_ptr.139 = internal global ptr @nv50_gr_mp_trap._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STACK_UNDERFLOW\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STACK_MISMATCH\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUADON_ACTIVE\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TIMEOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INVALID_OPCODE\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PM_OVERFLOW\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BREAKPOINT\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LOCAL_LIMIT_READ\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LOCAL_LIMIT_WRITE\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STACK_LIMIT\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GLOBAL_LIMIT_READ\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GLOBAL_LIMIT_WRITE\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GLOBAL_LIMIT_RED\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GLOBAL_LIMIT_ATOM\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP2\00", [28 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.45, i32 258, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: TRAP_PROP - TP %d - CUDA_FAULT - Global read fault at address %02x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_gr_prop_trap\00", [46 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry_ptr = internal global ptr @nv50_gr_prop_trap._entry, section ".printk_index", align 4
@nv50_gr_prop_trap._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.45, i32 263, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: TRAP_PROP - TP %d - CUDA_FAULT - Global write fault at address %02x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry_ptr.161 = internal global ptr @nv50_gr_prop_trap._entry.159, section ".printk_index", align 4
@nv50_gr_prop_trap._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.45, i32 267, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: TRAP_PROP - TP %d - Unknown CUDA fault at address %02x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry_ptr.164 = internal global ptr @nv50_gr_prop_trap._entry.162, section ".printk_index", align 4
@nv50_gr_trap_prop = internal constant { [12 x %struct.nvkm_bitfield], [32 x i8] } { [12 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 4, ptr @.str.171 }, %struct.nvkm_bitfield { i32 8, ptr @.str.172 }, %struct.nvkm_bitfield { i32 16, ptr @.str.173 }, %struct.nvkm_bitfield { i32 32, ptr @.str.174 }, %struct.nvkm_bitfield { i32 64, ptr @.str.175 }, %struct.nvkm_bitfield { i32 128, ptr @.str.176 }, %struct.nvkm_bitfield { i32 256, ptr @.str.177 }, %struct.nvkm_bitfield { i32 512, ptr @.str.178 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.179 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.180 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.181 }, %struct.nvkm_bitfield zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.158, ptr @.str.45, i32 275, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: TRAP_PROP - TP %d - %08x [%s] - Address %02x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry_ptr.167 = internal global ptr @nv50_gr_prop_trap._entry.165, section ".printk_index", align 4
@nv50_gr_prop_trap._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.158, ptr @.str.45, i32 278, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: TRAP_PROP - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@nv50_gr_prop_trap._entry_ptr.170 = internal global ptr @nv50_gr_prop_trap._entry.168, section ".printk_index", align 4
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SURF_WIDTH_OVERRUN\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SURF_HEIGHT_OVERRUN\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DST2D_FAULT\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ZETA_FAULT\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RT_FAULT\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CUDA_FAULT\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DST2D_STORAGE_TYPE_MISMATCH\00", [36 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ZETA_STORAGE_TYPE_MISMATCH\00", [37 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RT_STORAGE_TYPE_MISMATCH\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DST2D_LINEAR_MISMATCH\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RT_LINEAR_MISMATCH\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COMPUTE_QUERY\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ILLEGAL_CLASS\00", [18 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DOUBLE_NOTIFY\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CONTEXT_SWITCH\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BUFFER_NOTIFY\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DATA_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRAP\00", [27 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SINGLE_STEP\00", [20 x i8] zeroinitializer }, align 32
@nv50_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [6 x %struct.nvkm_sclass] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, [6 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv50_gr_init, ptr null, ptr @nv50_gr_intr, ptr null, ptr null, ptr @nv50_gr_chan_new, ptr null, ptr @nv50_gr_units, ptr null, %struct.anon.137 zeroinitializer, [6 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20525, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20537, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20631, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20672, ptr @nv50_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 128, i64 144]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 32, i64 160, i64 170, i64 172]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"nv50_gr_object\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 60, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"nv50_gr_chan\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 84, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 165, i32 16 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 166, i32 16 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 167, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 168, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 169, i32 16 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 170, i32 16 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 171, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 172, i32 16 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 173, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 174, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 175, i32 16 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 176, i32 16 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 177, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 178, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 179, i32 16 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 180, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 181, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 182, i32 16 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 183, i32 16 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 184, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 185, i32 16 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 186, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 187, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 188, i32 16 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 189, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 190, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 191, i32 16 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 192, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 193, i32 16 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 194, i32 16 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 195, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 196, i32 16 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 197, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 198, i32 16 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 199, i32 16 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 200, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 201, i32 16 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 202, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 203, i32 16 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 204, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 205, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 206, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant [22 x i8] c"nv50_data_error_names\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 164, i32 24 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 636, i32 21 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 649, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [18 x i8] c"nv50_gr_intr_name\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 210, i32 35 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 666, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 770, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 405, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 415, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 430, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 432, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 440, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 456, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 458, i32 5 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 465, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 473, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [18 x i8] c"nv50_gr_trap_m2mf\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 141, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 490, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 492, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"nv50_gr_trap_vfetch\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 148, i32 35 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 513, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 515, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c"nv50_gr_trap_strmout\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 153, i32 35 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 533, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 535, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c"nv50_gr_trap_ccache\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 158, i32 35 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 556, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 558, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 580, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 588, i32 9 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 596, i32 9 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 605, i32 9 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 612, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 142, i32 16 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 143, i32 16 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 144, i32 16 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 149, i32 16 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 349, i32 5 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 351, i32 6 }
@___asan_gen_.530 = private unnamed_addr constant [15 x i8] c"nv50_tex_traps\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 132, i32 35 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 356, i32 6 }
@___asan_gen_.539 = private unnamed_addr constant [15 x i8] c"nv50_mpc_traps\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 118, i32 35 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 371, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 385, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 391, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 135, i32 16 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 136, i32 16 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 137, i32 16 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c"nv50_mp_exec_errors\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 107, i32 35 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 309, i32 4 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 320, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 108, i32 10 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 109, i32 10 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 110, i32 10 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 111, i32 10 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 112, i32 10 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 113, i32 10 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 114, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 119, i32 15 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 120, i32 15 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 121, i32 15 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 122, i32 15 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 123, i32 15 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 124, i32 15 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 125, i32 15 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 126, i32 15 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 127, i32 15 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 128, i32 15 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 257, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 262, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 266, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant [18 x i8] c"nv50_gr_trap_prop\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 224, i32 35 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 273, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 277, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 225, i32 16 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 226, i32 16 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 227, i32 16 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 228, i32 16 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 229, i32 16 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 230, i32 16 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 231, i32 16 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 232, i32 16 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 233, i32 16 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 234, i32 16 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 235, i32 16 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 212, i32 16 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 213, i32 16 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 214, i32 16 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 215, i32 16 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 216, i32 16 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 217, i32 16 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 218, i32 16 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 219, i32 16 }
@___asan_gen_.731 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 220, i32 16 }
@___asan_gen_.734 = private unnamed_addr constant [8 x i8] c"nv50_gr\00", align 1
@___asan_gen_.735 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 777, i32 1 }
@llvm.compiler.used = appending global [215 x ptr] [ptr @nv50_gr_intr._entry, ptr @nv50_gr_intr._entry.49, ptr @nv50_gr_intr._entry_ptr, ptr @nv50_gr_intr._entry_ptr.51, ptr @nv50_gr_mp_trap._entry, ptr @nv50_gr_mp_trap._entry.137, ptr @nv50_gr_mp_trap._entry_ptr, ptr @nv50_gr_mp_trap._entry_ptr.139, ptr @nv50_gr_prop_trap._entry, ptr @nv50_gr_prop_trap._entry.159, ptr @nv50_gr_prop_trap._entry.162, ptr @nv50_gr_prop_trap._entry.165, ptr @nv50_gr_prop_trap._entry.168, ptr @nv50_gr_prop_trap._entry_ptr, ptr @nv50_gr_prop_trap._entry_ptr.161, ptr @nv50_gr_prop_trap._entry_ptr.164, ptr @nv50_gr_prop_trap._entry_ptr.167, ptr @nv50_gr_prop_trap._entry_ptr.170, ptr @nv50_gr_tp_trap._entry, ptr @nv50_gr_tp_trap._entry.117, ptr @nv50_gr_tp_trap._entry.120, ptr @nv50_gr_tp_trap._entry.123, ptr @nv50_gr_tp_trap._entry.125, ptr @nv50_gr_tp_trap._entry.128, ptr @nv50_gr_tp_trap._entry_ptr, ptr @nv50_gr_tp_trap._entry_ptr.119, ptr @nv50_gr_tp_trap._entry_ptr.122, ptr @nv50_gr_tp_trap._entry_ptr.124, ptr @nv50_gr_tp_trap._entry_ptr.127, ptr @nv50_gr_tp_trap._entry_ptr.131, ptr @nv50_gr_trap_handler._entry, ptr @nv50_gr_trap_handler._entry.102, ptr @nv50_gr_trap_handler._entry.108, ptr @nv50_gr_trap_handler._entry.55, ptr @nv50_gr_trap_handler._entry.58, ptr @nv50_gr_trap_handler._entry.61, ptr @nv50_gr_trap_handler._entry.64, ptr @nv50_gr_trap_handler._entry.67, ptr @nv50_gr_trap_handler._entry.70, ptr @nv50_gr_trap_handler._entry.73, ptr @nv50_gr_trap_handler._entry.75, ptr @nv50_gr_trap_handler._entry.78, ptr @nv50_gr_trap_handler._entry.81, ptr @nv50_gr_trap_handler._entry.84, ptr @nv50_gr_trap_handler._entry.87, ptr @nv50_gr_trap_handler._entry.90, ptr @nv50_gr_trap_handler._entry.93, ptr @nv50_gr_trap_handler._entry.96, ptr @nv50_gr_trap_handler._entry.99, ptr @nv50_gr_trap_handler._entry_ptr, ptr @nv50_gr_trap_handler._entry_ptr.101, ptr @nv50_gr_trap_handler._entry_ptr.104, ptr @nv50_gr_trap_handler._entry_ptr.110, ptr @nv50_gr_trap_handler._entry_ptr.57, ptr @nv50_gr_trap_handler._entry_ptr.60, ptr @nv50_gr_trap_handler._entry_ptr.63, ptr @nv50_gr_trap_handler._entry_ptr.66, ptr @nv50_gr_trap_handler._entry_ptr.69, ptr @nv50_gr_trap_handler._entry_ptr.72, ptr @nv50_gr_trap_handler._entry_ptr.74, ptr @nv50_gr_trap_handler._entry_ptr.77, ptr @nv50_gr_trap_handler._entry_ptr.80, ptr @nv50_gr_trap_handler._entry_ptr.83, ptr @nv50_gr_trap_handler._entry_ptr.86, ptr @nv50_gr_trap_handler._entry_ptr.89, ptr @nv50_gr_trap_handler._entry_ptr.92, ptr @nv50_gr_trap_handler._entry_ptr.95, ptr @nv50_gr_trap_handler._entry_ptr.98, ptr @nv50_gr_object, ptr @nv50_gr_chan, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @nv50_data_error_names, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @nv50_gr_intr_name, ptr @.str.50, ptr @nv50_gr_new_.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @nv50_gr_trap_m2mf, ptr @.str.79, ptr @.str.82, ptr @nv50_gr_trap_vfetch, ptr @.str.85, ptr @.str.88, ptr @nv50_gr_trap_strmout, ptr @.str.91, ptr @.str.94, ptr @nv50_gr_trap_ccache, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @nv50_tex_traps, ptr @.str.121, ptr @nv50_mpc_traps, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @nv50_mp_exec_errors, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @nv50_gr_trap_prop, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @nv50_gr], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_object to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_data_error_names to i32), i32 860, i32 1056, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_intr_name to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_intr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_m2mf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_vfetch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_strmout to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_ccache to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_handler._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_tex_traps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mpc_traps to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_tp_trap._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_mp_exec_errors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_mp_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_mp_trap._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_prop_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_prop_trap._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_prop_trap._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_trap_prop to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_prop_trap._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr_prop_trap._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_gr to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nv50_gr_units(ptr nocapture noundef readonly %gr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !363
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_gr_object_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 16, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = tail call ptr %9(ptr noundef %5) #5
  %10 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgpuobj, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass, align 4
  tail call void %15(ptr noundef %11, i32 noundef 0, i32 noundef %17) #5
  %18 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pgpuobj, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %wr322 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %wr322 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr322, align 4
  tail call void %23(ptr noundef %19, i32 noundef 4, i32 noundef 0) #5
  %24 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pgpuobj, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %wr323 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %wr323 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr323, align 4
  tail call void %29(ptr noundef %25, i32 noundef 8, i32 noundef 0) #5
  %30 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pgpuobj, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %wr324 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %wr324 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr324, align 4
  tail call void %35(ptr noundef %31, i32 noundef 12, i32 noundef 0) #5
  %36 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pgpuobj, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release, align 4
  tail call void %41(ptr noundef %37) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_chan_new(ptr noundef %base, ptr nocapture readnone %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_gr_chan, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %gr1 = getelementptr inbounds %struct.nv50_gr_chan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %gr1, align 8
  %2 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %pobject, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_gr_intr(ptr noundef %base) #0 align 64 {
entry:
  %msg.i = alloca [128 x i8], align 1
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  %msg = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4194560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !364
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4195116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !365
  %and = and i32 %7, 268435455
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 4196100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !366
  %and16 = lshr i32 %10, 16
  %shr = and i32 %and16, 7
  %and17 = and i32 %10, 8188
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 4196104
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !367
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 4196372
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %flags, align 4, !annotation !369
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %18 = call ptr @memset(ptr %msg, i32 255, i32 128)
  %fifo = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %19 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo, align 8
  %conv = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv, 12
  %call28 = call ptr @nvkm_fifo_chan_inst(ptr noundef %20, i64 noundef %shl, ptr noundef nonnull %flags) #5
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call28, ptr %chan, align 4
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call28, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client, align 4
  %name29 = getelementptr inbounds %struct.nvkm_client, ptr %23, i32 0, i32 1
  %chid30 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call28, i32 0, i32 5
  %24 = ptrtoint ptr %chid30 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chid30, align 8
  %conv31 = zext i16 %25 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.0 = phi ptr [ %name29, %if.then ], [ @.str.42, %entry.if.end_crit_edge ]
  %chid.0 = phi i32 [ %conv31, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %and32 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end.if.end53_crit_edge, label %if.then34

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then34:                                        ; preds = %if.end
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %27, i32 4194576
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !370
  %call40 = call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_data_error_names, i32 noundef %28) #5
  %debug = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not = icmp eq i32 %30, 0
  br i1 %cmp.not, label %if.then34.if.end49_crit_edge, label %do.end

if.then34.if.end49_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end:                                           ; preds = %if.then34
  %31 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %name45 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  %tobool47.not = icmp eq ptr %call40, null
  br i1 %tobool47.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %name48 = getelementptr inbounds %struct.nvkm_enum, ptr %call40, i32 0, i32 1
  %35 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name48, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %36, %cond.true ], [ @.str.48, %do.end.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.43, ptr noundef %name45, i32 noundef %28, ptr noundef %cond) #9
  br label %if.end49

if.end49:                                         ; preds = %cond.end, %if.then34.if.end49_crit_edge
  %and52 = and i32 %4, -1048577
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %if.end.if.end53_crit_edge
  %show_bitfield.0 = phi i32 [ %and52, %if.end49 ], [ %4, %if.end.if.end53_crit_edge ]
  %and54 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.do.body66_crit_edge, label %if.then56

if.end53.do.body66_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

if.then56:                                        ; preds = %if.end53
  %37 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device3, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 4194568
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !371
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #5
  %42 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.not = icmp eq i32 %41, 0
  br i1 %tobool.not.i.not, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %if.then56
  %debug.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %43 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i, label %do.body.i.nv50_gr_trap_handler.exit.thread_crit_edge, label %do.end.i

do.body.i.nv50_gr_trap_handler.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_gr_trap_handler.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device3, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  %name7.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.53, ptr noundef %name7.i) #9
  br label %nv50_gr_trap_handler.exit.thread

if.end10.i:                                       ; preds = %if.then56
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end272.i_crit_edge, label %if.then12.i

if.end10.i.if.end272.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272.i

if.then12.i:                                      ; preds = %if.end10.i
  %49 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %50, i32 4196356
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !372
  %and18.i = and i32 %51, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i.not = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i.not, label %do.body23.i, label %if.then12.i.do.body39.i_crit_edge

if.then12.i.do.body39.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39.i

do.body23.i:                                      ; preds = %if.then12.i
  %debug25.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %52 = ptrtoint ptr %debug25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp26.not.i = icmp eq i32 %53, 0
  br i1 %cmp26.not.i, label %do.body23.i.do.body39.i_crit_edge, label %do.end30.i

do.body23.i.do.body39.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39.i

do.end30.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device3, align 4
  %dev32.i = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev32.i, align 8
  %name33.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.56, ptr noundef %name33.i) #9
  br label %do.body39.i

do.body39.i:                                      ; preds = %do.end30.i, %do.body23.i.do.body39.i_crit_edge, %if.then12.i.do.body39.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !373
  call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %59, i32 4195584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 0) #5, !srcloc !374
  %and44.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %do.body39.i.if.end150.i_crit_edge, label %if.then46.i

do.body39.i.if.end150.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150.i

if.then46.i:                                      ; preds = %do.body39.i
  %60 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %61, i32 4196360
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !375
  %and52.i = lshr i32 %62, 16
  %shr.i = and i32 %and52.i, 7
  %and53.i = and i32 %62, 8188
  %63 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %64, i32 4196364
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !376
  %66 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %67, i32 4196368
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !377
  %69 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %70, i32 4196372
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !378
  %72 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %73, i32 4196424
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !379
  %debug76.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %75 = ptrtoint ptr %debug76.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp77.not.i = icmp eq i32 %76, 0
  br i1 %cmp77.not.i, label %if.then46.i.if.end86.i_crit_edge, label %do.end81.i

if.then46.i.if.end86.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

do.end81.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device3, align 4
  %dev83.i = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev83.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev83.i, align 8
  %name84.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.59, ptr noundef %name84.i) #9
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end81.i, %if.then46.i.if.end86.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %tobool92.not.i = icmp sgt i32 %62, -1
  %81 = ptrtoint ptr %debug76.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp114.not.i = icmp eq i32 %82, 0
  br i1 %tobool92.not.i, label %do.body111.i, label %do.body94.i

do.body94.i:                                      ; preds = %if.end86.i
  br i1 %cmp114.not.i, label %do.body94.i.do.body128.i_crit_edge, label %do.end101.i

do.body94.i.do.body128.i_crit_edge:               ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body128.i

do.end101.i:                                      ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device3, align 4
  %dev103.i = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dev103.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev103.i, align 8
  %name104.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.62, ptr noundef %name104.i, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr.i, i32 noundef %71, i32 noundef %and53.i, i32 noundef %68, i32 noundef %65, i32 noundef %62, i32 noundef %74) #9
  br label %do.body128.i

do.body111.i:                                     ; preds = %if.end86.i
  br i1 %cmp114.not.i, label %do.body111.i.do.body128.i_crit_edge, label %do.end118.i

do.body111.i.do.body128.i_crit_edge:              ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body128.i

do.end118.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device3, align 4
  %dev120.i = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev120.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev120.i, align 8
  %name121.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.65, ptr noundef %name121.i) #9
  br label %do.body128.i

do.body128.i:                                     ; preds = %do.end118.i, %do.body111.i.do.body128.i_crit_edge, %do.end101.i, %do.body94.i.do.body128.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !380
  call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri.i, align 4
  %add.ptr132.i = getelementptr i8, ptr %92, i32 4196360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i, i32 0) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !381
  call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %94, i32 4196584
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !382
  %and141.i = and i32 %95, 3
  %96 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %97, i32 4196584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i, i32 %and141.i) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !383
  call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i, align 4
  %add.ptr148.i = getelementptr i8, ptr %99, i32 4196424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148.i, i32 0) #5, !srcloc !374
  %and149.i = and i32 %51, 2147483646
  br label %if.end150.i

if.end150.i:                                      ; preds = %do.body128.i, %do.body39.i.if.end150.i_crit_edge
  %ustatus.0.i = phi i32 [ %and149.i, %do.body128.i ], [ %and18.i, %do.body39.i.if.end150.i_crit_edge ]
  %and151.i = and i32 %ustatus.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %if.end150.i.if.end237.i_crit_edge, label %if.then153.i

if.end150.i.if.end237.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end237.i

if.then153.i:                                     ; preds = %if.end150.i
  %100 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri.i, align 4
  %add.ptr157.i = getelementptr i8, ptr %101, i32 4196428
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !384
  %and161.i = lshr i32 %102, 16
  %shr162.i = and i32 %and161.i, 7
  %and164.i = and i32 %102, 8188
  %103 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri.i, align 4
  %add.ptr167.i = getelementptr i8, ptr %104, i32 4196444
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !385
  %106 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri.i, align 4
  %add.ptr173.i = getelementptr i8, ptr %107, i32 4196372
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !386
  %debug178.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %109 = ptrtoint ptr %debug178.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp179.not.i = icmp eq i32 %110, 0
  br i1 %cmp179.not.i, label %if.then153.i.if.end188.i_crit_edge, label %do.end183.i

if.then153.i.if.end188.i_crit_edge:               ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188.i

do.end183.i:                                      ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device3, align 4
  %dev185.i = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %dev185.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev185.i, align 8
  %name186.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.68, ptr noundef %name186.i) #9
  br label %if.end188.i

if.end188.i:                                      ; preds = %do.end183.i, %if.then153.i.if.end188.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %tobool194.not.i = icmp sgt i32 %102, -1
  %115 = ptrtoint ptr %debug178.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %debug178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp217.not.i = icmp eq i32 %116, 0
  br i1 %tobool194.not.i, label %do.body214.i, label %do.body196.i

do.body196.i:                                     ; preds = %if.end188.i
  br i1 %cmp217.not.i, label %do.body196.i.do.body231.i_crit_edge, label %do.end203.i

do.body196.i.do.body231.i_crit_edge:              ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body231.i

do.end203.i:                                      ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device3, align 4
  %dev205.i = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %dev205.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev205.i, align 8
  %name206.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.71, ptr noundef %name206.i, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr162.i, i32 noundef %108, i32 noundef %and164.i, i32 noundef %105, i32 noundef %102) #9
  br label %do.body231.i

do.body214.i:                                     ; preds = %if.end188.i
  br i1 %cmp217.not.i, label %do.body214.i.do.body231.i_crit_edge, label %do.end221.i

do.body214.i.do.body231.i_crit_edge:              ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body231.i

do.end221.i:                                      ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device3, align 4
  %dev223.i = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %dev223.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev223.i, align 8
  %name224.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.65, ptr noundef %name224.i) #9
  br label %do.body231.i

do.body231.i:                                     ; preds = %do.end221.i, %do.body214.i.do.body231.i_crit_edge, %do.end203.i, %do.body196.i.do.body231.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !387
  call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri.i, align 4
  %add.ptr235.i = getelementptr i8, ptr %126, i32 4196428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235.i, i32 0) #5, !srcloc !374
  %and236.i = and i32 %ustatus.0.i, 2147483645
  br label %if.end237.i

if.end237.i:                                      ; preds = %do.body231.i, %if.end150.i.if.end237.i_crit_edge
  %ustatus.1.i = phi i32 [ %and236.i, %do.body231.i ], [ %ustatus.0.i, %if.end150.i.if.end237.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ustatus.1.i)
  %tobool238.not.i = icmp eq i32 %ustatus.1.i, 0
  br i1 %tobool238.not.i, label %if.end237.i.do.body258.i_crit_edge, label %do.body242.i

if.end237.i.do.body258.i_crit_edge:               ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body258.i

do.body242.i:                                     ; preds = %if.end237.i
  %debug244.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %127 = ptrtoint ptr %debug244.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %debug244.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp245.not.i = icmp eq i32 %128, 0
  br i1 %cmp245.not.i, label %do.body242.i.do.body258.i_crit_edge, label %do.end249.i

do.body242.i.do.body258.i_crit_edge:              ; preds = %do.body242.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body258.i

do.end249.i:                                      ; preds = %do.body242.i
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device3, align 4
  %dev251.i = getelementptr inbounds %struct.nvkm_device, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %dev251.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev251.i, align 8
  %name252.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.76, ptr noundef %name252.i, i32 noundef %ustatus.1.i) #9
  br label %do.body258.i

do.body258.i:                                     ; preds = %do.end249.i, %do.body242.i.do.body258.i_crit_edge, %if.end237.i.do.body258.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !388
  call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pri.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %134, i32 4196356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262.i, i32 -1073741824) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !389
  call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri.i, align 4
  %add.ptr267.i = getelementptr i8, ptr %136, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267.i, i32 1) #5, !srcloc !374
  %and268.i = and i32 %41, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268.i)
  %tobool269.not.i = icmp eq i32 %and268.i, 0
  br i1 %tobool269.not.i, label %299, label %do.body258.i.if.end272.i_crit_edge

do.body258.i.if.end272.i_crit_edge:               ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272.i

if.end272.i:                                      ; preds = %do.body258.i.if.end272.i_crit_edge, %if.end10.i.if.end272.i_crit_edge
  %status.0.i = phi i32 [ %and268.i, %do.body258.i.if.end272.i_crit_edge ], [ %41, %if.end10.i.if.end272.i_crit_edge ]
  %and273.i = and i32 %status.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273.i)
  %tobool274.not.i = icmp eq i32 %and273.i, 0
  br i1 %tobool274.not.i, label %if.end272.i.if.end359.i_crit_edge, label %if.then284.i

if.end272.i.if.end359.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end359.i

if.then284.i:                                     ; preds = %if.end272.i
  %137 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pri.i, align 4
  %add.ptr279.i = getelementptr i8, ptr %138, i32 4220928
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr279.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !390
  %and282.i = and i32 %139, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_m2mf, i32 noundef %and282.i) #5
  %debug288.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %140 = ptrtoint ptr %debug288.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %debug288.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp289.not.i = icmp eq i32 %141, 0
  br i1 %cmp289.not.i, label %if.then284.i.do.body338.i_crit_edge, label %if.end299.i

if.then284.i.do.body338.i_crit_edge:              ; preds = %if.then284.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body338.i

if.end299.i:                                      ; preds = %if.then284.i
  %142 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device3, align 4
  %dev295.i = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %dev295.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev295.i, align 8
  %name296.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.79, ptr noundef %name296.i, i32 noundef %and282.i, ptr noundef nonnull %msg.i) #9
  %146 = ptrtoint ptr %debug288.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr.i = load i32, ptr %debug288.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp305.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp305.not.i, label %if.end299.i.do.body338.i_crit_edge, label %do.end309.i

if.end299.i.do.body338.i_crit_edge:               ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body338.i

do.end309.i:                                      ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device3, align 4
  %dev311.i = getelementptr inbounds %struct.nvkm_device, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %dev311.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev311.i, align 8
  %151 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pri.i, align 4
  %add.ptr316.i = getelementptr i8, ptr %152, i32 4220932
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr316.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !391
  %154 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri.i, align 4
  %add.ptr321.i = getelementptr i8, ptr %155, i32 4220936
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr321.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !392
  %157 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri.i, align 4
  %add.ptr326.i = getelementptr i8, ptr %158, i32 4220940
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !393
  %160 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pri.i, align 4
  %add.ptr331.i = getelementptr i8, ptr %161, i32 4220944
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !394
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.82, ptr noundef %name296.i, i32 noundef %153, i32 noundef %156, i32 noundef %159, i32 noundef %162) #9
  br label %do.body338.i

do.body338.i:                                     ; preds = %do.end309.i, %if.end299.i.do.body338.i_crit_edge, %if.then284.i.do.body338.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !395
  call void @arm_heavy_mb() #5
  %163 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pri.i, align 4
  %add.ptr342.i = getelementptr i8, ptr %164, i32 4194368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr342.i, i32 2) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !396
  call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pri.i, align 4
  %add.ptr347.i = getelementptr i8, ptr %166, i32 4194368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr347.i, i32 0) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !397
  call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri.i, align 4
  %add.ptr352.i = getelementptr i8, ptr %168, i32 4220928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr352.i, i32 -1073741824) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !398
  call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pri.i, align 4
  %add.ptr357.i = getelementptr i8, ptr %170, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357.i, i32 2) #5, !srcloc !374
  %and358.i = and i32 %status.0.i, -3
  br label %if.end359.i

if.end359.i:                                      ; preds = %do.body338.i, %if.end272.i.if.end359.i_crit_edge
  %status.1.i = phi i32 [ %and358.i, %do.body338.i ], [ %status.0.i, %if.end272.i.if.end359.i_crit_edge ]
  %and360.i = and i32 %status.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360.i)
  %tobool361.not.i = icmp eq i32 %and360.i, 0
  br i1 %tobool361.not.i, label %if.end359.i.if.end436.i_crit_edge, label %if.then371.i

if.end359.i.if.end436.i_crit_edge:                ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end436.i

if.then371.i:                                     ; preds = %if.end359.i
  %171 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pri.i, align 4
  %add.ptr366.i = getelementptr i8, ptr %172, i32 4197380
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr366.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !399
  %and369.i = and i32 %173, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_vfetch, i32 noundef %and369.i) #5
  %debug375.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %174 = ptrtoint ptr %debug375.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %debug375.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp376.not.i = icmp eq i32 %175, 0
  br i1 %cmp376.not.i, label %if.then371.i.do.body425.i_crit_edge, label %if.end386.i

if.then371.i.do.body425.i_crit_edge:              ; preds = %if.then371.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body425.i

if.end386.i:                                      ; preds = %if.then371.i
  %176 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %device3, align 4
  %dev382.i = getelementptr inbounds %struct.nvkm_device, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %dev382.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev382.i, align 8
  %name383.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.85, ptr noundef %name383.i, i32 noundef %and369.i, ptr noundef nonnull %msg.i) #9
  %180 = ptrtoint ptr %debug375.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pr888.i = load i32, ptr %debug375.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr888.i)
  %cmp392.not.i = icmp eq i32 %.pr888.i, 0
  br i1 %cmp392.not.i, label %if.end386.i.do.body425.i_crit_edge, label %do.end396.i

if.end386.i.do.body425.i_crit_edge:               ; preds = %if.end386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body425.i

do.end396.i:                                      ; preds = %if.end386.i
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %device3, align 4
  %dev398.i = getelementptr inbounds %struct.nvkm_device, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %dev398.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev398.i, align 8
  %185 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pri.i, align 4
  %add.ptr403.i = getelementptr i8, ptr %186, i32 4197376
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr403.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !400
  %188 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri.i, align 4
  %add.ptr408.i = getelementptr i8, ptr %189, i32 4197384
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr408.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !401
  %191 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pri.i, align 4
  %add.ptr413.i = getelementptr i8, ptr %192, i32 4197388
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr413.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !402
  %194 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri.i, align 4
  %add.ptr418.i = getelementptr i8, ptr %195, i32 4197392
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr418.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !403
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.88, ptr noundef %name383.i, i32 noundef %187, i32 noundef %190, i32 noundef %193, i32 noundef %196) #9
  br label %do.body425.i

do.body425.i:                                     ; preds = %do.end396.i, %if.end386.i.do.body425.i_crit_edge, %if.then371.i.do.body425.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !404
  call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pri.i, align 4
  %add.ptr429.i = getelementptr i8, ptr %198, i32 4197380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr429.i, i32 -1073741824) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !405
  call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pri.i, align 4
  %add.ptr434.i = getelementptr i8, ptr %200, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr434.i, i32 4) #5, !srcloc !374
  %and435.i = and i32 %status.1.i, -5
  br label %if.end436.i

if.end436.i:                                      ; preds = %do.body425.i, %if.end359.i.if.end436.i_crit_edge
  %status.2.i = phi i32 [ %and435.i, %do.body425.i ], [ %status.1.i, %if.end359.i.if.end436.i_crit_edge ]
  %and437.i = and i32 %status.2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437.i)
  %tobool438.not.i = icmp eq i32 %and437.i, 0
  br i1 %tobool438.not.i, label %if.end436.i.if.end522.i_crit_edge, label %if.then447.i

if.end436.i.if.end522.i_crit_edge:                ; preds = %if.end436.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end522.i

if.then447.i:                                     ; preds = %if.end436.i
  %201 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pri.i, align 4
  %add.ptr442.i = getelementptr i8, ptr %202, i32 4200448
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr442.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !406
  %and445.i = and i32 %203, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_strmout, i32 noundef %and445.i) #5
  %debug451.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %204 = ptrtoint ptr %debug451.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %debug451.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp452.not.i = icmp eq i32 %205, 0
  br i1 %cmp452.not.i, label %if.then447.i.do.body501.i_crit_edge, label %if.end462.i

if.then447.i.do.body501.i_crit_edge:              ; preds = %if.then447.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body501.i

if.end462.i:                                      ; preds = %if.then447.i
  %206 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %device3, align 4
  %dev458.i = getelementptr inbounds %struct.nvkm_device, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %dev458.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev458.i, align 8
  %name459.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.91, ptr noundef %name459.i, i32 noundef %and445.i, ptr noundef nonnull %msg.i) #9
  %210 = ptrtoint ptr %debug451.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pr890.i = load i32, ptr %debug451.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr890.i)
  %cmp468.not.i = icmp eq i32 %.pr890.i, 0
  br i1 %cmp468.not.i, label %if.end462.i.do.body501.i_crit_edge, label %do.end472.i

if.end462.i.do.body501.i_crit_edge:               ; preds = %if.end462.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body501.i

do.end472.i:                                      ; preds = %if.end462.i
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %device3, align 4
  %dev474.i = getelementptr inbounds %struct.nvkm_device, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %dev474.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev474.i, align 8
  %215 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pri.i, align 4
  %add.ptr479.i = getelementptr i8, ptr %216, i32 4200452
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr479.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !407
  %218 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pri.i, align 4
  %add.ptr484.i = getelementptr i8, ptr %219, i32 4200456
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr484.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !408
  %221 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pri.i, align 4
  %add.ptr489.i = getelementptr i8, ptr %222, i32 4200460
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr489.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !409
  %224 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pri.i, align 4
  %add.ptr494.i = getelementptr i8, ptr %225, i32 4200464
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr494.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !410
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.94, ptr noundef %name459.i, i32 noundef %217, i32 noundef %220, i32 noundef %223, i32 noundef %226) #9
  br label %do.body501.i

do.body501.i:                                     ; preds = %do.end472.i, %if.end462.i.do.body501.i_crit_edge, %if.then447.i.do.body501.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pri.i, align 4
  %add.ptr505.i = getelementptr i8, ptr %228, i32 4194368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr505.i, i32 128) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !412
  call void @arm_heavy_mb() #5
  %229 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pri.i, align 4
  %add.ptr510.i = getelementptr i8, ptr %230, i32 4194368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr510.i, i32 0) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !413
  call void @arm_heavy_mb() #5
  %231 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pri.i, align 4
  %add.ptr515.i = getelementptr i8, ptr %232, i32 4200448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr515.i, i32 -1073741824) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !414
  call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pri.i, align 4
  %add.ptr520.i = getelementptr i8, ptr %234, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr520.i, i32 8) #5, !srcloc !374
  %and521.i = and i32 %status.2.i, -9
  br label %if.end522.i

if.end522.i:                                      ; preds = %do.body501.i, %if.end436.i.if.end522.i_crit_edge
  %status.3.i = phi i32 [ %and521.i, %do.body501.i ], [ %status.2.i, %if.end436.i.if.end522.i_crit_edge ]
  %and523.i = and i32 %status.3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523.i)
  %tobool524.not.i = icmp eq i32 %and523.i, 0
  br i1 %tobool524.not.i, label %if.end522.i.if.end613.i_crit_edge, label %if.then533.i

if.end522.i.if.end613.i_crit_edge:                ; preds = %if.end522.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end613.i

if.then533.i:                                     ; preds = %if.end522.i
  %235 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pri.i, align 4
  %add.ptr528.i = getelementptr i8, ptr %236, i32 4214808
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr528.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !415
  %and531.i = and i32 %237, 2147483647
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_ccache, i32 noundef %and531.i) #5
  %debug537.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %238 = ptrtoint ptr %debug537.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %debug537.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp538.not.i = icmp eq i32 %239, 0
  br i1 %cmp538.not.i, label %if.then533.i.do.body602.i_crit_edge, label %if.end548.i

if.then533.i.do.body602.i_crit_edge:              ; preds = %if.then533.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body602.i

if.end548.i:                                      ; preds = %if.then533.i
  %240 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %device3, align 4
  %dev544.i = getelementptr inbounds %struct.nvkm_device, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %dev544.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev544.i, align 8
  %name545.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.97, ptr noundef %name545.i, i32 noundef %and531.i, ptr noundef nonnull %msg.i) #9
  %244 = ptrtoint ptr %debug537.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %.pr892.i = load i32, ptr %debug537.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr892.i)
  %cmp554.not.i = icmp eq i32 %.pr892.i, 0
  br i1 %cmp554.not.i, label %if.end548.i.do.body602.i_crit_edge, label %do.end558.i

if.end548.i.do.body602.i_crit_edge:               ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body602.i

do.end558.i:                                      ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #7
  %245 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %device3, align 4
  %dev560.i = getelementptr inbounds %struct.nvkm_device, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %dev560.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev560.i, align 8
  %249 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pri.i, align 4
  %add.ptr565.i = getelementptr i8, ptr %250, i32 4214784
  %251 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr565.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !416
  %252 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pri.i, align 4
  %add.ptr570.i = getelementptr i8, ptr %253, i32 4214788
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr570.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !417
  %255 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pri.i, align 4
  %add.ptr575.i = getelementptr i8, ptr %256, i32 4214792
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr575.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !418
  %258 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pri.i, align 4
  %add.ptr580.i = getelementptr i8, ptr %259, i32 4214796
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr580.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !419
  %261 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pri.i, align 4
  %add.ptr585.i = getelementptr i8, ptr %262, i32 4214800
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr585.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !420
  %264 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pri.i, align 4
  %add.ptr590.i = getelementptr i8, ptr %265, i32 4214804
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr590.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !421
  %267 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pri.i, align 4
  %add.ptr595.i = getelementptr i8, ptr %268, i32 4214812
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr595.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !422
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.100, ptr noundef %name545.i, i32 noundef %251, i32 noundef %254, i32 noundef %257, i32 noundef %260, i32 noundef %263, i32 noundef %266, i32 noundef %269) #9
  br label %do.body602.i

do.body602.i:                                     ; preds = %do.end558.i, %if.end548.i.do.body602.i_crit_edge, %if.then533.i.do.body602.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !423
  call void @arm_heavy_mb() #5
  %270 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pri.i, align 4
  %add.ptr606.i = getelementptr i8, ptr %271, i32 4214808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr606.i, i32 -1073741824) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  call void @arm_heavy_mb() #5
  %272 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %pri.i, align 4
  %add.ptr611.i = getelementptr i8, ptr %273, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr611.i, i32 16) #5, !srcloc !374
  %and612.i = and i32 %status.3.i, -17
  br label %if.end613.i

if.end613.i:                                      ; preds = %do.body602.i, %if.end522.i.if.end613.i_crit_edge
  %status.4.i = phi i32 [ %and612.i, %do.body602.i ], [ %status.3.i, %if.end522.i.if.end613.i_crit_edge ]
  %and614.i = and i32 %status.4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.i)
  %tobool615.not.i = icmp eq i32 %and614.i, 0
  br i1 %tobool615.not.i, label %if.end613.i.if.end646.i_crit_edge, label %do.body625.i

if.end613.i.if.end646.i_crit_edge:                ; preds = %if.end613.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end646.i

do.body625.i:                                     ; preds = %if.end613.i
  %274 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pri.i, align 4
  %add.ptr619.i = getelementptr i8, ptr %275, i32 4202496
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr619.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  %debug627.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %277 = ptrtoint ptr %debug627.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %debug627.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp628.not.i = icmp eq i32 %278, 0
  br i1 %cmp628.not.i, label %do.body625.i.do.body641.i_crit_edge, label %do.end632.i

do.body625.i.do.body641.i_crit_edge:              ; preds = %do.body625.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body641.i

do.end632.i:                                      ; preds = %do.body625.i
  call void @__sanitizer_cov_trace_pc() #7
  %and622.i = and i32 %276, 2147483647
  %279 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %device3, align 4
  %dev634.i = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %dev634.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev634.i, align 8
  %name635.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.103, ptr noundef %name635.i, i32 noundef %and622.i) #9
  br label %do.body641.i

do.body641.i:                                     ; preds = %do.end632.i, %do.body625.i.do.body641.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !426
  call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pri.i, align 4
  %add.ptr645.i = getelementptr i8, ptr %284, i32 4202496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr645.i, i32 -1073741824) #5, !srcloc !374
  br label %if.end646.i

if.end646.i:                                      ; preds = %do.body641.i, %if.end613.i.if.end646.i_crit_edge
  %and647.i = and i32 %status.4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and647.i)
  %tobool648.not.i = icmp eq i32 %and647.i, 0
  br i1 %tobool648.not.i, label %if.end646.i.if.end656.i_crit_edge, label %if.then649.i

if.end646.i.if.end656.i_crit_edge:                ; preds = %if.end646.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end656.i

if.then649.i:                                     ; preds = %if.end646.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @nv50_gr_tp_trap(ptr noundef %base, i32 noundef 6, i32 noundef 4229376, i32 noundef 4228608, i32 noundef %4, ptr noundef nonnull @.str.105) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !427
  call void @arm_heavy_mb() #5
  %285 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pri.i, align 4
  %add.ptr654.i = getelementptr i8, ptr %286, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr654.i, i32 64) #5, !srcloc !374
  %and655.i = and i32 %status.4.i, -65
  br label %if.end656.i

if.end656.i:                                      ; preds = %if.then649.i, %if.end646.i.if.end656.i_crit_edge
  %status.5.i = phi i32 [ %and655.i, %if.then649.i ], [ %status.4.i, %if.end646.i.if.end656.i_crit_edge ]
  %and657.i = and i32 %status.5.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and657.i)
  %tobool658.not.i = icmp eq i32 %and657.i, 0
  br i1 %tobool658.not.i, label %if.end656.i.if.end666.i_crit_edge, label %if.then659.i

if.end656.i.if.end666.i_crit_edge:                ; preds = %if.end656.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end666.i

if.then659.i:                                     ; preds = %if.end656.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @nv50_gr_tp_trap(ptr noundef %base, i32 noundef 7, i32 noundef 4227860, i32 noundef 4227868, i32 noundef %4, ptr noundef nonnull @.str.106) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !428
  call void @arm_heavy_mb() #5
  %287 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pri.i, align 4
  %add.ptr664.i = getelementptr i8, ptr %288, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr664.i, i32 128) #5, !srcloc !374
  %and665.i = and i32 %status.5.i, -129
  br label %if.end666.i

if.end666.i:                                      ; preds = %if.then659.i, %if.end656.i.if.end666.i_crit_edge
  %status.6.i = phi i32 [ %and665.i, %if.then659.i ], [ %status.5.i, %if.end656.i.if.end666.i_crit_edge ]
  %and667.i = and i32 %status.6.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and667.i)
  %tobool668.not.i = icmp eq i32 %and667.i, 0
  br i1 %tobool668.not.i, label %if.end666.i.if.end676.i_crit_edge, label %if.then669.i

if.end666.i.if.end676.i_crit_edge:                ; preds = %if.end666.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end676.i

if.then669.i:                                     ; preds = %if.end666.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @nv50_gr_tp_trap(ptr noundef %base, i32 noundef 8, i32 noundef 4230664, i32 noundef 4228872, i32 noundef %4, ptr noundef nonnull @.str.107) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !429
  call void @arm_heavy_mb() #5
  %289 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pri.i, align 4
  %add.ptr674.i = getelementptr i8, ptr %290, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr674.i, i32 256) #5, !srcloc !374
  %and675.i = and i32 %status.6.i, -257
  br label %if.end676.i

if.end676.i:                                      ; preds = %if.then669.i, %if.end666.i.if.end676.i_crit_edge
  %status.7.i = phi i32 [ %and675.i, %if.then669.i ], [ %status.6.i, %if.end666.i.if.end676.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.7.i)
  %tobool677.not.i = icmp eq i32 %status.7.i, 0
  br i1 %tobool677.not.i, label %if.end676.i.nv50_gr_trap_handler.exit.thread_crit_edge, label %do.body681.i

if.end676.i.nv50_gr_trap_handler.exit.thread_crit_edge: ; preds = %if.end676.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_gr_trap_handler.exit.thread

do.body681.i:                                     ; preds = %if.end676.i
  %debug683.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %291 = ptrtoint ptr %debug683.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %debug683.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp684.not.i = icmp eq i32 %292, 0
  br i1 %cmp684.not.i, label %do.body681.i.do.body697.i_crit_edge, label %do.end688.i

do.body681.i.do.body697.i_crit_edge:              ; preds = %do.body681.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body697.i

do.end688.i:                                      ; preds = %do.body681.i
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %device3, align 4
  %dev690.i = getelementptr inbounds %struct.nvkm_device, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %dev690.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev690.i, align 8
  %name691.i = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.109, ptr noundef %name691.i, i32 noundef %status.7.i) #9
  br label %do.body697.i

do.body697.i:                                     ; preds = %do.end688.i, %do.body681.i.do.body697.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !430
  call void @arm_heavy_mb() #5
  %297 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %pri.i, align 4
  %add.ptr701.i = getelementptr i8, ptr %298, i32 4194568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr701.i, i32 %status.7.i) #5, !srcloc !374
  br label %nv50_gr_trap_handler.exit.thread

nv50_gr_trap_handler.exit.thread:                 ; preds = %do.body697.i, %if.end676.i.nv50_gr_trap_handler.exit.thread_crit_edge, %do.end.i, %do.body.i.nv50_gr_trap_handler.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #5
  br label %300

299:                                              ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #5
  %and62 = and i32 %4, -2097153
  br label %300

300:                                              ; preds = %299, %nv50_gr_trap_handler.exit.thread
  %301 = phi i32 [ %and62, %299 ], [ %4, %nv50_gr_trap_handler.exit.thread ]
  %and64 = and i32 %show_bitfield.0, -2097153
  br label %do.body66

do.body66:                                        ; preds = %300, %if.end53.do.body66_crit_edge
  %show.1 = phi i32 [ %301, %300 ], [ %4, %if.end53.do.body66_crit_edge ]
  %show_bitfield.1 = phi i32 [ %and64, %300 ], [ %show_bitfield.0, %if.end53.do.body66_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !431
  call void @arm_heavy_mb() #5
  %302 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pri, align 4
  %add.ptr70 = getelementptr i8, ptr %303, i32 4194560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %4) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !432
  call void @arm_heavy_mb() #5
  %304 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %pri, align 4
  %add.ptr75 = getelementptr i8, ptr %305, i32 4195584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 65537) #5, !srcloc !374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %show.1)
  %tobool76.not = icmp eq i32 %show.1, 0
  br i1 %tobool76.not, label %do.body66.if.end99_crit_edge, label %if.then77

do.body66.if.end99_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then77:                                        ; preds = %do.body66
  %and78 = and i32 %show_bitfield.1, %show.1
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv50_gr_intr_name, i32 noundef %and78) #5
  %debug82 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 5
  %306 = ptrtoint ptr %debug82 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %debug82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %cmp83.not = icmp eq i32 %307, 0
  br i1 %cmp83.not, label %if.then77.if.end99_crit_edge, label %do.end88

if.then77.if.end99_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.end88:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  %308 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %device3, align 4
  %dev90 = getelementptr inbounds %struct.nvkm_device, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev90, align 8
  %name91 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %311, ptr noundef nonnull @.str.50, ptr noundef %name91, i32 noundef %4, ptr noundef nonnull %msg, i32 noundef %chid.0, i64 noundef %shl, ptr noundef %name.0, i32 noundef %shr, i32 noundef %16, i32 noundef %and17, i32 noundef %13) #9
  br label %if.end99

if.end99:                                         ; preds = %do.end88, %if.then77.if.end99_crit_edge, %do.body66.if.end99_crit_edge
  %312 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pri, align 4
  %add.ptr102 = getelementptr i8, ptr %313, i32 4196388
  %314 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %314)
  %tobool106.not = icmp sgt i32 %314, -1
  br i1 %tobool106.not, label %if.end99.if.end119_crit_edge, label %do.body108

if.end99.if.end119_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

do.body108:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !434
  call void @arm_heavy_mb() #5
  %315 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %pri, align 4
  %add.ptr113 = getelementptr i8, ptr %316, i32 4196388
  %317 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !435
  %and116 = and i32 %317, 2147483647
  %318 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %pri, align 4
  %add.ptr118 = getelementptr i8, ptr %319, i32 4196388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %and116) #5, !srcloc !374
  br label %if.end119

if.end119:                                        ; preds = %do.body108, %if.end99.if.end119_crit_edge
  %320 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %fifo, align 8
  %322 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %321, i32 noundef %323, ptr noundef nonnull %chan) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_init(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !436
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4194444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 4) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !437
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 4196356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !438
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 4220928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !439
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 4197380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !440
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 4200448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !441
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 4214808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !442
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 4202496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1073741824) #5, !srcloc !374
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %17, i32 5440
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !443
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0264 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0264
  %and = and i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %19 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %20)
  %cmp37 = icmp ult i32 %20, 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  br i1 %cmp37, label %do.body39, label %do.body59

do.body39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl43 = shl i32 %i.0264, 12
  %add = add nuw nsw i32 %shl43, 4229376
  %add.ptr44 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !444
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add50 = add nuw nsw i32 %shl43, 4230664
  %add.ptr51 = getelementptr i8, ptr %24, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !445
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add57 = add nuw nsw i32 %shl43, 4227860
  %add.ptr58 = getelementptr i8, ptr %26, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -1073741824) #5, !srcloc !374
  br label %for.inc

do.body59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl63 = shl i32 %i.0264, 11
  %add64 = add nuw nsw i32 %shl63, 4228608
  %add.ptr65 = getelementptr i8, ptr %22, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !446
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add71 = add nuw nsw i32 %shl63, 4228872
  %add.ptr72 = getelementptr i8, ptr %28, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 -1073741824) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !447
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add78 = add nuw nsw i32 %shl63, 4227868
  %add.ptr79 = getelementptr i8, ptr %30, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 -1073741824) #5, !srcloc !374
  br label %for.inc

for.inc:                                          ; preds = %do.body59, %do.body39, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body81, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body81:                                        ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !448
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr85 = getelementptr i8, ptr %32, i32 4194568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 -1) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !449
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr90 = getelementptr i8, ptr %34, i32 4194616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 -1) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !450
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr95 = getelementptr i8, ptr %36, i32 4194560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 -1) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !451
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr100 = getelementptr i8, ptr %38, i32 4194620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 -1) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !452
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri, align 4
  %add.ptr105 = getelementptr i8, ptr %40, i32 4195584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 65537) #5, !srcloc !374
  %size = getelementptr inbounds %struct.nv50_gr, ptr %base, i32 0, i32 3
  %call106 = tail call i32 @nv50_grctx_init(ptr noundef %1, ptr noundef %size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body110, label %do.body81.cleanup_crit_edge

do.body81.cleanup_crit_edge:                      ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body110:                                       ; preds = %do.body81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !453
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr114 = getelementptr i8, ptr %42, i32 4196388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !454
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr119 = getelementptr i8, ptr %44, i32 4196392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !455
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %add.ptr124 = getelementptr i8, ptr %46, i32 4196396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !456
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri, align 4
  %add.ptr129 = getelementptr i8, ptr %48, i32 4196400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !457
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr134 = getelementptr i8, ptr %50, i32 4195116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !458
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr139 = getelementptr i8, ptr %52, i32 4195120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 0) #5, !srcloc !374
  %53 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chipset, align 4
  %55 = trunc i32 %54 to i8
  %trunc = and i8 %55, -16
  %56 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 80, label %do.body110.do.body142_crit_edge
    i8 -128, label %do.body110.do.body142_crit_edge268
    i8 -112, label %do.body110.do.body142_crit_edge269
  ]

do.body110.do.body142_crit_edge269:               ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

do.body110.do.body142_crit_edge268:               ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

do.body110.do.body142_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body142

do.body142:                                       ; preds = %do.body110.do.body142_crit_edge, %do.body110.do.body142_crit_edge268, %do.body110.do.body142_crit_edge269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !459
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr146 = getelementptr i8, ptr %58, i32 4205736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 2048) #5, !srcloc !374
  br label %do.body176.preheader

sw.default:                                       ; preds = %do.body110
  %59 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %54, label %do.body162 [
    i32 160, label %sw.default.do.body156_crit_edge
    i32 170, label %sw.default.do.body156_crit_edge270
    i32 172, label %sw.default.do.body156_crit_edge271
  ]

sw.default.do.body156_crit_edge271:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

sw.default.do.body156_crit_edge270:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

sw.default.do.body156_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

do.body156:                                       ; preds = %sw.default.do.body156_crit_edge, %sw.default.do.body156_crit_edge270, %sw.default.do.body156_crit_edge271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !460
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri, align 4
  %add.ptr160 = getelementptr i8, ptr %61, i32 4205736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 2050) #5, !srcloc !374
  br label %do.body176.preheader

do.body162:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !461
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr166 = getelementptr i8, ptr %63, i32 4205760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !462
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add.ptr171 = getelementptr i8, ptr %65, i32 4205736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 2) #5, !srcloc !374
  br label %do.body176.preheader

do.body176.preheader:                             ; preds = %do.body162, %do.body156, %do.body142
  br label %do.body176

do.body176:                                       ; preds = %do.body176.do.body176_crit_edge, %do.body176.preheader
  %i.1266 = phi i32 [ %inc204, %do.body176.do.body176_crit_edge ], [ 0, %do.body176.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !463
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.1266, 4
  %add180 = add nuw nsw i32 %mul, 4205600
  %add.ptr181 = getelementptr i8, ptr %67, i32 %add180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !464
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %add187 = add nuw nsw i32 %mul, 4205604
  %add.ptr188 = getelementptr i8, ptr %69, i32 %add187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !465
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri, align 4
  %add194 = add nuw nsw i32 %mul, 4205608
  %add.ptr195 = getelementptr i8, ptr %71, i32 %add194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 0) #5, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !466
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri, align 4
  %add201 = add nuw nsw i32 %mul, 4205612
  %add.ptr202 = getelementptr i8, ptr %73, i32 %add201
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 0) #5, !srcloc !374
  %inc204 = add nuw nsw i32 %i.1266, 1
  %exitcond267.not = icmp eq i32 %inc204, 8
  br i1 %exitcond267.not, label %do.body176.cleanup_crit_edge, label %do.body176.do.body176_crit_edge

do.body176.do.body176_crit_edge:                  ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body176

do.body176.cleanup_crit_edge:                     ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body176.cleanup_crit_edge, %do.body81.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %do.body81.cleanup_crit_edge ], [ 0, %do.body176.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_grctx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.nv50_gr, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @nv50_gr_new_.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgr, align 4
  %call3 = tail call i32 @nvkm_gr_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_gr_new_.exit_crit_edge, label %do.body.i

entry.nv50_gr_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_gr_new_.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock.i = getelementptr inbounds %struct.nv50_gr, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @nv50_gr_new_.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %pgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pgr, align 4
  %call3.i = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv50_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i.i) #5
  br label %nv50_gr_new_.exit

nv50_gr_new_.exit:                                ; preds = %do.body.i, %entry.nv50_gr_new_.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %do.body.i ], [ -12, %entry.nv50_gr_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_gr_chan_bind(ptr nocapture noundef readonly %object, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nv50_gr_chan, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 8
  %device = getelementptr inbounds %struct.nvkm_gr, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %size = getelementptr inbounds %struct.nv50_gr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef %5, i32 noundef %align, i1 noundef zeroext true, ptr noundef %parent, ptr noundef %pgpuobj) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgpuobj, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call ptr %11(ptr noundef %7) #5
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgpuobj, align 4
  tail call void @nv50_grctx_fill(ptr noundef %13, ptr noundef %15) #5
  %16 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgpuobj, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release, align 4
  tail call void %21(ptr noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_grctx_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_gr_tp_trap(ptr noundef %gr, i32 noundef %type, i32 noundef %ustatus_old, i32 noundef %ustatus_new, i32 noundef %display, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %msg.i217 = alloca [128 x i8], align 1
  %msg.i = alloca [128 x i8], align 1
  %msg = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !362
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !467
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #5
  %5 = call ptr @memset(ptr %msg, i32 255, i32 128)
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %display)
  %tobool103.not = icmp eq i32 %display, 0
  %debug.i223 = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 5
  %name.i225 = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc132.for.body_crit_edge, %entry
  %tps.0256 = phi i32 [ 0, %entry ], [ %tps.1, %for.inc132.for.body_crit_edge ]
  %i.0245 = phi i32 [ 0, %entry ], [ %inc133, %for.inc132.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0245
  %and = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc132_crit_edge, label %if.end

for.body.for.inc132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %7)
  %cmp3 = icmp ult i32 %7, 160
  %shl5 = shl i32 %i.0245, 12
  %add = add i32 %shl5, %ustatus_old
  %shl6 = shl i32 %i.0245, 11
  %add7 = add i32 %shl6, %ustatus_new
  %ustatus_addr.0 = select i1 %cmp3, i32 %add, i32 %add7
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 %ustatus_addr.0
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !468
  %and14 = and i32 %10, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.for.inc132_crit_edge, label %if.end17

if.end.for.inc132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

if.end17:                                         ; preds = %if.end
  %inc = add i32 %tps.0256, 1
  %11 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %type, label %sw.epilog [
    i32 6, label %sw.bb
    i32 7, label %sw.bb75
    i32 8, label %sw.bb102
  ]

sw.bb:                                            ; preds = %if.end17
  br i1 %tobool103.not, label %sw.bb.do.body127_crit_edge, label %do.body

sw.bb.do.body127_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

do.body:                                          ; preds = %sw.bb
  %12 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.not = icmp eq i32 %13, 0
  br i1 %cmp20.not, label %do.body.if.end25_crit_edge, label %do.end

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.115, ptr noundef %name.i225, i32 noundef %i.0245) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end, %do.body.if.end25_crit_edge
  %add30 = add i32 %ustatus_addr.0, 16
  %r.0242 = add i32 %ustatus_addr.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0242, i32 %add30)
  %cmp31.not243 = icmp ugt i32 %r.0242, %add30
  br i1 %cmp31.not243, label %if.end25.if.then55_crit_edge, label %if.end25.do.body33_crit_edge

if.end25.do.body33_crit_edge:                     ; preds = %if.end25
  br label %do.body33

if.end25.if.then55_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

do.body33:                                        ; preds = %if.end50.do.body33_crit_edge, %if.end25.do.body33_crit_edge
  %r.0244 = phi i32 [ %r.0, %if.end50.do.body33_crit_edge ], [ %r.0242, %if.end25.do.body33_crit_edge ]
  %18 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp36.not = icmp eq i32 %19, 0
  br i1 %cmp36.not, label %do.body33.if.end50_crit_edge, label %do.end40

do.body33.if.end50_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end40:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device2, align 4
  %dev42 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 8
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %25, i32 %r.0244
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !469
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.118, ptr noundef %name.i225, i32 noundef %r.0244, i32 noundef %26) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end40, %do.body33.if.end50_crit_edge
  %r.0 = add i32 %r.0244, 4
  %cmp31.not = icmp ugt i32 %r.0, %add30
  br i1 %cmp31.not, label %if.end50.if.then55_crit_edge, label %if.end50.do.body33_crit_edge

if.end50.do.body33_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

if.end50.if.then55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.then55:                                        ; preds = %if.end50.if.then55_crit_edge, %if.end25.if.then55_crit_edge
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv50_tex_traps, i32 noundef %and14) #5
  %27 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp60.not = icmp eq i32 %28, 0
  br i1 %cmp60.not, label %if.then55.do.body127_crit_edge, label %do.end64

if.then55.do.body127_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

do.end64:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device2, align 4
  %dev66 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev66, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.121, ptr noundef %name.i225, ptr noundef %name, i32 noundef %i.0245, i32 noundef %and14, ptr noundef nonnull %msg) #9
  br label %do.body127

sw.bb75:                                          ; preds = %if.end17
  %and76 = and i32 %10, 67305472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %sw.bb75.land.lhs.true_crit_edge, label %if.then78

sw.bb75.land.lhs.true_crit_edge:                  ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then78:                                        ; preds = %sw.bb75
  %33 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 5440
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !470
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #5
  %38 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 16
  %add6.i = add nuw nsw i32 %shl5, 4227584
  %add10.i = add nuw nsw i32 %shl6, 4227328
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then78
  %i.0134.i = phi i32 [ 0, %if.then78 ], [ %inc78.i, %for.inc.i.for.body.i_crit_edge ]
  %mps.0133.i = phi i32 [ 0, %if.then78 ], [ %mps.1.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl i32 16777216, %i.0134.i
  %and.i = and i32 %shl.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %39 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %40)
  %cmp3.i = icmp ult i32 %40, 160
  %shl7.i = shl i32 %i.0134.i, 7
  %addr.0.v.i = select i1 %cmp3.i, i32 %add6.i, i32 %add10.i
  %addr.0.i = add i32 %addr.0.v.i, %shl7.i
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add16.i = or i32 %addr.0.i, 16
  %add.ptr17.i = getelementptr i8, ptr %42, i32 %add16.i
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !471
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add22.i = or i32 %addr.0.i, 20
  %add.ptr23.i = getelementptr i8, ptr %45, i32 %add22.i
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool26.not.i = icmp eq i32 %46, 0
  br i1 %tobool26.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end28.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end28.i:                                       ; preds = %if.end.i
  br i1 %tobool103.not, label %if.end28.i.do.body66.i_crit_edge, label %if.then30.i

if.end28.i.do.body66.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66.i

if.then30.i:                                      ; preds = %if.end28.i
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add33.i = or i32 %addr.0.i, 32
  %add.ptr34.i = getelementptr i8, ptr %48, i32 %add33.i
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !473
  %50 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri.i, align 4
  %add39.i = or i32 %addr.0.i, 36
  %add.ptr40.i = getelementptr i8, ptr %51, i32 %add39.i
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !474
  %53 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri.i, align 4
  %add45.i = or i32 %addr.0.i, 112
  %add.ptr46.i = getelementptr i8, ptr %54, i32 %add45.i
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !475
  %56 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri.i, align 4
  %add51.i = or i32 %addr.0.i, 116
  %add.ptr52.i = getelementptr i8, ptr %57, i32 %add51.i
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !476
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i, i32 noundef 128, ptr noundef nonnull @nv50_mp_exec_errors, i32 noundef %46) #5
  %59 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp55.not.i = icmp eq i32 %60, 0
  br i1 %cmp55.not.i, label %if.then30.i.do.body66.i_crit_edge, label %do.end.i

if.then30.i.do.body66.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66.i

do.end.i:                                         ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device2, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 8
  %and61.i = and i32 %52, 16777215
  %shr.i = lshr i32 %52, 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.135, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %i.0134.i, i32 noundef %46, ptr noundef nonnull %msg.i, i32 noundef %and61.i, i32 noundef %shr.i, i32 noundef %55, i32 noundef %58) #9
  br label %do.body66.i

do.body66.i:                                      ; preds = %do.end.i, %if.then30.i.do.body66.i_crit_edge, %if.end28.i.do.body66.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !477
  call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %66, i32 %add16.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %43) #5, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !478
  call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %68, i32 %add22.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 0) #5, !srcloc !374
  %inc.i = add i32 %mps.0133.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body66.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mps.1.i = phi i32 [ %inc.i, %do.body66.i ], [ %mps.0133.i, %if.end.i.for.inc.i_crit_edge ], [ %mps.0133.i, %for.body.i.for.inc.i_crit_edge ]
  %inc78.i = add nuw nsw i32 %i.0134.i, 1
  %exitcond.not.i = icmp eq i32 %inc78.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mps.1.i)
  %tobool79.not.i = icmp ne i32 %mps.1.i, 0
  %or.cond.i = or i1 %tobool103.not, %tobool79.not.i
  br i1 %or.cond.i, label %for.end.i.if.end80_crit_edge, label %do.body82.i

for.end.i.if.end80_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.body82.i:                                      ; preds = %for.end.i
  %69 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp85.not.i = icmp eq i32 %70, 0
  br i1 %cmp85.not.i, label %do.body82.i.if.end80_crit_edge, label %do.end89.i

do.body82.i.if.end80_crit_edge:                   ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end89.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device2, align 4
  %dev91.i = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev91.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev91.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.138, ptr noundef %name.i225, i32 noundef %i.0245) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end89.i, %do.body82.i.if.end80_crit_edge, %for.end.i.if.end80_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #5
  %and79 = and i32 %10, 2080178175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool81.not = icmp eq i32 %and79, 0
  br i1 %tobool81.not, label %if.end80.do.body127_crit_edge, label %if.end80.land.lhs.true_crit_edge

if.end80.land.lhs.true_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end80.do.body127_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

land.lhs.true:                                    ; preds = %if.end80.land.lhs.true_crit_edge, %sw.bb75.land.lhs.true_crit_edge
  %ustatus.0231 = phi i32 [ %and79, %if.end80.land.lhs.true_crit_edge ], [ %and14, %sw.bb75.land.lhs.true_crit_edge ]
  br i1 %tobool103.not, label %land.lhs.true.do.body127_crit_edge, label %if.then83

land.lhs.true.do.body127_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

if.then83:                                        ; preds = %land.lhs.true
  call void @nvkm_snprintbf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef nonnull @nv50_mpc_traps, i32 noundef %ustatus.0231) #5
  %75 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp88.not = icmp eq i32 %76, 0
  br i1 %cmp88.not, label %if.then83.do.body127_crit_edge, label %do.end92

if.then83.do.body127_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

do.end92:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device2, align 4
  %dev94 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev94, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.121, ptr noundef %name.i225, ptr noundef %name, i32 noundef %i.0245, i32 noundef %ustatus.0231, ptr noundef nonnull %msg) #9
  br label %do.body127

sw.bb102:                                         ; preds = %if.end17
  br i1 %tobool103.not, label %sw.bb102.do.body127_crit_edge, label %if.then104

sw.bb102.do.body127_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

if.then104:                                       ; preds = %sw.bb102
  %81 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device2, align 4
  %pri.i219 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i219, align 4
  %add.i = add i32 %ustatus_addr.0, 4
  %add.ptr.i220 = getelementptr i8, ptr %84, i32 %add.i
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !479
  %86 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i219, align 4
  %add5.i = add i32 %ustatus_addr.0, 8
  %add.ptr6.i = getelementptr i8, ptr %87, i32 %add5.i
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !480
  %89 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri.i219, align 4
  %add11.i = add i32 %ustatus_addr.0, 12
  %add.ptr12.i = getelementptr i8, ptr %90, i32 %add11.i
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !481
  %92 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i219, align 4
  %add17.i = add i32 %ustatus_addr.0, 16
  %add.ptr18.i = getelementptr i8, ptr %93, i32 %add17.i
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !482
  %95 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i219, align 4
  %add23.i = add i32 %ustatus_addr.0, 20
  %add.ptr24.i = getelementptr i8, ptr %96, i32 %add23.i
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !483
  %98 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri.i219, align 4
  %add29.i = add i32 %ustatus_addr.0, 24
  %add.ptr30.i = getelementptr i8, ptr %99, i32 %add29.i
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !484
  %101 = ptrtoint ptr %pri.i219 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri.i219, align 4
  %add35.i = add i32 %ustatus_addr.0, 28
  %add.ptr36.i = getelementptr i8, ptr %102, i32 %add35.i
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #5, !srcloc !362
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !485
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i217) #5
  %104 = call ptr @memset(ptr %msg.i217, i32 255, i32 128)
  %and.i221 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.not.i222 = icmp eq i32 %and.i221, 0
  br i1 %tobool.not.i222, label %if.then104.if.then92.i_crit_edge, label %if.then.i

if.then104.if.then92.i_crit_edge:                 ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92.i

if.then.i:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %tobool40.not.i = icmp sgt i32 %94, -1
  br i1 %tobool40.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  %105 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.not.i = icmp eq i32 %106, 0
  br i1 %cmp.not.i, label %do.body.i.if.end.i228_crit_edge, label %do.end.i227

do.body.i.if.end.i228_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i228

do.end.i227:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device2, align 4
  %dev.i224 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %dev.i224 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i224, align 8
  %shr.i226 = lshr i32 %94, 24
  %and45.i = and i32 %shr.i226, 31
  %or.i = or i32 %and45.i, %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.157, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %91, i32 noundef %or.i) #9
  br label %if.end.i228

if.end.i228:                                      ; preds = %do.end.i227, %do.body.i.if.end.i228_crit_edge
  %and48.i = and i32 %94, -520093697
  br label %if.end90.i

if.else.i:                                        ; preds = %if.then.i
  %and49.i = and i32 %94, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %111 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp75.not.i = icmp eq i32 %112, 0
  br i1 %tobool50.not.i, label %do.body72.i, label %do.body52.i

do.body52.i:                                      ; preds = %if.else.i
  br i1 %cmp75.not.i, label %do.body52.i.if.end67.i_crit_edge, label %do.end59.i

do.body52.i.if.end67.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

do.end59.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device2, align 4
  %dev61.i = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev61.i, align 8
  %shr64.i = lshr i32 %94, 7
  %and65.i = and i32 %shr64.i, 31
  %or66.i = or i32 %and65.i, %88
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.160, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %91, i32 noundef %or66.i) #9
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end59.i, %do.body52.i.if.end67.i_crit_edge
  %and70.i = and i32 %94, -3969
  br label %if.end90.i

do.body72.i:                                      ; preds = %if.else.i
  br i1 %cmp75.not.i, label %do.body72.i.if.end90.i_crit_edge, label %do.end79.i

do.body72.i.if.end90.i_crit_edge:                 ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90.i

do.end79.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device2, align 4
  %dev81.i = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev81.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.163, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %91, i32 noundef %88) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end79.i, %do.body72.i.if.end90.i_crit_edge, %if.end67.i, %if.end.i228
  %e18.0.i = phi i32 [ %and48.i, %if.end.i228 ], [ %and70.i, %if.end67.i ], [ %94, %do.end79.i ], [ %94, %do.body72.i.if.end90.i_crit_edge ]
  %and89.i = and i32 %10, 2147483519
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool91.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool91.not.i, label %if.end90.i.do.body111.i_crit_edge, label %if.end90.i.if.then92.i_crit_edge

if.end90.i.if.then92.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92.i

if.end90.i.do.body111.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111.i

if.then92.i:                                      ; preds = %if.end90.i.if.then92.i_crit_edge, %if.then104.if.then92.i_crit_edge
  %ustatus.addr.0.i237 = phi i32 [ %and89.i, %if.end90.i.if.then92.i_crit_edge ], [ %and14, %if.then104.if.then92.i_crit_edge ]
  %e18.1.i235 = phi i32 [ %e18.0.i, %if.end90.i.if.then92.i_crit_edge ], [ %94, %if.then104.if.then92.i_crit_edge ]
  call void @nvkm_snprintbf(ptr noundef nonnull %msg.i217, i32 noundef 128, ptr noundef nonnull @nv50_gr_trap_prop, i32 noundef %ustatus.addr.0.i237) #5
  %121 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp97.not.i = icmp eq i32 %122, 0
  br i1 %cmp97.not.i, label %if.then92.i.nv50_gr_prop_trap.exit_crit_edge, label %do.end101.i

if.then92.i.nv50_gr_prop_trap.exit_crit_edge:     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_gr_prop_trap.exit

do.end101.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device2, align 4
  %dev103.i = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %dev103.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev103.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.166, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %ustatus.addr.0.i237, ptr noundef nonnull %msg.i217, i32 noundef %91, i32 noundef %88) #9
  br label %do.body111.i

do.body111.i:                                     ; preds = %do.end101.i, %if.end90.i.do.body111.i_crit_edge
  %e18.1.i236.ph = phi i32 [ %e18.0.i, %if.end90.i.do.body111.i_crit_edge ], [ %e18.1.i235, %do.end101.i ]
  %127 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp114.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp114.not.i, label %do.body111.i.nv50_gr_prop_trap.exit_crit_edge, label %do.end118.i

do.body111.i.nv50_gr_prop_trap.exit_crit_edge:    ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_gr_prop_trap.exit

do.end118.i:                                      ; preds = %do.body111.i
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device2, align 4
  %dev120.i = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dev120.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev120.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.169, ptr noundef %name.i225, i32 noundef %i.0245, i32 noundef %85, i32 noundef %e18.1.i236.ph, i32 noundef %97, i32 noundef %100, i32 noundef %103) #9
  br label %nv50_gr_prop_trap.exit

nv50_gr_prop_trap.exit:                           ; preds = %do.end118.i, %do.body111.i.nv50_gr_prop_trap.exit_crit_edge, %if.then92.i.nv50_gr_prop_trap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i217) #5
  br label %do.body127

sw.epilog:                                        ; preds = %if.end17
  br i1 %tobool103.not, label %sw.epilog.do.body127_crit_edge, label %do.body110

sw.epilog.do.body127_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

do.body110:                                       ; preds = %sw.epilog
  %132 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp113.not = icmp eq i32 %133, 0
  br i1 %cmp113.not, label %do.body110.do.body127_crit_edge, label %do.end117

do.body110.do.body127_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body127

do.end117:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device2, align 4
  %dev119 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev119, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.126, ptr noundef %name.i225, ptr noundef %name, i32 noundef %i.0245, i32 noundef %and14) #9
  br label %do.body127

do.body127:                                       ; preds = %do.end117, %do.body110.do.body127_crit_edge, %sw.epilog.do.body127_crit_edge, %nv50_gr_prop_trap.exit, %sw.bb102.do.body127_crit_edge, %do.end92, %if.then83.do.body127_crit_edge, %land.lhs.true.do.body127_crit_edge, %if.end80.do.body127_crit_edge, %do.end64, %if.then55.do.body127_crit_edge, %sw.bb.do.body127_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !486
  call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pri, align 4
  %add.ptr131 = getelementptr i8, ptr %139, i32 %ustatus_addr.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 -1073741824) #5, !srcloc !374
  br label %for.inc132

for.inc132:                                       ; preds = %do.body127, %if.end.for.inc132_crit_edge, %for.body.for.inc132_crit_edge
  %tps.1 = phi i32 [ %inc, %do.body127 ], [ %tps.0256, %if.end.for.inc132_crit_edge ], [ %tps.0256, %for.body.for.inc132_crit_edge ]
  %inc133 = add nuw nsw i32 %i.0245, 1
  %exitcond.not = icmp eq i32 %inc133, 16
  br i1 %exitcond.not, label %for.end134, label %for.inc132.for.body_crit_edge

for.inc132.for.body_crit_edge:                    ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end134:                                       ; preds = %for.inc132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tps.1)
  %tobool135.not = icmp ne i32 %tps.1, 0
  %or.cond216 = or i1 %tobool103.not, %tobool135.not
  br i1 %or.cond216, label %for.end134.if.end154_crit_edge, label %do.body139

for.end134.if.end154_crit_edge:                   ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

do.body139:                                       ; preds = %for.end134
  %140 = ptrtoint ptr %debug.i223 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %debug.i223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp142 = icmp ugt i32 %141, 1
  br i1 %cmp142, label %do.end146, label %do.body139.if.end154_crit_edge

do.body139.if.end154_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

do.end146:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device2, align 4
  %dev148 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev148, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %145, ptr noundef nonnull @.str.129, ptr noundef %name.i225, ptr noundef %name) #9
  br label %if.end154

if.end154:                                        ; preds = %do.end146, %do.body139.if.end154_crit_edge, %for.end134.if.end154_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !235, !237, !239, !241, !242, !243, !244, !246, !247, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351}
!llvm.module.flags = !{!353, !354, !355, !356, !357, !358, !359, !360}
!llvm.ident = !{!361}

!0 = !{ptr @nv50_gr_object, !1, !"nv50_gr_object", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 60, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 165, i32 16}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 166, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 167, i32 16}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 168, i32 16}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 169, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 170, i32 16}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 171, i32 16}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 172, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 173, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 174, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 175, i32 16}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 176, i32 16}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 177, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 178, i32 16}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 179, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 180, i32 16}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 181, i32 16}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 182, i32 16}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 183, i32 16}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 184, i32 16}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 185, i32 16}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 186, i32 16}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 187, i32 16}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 188, i32 16}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 189, i32 16}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 190, i32 16}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 191, i32 16}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 192, i32 16}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 193, i32 16}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 194, i32 16}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 195, i32 16}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 196, i32 16}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 197, i32 16}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 198, i32 16}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 199, i32 16}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 200, i32 16}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 201, i32 16}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 202, i32 16}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 203, i32 16}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 204, i32 16}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 205, i32 16}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 206, i32 16}
!86 = !{ptr @nv50_data_error_names, !87, !"nv50_data_error_names", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 164, i32 24}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 636, i32 21}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 649, i32 3}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nv50_gr_intr._entry, !91, !"_entry", i1 false, i1 false}
!97 = !{ptr @nv50_gr_intr._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 666, i32 3}
!101 = !{ptr @nv50_gr_intr._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @nv50_gr_intr._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @nv50_gr_new_.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 770, i32 2}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nv50_gr_chan, !107, !"nv50_gr_chan", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 84, i32 1}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 405, i32 3}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nv50_gr_trap_handler._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @nv50_gr_trap_handler._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 415, i32 4}
!115 = !{ptr @nv50_gr_trap_handler._entry.55, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @nv50_gr_trap_handler._entry_ptr.57, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 430, i32 4}
!119 = !{ptr @nv50_gr_trap_handler._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @nv50_gr_trap_handler._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 432, i32 5}
!123 = !{ptr @nv50_gr_trap_handler._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nv50_gr_trap_handler._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 440, i32 5}
!127 = !{ptr @nv50_gr_trap_handler._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @nv50_gr_trap_handler._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 456, i32 4}
!131 = !{ptr @nv50_gr_trap_handler._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @nv50_gr_trap_handler._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 458, i32 5}
!135 = !{ptr @nv50_gr_trap_handler._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @nv50_gr_trap_handler._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @nv50_gr_trap_handler._entry.73, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 465, i32 5}
!139 = !{ptr @nv50_gr_trap_handler._entry_ptr.74, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 473, i32 4}
!142 = !{ptr @nv50_gr_trap_handler._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @nv50_gr_trap_handler._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 490, i32 4}
!146 = !{ptr @nv50_gr_trap_handler._entry.78, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @nv50_gr_trap_handler._entry_ptr.80, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 492, i32 4}
!150 = !{ptr @nv50_gr_trap_handler._entry.81, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @nv50_gr_trap_handler._entry_ptr.83, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 513, i32 4}
!154 = !{ptr @nv50_gr_trap_handler._entry.84, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @nv50_gr_trap_handler._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 515, i32 4}
!158 = !{ptr @nv50_gr_trap_handler._entry.87, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @nv50_gr_trap_handler._entry_ptr.89, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 533, i32 4}
!162 = !{ptr @nv50_gr_trap_handler._entry.90, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @nv50_gr_trap_handler._entry_ptr.92, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 535, i32 4}
!166 = !{ptr @nv50_gr_trap_handler._entry.93, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @nv50_gr_trap_handler._entry_ptr.95, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 556, i32 4}
!170 = !{ptr @nv50_gr_trap_handler._entry.96, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @nv50_gr_trap_handler._entry_ptr.98, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.100, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 558, i32 4}
!174 = !{ptr @nv50_gr_trap_handler._entry.99, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @nv50_gr_trap_handler._entry_ptr.101, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 580, i32 4}
!178 = !{ptr @nv50_gr_trap_handler._entry.102, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @nv50_gr_trap_handler._entry_ptr.104, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 588, i32 9}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 596, i32 9}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 605, i32 9}
!186 = !{ptr @.str.109, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 612, i32 4}
!188 = !{ptr @nv50_gr_trap_handler._entry.108, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @nv50_gr_trap_handler._entry_ptr.110, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 142, i32 16}
!192 = !{ptr @.str.112, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 143, i32 16}
!194 = !{ptr @.str.113, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 144, i32 16}
!196 = !{ptr @nv50_gr_trap_m2mf, !197, !"nv50_gr_trap_m2mf", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 141, i32 35}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 149, i32 16}
!200 = !{ptr @nv50_gr_trap_vfetch, !201, !"nv50_gr_trap_vfetch", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 148, i32 35}
!202 = !{ptr @nv50_gr_trap_strmout, !203, !"nv50_gr_trap_strmout", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 153, i32 35}
!204 = !{ptr @nv50_gr_trap_ccache, !205, !"nv50_gr_trap_ccache", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 158, i32 35}
!206 = !{ptr @.str.115, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 349, i32 5}
!208 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @nv50_gr_tp_trap._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @nv50_gr_tp_trap._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 351, i32 6}
!213 = !{ptr @nv50_gr_tp_trap._entry.117, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @nv50_gr_tp_trap._entry_ptr.119, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.121, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 356, i32 6}
!217 = !{ptr @nv50_gr_tp_trap._entry.120, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @nv50_gr_tp_trap._entry_ptr.122, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @nv50_gr_tp_trap._entry.123, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 371, i32 5}
!221 = !{ptr @nv50_gr_tp_trap._entry_ptr.124, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.126, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 385, i32 5}
!224 = !{ptr @nv50_gr_tp_trap._entry.125, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @nv50_gr_tp_trap._entry_ptr.127, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 391, i32 3}
!228 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @nv50_gr_tp_trap._entry.128, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @nv50_gr_tp_trap._entry_ptr.131, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.132, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 135, i32 16}
!233 = !{ptr @.str.133, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 136, i32 16}
!235 = !{ptr @.str.134, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 137, i32 16}
!237 = !{ptr @nv50_tex_traps, !238, !"nv50_tex_traps", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 132, i32 35}
!239 = !{ptr @.str.135, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 309, i32 4}
!241 = !{ptr @.str.136, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @nv50_gr_mp_trap._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @nv50_gr_mp_trap._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.138, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 320, i32 3}
!246 = !{ptr @nv50_gr_mp_trap._entry.137, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @nv50_gr_mp_trap._entry_ptr.139, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.140, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 108, i32 10}
!250 = !{ptr @.str.141, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 109, i32 10}
!252 = !{ptr @.str.142, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 110, i32 10}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 111, i32 10}
!256 = !{ptr @.str.144, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 112, i32 10}
!258 = !{ptr @.str.145, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 113, i32 10}
!260 = !{ptr @.str.146, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 114, i32 10}
!262 = !{ptr @nv50_mp_exec_errors, !263, !"nv50_mp_exec_errors", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 107, i32 35}
!264 = !{ptr @.str.147, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 119, i32 15}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 120, i32 15}
!268 = !{ptr @.str.149, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 121, i32 15}
!270 = !{ptr @.str.150, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 122, i32 15}
!272 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 123, i32 15}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 124, i32 15}
!276 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 125, i32 15}
!278 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 126, i32 15}
!280 = !{ptr @.str.155, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 127, i32 15}
!282 = !{ptr @.str.156, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 128, i32 15}
!284 = !{ptr @nv50_mpc_traps, !285, !"nv50_mpc_traps", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 118, i32 35}
!286 = !{ptr @.str.157, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 257, i32 4}
!288 = !{ptr @.str.158, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @nv50_gr_prop_trap._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @nv50_gr_prop_trap._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.160, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 262, i32 4}
!293 = !{ptr @nv50_gr_prop_trap._entry.159, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @nv50_gr_prop_trap._entry_ptr.161, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.163, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 266, i32 4}
!297 = !{ptr @nv50_gr_prop_trap._entry.162, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @nv50_gr_prop_trap._entry_ptr.164, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.166, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 273, i32 3}
!301 = !{ptr @nv50_gr_prop_trap._entry.165, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @nv50_gr_prop_trap._entry_ptr.167, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.169, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 277, i32 2}
!305 = !{ptr @nv50_gr_prop_trap._entry.168, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @nv50_gr_prop_trap._entry_ptr.170, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.171, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 225, i32 16}
!309 = !{ptr @.str.172, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 226, i32 16}
!311 = !{ptr @.str.173, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 227, i32 16}
!313 = !{ptr @.str.174, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 228, i32 16}
!315 = !{ptr @.str.175, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 229, i32 16}
!317 = !{ptr @.str.176, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 230, i32 16}
!319 = !{ptr @.str.177, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 231, i32 16}
!321 = !{ptr @.str.178, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 232, i32 16}
!323 = !{ptr @.str.179, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 233, i32 16}
!325 = !{ptr @.str.180, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 234, i32 16}
!327 = !{ptr @.str.181, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 235, i32 16}
!329 = !{ptr @nv50_gr_trap_prop, !330, !"nv50_gr_trap_prop", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 224, i32 35}
!331 = !{ptr @.str.182, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 212, i32 16}
!333 = !{ptr @.str.183, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 213, i32 16}
!335 = !{ptr @.str.184, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 214, i32 16}
!337 = !{ptr @.str.185, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 215, i32 16}
!339 = !{ptr @.str.186, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 216, i32 16}
!341 = !{ptr @.str.187, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 217, i32 16}
!343 = !{ptr @.str.188, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 218, i32 16}
!345 = !{ptr @.str.189, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 219, i32 16}
!347 = !{ptr @.str.190, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 220, i32 16}
!349 = !{ptr @nv50_gr_intr_name, !350, !"nv50_gr_intr_name", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 210, i32 35}
!351 = !{ptr @nv50_gr, !352, !"nv50_gr", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv50.c", i32 777, i32 1}
!353 = !{i32 1, !"wchar_size", i32 2}
!354 = !{i32 1, !"min_enum_size", i32 4}
!355 = !{i32 8, !"branch-target-enforcement", i32 0}
!356 = !{i32 8, !"sign-return-address", i32 0}
!357 = !{i32 8, !"sign-return-address-all", i32 0}
!358 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!359 = !{i32 7, !"uwtable", i32 1}
!360 = !{i32 7, !"frame-pointer", i32 2}
!361 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!362 = !{i64 5412380}
!363 = !{i64 2156283708}
!364 = !{i64 2156408441}
!365 = !{i64 2156408826}
!366 = !{i64 2156409211}
!367 = !{i64 2156409596}
!368 = !{i64 2156409981}
!369 = !{!"auto-init"}
!370 = !{i64 2156410366}
!371 = !{i64 2156330179}
!372 = !{i64 2156332906}
!373 = !{i64 2156335542}
!374 = !{i64 5411962}
!375 = !{i64 2156335998}
!376 = !{i64 2156336383}
!377 = !{i64 2156336768}
!378 = !{i64 2156337153}
!379 = !{i64 2156337538}
!380 = !{i64 2156349901}
!381 = !{i64 2156351086}
!382 = !{i64 2156351339}
!383 = !{i64 2156351679}
!384 = !{i64 2156352126}
!385 = !{i64 2156352511}
!386 = !{i64 2156352896}
!387 = !{i64 2156360936}
!388 = !{i64 2156363820}
!389 = !{i64 2156364223}
!390 = !{i64 2156364674}
!391 = !{i64 2156370324}
!392 = !{i64 2156370709}
!393 = !{i64 2156371094}
!394 = !{i64 2156371479}
!395 = !{i64 2156371803}
!396 = !{i64 2156372189}
!397 = !{i64 2156372593}
!398 = !{i64 2156372996}
!399 = !{i64 2156373447}
!400 = !{i64 2156379145}
!401 = !{i64 2156379530}
!402 = !{i64 2156379915}
!403 = !{i64 2156380300}
!404 = !{i64 2156380642}
!405 = !{i64 2156381045}
!406 = !{i64 2156381496}
!407 = !{i64 2156387218}
!408 = !{i64 2156387603}
!409 = !{i64 2156387988}
!410 = !{i64 2156388373}
!411 = !{i64 2156388703}
!412 = !{i64 2156389092}
!413 = !{i64 2156389496}
!414 = !{i64 2156389899}
!415 = !{i64 2156390350}
!416 = !{i64 2156396900}
!417 = !{i64 2156397285}
!418 = !{i64 2156397670}
!419 = !{i64 2156398055}
!420 = !{i64 2156398440}
!421 = !{i64 2156398825}
!422 = !{i64 2156399210}
!423 = !{i64 2156399552}
!424 = !{i64 2156399955}
!425 = !{i64 2156400406}
!426 = !{i64 2156402952}
!427 = !{i64 2156403355}
!428 = !{i64 2156403753}
!429 = !{i64 2156404151}
!430 = !{i64 2156406774}
!431 = !{i64 2156413038}
!432 = !{i64 2156413445}
!433 = !{i64 2156417147}
!434 = !{i64 2156418288}
!435 = !{i64 2156418541}
!436 = !{i64 2156420123}
!437 = !{i64 2156420536}
!438 = !{i64 2156420949}
!439 = !{i64 2156421362}
!440 = !{i64 2156421775}
!441 = !{i64 2156422188}
!442 = !{i64 2156422601}
!443 = !{i64 2156423057}
!444 = !{i64 2156423860}
!445 = !{i64 2156424297}
!446 = !{i64 2156425171}
!447 = !{i64 2156425608}
!448 = !{i64 2156426021}
!449 = !{i64 2156426434}
!450 = !{i64 2156426847}
!451 = !{i64 2156427260}
!452 = !{i64 2156427673}
!453 = !{i64 2156428086}
!454 = !{i64 2156428499}
!455 = !{i64 2156428912}
!456 = !{i64 2156429325}
!457 = !{i64 2156429738}
!458 = !{i64 2156430151}
!459 = !{i64 2156430564}
!460 = !{i64 2156430977}
!461 = !{i64 2156431390}
!462 = !{i64 2156431803}
!463 = !{i64 2156432242}
!464 = !{i64 2156432681}
!465 = !{i64 2156433120}
!466 = !{i64 2156433559}
!467 = !{i64 2156314747}
!468 = !{i64 2156315144}
!469 = !{i64 2156319927}
!470 = !{i64 2156305162}
!471 = !{i64 2156305556}
!472 = !{i64 2156305950}
!473 = !{i64 2156306344}
!474 = !{i64 2156306738}
!475 = !{i64 2156307132}
!476 = !{i64 2156307526}
!477 = !{i64 2156311290}
!478 = !{i64 2156311685}
!479 = !{i64 2156287760}
!480 = !{i64 2156288178}
!481 = !{i64 2156288596}
!482 = !{i64 2156289014}
!483 = !{i64 2156289432}
!484 = !{i64 2156289850}
!485 = !{i64 2156290268}
!486 = !{i64 2156327374}
