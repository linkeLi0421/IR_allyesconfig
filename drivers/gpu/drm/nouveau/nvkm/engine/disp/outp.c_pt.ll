; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.150, i8 }
%union.anon.150 = type { %struct.anon.154 }
%struct.anon.154 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.144 = type { ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.144, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr }

@nvkm_outp_route._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: outp %02x:%04x:%04x: release %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_outp_route\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_outp_route._entry_ptr = internal global ptr @nvkm_outp_route._entry, section ".printk_index", align 4
@nvkm_outp_route._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: outp %02x:%04x:%04x: acquire %s\0A\00", [59 x i8] zeroinitializer }, align 32
@nvkm_outp_route._entry_ptr.7 = internal global ptr @nvkm_outp_route._entry.5, section ".printk_index", align 4
@nvkm_outp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: outp %02x:%04x:%04x: release %02x &= %02x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_outp_release\00", [46 x i8] zeroinitializer }, align 32
@nvkm_outp_release._entry_ptr = internal global ptr @nvkm_outp_release._entry, section ".printk_index", align 4
@nvkm_outp_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: outp %02x:%04x:%04x: acquire %02x |= %02x %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_outp_acquire\00", [46 x i8] zeroinitializer }, align 32
@nvkm_outp_acquire._entry_ptr = internal global ptr @nvkm_outp_acquire._entry, section ".printk_index", align 4
@nvkm_outp_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s: outp %02x:%04x:%04x: type %02x loc %d or %d link %d con %x edid %x bus %d head %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_outp_ctor\00", [17 x i8] zeroinitializer }, align 32
@nvkm_outp_ctor._entry_ptr = internal global ptr @nvkm_outp_ctor._entry, section ".printk_index", align 4
@nvkm_outp = internal constant { %struct.nvkm_outp_func, [40 x i8] } zeroinitializer, align 32
@nvkm_outp_init_route._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: outp %02x:%04x:%04x: no route\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_outp_init_route\00", [43 x i8] zeroinitializer }, align 32
@nvkm_outp_init_route._entry_ptr = internal global ptr @nvkm_outp_init_route._entry, section ".printk_index", align 4
@nvkm_outp_init_route._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: outp %02x:%04x:%04x: no heads (%x %d %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@nvkm_outp_init_route._entry_ptr.18 = internal global ptr @nvkm_outp_init_route._entry.16, section ".printk_index", align 4
@nvkm_outp_init_route._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: outp %02x:%04x:%04x: on %s link %x\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_outp_init_route._entry_ptr.21 = internal global ptr @nvkm_outp_init_route._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.nvkm_outp_acquire = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.nvkm_outp_init = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.nvkm_outp_init.22 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 40, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 49, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 93, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 149, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 310, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [10 x i8] c"nvkm_outp\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 326, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 241, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 259, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 272, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"switch.table.nvkm_outp_acquire\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"switch.table.nvkm_outp_init\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [31 x i8] c"switch.table.nvkm_outp_init.22\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @nvkm_outp_acquire._entry, ptr @nvkm_outp_acquire._entry_ptr, ptr @nvkm_outp_ctor._entry, ptr @nvkm_outp_ctor._entry_ptr, ptr @nvkm_outp_init_route._entry, ptr @nvkm_outp_init_route._entry.16, ptr @nvkm_outp_init_route._entry.19, ptr @nvkm_outp_init_route._entry_ptr, ptr @nvkm_outp_init_route._entry_ptr.18, ptr @nvkm_outp_init_route._entry_ptr.21, ptr @nvkm_outp_release._entry, ptr @nvkm_outp_release._entry_ptr, ptr @nvkm_outp_route._entry, ptr @nvkm_outp_route._entry.5, ptr @nvkm_outp_route._entry_ptr, ptr @nvkm_outp_route._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nvkm_outp, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @switch.table.nvkm_outp_acquire, ptr @switch.table.nvkm_outp_init, ptr @switch.table.nvkm_outp_init.22], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_route._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_route._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_init_route._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_init_route._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_outp_init_route._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_outp_acquire to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_outp_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_outp_init.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_outp_route(ptr noundef readonly %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ior1 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 3
  %0 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn151 = load ptr, ptr %ior1, align 4
  %cmp.not153 = icmp eq ptr %.pn151, %ior1
  br i1 %cmp.not153, label %entry.for.cond40.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond40.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.inc.for.cond40.preheader_crit_edge, %entry.for.cond40.preheader_crit_edge
  %1 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn150156 = load ptr, ptr %ior1, align 4
  %cmp43.not158 = icmp eq ptr %.pn150156, %ior1
  br i1 %cmp43.not158, label %for.cond40.preheader.for.end111_crit_edge, label %for.cond40.preheader.for.body46_crit_edge

for.cond40.preheader.for.body46_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body46

for.cond40.preheader.for.end111_crit_edge:        ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn154 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn151, %entry.for.body_crit_edge ]
  %ior.0155 = getelementptr i8, ptr %.pn154, i32 -24
  %arm = getelementptr i8, ptr %.pn154, i32 12
  %2 = ptrtoint ptr %arm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %asy = getelementptr i8, ptr %.pn154, i32 24
  %4 = ptrtoint ptr %asy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asy, align 4
  %cmp7.not = icmp eq ptr %3, %5
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  %disp9 = getelementptr inbounds %struct.nvkm_outp, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %disp9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disp9, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp10 = icmp ugt i32 %9, 3
  br i1 %cmp10, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %3, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hasht, align 4
  %conv = zext i16 %17 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %3, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hashm, align 2
  %conv14 = zext i16 %19 to i32
  %name15 = getelementptr i8, ptr %.pn154, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %15, i32 noundef %conv, i32 noundef %conv14, ptr noundef %name15) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %20 = ptrtoint ptr %ior.0155 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ior.0155, align 4
  %set = getelementptr inbounds %struct.anon.144, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.end.if.end26_crit_edge, label %if.then22

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef nonnull %3, ptr noundef null) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end.if.end26_crit_edge
  %24 = ptrtoint ptr %arm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arm, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %.pn154 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn154, align 4
  %cmp.not = icmp eq ptr %.pn, %ior1
  br i1 %cmp.not, label %for.inc.for.cond40.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond40.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond40.preheader

for.body46:                                       ; preds = %for.inc105.for.body46_crit_edge, %for.cond40.preheader.for.body46_crit_edge
  %.pn150159 = phi ptr [ %.pn150, %for.inc105.for.body46_crit_edge ], [ %.pn150156, %for.cond40.preheader.for.body46_crit_edge ]
  %ior.1160 = getelementptr i8, ptr %.pn150159, i32 -24
  %asy47 = getelementptr i8, ptr %.pn150159, i32 24
  %26 = ptrtoint ptr %asy47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asy47, align 4
  %tobool49.not = icmp eq ptr %27, null
  br i1 %tobool49.not, label %for.body46.for.inc105_crit_edge, label %do.body51

for.body46.for.inc105_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

do.body51:                                        ; preds = %for.body46
  %disp55 = getelementptr inbounds %struct.nvkm_outp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %disp55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disp55, align 4
  %debug58 = getelementptr inbounds %struct.nvkm_disp, ptr %29, i32 0, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %debug58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp59 = icmp ugt i32 %31, 3
  br i1 %cmp59, label %do.end64, label %do.body51.if.end78_crit_edge

do.body51.if.end78_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end64:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %device65 = getelementptr inbounds %struct.nvkm_disp, ptr %29, i32 0, i32 1, i32 1, i32 1
  %32 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device65, align 4
  %dev66 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev66, align 8
  %name67 = getelementptr inbounds %struct.nvkm_disp, ptr %29, i32 0, i32 1, i32 1, i32 4
  %index69 = getelementptr inbounds %struct.nvkm_outp, ptr %27, i32 0, i32 2
  %36 = ptrtoint ptr %index69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index69, align 4
  %hasht71 = getelementptr inbounds %struct.nvkm_outp, ptr %27, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %hasht71 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hasht71, align 4
  %conv72 = zext i16 %39 to i32
  %hashm74 = getelementptr inbounds %struct.nvkm_outp, ptr %27, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %hashm74 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hashm74, align 2
  %conv75 = zext i16 %41 to i32
  %name76 = getelementptr i8, ptr %.pn150159, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef %name67, i32 noundef %37, i32 noundef %conv72, i32 noundef %conv75, ptr noundef %name76) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end64, %do.body51.if.end78_crit_edge
  %42 = ptrtoint ptr %asy47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asy47, align 4
  %arm85 = getelementptr i8, ptr %.pn150159, i32 12
  %44 = ptrtoint ptr %arm85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arm85, align 4
  %cmp87.not = icmp eq ptr %43, %45
  br i1 %cmp87.not, label %if.end78.for.inc105_crit_edge, label %if.then89

if.end78.for.inc105_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc105

if.then89:                                        ; preds = %if.end78
  %46 = ptrtoint ptr %ior.1160 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ior.1160, align 4
  %set92 = getelementptr inbounds %struct.anon.144, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %set92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set92, align 4
  %tobool93.not = icmp eq ptr %49, null
  br i1 %tobool93.not, label %if.then89.if.end98_crit_edge, label %if.then94

if.then89.if.end98_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %49(ptr noundef nonnull %27, ptr noundef %ior.1160) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.then89.if.end98_crit_edge
  %50 = ptrtoint ptr %asy47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asy47, align 4
  %52 = ptrtoint ptr %arm85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %arm85, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %if.end98, %if.end78.for.inc105_crit_edge, %for.body46.for.inc105_crit_edge
  %53 = ptrtoint ptr %.pn150159 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn150 = load ptr, ptr %.pn150159, align 4
  %cmp43.not = icmp eq ptr %.pn150, %ior1
  br i1 %cmp43.not, label %for.inc105.for.end111_crit_edge, label %for.inc105.for.body46_crit_edge

for.inc105.for.body46_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.inc105.for.end111_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111

for.end111:                                       ; preds = %for.inc105.for.end111_crit_edge, %for.cond40.preheader.for.end111_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_outp_release(ptr noundef %outp, i8 noundef zeroext %user) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ior1 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %0 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ior1, align 4
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %2 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hasht, align 4
  %conv = zext i16 %13 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hashm, align 2
  %conv5 = zext i16 %15 to i32
  %acquired = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %16 = ptrtoint ptr %acquired to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %acquired, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %conv6 = zext i8 %bf.lshr to i32
  %conv7 = zext i8 %user to i32
  %neg = xor i32 %conv7, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %11, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %neg, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end37_crit_edge, label %if.then12

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then12:                                        ; preds = %if.end
  %neg14 = xor i8 %user, -1
  %acquired15 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %17 = ptrtoint ptr %acquired15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load16 = load i8, ptr %acquired15, align 1
  %and55 = shl i8 %neg14, 6
  %bf.lshr175657 = or i8 %and55, 63
  %bf.set = and i8 %bf.load16, %bf.lshr175657
  store i8 %bf.set, ptr %acquired15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.set)
  %tobool24.not = icmp ult i8 %bf.set, 64
  br i1 %tobool24.not, label %if.then25, label %if.then12.if.end37_crit_edge

if.then12.if.end37_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then25:                                        ; preds = %if.then12
  %18 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %outp, align 4
  %release = getelementptr inbounds %struct.nvkm_outp_func, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.then25.if.end32_crit_edge, label %land.lhs.true

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then25
  %22 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ior1, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %outp) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true.if.end32_crit_edge, %if.then25.if.end32_crit_edge
  %24 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ior1, align 4
  %asy = getelementptr inbounds %struct.nvkm_ior, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %asy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %asy, align 4
  store ptr null, ptr %ior1, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.then12.if.end37_crit_edge, %if.end.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_acquire(ptr noundef %outp, i8 noundef zeroext %user, i1 noundef zeroext %hda) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ior1 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %0 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ior1, align 4
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %2 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hasht, align 4
  %conv = zext i16 %13 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hashm, align 2
  %conv5 = zext i16 %15 to i32
  %acquired = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %16 = ptrtoint ptr %acquired to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %acquired, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %conv6 = zext i8 %bf.lshr to i32
  %conv7 = zext i8 %user to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %11, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %acquired14 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %17 = ptrtoint ptr %acquired14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load15 = load i8, ptr %acquired14, align 1
  %bf.value181 = shl i8 %user, 6
  %bf.load15.masked = and i8 %bf.load15, -64
  %bf.shl = or i8 %bf.load15.masked, %bf.value181
  %bf.clear = and i8 %bf.load15, 63
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %acquired14, align 1
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %location.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %location.i, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end20.nvkm_outp_xlat.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb8.i
  ]

if.end20.nvkm_outp_xlat.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit

sw.bb.i:                                          ; preds = %if.end20
  %type2.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %23 = icmp ult i32 %22, 7
  br i1 %23, label %switch.hole_check, label %sw.bb.i.nvkm_outp_xlat.exit_crit_edge

sw.bb.i.nvkm_outp_xlat.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit

sw.bb8.i:                                         ; preds = %if.end20
  %type10.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type10.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %25, label %sw.bb8.i.nvkm_outp_xlat.exit_crit_edge [
    i32 2, label %sw.bb8.i.if.end24_crit_edge
    i32 6, label %sw.bb8.i.if.end24_crit_edge216
  ]

sw.bb8.i.if.end24_crit_edge216:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sw.bb8.i.if.end24_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sw.bb8.i.nvkm_outp_xlat.exit_crit_edge:           ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit

nvkm_outp_xlat.exit:                              ; preds = %switch.hole_check.nvkm_outp_xlat.exit_crit_edge, %sw.bb8.i.nvkm_outp_xlat.exit_crit_edge, %sw.bb.i.nvkm_outp_xlat.exit_crit_edge, %if.end20.nvkm_outp_xlat.exit_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb.i
  %switch.maskindex = trunc i32 %22 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %27 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit.not = icmp eq i8 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.nvkm_outp_xlat.exit_crit_edge, label %switch.lookup

switch.hole_check.nvkm_outp_xlat.exit_crit_edge:  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_acquire, i32 0, i32 %22
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end24

if.end24:                                         ; preds = %switch.lookup, %sw.bb8.i.if.end24_crit_edge, %sw.bb8.i.if.end24_crit_edge216
  %type.0.ph = phi i32 [ 2, %sw.bb8.i.if.end24_crit_edge ], [ 2, %sw.bb8.i.if.end24_crit_edge216 ], [ %switch.load, %switch.lookup ]
  %identity = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 7
  %29 = ptrtoint ptr %identity to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %identity, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disp, align 4
  br i1 %tobool25.not, label %if.end62, label %if.then26

if.then26:                                        ; preds = %if.end24
  %or29 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  %33 = ptrtoint ptr %or29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %or29, align 1
  %35 = tail call i8 @llvm.cttz.i8(i8 %34, i1 true), !range !52
  %36 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %iszero = icmp eq i8 %34, 0
  %sub = select i1 %iszero, i32 -1, i32 %36
  %call31 = tail call ptr @nvkm_ior_find(ptr noundef %32, i32 noundef 1, i32 noundef %sub) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end45, label %if.end60, !prof !53

do.end45:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end60:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ior1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call31, ptr %ior1, align 4
  %asy.i = getelementptr inbounds %struct.nvkm_ior, ptr %call31, i32 0, i32 8
  %38 = ptrtoint ptr %asy.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %outp, ptr %asy.i, align 4
  %39 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = load ptr, ptr %ior1, align 4
  %link6.i = getelementptr inbounds %struct.nvkm_ior, ptr %42, i32 0, i32 8, i32 2
  %43 = ptrtoint ptr %link6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i = load i32, ptr %link6.i, align 4
  %bf.value.i = shl i32 %41, 23
  %bf.shl.i = and i32 %bf.value.i, 25165824
  %bf.clear.i = and i32 %bf.load.i, -25165825
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %link6.i, align 4
  %acquired.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %44 = ptrtoint ptr %acquired.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load7.i = load i8, ptr %acquired.i, align 1
  %bf.value112.i = shl i8 %user, 6
  %bf.load7.masked.i = and i8 %bf.load7.i, -64
  %bf.shl12.i = or i8 %bf.load7.masked.i, %bf.value112.i
  %bf.clear13.i = and i8 %bf.load7.i, 63
  %bf.set14.i = or i8 %bf.shl12.i, %bf.clear13.i
  store i8 %bf.set14.i, ptr %acquired.i, align 1
  br label %cleanup

if.end62:                                         ; preds = %if.end24
  %ior64 = getelementptr inbounds %struct.nvkm_disp, ptr %32, i32 0, i32 3
  %45 = ptrtoint ptr %ior64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn207 = load ptr, ptr %ior64, align 4
  %cmp68.not208 = icmp eq ptr %.pn207, %ior64
  br i1 %cmp68.not208, label %if.end62.for.end_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  br label %for.body

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end62.for.body_crit_edge
  %.pn209 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn207, %if.end62.for.body_crit_edge ]
  %identity72 = getelementptr i8, ptr %.pn209, i32 8
  %46 = ptrtoint ptr %identity72 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %identity72, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool73.not = icmp eq i8 %47, 0
  br i1 %tobool73.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %asy = getelementptr i8, ptr %.pn209, i32 24
  %48 = ptrtoint ptr %asy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %asy, align 4
  %tobool75.not = icmp eq ptr %49, null
  br i1 %tobool75.not, label %land.lhs.true76, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true76:                                  ; preds = %land.lhs.true
  %arm = getelementptr i8, ptr %.pn209, i32 12
  %50 = ptrtoint ptr %arm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arm, align 4
  %cmp78 = icmp eq ptr %51, %outp
  br i1 %cmp78, label %if.then80, label %land.lhs.true76.for.inc_crit_edge

land.lhs.true76.for.inc_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then80:                                        ; preds = %land.lhs.true76
  %asy.le = getelementptr i8, ptr %.pn209, i32 24
  %ior.0.le = getelementptr i8, ptr %.pn209, i32 -24
  br i1 %hda, label %land.rhs, label %if.then80.if.end109_crit_edge

if.then80.if.end109_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

land.rhs:                                         ; preds = %if.then80
  %52 = ptrtoint ptr %ior.0.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ior.0.le, align 4
  %hda84 = getelementptr inbounds %struct.nvkm_ior_func, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %hda84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hda84, align 4
  %tobool85.not = icmp eq ptr %55, null
  br i1 %tobool85.not, label %do.end103, label %land.rhs.if.end109_crit_edge, !prof !53

land.rhs.if.end109_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.end103:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 184, i32 noundef 9, ptr noundef null) #7
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %land.rhs.if.end109_crit_edge, %if.then80.if.end109_crit_edge
  %56 = ptrtoint ptr %ior1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ior.0.le, ptr %ior1, align 4
  %57 = ptrtoint ptr %asy.le to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %outp, ptr %asy.le, align 4
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = load ptr, ptr %ior1, align 4
  %link6.i185 = getelementptr inbounds %struct.nvkm_ior, ptr %61, i32 0, i32 8, i32 2
  %62 = ptrtoint ptr %link6.i185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i186 = load i32, ptr %link6.i185, align 4
  %bf.value.i187 = shl i32 %60, 23
  %bf.shl.i188 = and i32 %bf.value.i187, 25165824
  %bf.clear.i189 = and i32 %bf.load.i186, -25165825
  %bf.set.i190 = or i32 %bf.clear.i189, %bf.shl.i188
  store i32 %bf.set.i190, ptr %link6.i185, align 4
  %acquired.i191 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %63 = ptrtoint ptr %acquired.i191 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load7.i192 = load i8, ptr %acquired.i191, align 1
  %bf.value112.i193 = shl i8 %user, 6
  %bf.load7.masked.i194 = and i8 %bf.load7.i192, -64
  %bf.shl12.i195 = or i8 %bf.load7.masked.i194, %bf.value112.i193
  %bf.clear13.i196 = and i8 %bf.load7.i192, 63
  %bf.set14.i197 = or i8 %bf.shl12.i195, %bf.clear13.i196
  store i8 %bf.set14.i197, ptr %acquired.i191, align 1
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true76.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %64 = ptrtoint ptr %.pn209 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn209, align 4
  %cmp68.not = icmp eq ptr %.pn, %ior64
  br i1 %cmp68.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end62.for.end_crit_edge
  br i1 %hda, label %if.end131, label %if.then125

if.then125:                                       ; preds = %for.end
  %call126 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %outp, i32 noundef %type.0.ph, i8 noundef zeroext %user, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then125.cleanup_crit_edge, label %if.end129

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %outp, i32 noundef %type.0.ph, i8 noundef zeroext %user, i1 noundef zeroext true)
  br label %cleanup

if.end131:                                        ; preds = %for.end
  %call132 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %outp, i32 noundef %type.0.ph, i8 noundef zeroext %user, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.cleanup_crit_edge, label %if.end135

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %call136 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %outp, i32 noundef %type.0.ph, i8 noundef zeroext %user, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.end131.cleanup_crit_edge, %if.end129, %if.then125.cleanup_crit_edge, %if.end109, %if.end60, %do.end45, %nvkm_outp_xlat.exit, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -28, %do.end45 ], [ 0, %if.end60 ], [ 0, %if.end109 ], [ %call136, %if.end135 ], [ %call130, %if.end129 ], [ -38, %nvkm_outp_xlat.exit ], [ 0, %if.then125.cleanup_crit_edge ], [ 0, %if.end131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_ior_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %outp, i32 noundef %type, i8 noundef zeroext %user, i1 noundef zeroext %hda) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %ior1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn142 = load ptr, ptr %ior1, align 4
  %cmp.not144 = icmp eq ptr %.pn142, %ior1
  br i1 %cmp.not144, label %entry.for.cond39.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond39.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond39.preheader

for.body.lr.ph:                                   ; preds = %entry
  %or = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc.for.cond39.preheader_crit_edge, %entry.for.cond39.preheader_crit_edge
  %3 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn122147 = load ptr, ptr %ior1, align 4
  %cmp43.not149 = icmp eq ptr %.pn122147, %ior1
  br i1 %cmp43.not149, label %for.cond39.preheader.cleanup_crit_edge, label %for.body47.lr.ph

for.cond39.preheader.cleanup_crit_edge:           ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body47.lr.ph:                                 ; preds = %for.cond39.preheader
  %or79 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  br label %for.body47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn145 = phi ptr [ %.pn142, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ior.0146 = getelementptr i8, ptr %.pn145, i32 -24
  %identity = getelementptr i8, ptr %.pn145, i32 8
  %4 = ptrtoint ptr %identity to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %identity, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %ior.0146 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ior.0146, align 4
  %hda4 = getelementptr inbounds %struct.nvkm_ior_func, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %hda4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hda4, align 4
  %tobool5 = icmp eq ptr %9, null
  %cmp9 = xor i1 %tobool5, %hda
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true
  %asy = getelementptr i8, ptr %.pn145, i32 24
  %10 = ptrtoint ptr %asy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asy, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %type15 = getelementptr i8, ptr %.pn145, i32 -16
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %type)
  %cmp16 = icmp eq i32 %13, %type
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %arm = getelementptr i8, ptr %.pn145, i32 12
  %14 = ptrtoint ptr %arm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arm, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %set = getelementptr inbounds %struct.anon.144, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %lor.lhs.false, label %land.lhs.true21.if.then_crit_edge

land.lhs.true21.if.then_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %id = getelementptr i8, ptr %.pn145, i32 -12
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %or, align 1
  %conv24 = zext i8 %21 to i32
  %22 = tail call i32 @llvm.cttz.i32(i32 %conv24, i1 false) #7, !range !54
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %22)
  %cmp25 = icmp eq i32 %19, %22
  br i1 %cmp25, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true21.if.then_crit_edge
  %ior1.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %23 = ptrtoint ptr %ior1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ior.0146, ptr %ior1.i, align 4
  br label %cleanup.sink.split

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn145, align 4
  %cmp.not = icmp eq ptr %.pn, %ior1
  br i1 %cmp.not, label %for.inc.for.cond39.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond39.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond39.preheader

for.body47:                                       ; preds = %for.inc87.for.body47_crit_edge, %for.body47.lr.ph
  %.pn122150 = phi ptr [ %.pn122147, %for.body47.lr.ph ], [ %.pn122, %for.inc87.for.body47_crit_edge ]
  %ior.1152 = getelementptr i8, ptr %.pn122150, i32 -24
  %identity48 = getelementptr i8, ptr %.pn122150, i32 8
  %25 = ptrtoint ptr %identity48 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %identity48, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool49.not = icmp eq i8 %26, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %for.body47.for.inc87_crit_edge

for.body47.for.inc87_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

land.lhs.true50:                                  ; preds = %for.body47
  %27 = ptrtoint ptr %ior.1152 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ior.1152, align 4
  %hda52 = getelementptr inbounds %struct.nvkm_ior_func, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %hda52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hda52, align 4
  %tobool54 = icmp eq ptr %30, null
  %cmp61 = xor i1 %tobool54, %hda
  br i1 %cmp61, label %land.lhs.true63, label %land.lhs.true50.for.inc87_crit_edge

land.lhs.true50.for.inc87_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

land.lhs.true63:                                  ; preds = %land.lhs.true50
  %asy64 = getelementptr i8, ptr %.pn122150, i32 24
  %31 = ptrtoint ptr %asy64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asy64, align 4
  %tobool66.not = icmp eq ptr %32, null
  br i1 %tobool66.not, label %land.lhs.true67, label %land.lhs.true63.for.inc87_crit_edge

land.lhs.true63.for.inc87_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %type68 = getelementptr i8, ptr %.pn122150, i32 -16
  %33 = ptrtoint ptr %type68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %type)
  %cmp69 = icmp eq i32 %34, %type
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true67.for.inc87_crit_edge

land.lhs.true67.for.inc87_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %set74 = getelementptr inbounds %struct.anon.144, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %set74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set74, align 4
  %tobool75.not = icmp eq ptr %36, null
  br i1 %tobool75.not, label %lor.lhs.false76, label %land.lhs.true71.if.then84_crit_edge

land.lhs.true71.if.then84_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

lor.lhs.false76:                                  ; preds = %land.lhs.true71
  %id77 = getelementptr i8, ptr %.pn122150, i32 -12
  %37 = ptrtoint ptr %id77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id77, align 4
  %39 = ptrtoint ptr %or79 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %or79, align 1
  %conv80 = zext i8 %40 to i32
  %41 = tail call i32 @llvm.cttz.i32(i32 %conv80, i1 false) #7, !range !54
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %41)
  %cmp82 = icmp eq i32 %38, %41
  br i1 %cmp82, label %lor.lhs.false76.if.then84_crit_edge, label %lor.lhs.false76.for.inc87_crit_edge

lor.lhs.false76.for.inc87_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

lor.lhs.false76.if.then84_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false76.if.then84_crit_edge, %land.lhs.true71.if.then84_crit_edge
  %ior1.i123 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %42 = ptrtoint ptr %ior1.i123 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ior.1152, ptr %ior1.i123, align 4
  br label %cleanup.sink.split

for.inc87:                                        ; preds = %lor.lhs.false76.for.inc87_crit_edge, %land.lhs.true67.for.inc87_crit_edge, %land.lhs.true63.for.inc87_crit_edge, %land.lhs.true50.for.inc87_crit_edge, %for.body47.for.inc87_crit_edge
  %43 = ptrtoint ptr %.pn122150 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn122 = load ptr, ptr %.pn122150, align 4
  %cmp43.not = icmp eq ptr %.pn122, %ior1
  br i1 %cmp43.not, label %for.inc87.cleanup_crit_edge, label %for.inc87.for.body47_crit_edge

for.inc87.for.body47_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.inc87.cleanup_crit_edge:                      ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then84, %if.then
  %.pn145.pn = phi ptr [ %.pn145, %if.then ], [ %.pn122150, %if.then84 ]
  %ior1.i.sink = phi ptr [ %ior1.i, %if.then ], [ %ior1.i123, %if.then84 ]
  %asy.le.sink = getelementptr i8, ptr %.pn145.pn, i32 24
  %44 = ptrtoint ptr %asy.le.sink to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %outp, ptr %asy.le.sink, align 4
  %45 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %ior1.i.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ior1.i.sink, align 4
  %link6.i = getelementptr inbounds %struct.nvkm_ior, ptr %49, i32 0, i32 8, i32 2
  %50 = ptrtoint ptr %link6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i = load i32, ptr %link6.i, align 4
  %bf.value.i = shl i32 %47, 23
  %bf.shl.i = and i32 %bf.value.i, 25165824
  %bf.clear.i = and i32 %bf.load.i, -25165825
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %link6.i, align 4
  %acquired.i.sink = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 8
  %51 = ptrtoint ptr %acquired.i.sink to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load7.i = load i8, ptr %acquired.i.sink, align 1
  %bf.value112.i133 = shl i8 %user, 6
  %bf.load7.masked.i134 = and i8 %bf.load7.i, -64
  %bf.shl12.i135 = or i8 %bf.load7.masked.i134, %bf.value112.i133
  %bf.clear13.i136 = and i8 %bf.load7.i, 63
  %bf.set14.i137 = or i8 %bf.shl12.i135, %bf.clear13.i136
  store i8 %bf.set14.i137, ptr %acquired.i.sink, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc87.cleanup_crit_edge, %for.cond39.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %for.cond39.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -28, %for.inc87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_outp_fini(ptr noundef %outp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outp, align 4
  %fini = getelementptr inbounds %struct.nvkm_outp_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %outp) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_outp_init(ptr noundef %outp) local_unnamed_addr #0 align 64 {
entry:
  %link.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %0 = ptrtoint ptr %disp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link.i) #7
  %2 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %link.i, align 4, !annotation !55
  %location.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %location.i.i, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %4, label %entry.nvkm_outp_xlat.exit.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb8.i.i
  ]

entry.nvkm_outp_xlat.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.i

sw.bb.i.i:                                        ; preds = %entry
  %type2.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %switch.hole_check, label %sw.bb.i.i.nvkm_outp_xlat.exit.i_crit_edge

sw.bb.i.i.nvkm_outp_xlat.exit.i_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.i

sw.bb8.i.i:                                       ; preds = %entry
  %type10.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %type10.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type10.i.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %10, label %sw.bb8.i.i.nvkm_outp_xlat.exit.i_crit_edge [
    i32 2, label %sw.bb8.i.i.if.end.i_crit_edge
    i32 6, label %sw.bb8.i.i.if.end.i_crit_edge8
  ]

sw.bb8.i.i.if.end.i_crit_edge8:                   ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb8.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb8.i.i.nvkm_outp_xlat.exit.i_crit_edge:       ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.i

nvkm_outp_xlat.exit.i:                            ; preds = %switch.hole_check.nvkm_outp_xlat.exit.i_crit_edge, %sw.bb8.i.i.nvkm_outp_xlat.exit.i_crit_edge, %sw.bb.i.i.nvkm_outp_xlat.exit.i_crit_edge, %entry.nvkm_outp_xlat.exit.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 9, ptr noundef null) #7
  br label %nvkm_outp_init_route.exit

switch.hole_check:                                ; preds = %sw.bb.i.i
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %12 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.lobit.not = icmp eq i8 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.nvkm_outp_xlat.exit.i_crit_edge, label %switch.lookup

switch.hole_check.nvkm_outp_xlat.exit.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_init, i32 0, i32 %7
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep6 = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_init.22, i32 0, i32 %7
  %14 = ptrtoint ptr %switch.gep6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load7 = load i32, ptr %switch.gep6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %switch.lookup, %sw.bb8.i.i.if.end.i_crit_edge, %sw.bb8.i.i.if.end.i_crit_edge8
  %type.0.ph.i = phi i32 [ 2, %sw.bb8.i.i.if.end.i_crit_edge ], [ 2, %sw.bb8.i.i.if.end.i_crit_edge8 ], [ %switch.load, %switch.lookup ]
  %retval.0.i.ph.i = phi i32 [ 2, %sw.bb8.i.i.if.end.i_crit_edge ], [ 2, %sw.bb8.i.i.if.end.i_crit_edge8 ], [ %switch.load7, %switch.lookup ]
  %call2.i = tail call ptr @nvkm_ior_find(ptr noundef %1, i32 noundef %type.0.ph.i, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 9, ptr noundef null) #7
  br label %nvkm_outp_init_route.exit

if.end21.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call2.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool22.not.i = icmp eq ptr %18, null
  br i1 %tobool22.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end21.i
  %call27.i = call i32 %18(ptr noundef %outp, ptr noundef nonnull %link.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %do.body30.i, label %if.then23.i.if.end53.i_crit_edge

if.then23.i.if.end53.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

do.body30.i:                                      ; preds = %if.then23.i
  %19 = ptrtoint ptr %disp1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disp1.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 5
  %21 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp33.i = icmp ugt i32 %22, 3
  br i1 %cmp33.i, label %do.end37.i, label %do.body30.i.nvkm_outp_init_route.exit_crit_edge

do.body30.i.nvkm_outp_init_route.exit_crit_edge:  ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_init_route.exit

do.end37.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 4
  %index.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %hasht.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hasht.i, align 4
  %conv.i = zext i16 %30 to i32
  %hashm.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hashm.i, align 2
  %conv39.i = zext i16 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %28, i32 noundef %conv.i, i32 noundef %conv39.i) #10
  br label %nvkm_outp_init_route.exit

if.else.i:                                        ; preds = %if.end21.i
  %or.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  %33 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %or.i, align 1
  %35 = tail call i8 @llvm.cttz.i8(i8 %34, i1 true) #7, !range !52
  %36 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %iszero.i = icmp eq i8 %34, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %36
  %type48.i = getelementptr inbounds %struct.nvkm_ior, ptr %call2.i, i32 0, i32 2
  %37 = ptrtoint ptr %type48.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp49.i = icmp eq i32 %38, 1
  br i1 %cmp49.i, label %cond.true.i, label %if.else.i.cond.end.i_crit_edge

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %41, %cond.true.i ], [ 0, %if.else.i.cond.end.i_crit_edge ]
  %42 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.i, ptr %link.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %cond.end.i, %if.then23.i.if.end53.i_crit_edge
  %id.0.i = phi i32 [ %call27.i, %if.then23.i.if.end53.i_crit_edge ], [ %sub.i, %cond.end.i ]
  %call54.i = call ptr @nvkm_ior_find(ptr noundef %1, i32 noundef %type.0.ph.i, i32 noundef %id.0.i) #7
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %do.end69.i, label %if.end83.i

do.end69.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  br label %nvkm_outp_init_route.exit

if.end83.i:                                       ; preds = %if.end53.i
  %43 = ptrtoint ptr %call54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call54.i, align 4
  %state.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state.i, align 4
  %arm.i = getelementptr inbounds %struct.nvkm_ior, ptr %call54.i, i32 0, i32 7
  call void %46(ptr noundef nonnull %call54.i, ptr noundef %arm.i) #7
  %head.i = getelementptr inbounds %struct.nvkm_ior, ptr %call54.i, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i = load i32, ptr %head.i, align 4
  %48 = and i32 %bf.load.i, 8355840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool86.not.i = icmp ne i32 %48, 0
  %bf.lshr90.i = lshr i32 %bf.load.i, 25
  %bf.clear91.i = and i32 %bf.lshr90.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear91.i, i32 %retval.0.i.ph.i)
  %cmp92.not.i = icmp eq i32 %bf.clear91.i, %retval.0.i.ph.i
  %or.cond.i = select i1 %tobool86.not.i, i1 %cmp92.not.i, i1 false
  %49 = ptrtoint ptr %disp1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %disp1.i, align 4
  %debug160.i = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 5
  %51 = ptrtoint ptr %debug160.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp161.i = icmp ugt i32 %52, 3
  br i1 %or.cond.i, label %do.body153.i, label %do.body95.i

do.body95.i:                                      ; preds = %if.end83.i
  br i1 %cmp161.i, label %do.end108.i, label %do.body95.i.if.end130.i_crit_edge

do.body95.i.if.end130.i_crit_edge:                ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130.i

do.end108.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #9
  %device109.i = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 1
  %53 = ptrtoint ptr %device109.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device109.i, align 4
  %dev110.i = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev110.i, align 8
  %name111.i = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 4
  %index113.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %57 = ptrtoint ptr %index113.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index113.i, align 4
  %hasht115.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %hasht115.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hasht115.i, align 4
  %conv116.i = zext i16 %60 to i32
  %hashm118.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %hashm118.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hashm118.i, align 2
  %conv119.i = zext i16 %62 to i32
  %bf.lshr123.i = lshr i32 %bf.load.i, 15
  %bf.clear124.i = and i32 %bf.lshr123.i, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.17, ptr noundef %name111.i, i32 noundef %58, i32 noundef %conv116.i, i32 noundef %conv119.i, i32 noundef %bf.clear124.i, i32 noundef %bf.clear91.i, i32 noundef %retval.0.i.ph.i) #10
  br label %if.end130.i

if.end130.i:                                      ; preds = %do.end108.i, %do.body95.i.if.end130.i_crit_edge
  %63 = ptrtoint ptr %call54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call54.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool138.not.i = icmp eq ptr %66, null
  br i1 %tobool138.not.i, label %if.end130.i.nvkm_outp_init_route.exit_crit_edge, label %land.lhs.true.i

if.end130.i.nvkm_outp_init_route.exit_crit_edge:  ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_init_route.exit

land.lhs.true.i:                                  ; preds = %if.end130.i
  %67 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load141.i = load i32, ptr %head.i, align 4
  %68 = and i32 %bf.load141.i, 8355840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool144.not.i = icmp eq i32 %68, 0
  br i1 %tobool144.not.i, label %land.lhs.true145.i, label %land.lhs.true.i.nvkm_outp_init_route.exit_crit_edge

land.lhs.true.i.nvkm_outp_init_route.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_init_route.exit

land.lhs.true145.i:                               ; preds = %land.lhs.true.i
  %type147.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %type147.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type147.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %70)
  %cmp148.i = icmp eq i32 %70, 6
  br i1 %cmp148.i, label %if.then150.i, label %land.lhs.true145.i.nvkm_outp_init_route.exit_crit_edge

land.lhs.true145.i.nvkm_outp_init_route.exit_crit_edge: ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_init_route.exit

if.then150.i:                                     ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @nvkm_dp_disable(ptr noundef %outp, ptr noundef nonnull %call54.i) #7
  br label %nvkm_outp_init_route.exit

do.body153.i:                                     ; preds = %if.end83.i
  br i1 %cmp161.i, label %do.end166.i, label %do.body153.i.if.end185.i_crit_edge

do.body153.i.if.end185.i_crit_edge:               ; preds = %do.body153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.i

do.end166.i:                                      ; preds = %do.body153.i
  call void @__sanitizer_cov_trace_pc() #9
  %device167.i = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 1
  %71 = ptrtoint ptr %device167.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device167.i, align 4
  %dev168.i = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev168.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev168.i, align 8
  %name169.i = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 4
  %index171.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %75 = ptrtoint ptr %index171.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index171.i, align 4
  %hasht173.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %hasht173.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %hasht173.i, align 4
  %conv174.i = zext i16 %78 to i32
  %hashm176.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %hashm176.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %hashm176.i, align 2
  %conv177.i = zext i16 %80 to i32
  %name178.i = getelementptr inbounds %struct.nvkm_ior, ptr %call54.i, i32 0, i32 4
  %bf.lshr183.i = lshr i32 %bf.load.i, 23
  %bf.clear184.i = and i32 %bf.lshr183.i, 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.20, ptr noundef %name169.i, i32 noundef %76, i32 noundef %conv174.i, i32 noundef %conv177.i, ptr noundef %name178.i, i32 noundef %bf.clear184.i) #10
  br label %if.end185.i

if.end185.i:                                      ; preds = %do.end166.i, %do.body153.i.if.end185.i_crit_edge
  %81 = ptrtoint ptr %arm.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %outp, ptr %arm.i, align 4
  br label %nvkm_outp_init_route.exit

nvkm_outp_init_route.exit:                        ; preds = %if.end185.i, %if.then150.i, %land.lhs.true145.i.nvkm_outp_init_route.exit_crit_edge, %land.lhs.true.i.nvkm_outp_init_route.exit_crit_edge, %if.end130.i.nvkm_outp_init_route.exit_crit_edge, %do.end69.i, %do.end37.i, %do.body30.i.nvkm_outp_init_route.exit_crit_edge, %do.end.i, %nvkm_outp_xlat.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link.i) #7
  %82 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %outp, align 4
  %init = getelementptr inbounds %struct.nvkm_outp_func, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %85, null
  br i1 %tobool.not, label %nvkm_outp_init_route.exit.if.end_crit_edge, label %if.then

nvkm_outp_init_route.exit.if.end_crit_edge:       ; preds = %nvkm_outp_init_route.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %nvkm_outp_init_route.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %85(ptr noundef %outp) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %nvkm_outp_init_route.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_outp_del(ptr nocapture noundef %poutp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %poutp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poutp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.then23.critedge, !prof !53

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 288, i32 noundef 9, ptr noundef null) #7
  br label %if.end30

if.then23.critedge:                               ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.then23.critedge.if.end29_crit_edge, label %if.then26

if.then23.critedge.if.end29_crit_edge:            ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr %5(ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %poutp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %poutp, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.critedge.if.end29_crit_edge
  %7 = ptrtoint ptr %poutp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %poutp, align 4
  tail call void @kfree(ptr noundef %8) #7
  %9 = ptrtoint ptr %poutp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %poutp, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %do.end, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_ctor(ptr noundef %func, ptr noundef %disp, i32 noundef %index, ptr nocapture noundef readonly %dcbE, ptr nocapture noundef %outp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %i2c1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %4 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %outp, align 4
  %disp3 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %5 = ptrtoint ptr %disp3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %disp, ptr %disp3, align 4
  %index4 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %6 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %index4, align 4
  %info = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %info, ptr %dcbE, i32 40)
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 4
  %8 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_index, align 4
  %conv = zext i8 %9 to i32
  %call = tail call ptr @nvkm_i2c_bus_find(ptr noundef %3, i32 noundef %conv) #7
  %i2c5 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 4
  %10 = ptrtoint ptr %i2c5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %i2c5, align 4
  %11 = ptrtoint ptr %disp3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disp3, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp = icmp ugt i32 %14, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %device12 = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device12, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index4, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hasht, align 4
  %conv15 = zext i16 %22 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hashm, align 2
  %conv17 = zext i16 %24 to i32
  %type19 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %type19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type19, align 4
  %location = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %location, align 4
  %conv21 = zext i8 %28 to i32
  %or = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %or, align 1
  %conv23 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp26 = icmp sgt i32 %26, 1
  br i1 %cmp26, label %cond.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %33, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %connector = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %connector to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %connector, align 2
  %conv30 = zext i8 %35 to i32
  %i2c_index32 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %i2c_index32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_index32, align 4
  %conv33 = zext i8 %37 to i32
  %bus = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bus, align 1
  %conv35 = zext i8 %39 to i32
  %heads = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 5
  %40 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %heads, align 1
  %conv37 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %20, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %26, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %cond, i32 noundef %conv30, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37) #10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  %location.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %location.i, align 4
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %43, label %if.end._crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb8.i
  ]

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %51

sw.bb.i:                                          ; preds = %if.end
  %type2.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %47 = icmp ult i32 %46, 7
  br i1 %47, label %switch.hole_check, label %sw.bb.i._crit_edge

sw.bb.i._crit_edge:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %51

sw.bb8.i:                                         ; preds = %if.end
  %type10.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type10.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %49, label %sw.bb8.i._crit_edge [
    i32 2, label %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge
    i32 6, label %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge73
  ]

sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge73:  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.thread

sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge:    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.thread

sw.bb8.i._crit_edge:                              ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %51

51:                                               ; preds = %switch.hole_check._crit_edge, %sw.bb8.i._crit_edge, %sw.bb.i._crit_edge, %if.end._crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 9, ptr noundef null) #7
  br label %nvkm_outp_xlat.exit.thread

switch.hole_check:                                ; preds = %sw.bb.i
  %switch.maskindex = trunc i32 %46 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %52 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %switch.lobit.not = icmp eq i8 %52, 0
  br i1 %switch.lobit.not, label %switch.hole_check._crit_edge, label %switch.hole_check.nvkm_outp_xlat.exit.thread_crit_edge

switch.hole_check.nvkm_outp_xlat.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_outp_xlat.exit.thread

switch.hole_check._crit_edge:                     ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %51

nvkm_outp_xlat.exit.thread:                       ; preds = %switch.hole_check.nvkm_outp_xlat.exit.thread_crit_edge, %51, %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge, %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge73
  %53 = phi i32 [ -19, %51 ], [ 0, %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge ], [ 0, %sw.bb8.i.nvkm_outp_xlat.exit.thread_crit_edge73 ], [ 0, %switch.hole_check.nvkm_outp_xlat.exit.thread_crit_edge ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_new(ptr noundef %disp, i32 noundef %index, ptr nocapture noundef readonly %dcbE, ptr nocapture noundef writeonly %poutp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #11
  %1 = ptrtoint ptr %poutp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %poutp, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @nvkm_outp_ctor(ptr noundef nonnull @nvkm_outp, ptr noundef %disp, i32 noundef %index, ptr noundef %dcbE, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_dp_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 40, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_outp_route._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_outp_route._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 49, i32 4}
!10 = !{ptr @nvkm_outp_route._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_outp_route._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 93, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvkm_outp_release._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvkm_outp_release._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 149, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nvkm_outp_acquire._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_outp_acquire._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 310, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nvkm_outp_ctor._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_outp_ctor._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 241, i32 4}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nvkm_outp_init_route._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_outp_init_route._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 259, i32 3}
!34 = !{ptr @nvkm_outp_init_route._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvkm_outp_init_route._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 272, i32 2}
!38 = !{ptr @nvkm_outp_init_route._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvkm_outp_init_route._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @nvkm_outp, !41, !"nvkm_outp", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c", i32 326, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{i8 0, i8 9}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i32 0, i32 33}
!55 = !{!"auto-init"}
