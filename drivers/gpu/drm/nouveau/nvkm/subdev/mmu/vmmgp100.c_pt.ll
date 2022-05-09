; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.153], i32, [16 x %struct.anon.154], ptr, %struct.anon.155, %struct.anon.155, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.153 = type { i8, i64 }
%struct.anon.154 = type { i8, i8 }
%struct.anon.155 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gp100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.147, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.147 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.150, %struct.anon.151, %struct.anon.152, ptr, i8 }
%struct.anon.150 = type { %struct.nvkm_sclass }
%struct.anon.151 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.152 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.gp100_vmm_fault_cancel_v0 = type { i8, i8, i8, i8, [4 x i8], i64 }
%struct.gp100_vmm_v0 = type { i8, i8 }
%struct.nvkm_mmu_pt = type { %union.anon.156, ptr, i8, i16, i64, %struct.list_head }
%union.anon.156 = type { ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.page = type { i32, %union.anon.3, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@gp100_vmm_desc_lpt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr @gp100_vmm_lpt_invalid, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr null, ptr @gp100_vmm_pgt_mem, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gp100_vmm_desc_pd0 = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @gp100_vmm_pd0_unmap, ptr @gp100_vmm_pd0_sparse, ptr @gp100_vmm_pd0_pde, ptr @gp100_vmm_pd0_mem, ptr null, ptr null, ptr @gp100_vmm_pd0_pfn, ptr @gp100_vmm_pd0_pfn_clear, ptr @gp100_vmm_pd0_pfn_unmap }, [56 x i8] zeroinitializer }, align 32
@gp100_vmm_desc_pd1 = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr @gp100_vmm_pd1_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gp100_vmm_desc_16 = dso_local constant { [6 x %struct.nvkm_vmm_desc], [32 x i8] } { [6 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 5, i8 8, i32 256, ptr @gp100_vmm_desc_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 8, i8 16, i32 4096, ptr @gp100_vmm_desc_pd0 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 2, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gp100_vmm_desc_spt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr null, ptr @gp100_vmm_pgt_mem, ptr @gp100_vmm_pgt_dma, ptr @gp100_vmm_pgt_sgl, ptr @gp100_vmm_pgt_pfn, ptr @gp100_vmm_pfn_clear, ptr @gp100_vmm_pfn_unmap }, [56 x i8] zeroinitializer }, align 32
@gp100_vmm_desc_12 = dso_local constant { [6 x %struct.nvkm_vmm_desc], [32 x i8] } { [6 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_spt }, %struct.nvkm_vmm_desc { i32 0, i8 8, i8 16, i32 4096, ptr @gp100_vmm_desc_pd0 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 2, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gp100_vmm_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s: args\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gp100_vmm_valid\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gp100_vmm_valid._entry_ptr = internal global ptr @gp100_vmm_valid._entry, section ".printk_index", align 4
@gp100_vmm_valid._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s: kind %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@gp100_vmm_valid._entry_ptr.7 = internal global ptr @gp100_vmm_valid._entry.5, section ".printk_index", align 4
@gp100_vmm_valid._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: comp %d %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@gp100_vmm_valid._entry_ptr.10 = internal global ptr @gp100_vmm_valid._entry.8, section ".printk_index", align 4
@gp100_vmm_valid._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: comp %d\0A\00", [47 x i8] zeroinitializer }, align 32
@gp100_vmm_valid._entry_ptr.13 = internal global ptr @gp100_vmm_valid._entry.11, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@gp100_vmm = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }>, [36 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }> <{ ptr @gp100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gp100_vmm_valid, ptr @gp100_vmm_flush, ptr @gp100_vmm_mthd, ptr @gp100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [7 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 47, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 64), i8 1 }, %struct.nvkm_vmm_page { i8 38, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 48), i8 1 }, %struct.nvkm_vmm_page { i8 29, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 32), i8 1 }, %struct.nvkm_vmm_page { i8 21, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 16), i8 11 }, %struct.nvkm_vmm_page { i8 16, ptr @gp100_vmm_desc_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gp100_vmm_desc_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }>, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 129]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"gp100_vmm_desc_lpt\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 190, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"gp100_vmm_desc_pd0\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 352, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"gp100_vmm_desc_pd1\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 378, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"gp100_vmm_desc_16\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 385, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"gp100_vmm_desc_spt\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 170, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"gp100_vmm_desc_12\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 395, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 435, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 445, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 452, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 460, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"gp100_vmm\00", align 1
@___asan_gen_.73 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 578, i32 1 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @gp100_vmm_valid._entry, ptr @gp100_vmm_valid._entry.11, ptr @gp100_vmm_valid._entry.5, ptr @gp100_vmm_valid._entry.8, ptr @gp100_vmm_valid._entry_ptr, ptr @gp100_vmm_valid._entry_ptr.10, ptr @gp100_vmm_valid._entry_ptr.13, ptr @gp100_vmm_valid._entry_ptr.7, ptr @gp100_vmm_desc_lpt, ptr @gp100_vmm_desc_pd0, ptr @gp100_vmm_desc_pd1, ptr @gp100_vmm_desc_16, ptr @gp100_vmm_desc_spt, ptr @gp100_vmm_desc_12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @gp100_vmm], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_lpt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_pd0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_pd1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_16 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_spt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_desc_12 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_valid._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_valid._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm_valid._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp100_vmm to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_valid(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %map) #0 align 64 {
entry:
  %kind_inv = alloca i8, align 1
  %kindn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %target1 = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %target1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target1, align 4
  %call = tail call i32 %5(ptr noundef %1) #4
  %page3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %page3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page3, align 8
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %8 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmu, align 4
  %device4 = getelementptr inbounds %struct.nvkm_mmu, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device4, align 4
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind_inv) #4
  %14 = ptrtoint ptr %kind_inv to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %kind_inv, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kindn) #4
  %15 = ptrtoint ptr %kindn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %kindn, align 4, !annotation !43
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 4
  %sh_prom = zext i8 %17 to i64
  %shl = shl nuw i64 1, %sh_prom
  %shr = lshr i64 %shl, 4
  %next = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shr, ptr %next, align 8
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp8 = icmp ugt i32 %argc, 4
  br i1 %cmp8, label %land.lhs.true14, label %land.lhs.true47

land.lhs.true14:                                  ; preds = %entry
  %20 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp17 = icmp eq i8 %21, 0
  br i1 %cmp17, label %if.then, label %land.lhs.true14.do.body_crit_edge

land.lhs.true14.do.body_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 5
  br i1 %tobool.not, label %if.then22, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %vol23 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %argv, i32 0, i32 1
  %22 = ptrtoint ptr %vol23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vol23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24 = icmp ne i8 %23, 0
  %ro27 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %argv, i32 0, i32 2
  %24 = ptrtoint ptr %ro27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ro27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not = icmp eq i8 %25, 0
  %priv34 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %argv, i32 0, i32 3
  %26 = ptrtoint ptr %priv34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %priv34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  %kind41 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %argv, i32 0, i32 4
  %28 = ptrtoint ptr %kind41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %kind41, align 1
  %phi.bo388 = select i1 %tobool28.not, i8 0, i8 64
  %phi.bo404 = select i1 %tobool35.not, i8 1, i8 33
  br label %if.end79

land.lhs.true47:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp48 = icmp eq i32 %argc, 0
  br i1 %cmp48, label %if.then54, label %land.lhs.true47.do.body_crit_edge

land.lhs.true47.do.body_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then54:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp55 = icmp eq i32 %call, 2
  br label %if.end79

do.body:                                          ; preds = %land.lhs.true47.do.body_crit_edge, %if.then.do.body_crit_edge, %land.lhs.true14.do.body_crit_edge
  %_ret44.0.ph = phi i32 [ -38, %land.lhs.true47.do.body_crit_edge ], [ -38, %land.lhs.true14.do.body_crit_edge ], [ -7, %if.then.do.body_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp59 = icmp ugt i32 %31, 3
  br i1 %cmp59, label %do.end, label %do.body.cleanup288_crit_edge

do.body.cleanup288_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup288

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmu, align 4
  %device70 = getelementptr inbounds %struct.nvkm_mmu, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device70, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %33, i32 0, i32 1, i32 4
  %name71 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %38 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name71, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %39) #7
  br label %cleanup288

if.end79:                                         ; preds = %if.then54, %if.then22
  %kind.0 = phi i8 [ 0, %if.then54 ], [ %29, %if.then22 ]
  %priv.0 = phi i8 [ 1, %if.then54 ], [ %phi.bo404, %if.then22 ]
  %ro.0 = phi i8 [ 0, %if.then54 ], [ %phi.bo388, %if.then22 ]
  %vol.0.in = phi i1 [ %cmp55, %if.then54 ], [ %tobool24, %if.then22 ]
  %40 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vmm, align 8
  %aper81 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %aper81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aper81, align 8
  %call82 = tail call i32 %43(i32 noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end99, label %if.end115, !prof !44

do.end99:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 440, i32 noundef 9, ptr noundef null) #4
  br label %cleanup288

if.end115:                                        ; preds = %if.end79
  %44 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmu, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %kind118 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %kind118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %kind118, align 4
  %call120 = call ptr %49(ptr noundef %45, ptr noundef nonnull %kindn, ptr noundef nonnull %kind_inv) #4
  %conv121 = zext i8 %kind.0 to i32
  %50 = ptrtoint ptr %kindn to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %kindn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv121)
  %cmp122.not = icmp sgt i32 %51, %conv121
  br i1 %cmp122.not, label %lor.lhs.false, label %if.end115.do.body129_crit_edge

if.end115.do.body129_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body129

lor.lhs.false:                                    ; preds = %if.end115
  %arrayidx = getelementptr i8, ptr %call120, i32 %conv121
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx, align 1
  %54 = ptrtoint ptr %kind_inv to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %kind_inv, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp126 = icmp eq i8 %53, %55
  br i1 %cmp126, label %lor.lhs.false.do.body129_crit_edge, label %if.end158

lor.lhs.false.do.body129_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body129

do.body129:                                       ; preds = %lor.lhs.false.do.body129_crit_edge, %if.end115.do.body129_crit_edge
  %debug131 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %56 = ptrtoint ptr %debug131 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp132 = icmp ugt i32 %57, 3
  br i1 %cmp132, label %do.end145, label %do.body129.cleanup288_crit_edge

do.body129.cleanup288_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup288

do.end145:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmu, align 4
  %device146 = getelementptr inbounds %struct.nvkm_mmu, ptr %59, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %device146 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device146, align 4
  %dev147 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev147, align 8
  %name148 = getelementptr inbounds %struct.nvkm_mmu, ptr %59, i32 0, i32 1, i32 4
  %name150 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %64 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name150, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.6, ptr noundef %name148, ptr noundef %65, i32 noundef %conv121) #7
  br label %cleanup288

if.end158:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %kind.0)
  %cmp163.not = icmp eq i8 %53, %kind.0
  br i1 %cmp163.not, label %if.end158.if.end265_crit_edge, label %if.then165

if.end158.if.end265_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end265

if.then165:                                       ; preds = %if.end158
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %13, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %size, align 4
  %call167 = call i64 %69(ptr noundef %13) #4
  %shr168 = lshr i64 %call167, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp169.not = icmp eq i32 %call82, 0
  br i1 %cmp169.not, label %lor.lhs.false171, label %if.then165.do.body176_crit_edge

if.then165.do.body176_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body176

lor.lhs.false171:                                 ; preds = %if.then165
  %type172 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %7, i32 0, i32 2
  %70 = ptrtoint ptr %type172 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %type172, align 4
  %72 = and i8 %71, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool174.not = icmp eq i8 %72, 0
  br i1 %tobool174.not, label %lor.lhs.false171.do.body176_crit_edge, label %if.end206

lor.lhs.false171.do.body176_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body176

do.body176:                                       ; preds = %lor.lhs.false171.do.body176_crit_edge, %if.then165.do.body176_crit_edge
  %debug178 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %73 = ptrtoint ptr %debug178 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp179 = icmp ugt i32 %74, 3
  br i1 %cmp179, label %do.end192, label %do.body176.cleanup288_crit_edge

do.body176.cleanup288_crit_edge:                  ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup288

do.end192:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmu, align 4
  %device193 = getelementptr inbounds %struct.nvkm_mmu, ptr %76, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %device193 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device193, align 4
  %dev194 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev194, align 8
  %name195 = getelementptr inbounds %struct.nvkm_mmu, ptr %76, i32 0, i32 1, i32 4
  %name197 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %81 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name197, align 8
  %type198 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %7, i32 0, i32 2
  %83 = ptrtoint ptr %type198 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %type198, align 4
  %conv199 = zext i8 %84 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.9, ptr noundef %name195, ptr noundef %82, i32 noundef %call82, i32 noundef %conv199) #7
  br label %cleanup288

if.end206:                                        ; preds = %lor.lhs.false171
  %conv207 = trunc i64 %shr168 to i32
  %tags208 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 8
  %call209 = call i32 @nvkm_memory_tags_get(ptr noundef %13, ptr noundef %11, i32 noundef %conv207, ptr noundef nonnull @nvkm_ltc_tags_clear, ptr noundef %tags208) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end240, label %do.body212

do.body212:                                       ; preds = %if.end206
  %debug214 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %85 = ptrtoint ptr %debug214 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp215 = icmp ugt i32 %86, 3
  br i1 %cmp215, label %do.end228, label %do.body212.cleanup288_crit_edge

do.body212.cleanup288_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup288

do.end228:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmu, align 4
  %device229 = getelementptr inbounds %struct.nvkm_mmu, ptr %88, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %device229 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device229, align 4
  %dev230 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %dev230 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev230, align 8
  %name231 = getelementptr inbounds %struct.nvkm_mmu, ptr %88, i32 0, i32 1, i32 4
  %name233 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %93 = ptrtoint ptr %name233 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name233, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.12, ptr noundef %name231, ptr noundef %94, i32 noundef %call209) #7
  br label %cleanup288

if.end240:                                        ; preds = %if.end206
  %95 = ptrtoint ptr %tags208 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tags208, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %tobool242.not = icmp eq ptr %98, null
  br i1 %tobool242.not, label %if.else261, label %if.then243

if.then243:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #6
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset, align 4
  %conv246 = zext i32 %100 to i64
  %offset247 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %101 = ptrtoint ptr %offset247 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %offset247, align 8
  %shr248 = lshr i64 %102, 16
  %add = add nuw nsw i64 %shr248, %conv246
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %7, align 4
  %sh_prom251 = zext i8 %104 to i64
  %105 = shl i64 1048576, %sh_prom251
  %shl254 = and i64 %105, -68719476736
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %106 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ctag, align 8
  %or = or i64 %shl254, %107
  store i64 %or, ptr %ctag, align 8
  %shl255 = shl i64 %add, 36
  %108 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %type, align 8
  %or257 = or i64 %109, %shl255
  store i64 %or257, ptr %type, align 8
  %110 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %next, align 8
  %or260 = or i64 %111, %or
  store i64 %or260, ptr %next, align 8
  br label %if.end265

if.else261:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.else261, %if.then243, %if.end158.if.end265_crit_edge
  %kind.3 = phi i8 [ %kind.0, %if.end158.if.end265_crit_edge ], [ %kind.0, %if.then243 ], [ %113, %if.else261 ]
  %114 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %type, align 8
  %conv268403 = zext i32 %call82 to i64
  %shl269 = shl nuw nsw i64 %conv268403, 1
  %shl273 = select i1 %vol.0.in, i64 8, i64 0
  %conv284 = zext i8 %kind.3 to i64
  %shl285 = shl nuw i64 %conv284, 56
  %or271405 = or i8 %priv.0, %ro.0
  %or271 = zext i8 %or271405 to i64
  %or275 = or i64 %shl273, %or271
  %or279 = or i64 %or275, %shl269
  %or283 = or i64 %or279, %115
  %or287 = or i64 %or283, %shl285
  store i64 %or287, ptr %type, align 8
  br label %cleanup288

cleanup288:                                       ; preds = %if.end265, %do.end228, %do.body212.cleanup288_crit_edge, %do.end192, %do.body176.cleanup288_crit_edge, %do.end145, %do.body129.cleanup288_crit_edge, %do.end99, %do.end, %do.body.cleanup288_crit_edge
  %retval.1 = phi i32 [ %call82, %do.end99 ], [ 0, %if.end265 ], [ %_ret44.0.ph, %do.end ], [ %_ret44.0.ph, %do.body.cleanup288_crit_edge ], [ -22, %do.end145 ], [ -22, %do.body129.cleanup288_crit_edge ], [ %call209, %do.body212.cleanup288_crit_edge ], [ %call209, %do.end228 ], [ -22, %do.body176.cleanup288_crit_edge ], [ -22, %do.end192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kindn) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind_inv) #4
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_tags_clear(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_mthd(ptr noundef %vmm, ptr nocapture readnone %client, i32 noundef %mthd, ptr nocapture noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %entry.return_crit_edge [
    i32 128, label %sw.bb
    i32 129, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp1.i = icmp eq i32 %argc, 0
  br i1 %cmp1.i, label %if.then2.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gf100_vmm_invalidate(ptr noundef %vmm, i32 noundef 11) #4
  br label %return

sw.bb1:                                           ; preds = %entry
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %1 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmu.i, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_mmu, ptr %2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp2.i = icmp ugt i32 %argc, 15
  br i1 %cmp2.i, label %land.lhs.true6.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true6.i:                                 ; preds = %sw.bb1
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.i = icmp eq i8 %6, 0
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true6.i.return_crit_edge

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i = icmp eq i32 %argc, 16
  br i1 %tobool.not.i, label %if.end15.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end15.i:                                       ; preds = %if.then.i
  %inst.i = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %argv, i32 0, i32 5
  %7 = ptrtoint ptr %inst.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %inst.i, align 8
  %9 = trunc i64 %8 to i32
  %shr18.i = lshr i64 %8, 12
  %10 = shl i32 %9, 20
  %shl.i = and i32 %10, 805306368
  %conv19.i = zext i32 %shl.i to i64
  %or.i = or i64 %shr18.i, %conv19.i
  %or22.i = or i64 %or.i, 2147483648
  store i64 %or22.i, ptr %inst.i, align 8
  %call.i = tail call i32 @nvkm_gr_ctxsw_pause(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool23.not.i, label %if.then47.critedge.i, label %if.end15.i.cleanup.sink.split.i_crit_edge, !prof !45

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then47.critedge.i:                             ; preds = %if.end15.i
  %call48.i = tail call i32 @nvkm_gr_ctxsw_inst(ptr noundef %4) #4
  %conv49.i = zext i32 %call48.i to i64
  %11 = ptrtoint ptr %inst.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %inst.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv49.i)
  %cmp51.i = icmp eq i64 %12, %conv49.i
  br i1 %cmp51.i, label %if.then53.i, label %if.then47.critedge.i.if.end63.i_crit_edge

if.then47.critedge.i.if.end63.i_crit_edge:        ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i

if.then53.i:                                      ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  %hub.i = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %argv, i32 0, i32 1
  %13 = ptrtoint ptr %hub.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hub.i, align 1
  %conv54.i = zext i8 %14 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 20
  %gpc.i = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %argv, i32 0, i32 2
  %15 = ptrtoint ptr %gpc.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpc.i, align 2
  %conv57.i = zext i8 %16 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 15
  %client.i = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %argv, i32 0, i32 3
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %client.i, align 1
  %conv60.i = zext i8 %18 to i32
  %shl61.i = shl nuw nsw i32 %conv60.i, 9
  %or56.i = or i32 %shl55.i, %shl58.i
  %or59.i = or i32 %or56.i, %shl61.i
  %or62.i = or i32 %or59.i, 27
  tail call void @gf100_vmm_invalidate(ptr noundef %vmm, i32 noundef %or62.i) #4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then53.i, %if.then47.critedge.i.if.end63.i_crit_edge
  %call65.i = tail call i32 @nvkm_gr_ctxsw_resume(ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end63.i.return_crit_edge, label %if.end63.i.cleanup.sink.split.i_crit_edge, !prof !45

if.end63.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end63.i.return_crit_edge:                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

cleanup.sink.split.i:                             ; preds = %if.end63.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 504, %if.end15.i.cleanup.sink.split.i_crit_edge ], [ 512, %if.end63.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #4
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %if.end63.i.return_crit_edge, %if.then.i.return_crit_edge, %land.lhs.true6.i.return_crit_edge, %sw.bb1.return_crit_edge, %if.then2.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then2.i ], [ -38, %sw.bb.return_crit_edge ], [ 0, %if.end63.i.return_crit_edge ], [ -38, %sw.bb1.return_crit_edge ], [ -38, %land.lhs.true6.i.return_crit_edge ], [ -7, %if.then.i.return_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp100_vmm_invalidate_pdb(ptr nocapture noundef readonly %vmm, i64 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %conv = trunc i64 %addr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1051832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %shr = lshr i64 %addr, 32
  %conv6 = trunc i64 %shr to i32
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 1051884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %conv6) #4, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gp100_vmm_flush(ptr noundef %vmm, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.neg = mul i32 %depth, -16777216
  %shl = add i32 %.neg, 83886080
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %vmm, i32 0, i32 14, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %or = or i32 %shl, 4
  %spec.select = select i1 %tobool.not, i32 %shl, i32 %or
  %or1 = or i32 %spec.select, 1
  tail call void @gf100_vmm_invalidate(ptr noundef %vmm, i32 noundef %or1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_join(ptr noundef %vmm, ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %replay = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 17
  %0 = ptrtoint ptr %replay to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %replay, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i64 3072, i64 3120
  %call = tail call i32 @gf100_vmm_join_(ptr noundef %vmm, ptr noundef %inst, i64 noundef %spec.select) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_new_(ptr noundef %func, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp1 = icmp ugt i32 %argc, 1
  br i1 %cmp1, label %land.lhs.true5, label %land.lhs.true23

land.lhs.true5:                                   ; preds = %entry
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8 = icmp eq i8 %1, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 2
  br i1 %tobool.not, label %if.then13, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %fault_replay = getelementptr inbounds %struct.gp100_vmm_v0, ptr %argv, i32 0, i32 1
  %2 = ptrtoint ptr %fault_replay to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fault_replay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp15 = icmp ne i8 %3, 0
  br label %if.end33

land.lhs.true23:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp24 = icmp eq i32 %argc, 0
  br i1 %cmp24, label %land.lhs.true23.if.end33_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true23.if.end33_crit_edge, %if.then13
  %replay.0.off0 = phi i1 [ %cmp15, %if.then13 ], [ false, %land.lhs.true23.if.end33_crit_edge ]
  %call = tail call i32 @nvkm_vmm_new_(ptr noundef %func, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pvmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pvmm, align 4
  %replay39 = getelementptr inbounds %struct.nvkm_vmm, ptr %5, i32 0, i32 17
  %frombool40 = zext i1 %replay.0.off0 to i8
  %6 = ptrtoint ptr %replay39 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool40, ptr %replay39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call, %if.end33.cleanup_crit_edge ], [ -38, %land.lhs.true23.cleanup_crit_edge ], [ -38, %land.lhs.true5.cleanup_crit_edge ], [ -7, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp1.i = icmp ugt i32 %argc, 1
  br i1 %cmp1.i, label %land.lhs.true5.i, label %land.lhs.true23.i

land.lhs.true5.i:                                 ; preds = %entry
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8.i = icmp eq i8 %1, 0
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true5.i.gp100_vmm_new_.exit_crit_edge

land.lhs.true5.i.gp100_vmm_new_.exit_crit_edge:   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_new_.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %tobool.not.i = icmp eq i32 %argc, 2
  br i1 %tobool.not.i, label %if.then13.i, label %if.then.i.gp100_vmm_new_.exit_crit_edge

if.then.i.gp100_vmm_new_.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_new_.exit

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %fault_replay.i = getelementptr inbounds %struct.gp100_vmm_v0, ptr %argv, i32 0, i32 1
  %2 = ptrtoint ptr %fault_replay.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fault_replay.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp15.i = icmp ne i8 %3, 0
  br label %if.end33.i

land.lhs.true23.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp24.i = icmp eq i32 %argc, 0
  br i1 %cmp24.i, label %land.lhs.true23.i.if.end33.i_crit_edge, label %land.lhs.true23.i.gp100_vmm_new_.exit_crit_edge

land.lhs.true23.i.gp100_vmm_new_.exit_crit_edge:  ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_new_.exit

land.lhs.true23.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true23.i.if.end33.i_crit_edge, %if.then13.i
  %replay.0.off0.i = phi i1 [ %cmp15.i, %if.then13.i ], [ false, %land.lhs.true23.i.if.end33.i_crit_edge ]
  %call.i = tail call i32 @nvkm_vmm_new_(ptr noundef nonnull @gp100_vmm, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.gp100_vmm_new_.exit_crit_edge

if.end33.i.gp100_vmm_new_.exit_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_new_.exit

if.end37.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pvmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pvmm, align 4
  %replay39.i = getelementptr inbounds %struct.nvkm_vmm, ptr %5, i32 0, i32 17
  %frombool40.i = zext i1 %replay.0.off0.i to i8
  %6 = ptrtoint ptr %replay39.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool40.i, ptr %replay39.i, align 4
  br label %gp100_vmm_new_.exit

gp100_vmm_new_.exit:                              ; preds = %if.end37.i, %if.end33.i.gp100_vmm_new_.exit_crit_edge, %land.lhs.true23.i.gp100_vmm_new_.exit_crit_edge, %if.then.i.gp100_vmm_new_.exit_crit_edge, %land.lhs.true5.i.gp100_vmm_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end37.i ], [ %call.i, %if.end33.i.gp100_vmm_new_.exit_crit_edge ], [ -38, %land.lhs.true23.i.gp100_vmm_new_.exit_crit_edge ], [ -38, %land.lhs.true5.i.gp100_vmm_new_.exit_crit_edge ], [ -7, %if.then.i.gp100_vmm_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_lpt_invalid(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %mul, %conv
  %conv3 = zext i32 %add to i64
  %conv4 = zext i32 %ptes to i64
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %7(ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool31.not85 = icmp eq i32 %ptes, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !44

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool31.not85, label %for.cond.preheader.if.end50_crit_edge, label %for.cond.preheader.do.body32_crit_edge

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body32

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then:                                          ; preds = %entry
  br i1 %tobool31.not85, label %if.then.if.end50_crit_edge, label %do.body11.preheader

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body11.preheader:                              ; preds = %if.then
  %shr = lshr i64 %conv3, 3
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.preheader
  %_c.084 = phi i64 [ %dec, %do.body11.do.body11_crit_edge ], [ %conv4, %do.body11.preheader ]
  %_o.083 = phi i64 [ %inc, %do.body11.do.body11_crit_edge ], [ %shr, %do.body11.preheader ]
  %dec = add nsw i64 %_c.084, -1
  %inc = add nuw nsw i64 %_o.083, 1
  %idxprom = trunc i64 %_o.083 to i32
  %arrayidx = getelementptr i64, ptr %call, i32 %idxprom
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 32) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %arrayidx23 = getelementptr i32, ptr %arrayidx, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23, i32 0) #4, !srcloc !47
  %tobool10.not = icmp eq i64 %dec, 0
  br i1 %tobool10.not, label %do.body11.if.end50_crit_edge, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

do.body11.if.end50_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  %_a.087 = phi i64 [ %add49, %do.body32.do.body32_crit_edge ], [ %conv3, %for.cond.preheader.do.body32_crit_edge ]
  %_c.186 = phi i64 [ %dec48, %do.body32.do.body32_crit_edge ], [ %conv4, %for.cond.preheader.do.body32_crit_edge ]
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %_a.087, i32 noundef 32) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs39 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs39, align 4
  %wr3240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3240 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3240, align 4
  %add42 = add nuw nsw i64 %_a.087, 4
  tail call void %19(ptr noundef %15, i64 noundef %add42, i32 noundef 0) #4
  %dec48 = add nsw i64 %_c.186, -1
  %add49 = add nuw nsw i64 %_a.087, 8
  %tobool31.not = icmp eq i64 %dec48, 0
  br i1 %tobool31.not, label %do.body32.if.end50_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

do.body32.if.end50_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end50:                                         ; preds = %do.body32.if.end50_crit_edge, %do.body11.if.end50_crit_edge, %if.then.if.end50_crit_edge, %for.cond.preheader.if.end50_crit_edge
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  tail call void %25(ptr noundef %21) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_sparse(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %mul, %conv
  %conv3 = zext i32 %add to i64
  %conv4 = zext i32 %ptes to i64
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %7(ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool31.not85 = icmp eq i32 %ptes, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !44

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool31.not85, label %for.cond.preheader.if.end50_crit_edge, label %for.cond.preheader.do.body32_crit_edge

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body32

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then:                                          ; preds = %entry
  br i1 %tobool31.not85, label %if.then.if.end50_crit_edge, label %do.body11.preheader

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body11.preheader:                              ; preds = %if.then
  %shr = lshr i64 %conv3, 3
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %do.body11.preheader
  %_c.084 = phi i64 [ %dec, %do.body11.do.body11_crit_edge ], [ %conv4, %do.body11.preheader ]
  %_o.083 = phi i64 [ %inc, %do.body11.do.body11_crit_edge ], [ %shr, %do.body11.preheader ]
  %dec = add nsw i64 %_c.084, -1
  %inc = add nuw nsw i64 %_o.083, 1
  %idxprom = trunc i64 %_o.083 to i32
  %arrayidx = getelementptr i64, ptr %call, i32 %idxprom
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 8) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %arrayidx23 = getelementptr i32, ptr %arrayidx, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23, i32 0) #4, !srcloc !47
  %tobool10.not = icmp eq i64 %dec, 0
  br i1 %tobool10.not, label %do.body11.if.end50_crit_edge, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

do.body11.if.end50_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  %_a.087 = phi i64 [ %add49, %do.body32.do.body32_crit_edge ], [ %conv3, %for.cond.preheader.do.body32_crit_edge ]
  %_c.186 = phi i64 [ %dec48, %do.body32.do.body32_crit_edge ], [ %conv4, %for.cond.preheader.do.body32_crit_edge ]
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %_a.087, i32 noundef 8) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs39 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs39, align 4
  %wr3240 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3240 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3240, align 4
  %add42 = add nuw nsw i64 %_a.087, 4
  tail call void %19(ptr noundef %15, i64 noundef %add42, i32 noundef 0) #4
  %dec48 = add nsw i64 %_c.186, -1
  %add49 = add nuw nsw i64 %_a.087, 8
  %tobool31.not = icmp eq i64 %dec48, 0
  br i1 %tobool31.not, label %do.body32.if.end50_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

do.body32.if.end50_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end50:                                         ; preds = %do.body32.if.end50_crit_edge, %do.body11.if.end50_crit_edge, %if.then.if.end50_crit_edge, %for.cond.preheader.if.end50_crit_edge
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  tail call void %25(ptr noundef %21) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_mem(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not57 = icmp eq i32 %ptes, 0
  br i1 %tobool.not57, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %ctag.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %next.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %gp100_vmm_pgt_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.060 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv24, %gp100_vmm_pgt_pte.exit.while.body_crit_edge ]
  %ptes.addr.058 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv27, %gp100_vmm_pgt_pte.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 8
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %conv = zext i32 %9 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %sub = sub i64 %shl, %11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %sub, %sh_prom
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %conv4 = zext i32 %17 to i64
  %shl5 = shl nuw nsw i64 %conv4, 12
  %add = add i64 %shl5, %11
  %conv7 = zext i32 %ptes.addr.058 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv7)
  %cmp = icmp ugt i64 %shr, %conv7
  br i1 %cmp, label %do.body20.thread, label %do.body20

do.body20.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %15 to i32
  %shl12 = shl i32 %ptes.addr.058, %conv2
  %conv13 = zext i32 %shl12 to i64
  %add15 = add i64 %11, %conv13
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add15, ptr %off, align 8
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %type.i, align 8
  %21 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ctag.i, align 8
  %mul.i64 = mul i64 %22, %conv7
  %add.i65 = add i64 %mul.i64, %20
  store i64 %add.i65, ptr %type.i, align 8
  br label %do.body.lr.ph.i

do.body20:                                        ; preds = %while.body
  %23 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %off, align 8
  %next = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %mem, align 8
  %extract.t56 = trunc i64 %shr to i32
  %.pre = and i64 %shr, 4294967295
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %type.i, align 8
  %29 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ctag.i, align 8
  %mul.i = mul i64 %30, %.pre
  %add.i = add i64 %mul.i, %28
  store i64 %add.i, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t56)
  %tobool.not1.i = icmp eq i32 %extract.t56, 0
  br i1 %tobool.not1.i, label %do.body20.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body20.do.body.lr.ph.i_crit_edge

do.body20.do.body.lr.ph.i_crit_edge:              ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.lr.ph.i

do.body20.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body20.do.body.lr.ph.i_crit_edge, %do.body20.thread
  %31 = phi i64 [ %20, %do.body20.thread ], [ %28, %do.body20.do.body.lr.ph.i_crit_edge ]
  %_ptes.0.off067 = phi i32 [ %ptes.addr.058, %do.body20.thread ], [ %extract.t56, %do.body20.do.body.lr.ph.i_crit_edge ]
  %shr.i = lshr i64 %add, 4
  %or.i = or i64 %31, %shr.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %ptei.addr.04.i = phi i32 [ %ptei.addr.060, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %ptes.addr.03.i = phi i32 [ %_ptes.0.off067, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %data.02.i = phi i64 [ %or.i, %do.body.lr.ph.i ], [ %add23.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.03.i, -1
  %inc.i = add i32 %ptei.addr.04.i, 1
  %mul2.i = shl i32 %ptei.addr.04.i, 3
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %base.i, align 2
  %conv5.i = zext i16 %33 to i32
  %add6.i = add i32 %mul2.i, %conv5.i
  %conv7.i = zext i32 %add6.i to i64
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr32.i, align 4
  %conv10.i = trunc i64 %data.02.i to i32
  tail call void %39(ptr noundef %35, i64 noundef %conv7.i, i32 noundef %conv10.i) #4
  %40 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memory, align 4
  %ptrs12.i = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ptrs12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs12.i, align 4
  %wr3213.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr3213.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3213.i, align 4
  %add15.i = add nuw nsw i64 %conv7.i, 4
  %shr16.i = lshr i64 %data.02.i, 32
  %conv18.i = trunc i64 %shr16.i to i32
  tail call void %45(ptr noundef %41, i64 noundef %add15.i, i32 noundef %conv18.i) #4
  %46 = ptrtoint ptr %next.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %next.i, align 8
  %add23.i = add i64 %47, %data.02.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

gp100_vmm_pgt_pte.exit:                           ; preds = %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, %do.body20.gp100_vmm_pgt_pte.exit_crit_edge
  %_ptes.0.off068 = phi i32 [ 0, %do.body20.gp100_vmm_pgt_pte.exit_crit_edge ], [ %_ptes.0.off067, %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge ]
  %conv24 = add i32 %_ptes.0.off068, %ptei.addr.060
  %conv27 = sub i32 %ptes.addr.058, %_ptes.0.off068
  %tobool.not = icmp eq i32 %conv27, 0
  br i1 %tobool.not, label %gp100_vmm_pgt_pte.exit.while.end_crit_edge, label %gp100_vmm_pgt_pte.exit.while.body_crit_edge

gp100_vmm_pgt_pte.exit.while.body_crit_edge:      ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

gp100_vmm_pgt_pte.exit.while.end_crit_edge:       ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %gp100_vmm_pgt_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %48 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %memory, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  tail call void %53(ptr noundef %49) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_unmap(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %pdei, i32 noundef %pdes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdes)
  %tobool.not76 = icmp eq i32 %pdes, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %do.body4.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body4.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %pdei, 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.body4.lr.ph
  %_pteo.078 = phi i32 [ %mul, %do.body4.lr.ph ], [ %add47, %do.body4.do.body4_crit_edge ]
  %_ptes.077 = phi i32 [ %pdes, %do.body4.lr.ph ], [ %dec, %do.body4.do.body4_crit_edge ]
  %dec = add i32 %_ptes.077, -1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base, align 2
  %conv5 = zext i16 %7 to i32
  %add6 = add i32 %_pteo.078, %conv5
  %conv8 = zext i32 %add6 to i64
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %conv8, i32 noundef 0) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs14 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs14, align 4
  %wr3215 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3215 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3215, align 4
  %add17 = add nuw nsw i64 %conv8, 4
  tail call void %19(ptr noundef %15, i64 noundef %add17, i32 noundef 0) #4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base, align 2
  %conv25 = zext i16 %21 to i32
  %add26 = or i32 %_pteo.078, 8
  %add27 = add i32 %add26, %conv25
  %conv28 = zext i32 %add27 to i64
  %22 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory, align 4
  %ptrs31 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs31, align 4
  %wr3232 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr3232 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3232, align 4
  tail call void %27(ptr noundef %23, i64 noundef %conv28, i32 noundef 0) #4
  %28 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory, align 4
  %ptrs38 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ptrs38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptrs38, align 4
  %wr3239 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr3239 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr3239, align 4
  %add41 = add nuw nsw i64 %conv28, 4
  tail call void %33(ptr noundef %29, i64 noundef %add41, i32 noundef 0) #4
  %add47 = add i32 %_pteo.078, 16
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body4.while.end_crit_edge, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body4.while.end_crit_edge, %entry.while.end_crit_edge
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release, align 4
  tail call void %39(ptr noundef %35) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_sparse(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %pdei, i32 noundef %pdes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdes)
  %tobool.not76 = icmp eq i32 %pdes, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %do.body4.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body4.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %pdei, 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.body4.lr.ph
  %_pteo.078 = phi i32 [ %mul, %do.body4.lr.ph ], [ %add47, %do.body4.do.body4_crit_edge ]
  %_ptes.077 = phi i32 [ %pdes, %do.body4.lr.ph ], [ %dec, %do.body4.do.body4_crit_edge ]
  %dec = add i32 %_ptes.077, -1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base, align 2
  %conv5 = zext i16 %7 to i32
  %add6 = add i32 %_pteo.078, %conv5
  %conv8 = zext i32 %add6 to i64
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr32, align 4
  tail call void %13(ptr noundef %9, i64 noundef %conv8, i32 noundef 8) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs14 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs14, align 4
  %wr3215 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3215 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3215, align 4
  %add17 = add nuw nsw i64 %conv8, 4
  tail call void %19(ptr noundef %15, i64 noundef %add17, i32 noundef 0) #4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base, align 2
  %conv25 = zext i16 %21 to i32
  %add26 = or i32 %_pteo.078, 8
  %add27 = add i32 %add26, %conv25
  %conv28 = zext i32 %add27 to i64
  %22 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memory, align 4
  %ptrs31 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs31, align 4
  %wr3232 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr3232 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3232, align 4
  tail call void %27(ptr noundef %23, i64 noundef %conv28, i32 noundef 0) #4
  %28 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory, align 4
  %ptrs38 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ptrs38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptrs38, align 4
  %wr3239 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr3239 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr3239, align 4
  %add41 = add nuw nsw i64 %conv28, 4
  tail call void %33(ptr noundef %29, i64 noundef %add41, i32 noundef 0) #4
  %add47 = add i32 %_pteo.078, 16
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body4.while.end_crit_edge, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.body4.while.end_crit_edge, %entry.while.end_crit_edge
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release, align 4
  tail call void %39(ptr noundef %35) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pde(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pgd, i32 noundef %pdei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgd, i32 0, i32 4
  %0 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pde, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %pdei
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgd, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %memory.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %target.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target.i, align 4
  %call.i = tail call i32 %13(ptr noundef %9) #4
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call.i, label %gp100_vmm_pde.exit [
    i32 1, label %land.lhs.true.gp100_vmm_pde.exit.thread_crit_edge
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

land.lhs.true.gp100_vmm_pde.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit.thread

sw.bb2.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit.thread

sw.bb5.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit.thread

gp100_vmm_pde.exit.thread:                        ; preds = %sw.bb5.i, %sw.bb2.i, %land.lhs.true.gp100_vmm_pde.exit.thread_crit_edge
  %.sink29.i = phi i64 [ 6, %sw.bb5.i ], [ 12, %sw.bb2.i ], [ 2, %land.lhs.true.gp100_vmm_pde.exit.thread_crit_edge ]
  %addr.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr.i, align 8
  %shr.i = lshr i64 %16, 4
  %or21.i = or i64 %shr.i, %.sink29.i
  %extract.t = trunc i64 %or21.i to i32
  %extract = lshr i64 %16, 36
  %extract.t122 = trunc i64 %extract to i32
  br label %if.end

gp100_vmm_pde.exit:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %gp100_vmm_pde.exit.thread, %entry.if.end_crit_edge
  %data.sroa.0.1.off0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %extract.t, %gp100_vmm_pde.exit.thread ]
  %data.sroa.0.1.off32 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %extract.t122, %gp100_vmm_pde.exit.thread ]
  %arrayidx8 = getelementptr [2 x ptr], ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %land.lhs.true10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end
  %memory.i101 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %memory.i101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memory.i101, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %target.i102 = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %target.i102 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %target.i102, align 4
  %call.i103 = tail call i32 %24(ptr noundef %20) #4
  %25 = zext i32 %call.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call.i103, label %gp100_vmm_pde.exit114 [
    i32 1, label %land.lhs.true10.gp100_vmm_pde.exit114.thread_crit_edge
    i32 2, label %sw.bb2.i104
    i32 3, label %sw.bb5.i105
  ]

land.lhs.true10.gp100_vmm_pde.exit114.thread_crit_edge: ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit114.thread

sw.bb2.i104:                                      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit114.thread

sw.bb5.i105:                                      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pde.exit114.thread

gp100_vmm_pde.exit114.thread:                     ; preds = %sw.bb5.i105, %sw.bb2.i104, %land.lhs.true10.gp100_vmm_pde.exit114.thread_crit_edge
  %.sink29.i107 = phi i64 [ 6, %sw.bb5.i105 ], [ 12, %sw.bb2.i104 ], [ 2, %land.lhs.true10.gp100_vmm_pde.exit114.thread_crit_edge ]
  %addr.i109 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %addr.i109 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr.i109, align 8
  %shr.i110 = lshr i64 %27, 4
  %or21.i111 = or i64 %shr.i110, %.sink29.i107
  %extract.t123 = trunc i64 %or21.i111 to i32
  %extract124 = lshr i64 %27, 36
  %extract.t125 = trunc i64 %extract124 to i32
  br label %if.end16

gp100_vmm_pde.exit114:                            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end16:                                         ; preds = %gp100_vmm_pde.exit114.thread, %if.end.if.end16_crit_edge
  %data.sroa.7.1.off0 = phi i32 [ 0, %if.end.if.end16_crit_edge ], [ %extract.t123, %gp100_vmm_pde.exit114.thread ]
  %data.sroa.7.1.off32 = phi i32 [ 0, %if.end.if.end16_crit_edge ], [ %extract.t125, %gp100_vmm_pde.exit114.thread ]
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acquire, align 4
  %call18 = tail call ptr %33(ptr noundef %29) #4
  %mul = shl i32 %pdei, 4
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %base, align 2
  %conv22 = zext i16 %35 to i32
  %add23 = add i32 %mul, %conv22
  %conv25 = zext i32 %add23 to i64
  %36 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr32, align 4
  tail call void %41(ptr noundef %37, i64 noundef %conv25, i32 noundef %data.sroa.0.1.off0) #4
  %42 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memory, align 4
  %ptrs32 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ptrs32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptrs32, align 4
  %wr3233 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr3233 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr3233, align 4
  %add35 = add nuw nsw i64 %conv25, 4
  tail call void %47(ptr noundef %43, i64 noundef %add35, i32 noundef %data.sroa.0.1.off32) #4
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %base, align 2
  %conv43 = zext i16 %49 to i32
  %add44 = or i32 %mul, 8
  %add45 = add i32 %add44, %conv43
  %conv46 = zext i32 %add45 to i64
  %50 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memory, align 4
  %ptrs50 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ptrs50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptrs50, align 4
  %wr3251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr3251 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr3251, align 4
  tail call void %55(ptr noundef %51, i64 noundef %conv46, i32 noundef %data.sroa.7.1.off0) #4
  %56 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %memory, align 4
  %ptrs57 = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ptrs57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptrs57, align 4
  %wr3258 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wr3258 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr3258, align 4
  %add60 = add nuw nsw i64 %conv46, 4
  tail call void %61(ptr noundef %57, i64 noundef %add60, i32 noundef %data.sroa.7.1.off32) #4
  %62 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %memory, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %release, align 4
  tail call void %67(ptr noundef %63) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %gp100_vmm_pde.exit114, %gp100_vmm_pde.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_mem(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not57 = icmp eq i32 %ptes, 0
  br i1 %tobool.not57, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %ctag.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %next.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %gp100_vmm_pd0_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.060 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv24, %gp100_vmm_pd0_pte.exit.while.body_crit_edge ]
  %ptes.addr.058 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv27, %gp100_vmm_pd0_pte.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 8
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %conv = zext i32 %9 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %sub = sub i64 %shl, %11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %sub, %sh_prom
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %conv4 = zext i32 %17 to i64
  %shl5 = shl nuw nsw i64 %conv4, 12
  %add = add i64 %shl5, %11
  %conv7 = zext i32 %ptes.addr.058 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv7)
  %cmp = icmp ugt i64 %shr, %conv7
  br i1 %cmp, label %do.body20.thread, label %do.body20

do.body20.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %15 to i32
  %shl12 = shl i32 %ptes.addr.058, %conv2
  %conv13 = zext i32 %shl12 to i64
  %add15 = add i64 %11, %conv13
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add15, ptr %off, align 8
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %type.i, align 8
  %21 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ctag.i, align 8
  %mul.i64 = mul i64 %22, %conv7
  %add.i65 = add i64 %mul.i64, %20
  store i64 %add.i65, ptr %type.i, align 8
  br label %do.body.lr.ph.i

do.body20:                                        ; preds = %while.body
  %23 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %off, align 8
  %next = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %mem, align 8
  %extract.t56 = trunc i64 %shr to i32
  %.pre = and i64 %shr, 4294967295
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %type.i, align 8
  %29 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ctag.i, align 8
  %mul.i = mul i64 %30, %.pre
  %add.i = add i64 %mul.i, %28
  store i64 %add.i, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t56)
  %tobool.not4.i = icmp eq i32 %extract.t56, 0
  br i1 %tobool.not4.i, label %do.body20.gp100_vmm_pd0_pte.exit_crit_edge, label %do.body20.do.body.lr.ph.i_crit_edge

do.body20.do.body.lr.ph.i_crit_edge:              ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.lr.ph.i

do.body20.gp100_vmm_pd0_pte.exit_crit_edge:       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pd0_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body20.do.body.lr.ph.i_crit_edge, %do.body20.thread
  %31 = phi i64 [ %20, %do.body20.thread ], [ %28, %do.body20.do.body.lr.ph.i_crit_edge ]
  %_ptes.0.off067 = phi i32 [ %ptes.addr.058, %do.body20.thread ], [ %extract.t56, %do.body20.do.body.lr.ph.i_crit_edge ]
  %shr.i = lshr i64 %add, 4
  %or.i = or i64 %31, %shr.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %dec7.in.i = phi i32 [ %_ptes.0.off067, %do.body.lr.ph.i ], [ %dec7.i, %do.body.i.do.body.i_crit_edge ]
  %ptei.addr.06.i = phi i32 [ %ptei.addr.060, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %data.05.i = phi i64 [ %or.i, %do.body.lr.ph.i ], [ %add57.i, %do.body.i.do.body.i_crit_edge ]
  %dec7.i = add i32 %dec7.in.i, -1
  %mul2.i = shl i32 %ptei.addr.06.i, 4
  %conv18.i = trunc i64 %data.05.i to i32
  %shr24.i = lshr i64 %data.05.i, 32
  %conv26.i = trunc i64 %shr24.i to i32
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %base.i, align 2
  %conv12.i = zext i16 %33 to i32
  %add13.i = add i32 %mul2.i, %conv12.i
  %conv15.i = zext i32 %add13.i to i64
  %34 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr32.i, align 4
  tail call void %39(ptr noundef %35, i64 noundef %conv15.i, i32 noundef %conv18.i) #4
  %40 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memory, align 4
  %ptrs20.i = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ptrs20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptrs20.i, align 4
  %wr3221.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wr3221.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr3221.i, align 4
  %add23.i = add nuw nsw i64 %conv15.i, 4
  tail call void %45(ptr noundef %41, i64 noundef %add23.i, i32 noundef %conv26.i) #4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %base.i, align 2
  %conv32.i = zext i16 %47 to i32
  %add33.i = or i32 %mul2.i, 8
  %add34.i = add i32 %add33.i, %conv32.i
  %conv35.i = zext i32 %add34.i to i64
  %48 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %memory, align 4
  %ptrs38.i = getelementptr inbounds %struct.nvkm_memory, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %ptrs38.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptrs38.i, align 4
  %wr3239.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wr3239.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr3239.i, align 4
  tail call void %53(ptr noundef %49, i64 noundef %conv35.i, i32 noundef 0) #4
  %54 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %memory, align 4
  %ptrs45.i = getelementptr inbounds %struct.nvkm_memory, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %ptrs45.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ptrs45.i, align 4
  %wr3246.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wr3246.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr3246.i, align 4
  %add48.i = add nuw nsw i64 %conv35.i, 4
  tail call void %59(ptr noundef %55, i64 noundef %add48.i, i32 noundef 0) #4
  %inc.i = add i32 %ptei.addr.06.i, 1
  %60 = ptrtoint ptr %next.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %next.i, align 8
  %add57.i = add i64 %61, %data.05.i
  %tobool.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool.not.i, label %do.body.i.gp100_vmm_pd0_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i.gp100_vmm_pd0_pte.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pd0_pte.exit

gp100_vmm_pd0_pte.exit:                           ; preds = %do.body.i.gp100_vmm_pd0_pte.exit_crit_edge, %do.body20.gp100_vmm_pd0_pte.exit_crit_edge
  %_ptes.0.off068 = phi i32 [ 0, %do.body20.gp100_vmm_pd0_pte.exit_crit_edge ], [ %_ptes.0.off067, %do.body.i.gp100_vmm_pd0_pte.exit_crit_edge ]
  %conv24 = add i32 %_ptes.0.off068, %ptei.addr.060
  %conv27 = sub i32 %ptes.addr.058, %_ptes.0.off068
  %tobool.not = icmp eq i32 %conv27, 0
  br i1 %tobool.not, label %gp100_vmm_pd0_pte.exit.while.end_crit_edge, label %gp100_vmm_pd0_pte.exit.while.body_crit_edge

gp100_vmm_pd0_pte.exit.while.body_crit_edge:      ; preds = %gp100_vmm_pd0_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

gp100_vmm_pd0_pte.exit.while.end_crit_edge:       ; preds = %gp100_vmm_pd0_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %gp100_vmm_pd0_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %62 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %memory, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %release, align 4
  tail call void %67(ptr noundef %63) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pfn(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %11(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not129 = icmp eq i32 %ptes, 0
  br i1 %tobool.not129, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pfn = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 5
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ptei.addr.0131 = phi i32 [ %ptei, %for.body.lr.ph ], [ %ptei.addr.1, %cleanup.for.body_crit_edge ]
  %ptes.addr.0130 = phi i32 [ %ptes, %for.body.lr.ph ], [ %dec, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pfn, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %and = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %and5 = shl i64 %15, 5
  %16 = and i64 %and5, 192
  %17 = xor i64 %16, 192
  %and16 = and i64 %15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %shr = lshr i64 %15, 12
  %conv = trunc i64 %shr to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %conv, %19
  %add.ptr = getelementptr %struct.page, ptr %18, i32 %sub
  %call20 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2097152, i32 noundef 0, i32 noundef 0) #4
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp.i.not = icmp eq i32 %call20, -1
  br i1 %cmp.i.not, label %if.end37, label %if.then45, !prof !44

if.end37:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 335, i32 noundef 9, ptr noundef null) #4
  %extract.t117 = trunc i64 %17 to i32
  br label %do.body59

if.then45:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t117124 = trunc i64 %17 to i32
  %shr46 = lshr i32 %call20, 4
  %20 = or i32 %shr46, %extract.t117124
  %extract.t118 = or i32 %20, 13
  br label %do.body59

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and54 = lshr i64 %15, 4
  %shr55 = and i64 %and54, 4294967040
  %or56 = or i64 %17, %shr55
  %21 = trunc i64 %or56 to i32
  %extract.t = or i32 %21, 1
  %extract = lshr i64 %15, 36
  %extract.t119 = trunc i64 %extract to i32
  br label %do.body59

do.body59:                                        ; preds = %if.else, %if.then45, %if.end37
  %data.2.off0 = phi i32 [ %extract.t, %if.else ], [ %extract.t117, %if.end37 ], [ %extract.t118, %if.then45 ]
  %data.2.off32 = phi i32 [ %extract.t119, %if.else ], [ 0, %if.end37 ], [ 0, %if.then45 ]
  %inc = add i32 %ptei.addr.0131, 1
  %mul = shl i32 %ptei.addr.0131, 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base, align 2
  %conv64 = zext i16 %23 to i32
  %add = add i32 %mul, %conv64
  %conv65 = zext i32 %add to i64
  %24 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr32, align 4
  tail call void %29(ptr noundef %25, i64 noundef %conv65, i32 noundef %data.2.off0) #4
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %ptrs72 = getelementptr inbounds %struct.nvkm_memory, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ptrs72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs72, align 4
  %wr3273 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr3273 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr3273, align 4
  %add75 = add nuw nsw i64 %conv65, 4
  tail call void %35(ptr noundef %31, i64 noundef %add75, i32 noundef %data.2.off32) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body59, %for.body.cleanup_crit_edge
  %ptei.addr.1 = phi i32 [ %inc, %do.body59 ], [ %ptei.addr.0131, %for.body.cleanup_crit_edge ]
  %dec = add i32 %ptes.addr.0130, -1
  %36 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfn, align 4
  %incdec.ptr = getelementptr i64, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %pfn, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %38 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %memory, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release, align 4
  tail call void %43(ptr noundef %39) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gp100_vmm_pd0_pfn_clear(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not76 = icmp eq i32 %ptes, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec79.in = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec79, %if.end.while.body_crit_edge ]
  %ptei.addr.078 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %dma.0.off077 = phi i1 [ false, %while.body.lr.ph ], [ %dma.1.off0, %if.end.while.body_crit_edge ]
  %dec79 = add i32 %dec79.in, -1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %base, align 2
  %conv = zext i16 %13 to i32
  %mul = shl i32 %ptei.addr.078, 4
  %add = add i32 %mul, %conv
  %conv5 = zext i32 %add to i64
  %call6 = tail call i32 %11(ptr noundef %7, i64 noundef %conv5) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs8 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs8, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base, align 2
  %conv12 = zext i16 %21 to i32
  %add14 = or i32 %mul, 4
  %add15 = add i32 %add14, %conv12
  %conv16 = zext i32 %add15 to i64
  %call17 = tail call i32 %19(ptr noundef %15, i64 noundef %conv16) #4
  %conv19 = zext i32 %call6 to i64
  %and = and i64 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  %and21 = and i64 %conv19, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %cmp.not = icmp eq i64 %and21, 0
  %or.cond = or i1 %tobool20.not, %cmp.not
  br i1 %or.cond, label %while.body.if.end_crit_edge, label %do.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv19.masked = and i32 %call6, -2
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base, align 2
  %conv28 = zext i16 %23 to i32
  %add29 = add i32 %mul, %conv28
  %conv30 = zext i32 %add29 to i64
  %24 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory, align 4
  %ptrs32 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs32, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr32, align 4
  tail call void %29(ptr noundef %25, i64 noundef %conv30, i32 noundef %conv19.masked) #4
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %ptrs38 = getelementptr inbounds %struct.nvkm_memory, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ptrs38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs38, align 4
  %wr3239 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr3239 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr3239, align 4
  %add41 = add nuw nsw i64 %conv30, 4
  tail call void %35(ptr noundef %31, i64 noundef %add41, i32 noundef %call17) #4
  br label %if.end

if.end:                                           ; preds = %do.body, %while.body.if.end_crit_edge
  %dma.1.off0 = phi i1 [ true, %do.body ], [ %dma.0.off077, %while.body.if.end_crit_edge ]
  %inc = add i32 %ptei.addr.078, 1
  %tobool.not = icmp eq i32 %dec79, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %dma.0.off0.lcssa = phi i1 [ false, %entry.while.end_crit_edge ], [ %dma.1.off0, %if.end.while.end_crit_edge ]
  %36 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memory, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release, align 4
  tail call void %41(ptr noundef %37) #4
  ret i1 %dma.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pfn_unmap(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %11(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not40 = icmp eq i32 %ptes, 0
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec42.in = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec42, %if.end.while.body_crit_edge ]
  %ptei.addr.041 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %dec42 = add i32 %dec42.in, -1
  %12 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base, align 2
  %conv = zext i16 %19 to i32
  %mul = shl i32 %ptei.addr.041, 4
  %add = add i32 %mul, %conv
  %conv6 = zext i32 %add to i64
  %call7 = tail call i32 %17(ptr noundef %13, i64 noundef %conv6) #4
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory, align 4
  %ptrs9 = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ptrs9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptrs9, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base, align 2
  %conv13 = zext i16 %27 to i32
  %add15 = or i32 %mul, 4
  %add16 = add i32 %add15, %conv13
  %conv17 = zext i32 %add16 to i64
  %call18 = tail call i32 %25(ptr noundef %21, i64 noundef %conv17) #4
  %28 = and i32 %call7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %29 = shl i32 %call7, 4
  %.masked = and i32 %29, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %.masked, i32 noundef 2097152, i32 noundef 0, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %inc = add i32 %ptei.addr.041, 1
  %tobool.not = icmp eq i32 %dec42, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %31) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pd1_pde(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pgd, i32 noundef %pdei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgd, i32 0, i32 4
  %0 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pde, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %pdei
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgd, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %memory.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %target.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target.i, align 4
  %call.i = tail call i32 %13(ptr noundef %9) #4
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i, label %gp100_vmm_pde.exit [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

gp100_vmm_pde.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %sw.bb5.i, %sw.bb2.i, %entry.if.end_crit_edge
  %.sink29.i = phi i64 [ 6, %sw.bb5.i ], [ 12, %sw.bb2.i ], [ 2, %entry.if.end_crit_edge ]
  %addr.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr.i, align 8
  %shr.i = lshr i64 %16, 4
  %or21.i = or i64 %shr.i, %.sink29.i
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memory, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acquire, align 4
  %call5 = tail call ptr %22(ptr noundef %18) #4
  %mul = shl i32 %pdei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %base, align 2
  %conv = zext i16 %24 to i32
  %add = add i32 %mul, %conv
  %conv8 = zext i32 %add to i64
  %25 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr32, align 4
  %conv12 = trunc i64 %or21.i to i32
  tail call void %30(ptr noundef %26, i64 noundef %conv8, i32 noundef %conv12) #4
  %31 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memory, align 4
  %ptrs14 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ptrs14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptrs14, align 4
  %wr3215 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr3215 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr3215, align 4
  %add17 = add nuw nsw i64 %conv8, 4
  %shr = lshr i64 %16, 36
  %conv19 = trunc i64 %shr to i32
  tail call void %36(ptr noundef %32, i64 noundef %add17, i32 noundef %conv19) #4
  %37 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %memory, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %release, align 4
  tail call void %42(ptr noundef %38) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gp100_vmm_pde.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_dma(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp = icmp eq i8 %3, 12
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memory, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %9(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not129 = icmp eq i32 %ptes, 0
  br i1 %cmp, label %do.body, label %do.body32

do.body:                                          ; preds = %entry
  br i1 %tobool.not129, label %do.body.do.end81_crit_edge, label %while.body.lr.ph

do.body.do.end81_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end81

while.body.lr.ph:                                 ; preds = %do.body
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.0131 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %ptes.addr.0130 = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %ptes.addr.0130, -1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma, align 8
  %incdec.ptr = getelementptr i32, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %dma, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr = lshr i32 %13, 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %type, align 8
  %inc = add i32 %ptei.addr.0131, 1
  %mul = shl i32 %ptei.addr.0131, 3
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base, align 2
  %conv9 = zext i16 %17 to i32
  %add = add i32 %mul, %conv9
  %conv10 = zext i32 %add to i64
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr32, align 4
  %24 = trunc i64 %15 to i32
  %conv14 = or i32 %shr, %24
  tail call void %23(ptr noundef %19, i64 noundef %conv10, i32 noundef %conv14) #4
  %25 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %memory, align 4
  %ptrs16 = getelementptr inbounds %struct.nvkm_memory, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ptrs16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptrs16, align 4
  %wr3217 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr3217 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr3217, align 4
  %add19 = add nuw nsw i64 %conv10, 4
  %shr20 = lshr i64 %15, 32
  %conv22 = trunc i64 %shr20 to i32
  tail call void %30(ptr noundef %26, i64 noundef %add19, i32 noundef %conv22) #4
  %31 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ctag, align 8
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %type, align 8
  %add28 = add i64 %34, %32
  store i64 %add28, ptr %type, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.do.end81_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.do.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end81

do.body32:                                        ; preds = %entry
  br i1 %tobool.not129, label %do.body32.do.end81_crit_edge, label %while.body40.lr.ph

do.body32.do.end81_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end81

while.body40.lr.ph:                               ; preds = %do.body32
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %dma45 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %ctag.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %next.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  br label %while.body40

while.body40:                                     ; preds = %gp100_vmm_pgt_pte.exit.while.body40_crit_edge, %while.body40.lr.ph
  %ptei.addr.1127 = phi i32 [ %ptei, %while.body40.lr.ph ], [ %conv71, %gp100_vmm_pgt_pte.exit.while.body40_crit_edge ]
  %ptes.addr.1125 = phi i32 [ %ptes, %while.body40.lr.ph ], [ %conv74, %gp100_vmm_pgt_pte.exit.while.body40_crit_edge ]
  %35 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %off, align 8
  %sub = sub i64 4096, %36
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %sh_prom = zext i8 %40 to i64
  %shr44 = lshr i64 %sub, %sh_prom
  %41 = ptrtoint ptr %dma45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma45, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %conv46 = zext i32 %44 to i64
  %add48 = add i64 %36, %conv46
  %conv49 = zext i32 %ptes.addr.1125 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr44, i64 %conv49)
  %cmp50 = icmp ugt i64 %shr44, %conv49
  br i1 %cmp50, label %do.body64.thread, label %do.body64

do.body64.thread:                                 ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #6
  %conv43 = zext i8 %40 to i32
  %shl = shl i32 %ptes.addr.1125, %conv43
  %conv56 = zext i32 %shl to i64
  %add58 = add i64 %36, %conv56
  %45 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add58, ptr %off, align 8
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %type.i, align 8
  %48 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ctag.i, align 8
  %mul.i134 = mul i64 %49, %conv49
  %add.i135 = add i64 %mul.i134, %47
  store i64 %add.i135, ptr %type.i, align 8
  br label %do.body.lr.ph.i

do.body64:                                        ; preds = %while.body40
  %50 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %off, align 8
  %incdec.ptr62 = getelementptr i32, ptr %42, i32 1
  %51 = ptrtoint ptr %dma45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr62, ptr %dma45, align 8
  %extract.t123 = trunc i64 %shr44 to i32
  %.pre = and i64 %shr44, 4294967295
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %type.i, align 8
  %54 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ctag.i, align 8
  %mul.i = mul i64 %55, %.pre
  %add.i = add i64 %mul.i, %53
  store i64 %add.i, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t123)
  %tobool.not1.i = icmp eq i32 %extract.t123, 0
  br i1 %tobool.not1.i, label %do.body64.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body64.do.body.lr.ph.i_crit_edge

do.body64.do.body.lr.ph.i_crit_edge:              ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.lr.ph.i

do.body64.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body64.do.body.lr.ph.i_crit_edge, %do.body64.thread
  %56 = phi i64 [ %47, %do.body64.thread ], [ %53, %do.body64.do.body.lr.ph.i_crit_edge ]
  %_ptes.0.off0137 = phi i32 [ %ptes.addr.1125, %do.body64.thread ], [ %extract.t123, %do.body64.do.body.lr.ph.i_crit_edge ]
  %shr.i = lshr i64 %add48, 4
  %or.i = or i64 %56, %shr.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %ptei.addr.04.i = phi i32 [ %ptei.addr.1127, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %ptes.addr.03.i = phi i32 [ %_ptes.0.off0137, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %data.02.i = phi i64 [ %or.i, %do.body.lr.ph.i ], [ %add23.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.03.i, -1
  %inc.i = add i32 %ptei.addr.04.i, 1
  %mul2.i = shl i32 %ptei.addr.04.i, 3
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %base.i, align 2
  %conv5.i = zext i16 %58 to i32
  %add6.i = add i32 %mul2.i, %conv5.i
  %conv7.i = zext i32 %add6.i to i64
  %59 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wr32.i, align 4
  %conv10.i = trunc i64 %data.02.i to i32
  tail call void %64(ptr noundef %60, i64 noundef %conv7.i, i32 noundef %conv10.i) #4
  %65 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %memory, align 4
  %ptrs12.i = getelementptr inbounds %struct.nvkm_memory, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %ptrs12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ptrs12.i, align 4
  %wr3213.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr3213.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr3213.i, align 4
  %add15.i = add nuw nsw i64 %conv7.i, 4
  %shr16.i = lshr i64 %data.02.i, 32
  %conv18.i = trunc i64 %shr16.i to i32
  tail call void %70(ptr noundef %66, i64 noundef %add15.i, i32 noundef %conv18.i) #4
  %71 = ptrtoint ptr %next.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %next.i, align 8
  %add23.i = add i64 %72, %data.02.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

gp100_vmm_pgt_pte.exit:                           ; preds = %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, %do.body64.gp100_vmm_pgt_pte.exit_crit_edge
  %_ptes.0.off0138 = phi i32 [ 0, %do.body64.gp100_vmm_pgt_pte.exit_crit_edge ], [ %_ptes.0.off0137, %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge ]
  %conv71 = add i32 %_ptes.0.off0138, %ptei.addr.1127
  %conv74 = sub i32 %ptes.addr.1125, %_ptes.0.off0138
  %tobool39.not = icmp eq i32 %conv74, 0
  br i1 %tobool39.not, label %gp100_vmm_pgt_pte.exit.do.end81_crit_edge, label %gp100_vmm_pgt_pte.exit.while.body40_crit_edge

gp100_vmm_pgt_pte.exit.while.body40_crit_edge:    ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body40

gp100_vmm_pgt_pte.exit.do.end81_crit_edge:        ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end81

do.end81:                                         ; preds = %gp100_vmm_pgt_pte.exit.do.end81_crit_edge, %do.body32.do.end81_crit_edge, %while.body.do.end81_crit_edge, %do.body.do.end81_crit_edge
  %73 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %memory, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %release, align 4
  tail call void %78(ptr noundef %74) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_sgl(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not56 = icmp eq i32 %ptes, 0
  br i1 %tobool.not56, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %ctag.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %next.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %gp100_vmm_pgt_pte.exit.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.059 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv23, %gp100_vmm_pgt_pte.exit.while.body_crit_edge ]
  %ptes.addr.057 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv26, %gp100_vmm_pgt_pte.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %sub = sub i64 %conv, %11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %sub, %sh_prom
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %conv4 = zext i32 %17 to i64
  %add = add i64 %11, %conv4
  %conv6 = zext i32 %ptes.addr.057 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv6)
  %cmp = icmp ugt i64 %shr, %conv6
  br i1 %cmp, label %do.body19.thread, label %do.body19

do.body19.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i8 %15 to i32
  %shl = shl i32 %ptes.addr.057, %conv2
  %conv11 = zext i32 %shl to i64
  %add13 = add i64 %11, %conv11
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add13, ptr %off, align 8
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %type.i, align 8
  %21 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ctag.i, align 8
  %mul.i63 = mul i64 %22, %conv6
  %add.i64 = add i64 %mul.i63, %20
  store i64 %add.i64, ptr %type.i, align 8
  br label %do.body.lr.ph.i

do.body19:                                        ; preds = %while.body
  %23 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %off, align 8
  %call17 = tail call ptr @sg_next(ptr noundef %7) #4
  %24 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17, ptr %sgl, align 4
  %extract.t55 = trunc i64 %shr to i32
  %.pre = and i64 %shr, 4294967295
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %type.i, align 8
  %27 = ptrtoint ptr %ctag.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ctag.i, align 8
  %mul.i = mul i64 %28, %.pre
  %add.i = add i64 %mul.i, %26
  store i64 %add.i, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t55)
  %tobool.not1.i = icmp eq i32 %extract.t55, 0
  br i1 %tobool.not1.i, label %do.body19.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body19.do.body.lr.ph.i_crit_edge

do.body19.do.body.lr.ph.i_crit_edge:              ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.lr.ph.i

do.body19.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

do.body.lr.ph.i:                                  ; preds = %do.body19.do.body.lr.ph.i_crit_edge, %do.body19.thread
  %29 = phi i64 [ %20, %do.body19.thread ], [ %26, %do.body19.do.body.lr.ph.i_crit_edge ]
  %_ptes.0.off066 = phi i32 [ %ptes.addr.057, %do.body19.thread ], [ %extract.t55, %do.body19.do.body.lr.ph.i_crit_edge ]
  %shr.i = lshr i64 %add, 4
  %or.i = or i64 %29, %shr.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %ptei.addr.04.i = phi i32 [ %ptei.addr.059, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %ptes.addr.03.i = phi i32 [ %_ptes.0.off066, %do.body.lr.ph.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %data.02.i = phi i64 [ %or.i, %do.body.lr.ph.i ], [ %add23.i, %do.body.i.do.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.03.i, -1
  %inc.i = add i32 %ptei.addr.04.i, 1
  %mul2.i = shl i32 %ptei.addr.04.i, 3
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %base.i, align 2
  %conv5.i = zext i16 %31 to i32
  %add6.i = add i32 %mul2.i, %conv5.i
  %conv7.i = zext i32 %add6.i to i64
  %32 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory, align 4
  %ptrs.i = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptrs.i, align 4
  %wr32.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr32.i, align 4
  %conv10.i = trunc i64 %data.02.i to i32
  tail call void %37(ptr noundef %33, i64 noundef %conv7.i, i32 noundef %conv10.i) #4
  %38 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %memory, align 4
  %ptrs12.i = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ptrs12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs12.i, align 4
  %wr3213.i = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr3213.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr3213.i, align 4
  %add15.i = add nuw nsw i64 %conv7.i, 4
  %shr16.i = lshr i64 %data.02.i, 32
  %conv18.i = trunc i64 %shr16.i to i32
  tail call void %43(ptr noundef %39, i64 noundef %add15.i, i32 noundef %conv18.i) #4
  %44 = ptrtoint ptr %next.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %next.i, align 8
  %add23.i = add i64 %45, %data.02.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i.gp100_vmm_pgt_pte.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gp100_vmm_pgt_pte.exit

gp100_vmm_pgt_pte.exit:                           ; preds = %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge, %do.body19.gp100_vmm_pgt_pte.exit_crit_edge
  %_ptes.0.off067 = phi i32 [ 0, %do.body19.gp100_vmm_pgt_pte.exit_crit_edge ], [ %_ptes.0.off066, %do.body.i.gp100_vmm_pgt_pte.exit_crit_edge ]
  %conv23 = add i32 %_ptes.0.off067, %ptei.addr.059
  %conv26 = sub i32 %ptes.addr.057, %_ptes.0.off067
  %tobool.not = icmp eq i32 %conv26, 0
  br i1 %tobool.not, label %gp100_vmm_pgt_pte.exit.while.end_crit_edge, label %gp100_vmm_pgt_pte.exit.while.body_crit_edge

gp100_vmm_pgt_pte.exit.while.body_crit_edge:      ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

gp100_vmm_pgt_pte.exit.while.end_crit_edge:       ; preds = %gp100_vmm_pgt_pte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %gp100_vmm_pgt_pte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %46 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release, align 4
  tail call void %51(ptr noundef %47) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_pfn(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %11(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not129 = icmp eq i32 %ptes, 0
  br i1 %tobool.not129, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pfn = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 5
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ptei.addr.0131 = phi i32 [ %ptei, %for.body.lr.ph ], [ %ptei.addr.1, %cleanup.for.body_crit_edge ]
  %ptes.addr.0130 = phi i32 [ %ptes, %for.body.lr.ph ], [ %dec, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pfn, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %and = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %and5 = shl i64 %15, 5
  %16 = and i64 %and5, 192
  %17 = xor i64 %16, 192
  %and16 = and i64 %15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %shr = lshr i64 %15, 12
  %conv = trunc i64 %shr to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %conv, %19
  %add.ptr = getelementptr %struct.page, ptr %18, i32 %sub
  %call20 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp.i.not = icmp eq i32 %call20, -1
  br i1 %cmp.i.not, label %if.end37, label %if.then45, !prof !44

if.end37:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 98, i32 noundef 9, ptr noundef null) #4
  %extract.t117 = trunc i64 %17 to i32
  br label %do.body59

if.then45:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t117124 = trunc i64 %17 to i32
  %shr46 = lshr i32 %call20, 4
  %20 = or i32 %shr46, %extract.t117124
  %extract.t118 = or i32 %20, 13
  br label %do.body59

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and54 = lshr i64 %15, 4
  %shr55 = and i64 %and54, 4294967040
  %or56 = or i64 %17, %shr55
  %21 = trunc i64 %or56 to i32
  %extract.t = or i32 %21, 1
  %extract = lshr i64 %15, 36
  %extract.t119 = trunc i64 %extract to i32
  br label %do.body59

do.body59:                                        ; preds = %if.else, %if.then45, %if.end37
  %data.2.off0 = phi i32 [ %extract.t, %if.else ], [ %extract.t117, %if.end37 ], [ %extract.t118, %if.then45 ]
  %data.2.off32 = phi i32 [ %extract.t119, %if.else ], [ 0, %if.end37 ], [ 0, %if.then45 ]
  %inc = add i32 %ptei.addr.0131, 1
  %mul = shl i32 %ptei.addr.0131, 3
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base, align 2
  %conv64 = zext i16 %23 to i32
  %add = add i32 %mul, %conv64
  %conv65 = zext i32 %add to i64
  %24 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr32, align 4
  tail call void %29(ptr noundef %25, i64 noundef %conv65, i32 noundef %data.2.off0) #4
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %ptrs72 = getelementptr inbounds %struct.nvkm_memory, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ptrs72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs72, align 4
  %wr3273 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr3273 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr3273, align 4
  %add75 = add nuw nsw i64 %conv65, 4
  tail call void %35(ptr noundef %31, i64 noundef %add75, i32 noundef %data.2.off32) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body59, %for.body.cleanup_crit_edge
  %ptei.addr.1 = phi i32 [ %inc, %do.body59 ], [ %ptei.addr.0131, %for.body.cleanup_crit_edge ]
  %dec = add i32 %ptes.addr.0130, -1
  %36 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfn, align 4
  %incdec.ptr = getelementptr i64, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %pfn, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %38 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %memory, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release, align 4
  tail call void %43(ptr noundef %39) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gp100_vmm_pfn_clear(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not76 = icmp eq i32 %ptes, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec79.in = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec79, %if.end.while.body_crit_edge ]
  %ptei.addr.078 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %dma.0.off077 = phi i1 [ false, %while.body.lr.ph ], [ %dma.1.off0, %if.end.while.body_crit_edge ]
  %dec79 = add i32 %dec79.in, -1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %base, align 2
  %conv = zext i16 %13 to i32
  %mul = shl i32 %ptei.addr.078, 3
  %add = add i32 %mul, %conv
  %conv5 = zext i32 %add to i64
  %call6 = tail call i32 %11(ptr noundef %7, i64 noundef %conv5) #4
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 4
  %ptrs8 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ptrs8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs8, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base, align 2
  %conv12 = zext i16 %21 to i32
  %add14 = or i32 %mul, 4
  %add15 = add i32 %add14, %conv12
  %conv16 = zext i32 %add15 to i64
  %call17 = tail call i32 %19(ptr noundef %15, i64 noundef %conv16) #4
  %conv19 = zext i32 %call6 to i64
  %and = and i64 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  %and21 = and i64 %conv19, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %cmp.not = icmp eq i64 %and21, 0
  %or.cond = or i1 %tobool20.not, %cmp.not
  br i1 %or.cond, label %while.body.if.end_crit_edge, label %do.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv19.masked = and i32 %call6, -2
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base, align 2
  %conv28 = zext i16 %23 to i32
  %add29 = add i32 %mul, %conv28
  %conv30 = zext i32 %add29 to i64
  %24 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory, align 4
  %ptrs32 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs32, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr32, align 4
  tail call void %29(ptr noundef %25, i64 noundef %conv30, i32 noundef %conv19.masked) #4
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %ptrs38 = getelementptr inbounds %struct.nvkm_memory, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ptrs38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs38, align 4
  %wr3239 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr3239 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr3239, align 4
  %add41 = add nuw nsw i64 %conv30, 4
  tail call void %35(ptr noundef %31, i64 noundef %add41, i32 noundef %call17) #4
  br label %if.end

if.end:                                           ; preds = %do.body, %while.body.if.end_crit_edge
  %dma.1.off0 = phi i1 [ true, %do.body ], [ %dma.0.off077, %while.body.if.end_crit_edge ]
  %inc = add i32 %ptei.addr.078, 1
  %tobool.not = icmp eq i32 %dec79, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %dma.0.off0.lcssa = phi i1 [ false, %entry.while.end_crit_edge ], [ %dma.1.off0, %if.end.while.end_crit_edge ]
  %36 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memory, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release, align 4
  tail call void %41(ptr noundef %37) #4
  ret i1 %dma.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp100_vmm_pfn_unmap(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %11(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not40 = icmp eq i32 %ptes, 0
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec42.in = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec42, %if.end.while.body_crit_edge ]
  %ptei.addr.041 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %dec42 = add i32 %dec42.in, -1
  %12 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptrs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base, align 2
  %conv = zext i16 %19 to i32
  %mul = shl i32 %ptei.addr.041, 3
  %add = add i32 %mul, %conv
  %conv6 = zext i32 %add to i64
  %call7 = tail call i32 %17(ptr noundef %13, i64 noundef %conv6) #4
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory, align 4
  %ptrs9 = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ptrs9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptrs9, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base, align 2
  %conv13 = zext i16 %27 to i32
  %add15 = or i32 %mul, 4
  %add16 = add i32 %add15, %conv13
  %conv17 = zext i32 %add16 to i64
  %call18 = tail call i32 %25(ptr noundef %21, i64 noundef %conv17) #4
  %28 = and i32 %call7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %29 = shl i32 %call7, 4
  %.masked = and i32 %29, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %.masked, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %inc = add i32 %ptei.addr.041, 1
  %tobool.not = icmp eq i32 %dec42, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %31) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_inst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @gp100_vmm_desc_16, !1, !"gp100_vmm_desc_16", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 385, i32 1}
!2 = !{ptr @gp100_vmm_desc_12, !3, !"gp100_vmm_desc_12", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 395, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 435, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gp100_vmm_valid._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gp100_vmm_valid._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 445, i32 3}
!14 = !{ptr @gp100_vmm_valid._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gp100_vmm_valid._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 452, i32 4}
!18 = !{ptr @gp100_vmm_valid._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gp100_vmm_valid._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 460, i32 4}
!22 = !{ptr @gp100_vmm_valid._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gp100_vmm_valid._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gp100_vmm_desc_lpt, !25, !"gp100_vmm_desc_lpt", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 190, i32 1}
!26 = !{ptr @gp100_vmm_desc_pd0, !27, !"gp100_vmm_desc_pd0", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 352, i32 1}
!28 = !{ptr @gp100_vmm_desc_pd1, !29, !"gp100_vmm_desc_pd1", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 378, i32 1}
!30 = !{ptr @gp100_vmm_desc_spt, !31, !"gp100_vmm_desc_spt", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 170, i32 1}
!32 = !{ptr @gp100_vmm, !33, !"gp100_vmm", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c", i32 578, i32 1}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2156424737}
!47 = !{i64 5419087}
!48 = !{i64 2156425244}
!49 = !{i8 0, i8 2}
!50 = !{i64 2156358966}
!51 = !{i64 2156359349}
!52 = !{i64 2156347034}
!53 = !{i64 2156347417}
