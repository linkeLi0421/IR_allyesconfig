; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c"
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
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }

@nvfw_bin_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: binHdr:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvfw_bin_hdr\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr = internal global ptr @nvfw_bin_hdr._entry, section ".printk_index", align 4
@nvfw_bin_hdr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09binMagic         : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.7 = internal global ptr @nvfw_bin_hdr._entry.5, section ".printk_index", align 4
@nvfw_bin_hdr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: \09binVer           : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.10 = internal global ptr @nvfw_bin_hdr._entry.8, section ".printk_index", align 4
@nvfw_bin_hdr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: \09binSize          : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.13 = internal global ptr @nvfw_bin_hdr._entry.11, section ".printk_index", align 4
@nvfw_bin_hdr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09headerOffset     : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.16 = internal global ptr @nvfw_bin_hdr._entry.14, section ".printk_index", align 4
@nvfw_bin_hdr._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dataOffset       : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.19 = internal global ptr @nvfw_bin_hdr._entry.17, section ".printk_index", align 4
@nvfw_bin_hdr._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dataSize         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bin_hdr._entry_ptr.22 = internal global ptr @nvfw_bin_hdr._entry.20, section ".printk_index", align 4
@nvfw_bl_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: blDesc\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvfw_bl_desc\00", [19 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr = internal global ptr @nvfw_bl_desc._entry, section ".printk_index", align 4
@nvfw_bl_desc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09startTag         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.27 = internal global ptr @nvfw_bl_desc._entry.25, section ".printk_index", align 4
@nvfw_bl_desc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dmemLoadOff      : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.30 = internal global ptr @nvfw_bl_desc._entry.28, section ".printk_index", align 4
@nvfw_bl_desc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09codeOff          : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.33 = internal global ptr @nvfw_bl_desc._entry.31, section ".printk_index", align 4
@nvfw_bl_desc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 47, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09codeSize         : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.36 = internal global ptr @nvfw_bl_desc._entry.34, section ".printk_index", align 4
@nvfw_bl_desc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09dataOff          : 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.39 = internal global ptr @nvfw_bl_desc._entry.37, section ".printk_index", align 4
@nvfw_bl_desc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.24, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nvfw_bl_desc._entry_ptr.41 = internal global ptr @nvfw_bl_desc._entry.40, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 29, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 30, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 31, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 32, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 33, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 34, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 35, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 43, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 44, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 45, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 46, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 47, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 48, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 49, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @nvfw_bin_hdr._entry, ptr @nvfw_bin_hdr._entry.11, ptr @nvfw_bin_hdr._entry.14, ptr @nvfw_bin_hdr._entry.17, ptr @nvfw_bin_hdr._entry.20, ptr @nvfw_bin_hdr._entry.5, ptr @nvfw_bin_hdr._entry.8, ptr @nvfw_bin_hdr._entry_ptr, ptr @nvfw_bin_hdr._entry_ptr.10, ptr @nvfw_bin_hdr._entry_ptr.13, ptr @nvfw_bin_hdr._entry_ptr.16, ptr @nvfw_bin_hdr._entry_ptr.19, ptr @nvfw_bin_hdr._entry_ptr.22, ptr @nvfw_bin_hdr._entry_ptr.7, ptr @nvfw_bl_desc._entry, ptr @nvfw_bl_desc._entry.25, ptr @nvfw_bl_desc._entry.28, ptr @nvfw_bl_desc._entry.31, ptr @nvfw_bl_desc._entry.34, ptr @nvfw_bl_desc._entry.37, ptr @nvfw_bl_desc._entry.40, ptr @nvfw_bl_desc._entry_ptr, ptr @nvfw_bl_desc._entry_ptr.27, ptr @nvfw_bl_desc._entry_ptr.30, ptr @nvfw_bl_desc._entry_ptr.33, ptr @nvfw_bl_desc._entry_ptr.36, ptr @nvfw_bl_desc._entry_ptr.39, ptr @nvfw_bl_desc._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bin_hdr._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_bl_desc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_bin_hdr(ptr noundef %subdev, ptr noundef readonly returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end91_crit_edge

entry.if.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  br i1 %cmp7, label %if.end16, label %if.end.if.end91_crit_edge

if.end.if.end91_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  %.pr121 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr121)
  %cmp22 = icmp ugt i32 %.pr121, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end91_crit_edge

if.end16.if.end91_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %bin_ver = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %bin_ver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bin_ver, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr123.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr123.pr)
  %cmp37 = icmp ugt i32 %.pr123.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end91_crit_edge

if.end31.if.end91_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %bin_size = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %bin_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bin_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr125 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr125)
  %cmp52 = icmp ugt i32 %.pr125, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end91_crit_edge

if.end46.if.end91_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %header_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %header_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %header_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr127.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr127.pr.pr)
  %cmp67 = icmp ugt i32 %.pr127.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end91_crit_edge

if.end61.if.end91_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %data_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %data, i32 0, i32 4
  %39 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr129 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr129)
  %cmp82 = icmp ugt i32 %.pr129, 3
  br i1 %cmp82, label %do.end86, label %if.end76.if.end91_crit_edge

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %data_size = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %data, i32 0, i32 5
  %46 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %47) #5
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.end76.if.end91_crit_edge, %if.end61.if.end91_crit_edge, %if.end46.if.end91_crit_edge, %if.end31.if.end91_crit_edge, %if.end16.if.end91_crit_edge, %if.end.if.end91_crit_edge, %entry.if.end91_crit_edge
  ret ptr %data
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_bl_desc(ptr noundef %subdev, ptr noundef readonly returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end91_crit_edge

entry.if.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end91_crit_edge

if.end.if.end91_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr121 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr121)
  %cmp22 = icmp ugt i32 %.pr121, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end91_crit_edge

if.end16.if.end91_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %dmem_load_off = getelementptr inbounds %struct.nvfw_bl_desc, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %dmem_load_off to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmem_load_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr123.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr123.pr)
  %cmp37 = icmp ugt i32 %.pr123.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end91_crit_edge

if.end31.if.end91_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %code_off = getelementptr inbounds %struct.nvfw_bl_desc, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %code_off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr125 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr125)
  %cmp52 = icmp ugt i32 %.pr125, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end91_crit_edge

if.end46.if.end91_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %code_size = getelementptr inbounds %struct.nvfw_bl_desc, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr127.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr127.pr.pr)
  %cmp67 = icmp ugt i32 %.pr127.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end91_crit_edge

if.end61.if.end91_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %data_off = getelementptr inbounds %struct.nvfw_bl_desc, ptr %data, i32 0, i32 4
  %39 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr129 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr129)
  %cmp82 = icmp ugt i32 %.pr129, 3
  br i1 %cmp82, label %do.end86, label %if.end76.if.end91_crit_edge

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %data_size = getelementptr inbounds %struct.nvfw_bl_desc, ptr %data, i32 0, i32 5
  %46 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %47) #5
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.end76.if.end91_crit_edge, %if.end61.if.end91_crit_edge, %if.end46.if.end91_crit_edge, %if.end31.if.end91_crit_edge, %if.end16.if.end91_crit_edge, %if.end.if.end91_crit_edge, %entry.if.end91_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvfw_bin_hdr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvfw_bin_hdr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 30, i32 2}
!10 = !{ptr @nvfw_bin_hdr._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvfw_bin_hdr._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 31, i32 2}
!14 = !{ptr @nvfw_bin_hdr._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvfw_bin_hdr._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 32, i32 2}
!18 = !{ptr @nvfw_bin_hdr._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvfw_bin_hdr._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 33, i32 2}
!22 = !{ptr @nvfw_bin_hdr._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvfw_bin_hdr._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 34, i32 2}
!26 = !{ptr @nvfw_bin_hdr._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nvfw_bin_hdr._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 35, i32 2}
!30 = !{ptr @nvfw_bin_hdr._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvfw_bin_hdr._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 43, i32 2}
!34 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvfw_bl_desc._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvfw_bl_desc._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 44, i32 2}
!39 = !{ptr @nvfw_bl_desc._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvfw_bl_desc._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 45, i32 2}
!43 = !{ptr @nvfw_bl_desc._entry.28, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvfw_bl_desc._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 46, i32 2}
!47 = !{ptr @nvfw_bl_desc._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvfw_bl_desc._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 47, i32 2}
!51 = !{ptr @nvfw_bl_desc._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvfw_bl_desc._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 48, i32 2}
!55 = !{ptr @nvfw_bl_desc._entry.37, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nvfw_bl_desc._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @nvfw_bl_desc._entry.40, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/fw.c", i32 49, i32 2}
!59 = !{ptr @nvfw_bl_desc._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
