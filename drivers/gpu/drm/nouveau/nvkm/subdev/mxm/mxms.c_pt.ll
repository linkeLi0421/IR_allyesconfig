; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mxms_odev = type { i8, i8, i8, i8 }

@mxms_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unknown version %d.%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxms_version\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxms_version._entry_ptr = internal global ptr @mxms_version._entry, section ".printk_index", align 4
@mxms_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: checksum invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxms_checksum\00", [18 x i8] zeroinitializer }, align 32
@mxms_checksum._entry_ptr = internal global ptr @mxms_checksum._entry, section ".printk_index", align 4
@mxms_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: signature invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxms_valid\00", [21 x i8] zeroinitializer }, align 32
@mxms_valid._entry_ptr = internal global ptr @mxms_valid._entry, section ".printk_index", align 4
@mxms_foreach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unknown descriptor type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxms_foreach\00", [19 x i8] zeroinitializer }, align 32
@mxms_foreach._entry_ptr = internal global ptr @mxms_foreach._entry, section ".printk_index", align 4
@mxms_foreach.mxms_desc = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ODS\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCCS\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TS\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IPS\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GSD\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSS\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCS\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCS\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@mxms_foreach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %4s: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@mxms_foreach._entry_ptr.22 = internal global ptr @mxms_foreach._entry.20, section ".printk_index", align 4
@mxms_foreach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:       %s\0A\00", [18 x i8] zeroinitializer }, align 32
@mxms_foreach._entry_ptr.25 = internal global ptr @mxms_foreach._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 513, i64 768]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 513, i64 768]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 513, i64 768]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 513, i64 768]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 513, i64 768]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 50, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 74, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 85, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 144, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"mxms_desc\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 149, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 158, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 161, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 165, i32 5 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @mxms_checksum._entry, ptr @mxms_checksum._entry_ptr, ptr @mxms_foreach._entry, ptr @mxms_foreach._entry.20, ptr @mxms_foreach._entry.23, ptr @mxms_foreach._entry_ptr, ptr @mxms_foreach._entry_ptr.22, ptr @mxms_foreach._entry_ptr.25, ptr @mxms_valid._entry, ptr @mxms_valid._entry_ptr, ptr @mxms_version._entry, ptr @mxms_version._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mxms_foreach.mxms_desc, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_foreach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_foreach.mxms_desc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_foreach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxms_foreach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mxms_version(ptr noundef %mxm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mxms.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %0 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxms.i, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %1, i32 5
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %or = or i32 %shl, %conv2
  %trunc = trunc i32 %or to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.body [
    i16 512, label %entry.cleanup_crit_edge
    i16 513, label %entry.cleanup_crit_edge21
    i16 768, label %entry.cleanup_crit_edge22
  ]

entry.cleanup_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge21, %entry.cleanup_crit_edge22
  %retval.0 = phi i16 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %trunc, %entry.cleanup_crit_edge ], [ %trunc, %entry.cleanup_crit_edge21 ], [ %trunc, %entry.cleanup_crit_edge22 ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mxms_headerlen(ptr nocapture readnone %mxm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mxms_structlen(ptr nocapture noundef readonly %mxm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mxms.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %0 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxms.i, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_checksum(ptr noundef %mxm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mxms.i.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %0 = ptrtoint ptr %mxms.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxms.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %add = add i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %tobool.not24 = icmp eq i16 %add, 0
  br i1 %tobool.not24, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %sum.027 = phi i8 [ %add7, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %mxms.026 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %size.025 = phi i16 [ %dec, %while.body.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  %dec = add i16 %size.025, -1
  %incdec.ptr = getelementptr i8, ptr %mxms.026, i32 1
  %4 = ptrtoint ptr %mxms.026 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mxms.026, align 1
  %add7 = add i8 %5, %sum.027
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add7)
  %phi.cmp = icmp eq i8 %add7, 0
  br i1 %phi.cmp, label %while.end.cleanup_crit_edge, label %do.body

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %while.end
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %sum.0.lcssa29 = phi i1 [ true, %while.end.cleanup_crit_edge ], [ false, %do.body.cleanup_crit_edge ], [ false, %do.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %sum.0.lcssa29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_valid(ptr noundef %mxm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mxms.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %0 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxms.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1598904397, i32 %3)
  %cmp.not = icmp eq i32 %3, 1598904397
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp ugt i32 %5, 3
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %name) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %1, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %1, i32 5
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %13 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %trunc.i = trunc i32 %or.i to i16
  %14 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %trunc.i, label %do.body.i [
    i16 512, label %if.end6.lor.lhs.false_crit_edge
    i16 513, label %if.end6.lor.lhs.false_crit_edge25
    i16 768, label %if.end6.lor.lhs.false_crit_edge26
  ]

if.end6.lor.lhs.false_crit_edge26:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end6.lor.lhs.false_crit_edge25:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end6.lor.lhs.false_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

do.body.i:                                        ; preds = %if.end6
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %15 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp ugt i32 %16, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6.lor.lhs.false_crit_edge, %if.end6.lor.lhs.false_crit_edge25, %if.end6.lor.lhs.false_crit_edge26
  %21 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mxms.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i.i, align 2
  %add.i = add i16 %24, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i)
  %tobool.not24.i = icmp eq i16 %add.i, 0
  br i1 %tobool.not24.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.body.i_crit_edge

lor.lhs.false.while.body.i_crit_edge:             ; preds = %lor.lhs.false
  br label %while.body.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %lor.lhs.false.while.body.i_crit_edge
  %sum.027.i = phi i8 [ %add7.i, %while.body.i.while.body.i_crit_edge ], [ 0, %lor.lhs.false.while.body.i_crit_edge ]
  %mxms.026.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %22, %lor.lhs.false.while.body.i_crit_edge ]
  %size.025.i = phi i16 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %lor.lhs.false.while.body.i_crit_edge ]
  %dec.i = add i16 %size.025.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %mxms.026.i, i32 1
  %25 = ptrtoint ptr %mxms.026.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mxms.026.i, align 1
  %add7.i = add i8 %26, %sum.027.i
  %tobool.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add7.i)
  %phi.cmp.i = icmp eq i8 %add7.i, 0
  br i1 %phi.cmp.i, label %while.end.i.cleanup_crit_edge, label %do.body.i18

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i18:                                      ; preds = %while.end.i
  %debug.i16 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %27 = ptrtoint ptr %debug.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i17 = icmp ugt i32 %28, 3
  br i1 %cmp.i17, label %do.end.i22, label %do.body.i18.cleanup_crit_edge

do.body.i18.cleanup_crit_edge:                    ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i22:                                       ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  %device.i19 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %29 = ptrtoint ptr %device.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i19, align 4
  %dev.i20 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i20, align 8
  %name.i21 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef %name.i21) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i22, %do.body.i18.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.body.cleanup_crit_edge ], [ true, %while.end.i.cleanup_crit_edge ], [ false, %do.body.i18.cleanup_crit_edge ], [ false, %do.end.i22 ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mxms_foreach(ptr noundef %mxm, i8 noundef zeroext %types, ptr noundef readonly %exec, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mxms.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %0 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxms.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %arrayidx.i = getelementptr i8, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv4 = zext i16 %3 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 -1
  %cmp225 = icmp ult ptr %add.ptr, %add.ptr6
  br i1 %cmp225, label %while.body.lr.ph, label %entry.cleanup139_crit_edge

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

while.body.lr.ph:                                 ; preds = %entry
  %debug.i197 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %device.i200 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %name.i202 = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  %cmp52 = icmp eq ptr %exec, null
  %conv124 = zext i8 %types to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %desc.0226 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr135, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %desc.0226 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %desc.0226, align 1
  %6 = and i8 %5, 15
  %conv10 = zext i8 %6 to i32
  %7 = zext i32 %conv10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %conv10, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %while.body.sw.epilog_crit_edge
    i32 2, label %while.body.sw.epilog_crit_edge239
    i32 3, label %while.body.sw.epilog_crit_edge240
    i32 4, label %sw.bb16
    i32 5, label %sw.bb21
    i32 6, label %sw.bb22
    i32 7, label %sw.bb35
  ]

while.body.sw.epilog_crit_edge240:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.sw.epilog_crit_edge239:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %8 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mxms.i, align 4
  %arrayidx.i188 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i188, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %9, i32 5
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %13 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %trunc.i = trunc i32 %or.i to i16
  %14 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %trunc.i, label %do.body.i [
    i16 512, label %sw.bb.mxms_version.exit_crit_edge
    i16 513, label %sw.bb.mxms_version.exit_crit_edge241
    i16 768, label %sw.bb.mxms_version.exit_crit_edge242
  ]

sw.bb.mxms_version.exit_crit_edge242:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit

sw.bb.mxms_version.exit_crit_edge241:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit

sw.bb.mxms_version.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit

do.body.i:                                        ; preds = %sw.bb
  %15 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp ugt i32 %16, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.sw.epilog_crit_edge

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %device.i200 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i200, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %name.i202, i32 noundef %conv.i, i32 noundef %conv2.i) #10
  br label %sw.epilog

mxms_version.exit:                                ; preds = %sw.bb.mxms_version.exit_crit_edge, %sw.bb.mxms_version.exit_crit_edge241, %sw.bb.mxms_version.exit_crit_edge242
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %trunc.i)
  %cmp13 = icmp ugt i16 %trunc.i, 767
  %spec.select = select i1 %cmp13, i32 8, i32 6
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %desc.0226 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %desc.0226, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %and19 = lshr i32 %23, 20
  %24 = trunc i32 %and19 to i8
  %conv20 = and i8 %24, 31
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  %25 = ptrtoint ptr %mxms.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mxms.i, align 4
  %arrayidx.i190 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i190, align 1
  %conv.i191 = zext i8 %28 to i32
  %shl.i192 = shl nuw nsw i32 %conv.i191, 8
  %arrayidx1.i193 = getelementptr i8, ptr %26, i32 5
  %29 = ptrtoint ptr %arrayidx1.i193 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i193, align 1
  %conv2.i194 = zext i8 %30 to i32
  %or.i195 = or i32 %shl.i192, %conv2.i194
  %trunc.i196 = trunc i32 %or.i195 to i16
  %31 = zext i16 %trunc.i196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %trunc.i196, label %do.body.i199 [
    i16 512, label %sw.bb22.mxms_version.exit205_crit_edge
    i16 513, label %sw.bb22.mxms_version.exit205_crit_edge243
    i16 768, label %sw.bb22.mxms_version.exit205_crit_edge244
  ]

sw.bb22.mxms_version.exit205_crit_edge244:        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit205

sw.bb22.mxms_version.exit205_crit_edge243:        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit205

sw.bb22.mxms_version.exit205_crit_edge:           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %mxms_version.exit205

do.body.i199:                                     ; preds = %sw.bb22
  %32 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i198 = icmp ugt i32 %33, 3
  br i1 %cmp.i198, label %do.end.i203, label %do.body.i199.sw.epilog_crit_edge

do.body.i199.sw.epilog_crit_edge:                 ; preds = %do.body.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i203:                                      ; preds = %do.body.i199
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %device.i200 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i200, align 4
  %dev.i201 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i201 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i201, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef %name.i202, i32 noundef %conv.i191, i32 noundef %conv2.i194) #10
  br label %sw.epilog

mxms_version.exit205:                             ; preds = %sw.bb22.mxms_version.exit205_crit_edge, %sw.bb22.mxms_version.exit205_crit_edge243, %sw.bb22.mxms_version.exit205_crit_edge244
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %trunc.i196)
  %cmp25 = icmp ugt i16 %trunc.i196, 767
  br i1 %cmp25, label %if.then27, label %mxms_version.exit205.sw.epilog_crit_edge

mxms_version.exit205.sw.epilog_crit_edge:         ; preds = %mxms_version.exit205
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then27:                                        ; preds = %mxms_version.exit205
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28 = getelementptr i8, ptr %desc.0226, i32 1
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx28, align 1
  %40 = lshr i8 %39, 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx36 = getelementptr i8, ptr %desc.0226, i32 1
  %41 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx36, align 1
  %43 = and i8 %42, 7
  br label %sw.epilog

do.body:                                          ; preds = %while.body
  %44 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp40 = icmp ugt i32 %45, 3
  br i1 %cmp40, label %do.end, label %do.body.cleanup139_crit_edge

do.body.cleanup139_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %device.i200 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i200, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.9, ptr noundef %name.i202, i32 noundef %conv10) #10
  br label %cleanup139

sw.epilog:                                        ; preds = %sw.bb35, %if.then27, %mxms_version.exit205.sw.epilog_crit_edge, %do.end.i203, %do.body.i199.sw.epilog_crit_edge, %sw.bb21, %sw.bb16, %mxms_version.exit, %do.end.i, %do.body.i.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge239, %while.body.sw.epilog_crit_edge240
  %headerlen.0 = phi i32 [ 8, %sw.bb35 ], [ 4, %if.then27 ], [ 8, %sw.bb21 ], [ 4, %sw.bb16 ], [ 4, %while.body.sw.epilog_crit_edge ], [ 4, %while.body.sw.epilog_crit_edge239 ], [ 4, %while.body.sw.epilog_crit_edge240 ], [ 8, %mxms_version.exit205.sw.epilog_crit_edge ], [ 6, %do.end.i ], [ 6, %do.body.i.sw.epilog_crit_edge ], [ 8, %do.end.i203 ], [ 8, %do.body.i199.sw.epilog_crit_edge ], [ %spec.select, %mxms_version.exit ]
  %cmp92219 = phi i1 [ true, %sw.bb35 ], [ true, %if.then27 ], [ false, %sw.bb21 ], [ true, %sw.bb16 ], [ false, %while.body.sw.epilog_crit_edge ], [ false, %while.body.sw.epilog_crit_edge239 ], [ false, %while.body.sw.epilog_crit_edge240 ], [ false, %mxms_version.exit205.sw.epilog_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i.sw.epilog_crit_edge ], [ false, %do.end.i203 ], [ false, %do.body.i199.sw.epilog_crit_edge ], [ false, %mxms_version.exit ]
  %cmp92.1 = phi i1 [ true, %sw.bb35 ], [ true, %if.then27 ], [ false, %sw.bb21 ], [ false, %sw.bb16 ], [ false, %while.body.sw.epilog_crit_edge ], [ false, %while.body.sw.epilog_crit_edge239 ], [ false, %while.body.sw.epilog_crit_edge240 ], [ false, %mxms_version.exit205.sw.epilog_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i.sw.epilog_crit_edge ], [ false, %do.end.i203 ], [ false, %do.body.i199.sw.epilog_crit_edge ], [ false, %mxms_version.exit ]
  %cmp92.3 = phi i1 [ false, %sw.bb35 ], [ true, %if.then27 ], [ false, %sw.bb21 ], [ false, %sw.bb16 ], [ false, %while.body.sw.epilog_crit_edge ], [ false, %while.body.sw.epilog_crit_edge239 ], [ false, %while.body.sw.epilog_crit_edge240 ], [ false, %mxms_version.exit205.sw.epilog_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i.sw.epilog_crit_edge ], [ false, %do.end.i203 ], [ false, %do.body.i199.sw.epilog_crit_edge ], [ false, %mxms_version.exit ]
  %recordlen.0 = phi i32 [ 4, %sw.bb35 ], [ 8, %if.then27 ], [ 0, %sw.bb21 ], [ 2, %sw.bb16 ], [ 0, %while.body.sw.epilog_crit_edge ], [ 0, %while.body.sw.epilog_crit_edge239 ], [ 0, %while.body.sw.epilog_crit_edge240 ], [ 0, %mxms_version.exit205.sw.epilog_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body.i.sw.epilog_crit_edge ], [ 0, %do.end.i203 ], [ 0, %do.body.i199.sw.epilog_crit_edge ], [ 0, %mxms_version.exit ]
  %entries.0 = phi i8 [ %43, %sw.bb35 ], [ %40, %if.then27 ], [ 0, %sw.bb21 ], [ %conv20, %sw.bb16 ], [ 0, %while.body.sw.epilog_crit_edge ], [ 0, %while.body.sw.epilog_crit_edge239 ], [ 0, %while.body.sw.epilog_crit_edge240 ], [ 0, %mxms_version.exit205.sw.epilog_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body.i.sw.epilog_crit_edge ], [ 0, %do.end.i203 ], [ 0, %do.body.i199.sw.epilog_crit_edge ], [ 0, %mxms_version.exit ]
  %50 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp50 = icmp ugt i32 %51, 3
  %or.cond = and i1 %cmp52, %cmp50
  br i1 %or.cond, label %for.body.preheader, label %sw.epilog.if.end123_crit_edge

sw.epilog.if.end123_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

for.body.preheader:                               ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data) #7
  %52 = call ptr @memset(ptr %data, i32 255, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %j.0217.in = phi i32 [ %j.0217, %for.body.for.body_crit_edge ], [ %headerlen.0, %for.body.preheader ]
  %ptr.0216 = phi ptr [ %add.ptr62, %for.body.for.body_crit_edge ], [ %data, %for.body.preheader ]
  %j.0217 = add nsw i32 %j.0217.in, -1
  %arrayidx59 = getelementptr i8, ptr %desc.0226, i32 %j.0217
  %53 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %54 to i32
  %call61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %ptr.0216, ptr noundef nonnull @.str.19, i32 noundef %conv60)
  %add.ptr62 = getelementptr i8, ptr %ptr.0216, i32 %call61
  %cmp57 = icmp ugt i32 %j.0217.in, 1
  br i1 %cmp57, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr64 = getelementptr i8, ptr %desc.0226, i32 %headerlen.0
  %55 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp68 = icmp ugt i32 %56, 3
  br i1 %cmp68, label %do.end73, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end73:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %device.i200 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i200, align 4
  %dev75 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev75, align 8
  %arrayidx78 = getelementptr [8 x ptr], ptr @mxms_foreach.mxms_desc, i32 0, i32 %conv10
  %61 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx78, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.21, ptr noundef %name.i202, ptr noundef %62, ptr noundef nonnull %data) #10
  br label %if.end80

if.end80:                                         ; preds = %do.end73, %for.end.if.end80_crit_edge
  %conv84 = zext i8 %entries.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %entries.0)
  %cmp85222.not = icmp eq i8 %entries.0, 0
  br i1 %cmp85222.not, label %if.end80.for.end122_crit_edge, label %for.cond91.preheader.preheader

if.end80.for.end122_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.cond91.preheader.preheader:                   ; preds = %if.end80
  %j.1221 = add nsw i32 %recordlen.0, -1
  %j.1221.1 = add nsw i32 %recordlen.0, -2
  %j.1221.2 = add nsw i32 %recordlen.0, -3
  %j.1221.3 = add nsw i32 %recordlen.0, -4
  %j.1221.4 = add nsw i32 %recordlen.0, -5
  %j.1221.5 = add nsw i32 %recordlen.0, -6
  %j.1221.6 = add nsw i32 %recordlen.0, -7
  %j.1221.7 = add nsw i32 %recordlen.0, -8
  br label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %if.end116.for.cond91.preheader_crit_edge, %for.cond91.preheader.preheader
  %i.0224 = phi i32 [ %inc, %if.end116.for.cond91.preheader_crit_edge ], [ 0, %for.cond91.preheader.preheader ]
  %dump.0223 = phi ptr [ %add.ptr121, %if.end116.for.cond91.preheader_crit_edge ], [ %add.ptr64, %for.cond91.preheader.preheader ]
  br i1 %cmp92219, label %for.body94, label %for.cond91.preheader.do.body102_crit_edge

for.cond91.preheader.do.body102_crit_edge:        ; preds = %for.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

for.body94:                                       ; preds = %for.cond91.preheader
  %arrayidx95 = getelementptr i8, ptr %dump.0223, i32 %j.1221
  %63 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %64 to i32
  %call97 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %data, ptr noundef nonnull @.str.19, i32 noundef %conv96)
  %add.ptr98 = getelementptr i8, ptr %data, i32 %call97
  %arrayidx95.1 = getelementptr i8, ptr %dump.0223, i32 %j.1221.1
  %65 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx95.1, align 1
  %conv96.1 = zext i8 %66 to i32
  %call97.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98, ptr noundef nonnull @.str.19, i32 noundef %conv96.1)
  br i1 %cmp92.1, label %for.body94.2, label %for.body94.do.body102_crit_edge

for.body94.do.body102_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

for.body94.2:                                     ; preds = %for.body94
  %add.ptr98.1 = getelementptr i8, ptr %add.ptr98, i32 %call97.1
  %arrayidx95.2 = getelementptr i8, ptr %dump.0223, i32 %j.1221.2
  %67 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx95.2, align 1
  %conv96.2 = zext i8 %68 to i32
  %call97.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.1, ptr noundef nonnull @.str.19, i32 noundef %conv96.2)
  %add.ptr98.2 = getelementptr i8, ptr %add.ptr98.1, i32 %call97.2
  %arrayidx95.3 = getelementptr i8, ptr %dump.0223, i32 %j.1221.3
  %69 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx95.3, align 1
  %conv96.3 = zext i8 %70 to i32
  %call97.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.2, ptr noundef nonnull @.str.19, i32 noundef %conv96.3)
  br i1 %cmp92.3, label %for.body94.4, label %for.body94.2.do.body102_crit_edge

for.body94.2.do.body102_crit_edge:                ; preds = %for.body94.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

for.body94.4:                                     ; preds = %for.body94.2
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr98.3 = getelementptr i8, ptr %add.ptr98.2, i32 %call97.3
  %arrayidx95.4 = getelementptr i8, ptr %dump.0223, i32 %j.1221.4
  %71 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx95.4, align 1
  %conv96.4 = zext i8 %72 to i32
  %call97.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.3, ptr noundef nonnull @.str.19, i32 noundef %conv96.4)
  %add.ptr98.4 = getelementptr i8, ptr %add.ptr98.3, i32 %call97.4
  %arrayidx95.5 = getelementptr i8, ptr %dump.0223, i32 %j.1221.5
  %73 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx95.5, align 1
  %conv96.5 = zext i8 %74 to i32
  %call97.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.4, ptr noundef nonnull @.str.19, i32 noundef %conv96.5)
  %add.ptr98.5 = getelementptr i8, ptr %add.ptr98.4, i32 %call97.5
  %arrayidx95.6 = getelementptr i8, ptr %dump.0223, i32 %j.1221.6
  %75 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx95.6, align 1
  %conv96.6 = zext i8 %76 to i32
  %call97.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.5, ptr noundef nonnull @.str.19, i32 noundef %conv96.6)
  %add.ptr98.6 = getelementptr i8, ptr %add.ptr98.5, i32 %call97.6
  %arrayidx95.7 = getelementptr i8, ptr %dump.0223, i32 %j.1221.7
  %77 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx95.7, align 1
  %conv96.7 = zext i8 %78 to i32
  %call97.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr98.6, ptr noundef nonnull @.str.19, i32 noundef %conv96.7)
  br label %do.body102

do.body102:                                       ; preds = %for.body94.4, %for.body94.2.do.body102_crit_edge, %for.body94.do.body102_crit_edge, %for.cond91.preheader.do.body102_crit_edge
  %79 = ptrtoint ptr %debug.i197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp105 = icmp ugt i32 %80, 3
  br i1 %cmp105, label %do.end110, label %do.body102.if.end116_crit_edge

do.body102.if.end116_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

do.end110:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %device.i200 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device.i200, align 4
  %dev112 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev112, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.24, ptr noundef %name.i202, ptr noundef nonnull %data) #10
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %do.body102.if.end116_crit_edge
  %inc = add nuw nsw i32 %i.0224, 1
  %add.ptr121 = getelementptr i8, ptr %dump.0223, i32 %recordlen.0
  %exitcond.not = icmp eq i32 %inc, %conv84
  br i1 %exitcond.not, label %if.end116.for.end122_crit_edge, label %if.end116.for.cond91.preheader_crit_edge

if.end116.for.cond91.preheader_crit_edge:         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond91.preheader

if.end116.for.end122_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end122

for.end122:                                       ; preds = %if.end116.for.end122_crit_edge, %if.end80.for.end122_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data) #7
  br label %if.end123

if.end123:                                        ; preds = %for.end122, %sw.epilog.if.end123_crit_edge
  %shl = shl nuw i32 1, %conv10
  %and126 = and i32 %shl, %conv124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool.not = icmp eq i32 %and126, 0
  br i1 %tobool.not, label %if.end123.cleanup_crit_edge, label %if.then127

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then127:                                       ; preds = %if.end123
  %call128 = call zeroext i1 %exec(ptr noundef %mxm, ptr noundef %desc.0226, ptr noundef %info) #7
  br i1 %call128, label %if.then127.cleanup_crit_edge, label %if.then127.cleanup139_crit_edge

if.then127.cleanup139_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then127.cleanup_crit_edge, %if.end123.cleanup_crit_edge
  %conv133 = zext i8 %entries.0 to i32
  %mul = mul nuw nsw i32 %recordlen.0, %conv133
  %add = add nuw nsw i32 %mul, %headerlen.0
  %add.ptr135 = getelementptr i8, ptr %desc.0226, i32 %add
  %cmp = icmp ult ptr %add.ptr135, %add.ptr6
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup139_crit_edge

cleanup.cleanup139_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup139

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup139:                                       ; preds = %cleanup.cleanup139_crit_edge, %if.then127.cleanup139_crit_edge, %do.end, %do.body.cleanup139_crit_edge, %entry.cleanup139_crit_edge
  %cmp213 = phi i1 [ false, %do.body.cleanup139_crit_edge ], [ false, %do.end ], [ true, %entry.cleanup139_crit_edge ], [ true, %cleanup.cleanup139_crit_edge ], [ false, %if.then127.cleanup139_crit_edge ]
  ret i1 %cmp213
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxms_output_device(ptr noundef %mxm, ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pdata, align 1
  %mxms.i.i = getelementptr inbounds %struct.nvkm_mxm, ptr %mxm, i32 0, i32 2
  %2 = ptrtoint ptr %mxms.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mxms.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %3, i32 5
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %trunc.i = trunc i32 %or.i to i16
  %8 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %trunc.i, label %do.body.i [
    i16 512, label %entry.if.end_crit_edge
    i16 513, label %entry.if.end_crit_edge48
    i16 768, label %entry.if.end_crit_edge49
  ]

entry.if.end_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 5
  %9 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp ugt i32 %10, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 1
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %mxm, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge48, %entry.if.end_crit_edge49
  %15 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %conv = zext i32 %15 to i64
  %extract27 = lshr i64 %conv, 8
  %extract.t28 = trunc i64 %extract27 to i8
  %extract31 = lshr i64 %conv, 12
  %extract.t32 = trunc i64 %extract31 to i8
  %extract35 = lshr i64 %conv, 19
  %extract.t36 = trunc i64 %extract35 to i8
  %data.0.off0 = trunc i32 %15 to i8
  %16 = lshr i8 %data.0.off0, 4
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %desc, align 1
  %conv10 = and i8 %extract.t28, 15
  %ddc_port = getelementptr inbounds %struct.mxms_odev, ptr %desc, i32 0, i32 2
  %18 = ptrtoint ptr %ddc_port to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %ddc_port, align 1
  %conv13 = and i8 %extract.t32, 31
  %conn_type = getelementptr inbounds %struct.mxms_odev, ptr %desc, i32 0, i32 1
  %19 = ptrtoint ptr %conn_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %conn_type, align 1
  %conv16 = and i8 %extract.t36, 15
  %dig_conn = getelementptr inbounds %struct.mxms_odev, ptr %desc, i32 0, i32 3
  %20 = ptrtoint ptr %dig_conn to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %dig_conn, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 50, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mxms_version._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mxms_version._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 74, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mxms_checksum._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mxms_checksum._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 85, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mxms_valid._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mxms_valid._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 144, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mxms_foreach._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mxms_foreach._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 150, i32 5}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 150, i32 12}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 150, i32 20}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 150, i32 26}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 151, i32 5}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 151, i32 12}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 151, i32 19}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 151, i32 26}
!39 = !{ptr @mxms_foreach.mxms_desc, !40, !"mxms_desc", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 149, i32 24}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 158, i32 25}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 161, i32 4}
!45 = !{ptr @mxms_foreach._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxms_foreach._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/mxms.c", i32 165, i32 5}
!49 = !{ptr @mxms_foreach._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mxms_foreach._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
