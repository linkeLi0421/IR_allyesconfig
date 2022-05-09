; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.151, %struct.anon.152, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.151 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.152 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gf100_vmm_pgt = dso_local constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr null, ptr null, ptr @gf100_vmm_pgt_mem, ptr @gf100_vmm_pgt_dma, ptr @gf100_vmm_pgt_sgl, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c\00", [45 x i8] zeroinitializer }, align 32
@gf100_vmm_pgd = dso_local constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr null, ptr @gf100_vmm_pgd_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf100_vmm_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s: args\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gf100_vmm_valid\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gf100_vmm_valid._entry_ptr = internal global ptr @gf100_vmm_valid._entry, section ".printk_index", align 4
@gf100_vmm_valid._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s: kind %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@gf100_vmm_valid._entry_ptr.8 = internal global ptr @gf100_vmm_valid._entry.6, section ".printk_index", align 4
@gf100_vmm_valid._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: comp %d %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@gf100_vmm_valid._entry_ptr.11 = internal global ptr @gf100_vmm_valid._entry.9, section ".printk_index", align 4
@gf100_vmm_valid._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: comp %d\0A\00", [47 x i8] zeroinitializer }, align 32
@gf100_vmm_valid._entry_ptr.14 = internal global ptr @gf100_vmm_valid._entry.12, section ".printk_index", align 4
@gf100_vmm_desc_16_16 = internal constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_vmm_desc_16_12 = internal constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_vmm_16 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gf100_vmm_desc_16_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gf100_vmm_desc_16_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@gf100_vmm_desc_17_17 = internal constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_vmm_desc_17_12 = internal constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 15, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gf100_vmm_17 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gf100_vmm_desc_17_17, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gf100_vmm_desc_17_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@switch.table.gf100_vmm_aper = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"gf100_vmm_pgt\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 121, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"gf100_vmm_pgd\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 147, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 198, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 268, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 278, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 286, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 294, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"gf100_vmm_desc_16_16\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 174, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"gf100_vmm_desc_16_12\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 167, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"gf100_vmm_16\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 385, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"gf100_vmm_desc_17_17\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 160, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"gf100_vmm_desc_17_12\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 153, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"gf100_vmm_17\00", align 1
@___asan_gen_.83 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 370, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"switch.table.gf100_vmm_aper\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @gf100_vmm_valid._entry, ptr @gf100_vmm_valid._entry.12, ptr @gf100_vmm_valid._entry.6, ptr @gf100_vmm_valid._entry.9, ptr @gf100_vmm_valid._entry_ptr, ptr @gf100_vmm_valid._entry_ptr.11, ptr @gf100_vmm_valid._entry_ptr.14, ptr @gf100_vmm_valid._entry_ptr.8, ptr @gf100_vmm_pgt, ptr @.str, ptr @gf100_vmm_pgd, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @gf100_vmm_desc_16_16, ptr @gf100_vmm_desc_16_12, ptr @gf100_vmm_16, ptr @gf100_vmm_desc_17_17, ptr @gf100_vmm_desc_17_12, ptr @gf100_vmm_17, ptr @switch.table.gf100_vmm_aper], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_pgt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_pgd to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_valid._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_valid._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_valid._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_desc_16_16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_desc_16_12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_desc_17_17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_desc_17_12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_vmm_17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf100_vmm_aper to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_sgl(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr %5(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not56 = icmp eq i32 %ptes, 0
  br i1 %tobool.not56, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %do.body19.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.059 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv23, %do.body19.while.body_crit_edge ]
  %ptes.addr.057 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv26, %do.body19.while.body_crit_edge ]
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %15 to i32
  %shl = shl i32 %ptes.addr.057, %conv2
  %conv11 = zext i32 %shl to i64
  %add13 = add i64 %11, %conv11
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add13, ptr %off, align 8
  br label %do.body19

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %off, align 8
  %call17 = tail call ptr @sg_next(ptr noundef %7) #6
  %20 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %sgl, align 4
  %extract.t55 = trunc i64 %shr to i32
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %_ptes.0.off0 = phi i32 [ %ptes.addr.057, %if.then ], [ %extract.t55, %if.else ]
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.059, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add)
  %conv23 = add i32 %_ptes.0.off0, %ptei.addr.059
  %conv26 = sub i32 %ptes.addr.057, %_ptes.0.off0
  %tobool.not = icmp eq i32 %conv26, 0
  br i1 %tobool.not, label %do.body19.while.end_crit_edge, label %do.body19.while.body_crit_edge

do.body19.while.body_crit_edge:                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body19.while.end_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body19.while.end_crit_edge, %entry.while.end_crit_edge
  %21 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release, align 4
  tail call void %26(ptr noundef %22) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf100_vmm_pgt_pte(ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map, i64 noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i64 %addr, 8
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %type, align 8
  %or = or i64 %1, %shr
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %2 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctag, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %next = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %next, align 8
  %and = and i64 %5, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

while.cond.preheader:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool2.not6 = icmp eq i32 %ptes, 0
  br i1 %tobool2.not6, label %while.cond.preheader.if.end81_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end81_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %base14 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.09 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc11, %while.body.while.body_crit_edge ]
  %ptes.addr.08 = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %base.07 = phi i64 [ %or, %while.body.lr.ph ], [ %add33, %while.body.while.body_crit_edge ]
  %dec = add i32 %ptes.addr.08, -1
  %6 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ctag, align 8
  %8 = shl i64 %7, 43
  %shl = and i64 %8, -17592186044416
  %or5 = or i64 %shl, %base.07
  %inc = add i64 %7, 1
  store i64 %inc, ptr %ctag, align 8
  %and7 = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %extract.t = trunc i64 %base.07 to i32
  %extract = lshr i64 %or5, 32
  %extract.t2 = trunc i64 %extract to i32
  %extract.t4 = or i32 %extract.t2, 268435456
  %data.0.off32 = select i1 %tobool8.not, i32 %extract.t4, i32 %extract.t2
  %inc11 = add i32 %ptei.addr.09, 1
  %mul = shl i32 %ptei.addr.09, 3
  %9 = ptrtoint ptr %base14 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base14, align 2
  %conv = zext i16 %10 to i32
  %add = add i32 %mul, %conv
  %conv15 = zext i32 %add to i64
  %11 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr32, align 4
  tail call void %16(ptr noundef %12, i64 noundef %conv15, i32 noundef %extract.t) #6
  %17 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memory, align 4
  %ptrs21 = getelementptr inbounds %struct.nvkm_memory, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ptrs21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptrs21, align 4
  %wr3222 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wr3222 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr3222, align 4
  %add24 = add nuw nsw i64 %conv15, 4
  tail call void %22(ptr noundef %18, i64 noundef %add24, i32 noundef %data.0.off32) #6
  %23 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %next, align 8
  %add33 = add i64 %24, %base.07
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.body.if.end81_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %conv34 = zext i32 %ptes to i64
  %mul36 = mul i64 %3, %conv34
  %add38 = add i64 %mul36, %1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add38, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool41.not10 = icmp eq i32 %ptes, 0
  br i1 %tobool41.not10, label %if.else.if.end81_crit_edge, label %do.body43.lr.ph

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.body43.lr.ph:                                  ; preds = %if.else
  %base54 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %memory59 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  %next78 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.body43.lr.ph
  %ptei.addr.113 = phi i32 [ %ptei, %do.body43.lr.ph ], [ %inc45, %do.body43.do.body43_crit_edge ]
  %ptes.addr.112 = phi i32 [ %ptes, %do.body43.lr.ph ], [ %dec40, %do.body43.do.body43_crit_edge ]
  %data.111 = phi i64 [ %or, %do.body43.lr.ph ], [ %add79, %do.body43.do.body43_crit_edge ]
  %dec40 = add i32 %ptes.addr.112, -1
  %inc45 = add i32 %ptei.addr.113, 1
  %mul46 = shl i32 %ptei.addr.113, 3
  %26 = ptrtoint ptr %base54 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base54, align 2
  %conv55 = zext i16 %27 to i32
  %add56 = add i32 %mul46, %conv55
  %conv57 = zext i32 %add56 to i64
  %28 = ptrtoint ptr %memory59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory59, align 4
  %ptrs60 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ptrs60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptrs60, align 4
  %wr3261 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wr3261 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr3261, align 4
  %conv65 = trunc i64 %data.111 to i32
  tail call void %33(ptr noundef %29, i64 noundef %conv57, i32 noundef %conv65) #6
  %34 = ptrtoint ptr %memory59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory59, align 4
  %ptrs67 = getelementptr inbounds %struct.nvkm_memory, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ptrs67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs67, align 4
  %wr3268 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr3268 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3268, align 4
  %add70 = add nuw nsw i64 %conv57, 4
  %shr71 = lshr i64 %data.111, 32
  %conv73 = trunc i64 %shr71 to i32
  tail call void %39(ptr noundef %35, i64 noundef %add70, i32 noundef %conv73) #6
  %40 = ptrtoint ptr %next78 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %next78, align 8
  %add79 = add i64 %41, %data.111
  %tobool41.not = icmp eq i32 %dec40, 0
  br i1 %tobool41.not, label %do.body43.if.end81_crit_edge, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body43

do.body43.if.end81_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.end81:                                         ; preds = %do.body43.if.end81_crit_edge, %if.else.if.end81_crit_edge, %while.body.if.end81_crit_edge, %while.cond.preheader.if.end81_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_dma(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr %9(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not128 = icmp eq i32 %ptes, 0
  br i1 %cmp, label %do.body, label %do.body32

do.body:                                          ; preds = %entry
  br i1 %tobool.not128, label %do.body.do.end81_crit_edge, label %while.body.lr.ph

do.body.do.end81_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

while.body.lr.ph:                                 ; preds = %do.body
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.0130 = phi i32 [ %ptei, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %ptes.addr.0129 = phi i32 [ %ptes, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %ptes.addr.0129, -1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma, align 8
  %incdec.ptr = getelementptr i32, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %dma, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr = lshr i32 %13, 8
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %type, align 8
  %inc = add i32 %ptei.addr.0130, 1
  %mul = shl i32 %ptei.addr.0130, 3
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
  tail call void %23(ptr noundef %19, i64 noundef %conv10, i32 noundef %conv14) #6
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
  tail call void %30(ptr noundef %26, i64 noundef %add19, i32 noundef %conv22) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.do.end81_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.body32:                                        ; preds = %entry
  br i1 %tobool.not128, label %do.body32.do.end81_crit_edge, label %while.body40.lr.ph

do.body32.do.end81_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

while.body40.lr.ph:                               ; preds = %do.body32
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %dma45 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  br label %while.body40

while.body40:                                     ; preds = %do.body64.while.body40_crit_edge, %while.body40.lr.ph
  %ptei.addr.1127 = phi i32 [ %ptei, %while.body40.lr.ph ], [ %conv71, %do.body64.while.body40_crit_edge ]
  %ptes.addr.1125 = phi i32 [ %ptes, %while.body40.lr.ph ], [ %conv74, %do.body64.while.body40_crit_edge ]
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
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = zext i8 %40 to i32
  %shl = shl i32 %ptes.addr.1125, %conv43
  %conv56 = zext i32 %shl to i64
  %add58 = add i64 %36, %conv56
  %45 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add58, ptr %off, align 8
  br label %do.body64

if.else:                                          ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %off, align 8
  %incdec.ptr62 = getelementptr i32, ptr %42, i32 1
  %47 = ptrtoint ptr %dma45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %incdec.ptr62, ptr %dma45, align 8
  %extract.t123 = trunc i64 %shr44 to i32
  br label %do.body64

do.body64:                                        ; preds = %if.else, %if.then52
  %_ptes.0.off0 = phi i32 [ %ptes.addr.1125, %if.then52 ], [ %extract.t123, %if.else ]
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.1127, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add48)
  %conv71 = add i32 %_ptes.0.off0, %ptei.addr.1127
  %conv74 = sub i32 %ptes.addr.1125, %_ptes.0.off0
  %tobool39.not = icmp eq i32 %conv74, 0
  br i1 %tobool39.not, label %do.body64.do.end81_crit_edge, label %do.body64.while.body40_crit_edge

do.body64.while.body40_crit_edge:                 ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body40

do.body64.do.end81_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.end81:                                         ; preds = %do.body64.do.end81_crit_edge, %do.body32.do.end81_crit_edge, %while.body.do.end81_crit_edge, %do.body.do.end81_crit_edge
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
  tail call void %53(ptr noundef %49) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_mem(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr %5(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not57 = icmp eq i32 %ptes, 0
  br i1 %tobool.not57, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %off = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %do.body20.while.body_crit_edge, %while.body.lr.ph
  %ptei.addr.060 = phi i32 [ %ptei, %while.body.lr.ph ], [ %conv24, %do.body20.while.body_crit_edge ]
  %ptes.addr.058 = phi i32 [ %ptes, %while.body.lr.ph ], [ %conv27, %do.body20.while.body_crit_edge ]
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %15 to i32
  %shl12 = shl i32 %ptes.addr.058, %conv2
  %conv13 = zext i32 %shl12 to i64
  %add15 = add i64 %11, %conv13
  %18 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add15, ptr %off, align 8
  br label %do.body20

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %off, align 8
  %next = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next, align 4
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %mem, align 8
  %extract.t56 = trunc i64 %shr to i32
  br label %do.body20

do.body20:                                        ; preds = %if.else, %if.then
  %_ptes.0.off0 = phi i32 [ %ptes.addr.058, %if.then ], [ %extract.t56, %if.else ]
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.060, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add)
  %conv24 = add i32 %_ptes.0.off0, %ptei.addr.060
  %conv27 = sub i32 %ptes.addr.058, %_ptes.0.off0
  %tobool.not = icmp eq i32 %conv27, 0
  br i1 %tobool.not, label %do.body20.while.end_crit_edge, label %do.body20.while.body_crit_edge

do.body20.while.body_crit_edge:                   ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body20.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memory, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release, align 4
  tail call void %28(ptr noundef %24) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_unmap(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ptei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %base, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %mul, %conv
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
  %call = tail call ptr %7(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.else, !prof !48

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool31.not81 = icmp eq i32 %ptes, 0
  br i1 %tobool31.not81, label %for.cond.preheader.if.end50_crit_edge, label %do.body32.preheader

for.cond.preheader.if.end50_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body32.preheader:                              ; preds = %for.cond.preheader
  %conv3 = zext i32 %add to i64
  %conv4 = zext i32 %ptes to i64
  br label %do.body32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %ptes, 3
  %shr = lshr i32 %add, 3
  %arrayidx27 = getelementptr i64, ptr %call, i32 %shr
  tail call void @mmioset(ptr noundef %arrayidx27, i32 noundef 0, i32 noundef %shl) #6
  br label %if.end50

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %do.body32.preheader
  %_a.083 = phi i64 [ %add49, %do.body32.do.body32_crit_edge ], [ %conv3, %do.body32.preheader ]
  %_c.182 = phi i64 [ %dec48, %do.body32.do.body32_crit_edge ], [ %conv4, %do.body32.preheader ]
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
  tail call void %13(ptr noundef %9, i64 noundef %_a.083, i32 noundef 0) #6
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
  %add42 = add nuw nsw i64 %_a.083, 4
  tail call void %19(ptr noundef %15, i64 noundef %add42, i32 noundef 0) #6
  %dec48 = add nsw i64 %_c.182, -1
  %add49 = add nuw nsw i64 %_a.083, 8
  %tobool31.not = icmp eq i64 %dec48, 0
  br i1 %tobool31.not, label %do.body32.if.end50_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32.if.end50_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %do.body32.if.end50_crit_edge, %if.else, %for.cond.preheader.if.end50_crit_edge
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
  tail call void %25(ptr noundef %21) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgd_pde(ptr nocapture readnone %vmm, ptr nocapture noundef readonly %pgd, i32 noundef %pdei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %entry
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target, align 4
  %call = tail call i32 %13(ptr noundef %9) #6
  %14 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 1, label %if.then.sw.epilog_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %if.then.sw.epilog_crit_edge
  %data.0 = phi i64 [ 3, %sw.bb9 ], [ 34359738370, %sw.bb6 ], [ 1, %if.then.sw.epilog_crit_edge ]
  %addr = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %addr, align 8
  %shr = lshr i64 %16, 8
  %or27 = or i64 %shr, %data.0
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog, %entry.if.end28_crit_edge
  %data.1 = phi i64 [ %or27, %sw.epilog ], [ 0, %entry.if.end28_crit_edge ]
  %arrayidx30 = getelementptr [2 x ptr], ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %18, null
  %extract.t139 = trunc i64 %data.1 to i32
  %extract141 = lshr i64 %data.1, 32
  %extract.t142 = trunc i64 %extract141 to i32
  br i1 %tobool31.not, label %if.end28.if.end75_crit_edge, label %if.then32

if.end28.if.end75_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then32:                                        ; preds = %if.end28
  %memory33 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %memory33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memory33, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %target35 = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %target35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %target35, align 4
  %call37 = tail call i32 %24(ptr noundef %20) #6
  %25 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call37, label %do.end58 [
    i32 1, label %if.then32.sw.epilog72_crit_edge
    i32 2, label %sw.bb40
    i32 3, label %sw.bb43
  ]

if.then32.sw.epilog72_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72

sw.bb40:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72

sw.bb43:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72

do.end58:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog72:                                      ; preds = %sw.bb43, %sw.bb40, %if.then32.sw.epilog72_crit_edge
  %.sink = phi i64 [ 12884901888, %sw.bb43 ], [ 25769803776, %sw.bb40 ], [ 4294967296, %if.then32.sw.epilog72_crit_edge ]
  %or44 = or i64 %data.1, %.sink
  %addr73 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %addr73 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr73, align 8
  %shl = shl i64 %27, 24
  %or74 = or i64 %shl, %or44
  %extract.t = trunc i64 %or74 to i32
  %extract = lshr i64 %or74, 32
  %extract.t140 = trunc i64 %extract to i32
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog72, %if.end28.if.end75_crit_edge
  %data.3.off0 = phi i32 [ %extract.t, %sw.epilog72 ], [ %extract.t139, %if.end28.if.end75_crit_edge ]
  %data.3.off32 = phi i32 [ %extract.t140, %sw.epilog72 ], [ %extract.t142, %if.end28.if.end75_crit_edge ]
  %memory76 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %memory76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory76, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %acquire, align 4
  %call79 = tail call ptr %33(ptr noundef %29) #6
  %mul = shl i32 %pdei, 3
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %base, align 2
  %conv = zext i16 %35 to i32
  %add = add i32 %mul, %conv
  %conv85 = zext i32 %add to i64
  %36 = ptrtoint ptr %memory76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memory76, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr32, align 4
  tail call void %41(ptr noundef %37, i64 noundef %conv85, i32 noundef %data.3.off0) #6
  %42 = ptrtoint ptr %memory76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memory76, align 4
  %ptrs91 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ptrs91 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptrs91, align 4
  %wr3292 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr3292 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr3292, align 4
  %add94 = add nuw nsw i64 %conv85, 4
  tail call void %47(ptr noundef %43, i64 noundef %add94, i32 noundef %data.3.off32) #6
  %48 = ptrtoint ptr %memory76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %memory76, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %release, align 4
  tail call void %53(ptr noundef %49) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end58, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_invalidate_pdb(ptr nocapture noundef readonly %vmm, i64 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %conv = trunc i64 %addr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1051832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_invalidate(ptr noundef %vmm, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait87 = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %pd2 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 8
  %4 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd2, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %mutex = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %8 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1051776
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %and = and i32 %11, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond, label %do.body.if.end37_crit_edge

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.cond:                                          ; preds = %do.body
  %call4 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp = icmp sgt i64 %call4, -1
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end15

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end15:                                         ; preds = %do.cond
  %12 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_wait, align 8
  %device17 = getelementptr inbounds %struct.nvkm_timer, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device17, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call18 = call ptr @dev_driver_string(ptr noundef %17) #6
  %18 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_wait, align 8
  %device21 = getelementptr inbounds %struct.nvkm_timer, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device21, align 4
  %dev22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end15.dev_name.exit_crit_edge

do.end15.dev_name.exit_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i ], [ %25, %do.end15.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call18, ptr noundef %retval.0.i) #6
  br label %if.end37

if.end37:                                         ; preds = %dev_name.exit, %do.body.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %and39 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end37.do.body81_crit_edge

if.end37.do.body81_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.then41:                                        ; preds = %if.end37
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %target, align 4
  %call43 = call i32 %33(ptr noundef %29) #6
  %34 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call43, label %do.end60 [
    i32 1, label %if.then41.sw.epilog_crit_edge
    i32 2, label %sw.bb44
    i32 3, label %sw.bb46
  ]

if.then41.sw.epilog_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end60:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end60, %sw.bb46, %sw.bb44, %if.then41.sw.epilog_crit_edge
  %addr.0 = phi i64 [ 0, %do.end60 ], [ 3, %sw.bb46 ], [ 2, %sw.bb44 ], [ 0, %if.then41.sw.epilog_crit_edge ]
  %35 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd2, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %addr77 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %addr77 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %addr77, align 8
  %41 = lshr i64 %40, 8
  %shl = and i64 %41, 72057594037927920
  %or78 = or i64 %shl, %addr.0
  %42 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vmm, align 8
  %invalidate_pdb = getelementptr inbounds %struct.nvkm_vmm_func, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %invalidate_pdb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %invalidate_pdb, align 8
  call void %45(ptr noundef %vmm, i64 noundef %or78) #6
  br label %do.body81

do.body81:                                        ; preds = %sw.epilog, %if.end37.do.body81_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @arm_heavy_mb() #6
  %or84 = or i32 %type, -2147483648
  %46 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri, align 4
  %add.ptr86 = getelementptr i8, ptr %47, i32 1051836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %or84) #6, !srcloc !50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait87) #6
  %48 = call ptr @memset(ptr %_wait87, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait87) #6
  br label %do.body90

do.body90:                                        ; preds = %do.cond100.do.body90_crit_edge, %do.body81
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %add.ptr93 = getelementptr i8, ptr %50, i32 1051776
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #6, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %and96 = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.cond100, label %do.body90.if.end144_crit_edge

do.body90.if.end144_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

do.cond100:                                       ; preds = %do.body90
  %call101 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait87) #6
  %cmp102 = icmp sgt i64 %call101, -1
  br i1 %cmp102, label %do.cond100.do.body90_crit_edge, label %do.end120

do.cond100.do.body90_crit_edge:                   ; preds = %do.cond100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

do.end120:                                        ; preds = %do.cond100
  %52 = ptrtoint ptr %_wait87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_wait87, align 8
  %device123 = getelementptr inbounds %struct.nvkm_timer, ptr %53, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %device123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device123, align 4
  %dev124 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev124, align 8
  %call125 = call ptr @dev_driver_string(ptr noundef %57) #6
  %58 = ptrtoint ptr %_wait87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_wait87, align 8
  %device128 = getelementptr inbounds %struct.nvkm_timer, ptr %59, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %device128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device128, align 4
  %dev129 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev129, align 8
  %init_name.i169 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %init_name.i169 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i169, align 8
  %tobool.not.i170 = icmp eq ptr %65, null
  br i1 %tobool.not.i170, label %if.end.i171, label %do.end120.dev_name.exit173_crit_edge

do.end120.dev_name.exit173_crit_edge:             ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit173

if.end.i171:                                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  br label %dev_name.exit173

dev_name.exit173:                                 ; preds = %if.end.i171, %do.end120.dev_name.exit173_crit_edge
  %retval.0.i172 = phi ptr [ %67, %if.end.i171 ], [ %65, %do.end120.dev_name.exit173_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call125, ptr noundef %retval.0.i172) #6
  br label %if.end144

if.end144:                                        ; preds = %dev_name.exit173, %do.body90.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait87) #6
  %68 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmu, align 4
  %mutex147 = getelementptr inbounds %struct.nvkm_mmu, ptr %69, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex147) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_flush(ptr noundef %vmm, i32 %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %vmm, i32 0, i32 14, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 5
  tail call void @gf100_vmm_invalidate(ptr noundef %vmm, i32 noundef %spec.select)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_valid(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %map) #0 align 64 {
entry:
  %kind_inv = alloca i8, align 1
  %kindn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 %5(ptr noundef %1) #6
  %page3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %page3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page3, align 8
  %desc = getelementptr inbounds %struct.nvkm_vmm_page, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %func4 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %func4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func4, align 4
  %sparse = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sparse to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sparse, align 4
  %cmp.not = icmp eq ptr %13, null
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %14 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu, align 4
  %device5 = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device5, align 4
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind_inv) #6
  %20 = ptrtoint ptr %kind_inv to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %kind_inv, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kindn) #6
  %21 = ptrtoint ptr %kindn to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %kindn, align 4, !annotation !55
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 4
  %conv = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv
  %shr = ashr i32 %shl, 8
  %conv8 = sext i32 %shr to i64
  %next = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  %24 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv8, ptr %next, align 8
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp11 = icmp ugt i32 %argc, 4
  %25 = call ptr @memset(ptr %type, i32 0, i32 16)
  br i1 %cmp11, label %land.lhs.true17, label %land.lhs.true50

land.lhs.true17:                                  ; preds = %entry
  %26 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp20 = icmp eq i8 %27, 0
  br i1 %cmp20, label %if.then, label %land.lhs.true17.do.body_crit_edge

land.lhs.true17.do.body_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 5
  br i1 %tobool.not, label %if.then25, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vol26 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %argv, i32 0, i32 1
  %28 = ptrtoint ptr %vol26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vol26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27 = icmp ne i8 %29, 0
  %ro30 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %argv, i32 0, i32 2
  %30 = ptrtoint ptr %ro30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ro30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  %priv37 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %argv, i32 0, i32 3
  %32 = ptrtoint ptr %priv37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %priv37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool38.not = icmp eq i8 %33, 0
  %kind44 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %argv, i32 0, i32 4
  %34 = ptrtoint ptr %kind44 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %kind44, align 1
  %phi.bo415 = select i1 %tobool31.not, i8 0, i8 4
  %phi.bo432 = select i1 %tobool38.not, i8 1, i8 3
  br label %if.end82

land.lhs.true50:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp51 = icmp eq i32 %argc, 0
  br i1 %cmp51, label %if.then57, label %land.lhs.true50.do.body_crit_edge

land.lhs.true50.do.body_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then57:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp58 = icmp eq i32 %call, 2
  br label %if.end82

do.body:                                          ; preds = %land.lhs.true50.do.body_crit_edge, %if.then.do.body_crit_edge, %land.lhs.true17.do.body_crit_edge
  %_ret47.0.ph = phi i32 [ -38, %land.lhs.true50.do.body_crit_edge ], [ -38, %land.lhs.true17.do.body_crit_edge ], [ -7, %if.then.do.body_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %36 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp62 = icmp ugt i32 %37, 3
  br i1 %cmp62, label %do.end, label %do.body.cleanup310_crit_edge

do.body.cleanup310_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup310

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmu, align 4
  %device73 = getelementptr inbounds %struct.nvkm_mmu, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device73, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %39, i32 0, i32 1, i32 4
  %name74 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %44 = ptrtoint ptr %name74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name74, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %45) #9
  br label %cleanup310

if.end82:                                         ; preds = %if.then57, %if.then25
  %kind.0 = phi i8 [ 0, %if.then57 ], [ %35, %if.then25 ]
  %priv.0 = phi i8 [ 1, %if.then57 ], [ %phi.bo432, %if.then25 ]
  %ro.0 = phi i8 [ 0, %if.then57 ], [ %phi.bo415, %if.then25 ]
  %vol.0.in = phi i1 [ %cmp58, %if.then57 ], [ %tobool27, %if.then25 ]
  %46 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vmm, align 8
  %aper84 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %aper84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %aper84, align 8
  %call85 = tail call i32 %49(i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %do.end102, label %if.end118, !prof !48

do.end102:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #6
  br label %cleanup310

if.end118:                                        ; preds = %if.end82
  %50 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmu, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %kind121 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %kind121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %kind121, align 4
  %call123 = call ptr %55(ptr noundef %51, ptr noundef nonnull %kindn, ptr noundef nonnull %kind_inv) #6
  %conv124 = zext i8 %kind.0 to i32
  %56 = ptrtoint ptr %kindn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %kindn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv124)
  %cmp125.not = icmp sgt i32 %57, %conv124
  br i1 %cmp125.not, label %lor.lhs.false, label %if.end118.do.body132_crit_edge

if.end118.do.body132_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body132

lor.lhs.false:                                    ; preds = %if.end118
  %arrayidx = getelementptr i8, ptr %call123, i32 %conv124
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %60 = ptrtoint ptr %kind_inv to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %kind_inv, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp129 = icmp eq i8 %59, %61
  br i1 %cmp129, label %lor.lhs.false.do.body132_crit_edge, label %if.end161

lor.lhs.false.do.body132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body132

do.body132:                                       ; preds = %lor.lhs.false.do.body132_crit_edge, %if.end118.do.body132_crit_edge
  %debug134 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %62 = ptrtoint ptr %debug134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp135 = icmp ugt i32 %63, 3
  br i1 %cmp135, label %do.end148, label %do.body132.cleanup310_crit_edge

do.body132.cleanup310_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup310

do.end148:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmu, align 4
  %device149 = getelementptr inbounds %struct.nvkm_mmu, ptr %65, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %device149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device149, align 4
  %dev150 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev150, align 8
  %name151 = getelementptr inbounds %struct.nvkm_mmu, ptr %65, i32 0, i32 1, i32 4
  %name153 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %70 = ptrtoint ptr %name153 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name153, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.7, ptr noundef %name151, ptr noundef %71, i32 noundef %conv124) #9
  br label %cleanup310

if.end161:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %kind.0)
  %cmp166.not = icmp eq i8 %59, %kind.0
  br i1 %cmp166.not, label %if.end161.if.end287_crit_edge, label %if.then168

if.end161.if.end287_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

if.then168:                                       ; preds = %if.end161
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %73)
  %cmp171 = icmp eq i8 %73, 16
  %74 = select i1 %cmp171, i1 %cmp.not, i1 false
  %75 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %19, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %size, align 4
  %call178 = call i64 %78(ptr noundef %19) #6
  %add = add i64 %call178, 131071
  %and = and i64 %add, -131072
  %sh_prom = select i1 %74, i64 16, i64 17
  %shr179 = lshr i64 %and, %sh_prom
  %conv180 = trunc i64 %shr179 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp181.not = icmp eq i32 %call85, 0
  br i1 %cmp181.not, label %lor.lhs.false183, label %if.then168.do.body189_crit_edge

if.then168.do.body189_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body189

lor.lhs.false183:                                 ; preds = %if.then168
  %type184 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %7, i32 0, i32 2
  %79 = ptrtoint ptr %type184 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %type184, align 4
  %81 = and i8 %80, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool187.not = icmp eq i8 %81, 0
  br i1 %tobool187.not, label %lor.lhs.false183.do.body189_crit_edge, label %if.end219

lor.lhs.false183.do.body189_crit_edge:            ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body189

do.body189:                                       ; preds = %lor.lhs.false183.do.body189_crit_edge, %if.then168.do.body189_crit_edge
  %debug191 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %82 = ptrtoint ptr %debug191 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp192 = icmp ugt i32 %83, 3
  br i1 %cmp192, label %do.end205, label %do.body189.cleanup310_crit_edge

do.body189.cleanup310_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup310

do.end205:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmu, align 4
  %device206 = getelementptr inbounds %struct.nvkm_mmu, ptr %85, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %device206 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device206, align 4
  %dev207 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev207, align 8
  %name208 = getelementptr inbounds %struct.nvkm_mmu, ptr %85, i32 0, i32 1, i32 4
  %name210 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %90 = ptrtoint ptr %name210 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name210, align 8
  %type211 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %7, i32 0, i32 2
  %92 = ptrtoint ptr %type211 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %type211, align 4
  %conv212 = zext i8 %93 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.10, ptr noundef %name208, ptr noundef %91, i32 noundef %call85, i32 noundef %conv212) #9
  br label %cleanup310

if.end219:                                        ; preds = %lor.lhs.false183
  %tags220 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 8
  %call221 = call i32 @nvkm_memory_tags_get(ptr noundef %19, ptr noundef %17, i32 noundef %conv180, ptr noundef nonnull @nvkm_ltc_tags_clear, ptr noundef %tags220) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end252, label %do.body224

do.body224:                                       ; preds = %if.end219
  %debug226 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %94 = ptrtoint ptr %debug226 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp227 = icmp ugt i32 %95, 3
  br i1 %cmp227, label %do.end240, label %do.body224.cleanup310_crit_edge

do.body224.cleanup310_crit_edge:                  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup310

do.end240:                                        ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmu, align 4
  %device241 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %device241 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device241, align 4
  %dev242 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev242 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev242, align 8
  %name243 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 4
  %name245 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %102 = ptrtoint ptr %name245 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name245, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.13, ptr noundef %name243, ptr noundef %103, i32 noundef %call221) #9
  br label %cleanup310

if.end252:                                        ; preds = %if.end219
  %104 = ptrtoint ptr %tags220 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tags220, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %tobool254.not = icmp eq ptr %107, null
  br i1 %tobool254.not, label %if.else282, label %if.then255

if.then255:                                       ; preds = %if.end252
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %offset, align 4
  %conv259 = zext i32 %109 to i64
  %offset260 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %110 = ptrtoint ptr %offset260 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %offset260, align 8
  %shr261 = lshr i64 %111, 17
  %add262 = add nuw nsw i64 %shr261, %conv259
  %112 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %113)
  %cmp265 = icmp eq i8 %113, 17
  %brmerge = select i1 %cmp265, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.then269, label %if.else276

if.then269:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #8
  %shl270 = shl i64 %add262, 44
  %114 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %type, align 8
  %or = or i64 %115, %shl270
  store i64 %or, ptr %type, align 8
  %116 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ctag, align 8
  %or273 = or i64 %117, 17592186044416
  store i64 %or273, ptr %ctag, align 8
  %118 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %next, align 8
  %or275 = or i64 %119, 17592186044416
  store i64 %or275, ptr %next, align 8
  br label %if.end287

if.else276:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #8
  %shl277 = shl nuw nsw i64 %add262, 1
  %or278 = or i64 %shl277, 1
  %120 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ctag, align 8
  %or280 = or i64 %121, %or278
  store i64 %or280, ptr %ctag, align 8
  br label %if.end287

if.else282:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx, align 1
  br label %if.end287

if.end287:                                        ; preds = %if.else282, %if.else276, %if.then269, %if.end161.if.end287_crit_edge
  %kind.3 = phi i8 [ %kind.0, %if.end161.if.end287_crit_edge ], [ %123, %if.else282 ], [ %kind.0, %if.else276 ], [ %kind.0, %if.then269 ]
  %124 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %type, align 8
  %shl299 = select i1 %vol.0.in, i64 4294967296, i64 0
  %conv302416 = zext i32 %call85 to i64
  %shl303 = shl nuw i64 %conv302416, 33
  %conv306 = zext i8 %kind.3 to i64
  %shl307 = shl nuw nsw i64 %conv306, 36
  %or293433 = or i8 %priv.0, %ro.0
  %or293 = zext i8 %or293433 to i64
  %or289 = or i64 %shl299, %or293
  %or301 = or i64 %or289, %shl303
  %or305 = or i64 %shl307, %125
  %or309 = or i64 %or305, %or301
  store i64 %or309, ptr %type, align 8
  br label %cleanup310

cleanup310:                                       ; preds = %if.end287, %do.end240, %do.body224.cleanup310_crit_edge, %do.end205, %do.body189.cleanup310_crit_edge, %do.end148, %do.body132.cleanup310_crit_edge, %do.end102, %do.end, %do.body.cleanup310_crit_edge
  %retval.1 = phi i32 [ %call85, %do.end102 ], [ 0, %if.end287 ], [ %_ret47.0.ph, %do.end ], [ %_ret47.0.ph, %do.body.cleanup310_crit_edge ], [ -22, %do.end148 ], [ -22, %do.body132.cleanup310_crit_edge ], [ %call221, %do.body224.cleanup310_crit_edge ], [ %call221, %do.end240 ], [ -22, %do.body189.cleanup310_crit_edge ], [ -22, %do.end205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kindn) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind_inv) #6
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_tags_clear(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_vmm_aper(i32 noundef %target) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %target, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.gf100_vmm_aper, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_vmm_part(ptr nocapture readnone %vmm, ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %3(ptr noundef %inst) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.else, !prof !48

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %inst, i32 0, i32 1
  %4 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr32, align 4
  tail call void %7(ptr noundef %inst, i64 noundef 512, i32 noundef 0) #6
  %8 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs, align 4
  %wr3228 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr3228 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr3228, align 4
  tail call void %11(ptr noundef %inst, i64 noundef 516, i32 noundef 0) #6
  %12 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs, align 4
  %wr32.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr32.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32.1, align 4
  tail call void %15(ptr noundef %inst, i64 noundef 520, i32 noundef 0) #6
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr3228.1 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3228.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3228.1, align 4
  tail call void %19(ptr noundef %inst, i64 noundef 524, i32 noundef 0) #6
  br label %if.end37

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr i64, ptr %call, i32 64
  tail call void @mmioset(ptr noundef %arrayidx19, i32 noundef 0, i32 noundef 16) #6
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.cond.preheader
  %20 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inst, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %inst) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_join_(ptr nocapture noundef readonly %vmm, ptr noundef %inst, i64 noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 8
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memory, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target, align 4
  %call = tail call i32 %9(ptr noundef %5) #6
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i64 %base, 6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i64 %base, 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %entry.sw.epilog_crit_edge
  %base.addr.0 = phi i64 [ %or7, %sw.bb6 ], [ %or5, %sw.bb3 ], [ %base, %entry.sw.epilog_crit_edge ]
  %addr = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr, align 8
  %or22 = or i64 %12, %base.addr.0
  %13 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inst, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %acquire, align 4
  %call24 = tail call ptr %16(ptr noundef %inst) #6
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %inst, i32 0, i32 1
  %17 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr32, align 4
  %conv = trunc i64 %or22 to i32
  tail call void %20(ptr noundef %inst, i64 noundef 512, i32 noundef %conv) #6
  %21 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptrs, align 4
  %wr3227 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr3227 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr3227, align 4
  %shr = lshr i64 %or22, 32
  %conv30 = trunc i64 %shr to i32
  tail call void %24(ptr noundef %inst, i64 noundef 516, i32 noundef %conv30) #6
  %limit = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 7
  %25 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %limit, align 8
  %sub = add i64 %26, -1
  %27 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptrs, align 4
  %wr3237 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr3237 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr3237, align 4
  %conv40 = trunc i64 %sub to i32
  tail call void %30(ptr noundef %inst, i64 noundef 520, i32 noundef %conv40) #6
  %31 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptrs, align 4
  %wr3242 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wr3242 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr3242, align 4
  %shr44 = lshr i64 %sub, 32
  %conv46 = trunc i64 %shr44 to i32
  tail call void %34(ptr noundef %inst, i64 noundef 524, i32 noundef %conv46) #6
  %35 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inst, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %release, align 4
  tail call void %38(ptr noundef %inst) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_join(ptr nocapture noundef readonly %vmm, ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_vmm_join_(ptr noundef %vmm, ptr noundef %inst, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_new_(ptr noundef %func_16, ptr noundef %func_17, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %fb = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 8
  %page = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %5, label %do.end [
    i8 16, label %sw.bb
    i8 17, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @nv04_vmm_new_(ptr noundef %func_16, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @nv04_vmm_new_(ptr noundef %func_17, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %fb.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb.i, align 8
  %page.i = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %5, label %do.end.i [
    i8 16, label %sw.bb.i
    i8 17, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @gf100_vmm_16, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #6
  br label %gf100_vmm_new_.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @gf100_vmm_17, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #6
  br label %gf100_vmm_new_.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #6
  br label %gf100_vmm_new_.exit

gf100_vmm_new_.exit:                              ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @gf100_vmm_pgt, !1, !"gf100_vmm_pgt", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 98, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 121, i32 4}
!4 = !{ptr @gf100_vmm_pgd, !5, !"gf100_vmm_pgd", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 147, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 198, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 268, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gf100_vmm_valid._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @gf100_vmm_valid._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 278, i32 3}
!17 = !{ptr @gf100_vmm_valid._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @gf100_vmm_valid._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 286, i32 4}
!21 = !{ptr @gf100_vmm_valid._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gf100_vmm_valid._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 294, i32 4}
!25 = !{ptr @gf100_vmm_valid._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gf100_vmm_valid._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @gf100_vmm_16, !28, !"gf100_vmm_16", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 385, i32 1}
!29 = !{ptr @gf100_vmm_desc_16_16, !30, !"gf100_vmm_desc_16_16", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 174, i32 1}
!31 = !{ptr @gf100_vmm_desc_16_12, !32, !"gf100_vmm_desc_16_12", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 167, i32 1}
!33 = !{ptr @gf100_vmm_17, !34, !"gf100_vmm_17", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 370, i32 1}
!35 = !{ptr @gf100_vmm_desc_17_17, !36, !"gf100_vmm_desc_17_17", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 160, i32 1}
!37 = !{ptr @gf100_vmm_desc_17_12, !38, !"gf100_vmm_desc_17_12", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c", i32 153, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2156330799}
!50 = !{i64 5413274}
!51 = !{i64 5413692}
!52 = !{i64 2156332712}
!53 = !{i64 2156338582}
!54 = !{i64 2156340464}
!55 = !{!"auto-init"}
