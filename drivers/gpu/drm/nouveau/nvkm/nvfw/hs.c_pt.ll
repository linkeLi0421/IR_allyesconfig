; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.nvfw_hs_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_hs_load_header = type { i32, i32, i32, i32, i32, [0 x i32] }

@nvfw_hs_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: hsHeader:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvfw_hs_header\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr = internal global ptr @nvfw_hs_header._entry, section ".printk_index", align 4
@nvfw_hs_header._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09sigDbgOffset     : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.7 = internal global ptr @nvfw_hs_header._entry.5, section ".printk_index", align 4
@nvfw_hs_header._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09sigDbgSize       : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.10 = internal global ptr @nvfw_hs_header._entry.8, section ".printk_index", align 4
@nvfw_hs_header._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09sigProdOffset    : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.13 = internal global ptr @nvfw_hs_header._entry.11, section ".printk_index", align 4
@nvfw_hs_header._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09sigProdSize      : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.16 = internal global ptr @nvfw_hs_header._entry.14, section ".printk_index", align 4
@nvfw_hs_header._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09patchLoc         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.19 = internal global ptr @nvfw_hs_header._entry.17, section ".printk_index", align 4
@nvfw_hs_header._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09patchSig         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.22 = internal global ptr @nvfw_hs_header._entry.20, section ".printk_index", align 4
@nvfw_hs_header._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09hdrOffset        : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.25 = internal global ptr @nvfw_hs_header._entry.23, section ".printk_index", align 4
@nvfw_hs_header._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09hdrSize          : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_header._entry_ptr.28 = internal global ptr @nvfw_hs_header._entry.26, section ".printk_index", align 4
@nvfw_hs_load_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 47, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: hsLoadHeader:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvfw_hs_load_header\00", [44 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr = internal global ptr @nvfw_hs_load_header._entry, section ".printk_index", align 4
@nvfw_hs_load_header._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09nonSecCodeOff    : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.33 = internal global ptr @nvfw_hs_load_header._entry.31, section ".printk_index", align 4
@nvfw_hs_load_header._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09nonSecCodeSize   : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.36 = internal global ptr @nvfw_hs_load_header._entry.34, section ".printk_index", align 4
@nvfw_hs_load_header._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dataDmaBase      : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.39 = internal global ptr @nvfw_hs_load_header._entry.37, section ".printk_index", align 4
@nvfw_hs_load_header._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dataSize         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.42 = internal global ptr @nvfw_hs_load_header._entry.40, section ".printk_index", align 4
@nvfw_hs_load_header._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09numApps          : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.45 = internal global ptr @nvfw_hs_load_header._entry.43, section ".printk_index", align 4
@nvfw_hs_load_header._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: \09App[%d]           : offset 0x%x size 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@nvfw_hs_load_header._entry_ptr.48 = internal global ptr @nvfw_hs_load_header._entry.46, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 29, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 30, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 31, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 32, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 33, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 34, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 35, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 36, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 37, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 47, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 48, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 50, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 52, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 53, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 54, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 56, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @nvfw_hs_header._entry, ptr @nvfw_hs_header._entry.11, ptr @nvfw_hs_header._entry.14, ptr @nvfw_hs_header._entry.17, ptr @nvfw_hs_header._entry.20, ptr @nvfw_hs_header._entry.23, ptr @nvfw_hs_header._entry.26, ptr @nvfw_hs_header._entry.5, ptr @nvfw_hs_header._entry.8, ptr @nvfw_hs_header._entry_ptr, ptr @nvfw_hs_header._entry_ptr.10, ptr @nvfw_hs_header._entry_ptr.13, ptr @nvfw_hs_header._entry_ptr.16, ptr @nvfw_hs_header._entry_ptr.19, ptr @nvfw_hs_header._entry_ptr.22, ptr @nvfw_hs_header._entry_ptr.25, ptr @nvfw_hs_header._entry_ptr.28, ptr @nvfw_hs_header._entry_ptr.7, ptr @nvfw_hs_load_header._entry, ptr @nvfw_hs_load_header._entry.31, ptr @nvfw_hs_load_header._entry.34, ptr @nvfw_hs_load_header._entry.37, ptr @nvfw_hs_load_header._entry.40, ptr @nvfw_hs_load_header._entry.43, ptr @nvfw_hs_load_header._entry.46, ptr @nvfw_hs_load_header._entry_ptr, ptr @nvfw_hs_load_header._entry_ptr.33, ptr @nvfw_hs_load_header._entry_ptr.36, ptr @nvfw_hs_load_header._entry_ptr.39, ptr @nvfw_hs_load_header._entry_ptr.42, ptr @nvfw_hs_load_header._entry_ptr.45, ptr @nvfw_hs_load_header._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_header._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_hs_load_header._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_hs_header(ptr noundef %subdev, ptr noundef readonly returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end121_crit_edge

entry.if.end121_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end121_crit_edge

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr159 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr159)
  %cmp22 = icmp ugt i32 %.pr159, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end121_crit_edge

if.end16.if.end121_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %sig_dbg_size = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %sig_dbg_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sig_dbg_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr161.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr161.pr)
  %cmp37 = icmp ugt i32 %.pr161.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end121_crit_edge

if.end31.if.end121_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %sig_prod_offset = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %sig_prod_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sig_prod_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr163 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr163)
  %cmp52 = icmp ugt i32 %.pr163, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end121_crit_edge

if.end46.if.end121_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %sig_prod_size = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %sig_prod_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sig_prod_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr165.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr165.pr.pr)
  %cmp67 = icmp ugt i32 %.pr165.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end121_crit_edge

if.end61.if.end121_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %patch_loc = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 4
  %39 = ptrtoint ptr %patch_loc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %patch_loc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr167 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr167)
  %cmp82 = icmp ugt i32 %.pr167, 3
  br i1 %cmp82, label %if.end91, label %if.end76.if.end121_crit_edge

if.end76.if.end121_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end91:                                         ; preds = %if.end76
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %patch_sig = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 5
  %46 = ptrtoint ptr %patch_sig to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %patch_sig, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %47) #5
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr169.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr169.pr.pr)
  %cmp97 = icmp ugt i32 %.pr169.pr.pr, 3
  br i1 %cmp97, label %if.end106, label %if.end91.if.end121_crit_edge

if.end91.if.end121_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

if.end106:                                        ; preds = %if.end91
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev103, align 8
  %hdr_offset = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 6
  %53 = ptrtoint ptr %hdr_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hdr_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %54) #5
  %55 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr171 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr171)
  %cmp112 = icmp ugt i32 %.pr171, 3
  br i1 %cmp112, label %do.end116, label %if.end106.if.end121_crit_edge

if.end106.if.end121_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end121

do.end116:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #4
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev118, align 8
  %hdr_size = getelementptr inbounds %struct.nvfw_hs_header, ptr %data, i32 0, i32 7
  %60 = ptrtoint ptr %hdr_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hdr_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %61) #5
  br label %if.end121

if.end121:                                        ; preds = %do.end116, %if.end106.if.end121_crit_edge, %if.end91.if.end121_crit_edge, %if.end76.if.end121_crit_edge, %if.end61.if.end121_crit_edge, %if.end46.if.end121_crit_edge, %if.end31.if.end121_crit_edge, %if.end16.if.end121_crit_edge, %if.end.if.end121_crit_edge, %entry.if.end121_crit_edge
  ret ptr %data
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_hs_load_header(ptr noundef %subdev, ptr noundef readonly returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end76_crit_edge

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end76_crit_edge

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr133 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr133)
  %cmp22 = icmp ugt i32 %.pr133, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end76_crit_edge

if.end16.if.end76_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %non_sec_code_size = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %non_sec_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr135.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr135.pr)
  %cmp37 = icmp ugt i32 %.pr135.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end76_crit_edge

if.end31.if.end76_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %data_dma_base = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr137 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr137)
  %cmp52 = icmp ugt i32 %.pr137, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end76_crit_edge

if.end46.if.end76_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %data_size = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr139.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr139.pr.pr)
  %cmp67 = icmp ugt i32 %.pr139.pr.pr, 3
  br i1 %cmp67, label %do.end71, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %num_apps = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 4
  %39 = ptrtoint ptr %num_apps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_apps, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %40) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %if.end61.if.end76_crit_edge, %if.end46.if.end76_crit_edge, %if.end31.if.end76_crit_edge, %if.end16.if.end76_crit_edge, %if.end.if.end76_crit_edge, %entry.if.end76_crit_edge
  %num_apps79 = getelementptr inbounds %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 4
  %41 = ptrtoint ptr %num_apps79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_apps79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp80152.not = icmp eq i32 %42, 0
  br i1 %cmp80152.not, label %if.end76.for.end_crit_edge, label %do.body81.lr.ph

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

do.body81.lr.ph:                                  ; preds = %if.end76
  %device89 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name91 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %do.body81

do.body81:                                        ; preds = %if.end97.do.body81_crit_edge, %do.body81.lr.ph
  %i.0153 = phi i32 [ 0, %do.body81.lr.ph ], [ %inc, %if.end97.do.body81_crit_edge ]
  %43 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp84 = icmp ugt i32 %44, 3
  br i1 %cmp84, label %do.end88, label %do.body81.if.end97_crit_edge

do.body81.if.end97_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end97

do.end88:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #4
  %45 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device89, align 4
  %dev90 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev90, align 8
  %mul = shl i32 %i.0153, 1
  %arrayidx = getelementptr %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 5, i32 %mul
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %add95 = or i32 %mul, 1
  %arrayidx96 = getelementptr %struct.nvfw_hs_load_header, ptr %data, i32 0, i32 5, i32 %add95
  %51 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx96, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.47, ptr noundef %name91, i32 noundef %i.0153, i32 noundef %50, i32 noundef %52) #5
  br label %if.end97

if.end97:                                         ; preds = %do.end88, %do.body81.if.end97_crit_edge
  %inc = add nuw i32 %i.0153, 1
  %53 = ptrtoint ptr %num_apps79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_apps79, align 4
  %cmp80 = icmp ult i32 %inc, %54
  br i1 %cmp80, label %if.end97.do.body81_crit_edge, label %if.end97.for.end_crit_edge

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end97.do.body81_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body81

for.end:                                          ; preds = %if.end97.for.end_crit_edge, %if.end76.for.end_crit_edge
  ret ptr %data
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvfw_hs_header._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvfw_hs_header._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 30, i32 2}
!10 = !{ptr @nvfw_hs_header._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvfw_hs_header._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 31, i32 2}
!14 = !{ptr @nvfw_hs_header._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvfw_hs_header._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 32, i32 2}
!18 = !{ptr @nvfw_hs_header._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvfw_hs_header._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 33, i32 2}
!22 = !{ptr @nvfw_hs_header._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvfw_hs_header._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 34, i32 2}
!26 = !{ptr @nvfw_hs_header._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvfw_hs_header._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 35, i32 2}
!30 = !{ptr @nvfw_hs_header._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvfw_hs_header._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 36, i32 2}
!34 = !{ptr @nvfw_hs_header._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvfw_hs_header._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 37, i32 2}
!38 = !{ptr @nvfw_hs_header._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvfw_hs_header._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 47, i32 2}
!42 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvfw_hs_load_header._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvfw_hs_load_header._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 48, i32 2}
!47 = !{ptr @nvfw_hs_load_header._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvfw_hs_load_header._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 50, i32 2}
!51 = !{ptr @nvfw_hs_load_header._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvfw_hs_load_header._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 52, i32 2}
!55 = !{ptr @nvfw_hs_load_header._entry.37, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nvfw_hs_load_header._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 53, i32 2}
!59 = !{ptr @nvfw_hs_load_header._entry.40, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvfw_hs_load_header._entry_ptr.42, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.44, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 54, i32 2}
!63 = !{ptr @nvfw_hs_load_header._entry.43, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nvfw_hs_load_header._entry_ptr.45, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.47, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/hs.c", i32 56, i32 3}
!67 = !{ptr @nvfw_hs_load_header._entry.46, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nvfw_hs_load_header._entry_ptr.48, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
