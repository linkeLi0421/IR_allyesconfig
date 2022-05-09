; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_uvmm = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_ummu = type { %struct.nvkm_object, ptr }
%struct.nvif_vmm_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.3, %struct.anon.4, %struct.anon.5, ptr, i8 }
%struct.anon.3 = type { %struct.nvkm_sclass }
%struct.anon.4 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.5 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvif_vmm_page_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.nvif_vmm_get_v0 = type { i8, i8, i8, i8, i8, [3 x i8], i64, i64 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvif_vmm_put_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_vmm_map_v0 = type { i8, [7 x i8], i64, i64, i64, i64, [0 x i8] }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_vmm_unmap_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vmm_pfnmap_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i64] }
%struct.nvif_vmm_pfnclr_v0 = type { i8, [7 x i8], i64, i64 }

@nvkm_uvmm = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_uvmm_dtor, ptr null, ptr null, ptr @nvkm_uvmm_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: %s: lookup %016llx: %016llx %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_uvmm_mthd_put\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_put._entry_ptr = internal global ptr @nvkm_uvmm_mthd_put._entry, section ".printk_index", align 4
@nvkm_uvmm_mthd_put._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s: denied %016llx: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_put._entry_ptr.8 = internal global ptr @nvkm_uvmm_mthd_put._entry.6, section ".printk_index", align 4
@nvkm_uvmm_mthd_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s: memory %016llx %ld\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_uvmm_mthd_map\00", [45 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_map._entry_ptr = internal global ptr @nvkm_uvmm_mthd_map._entry, section ".printk_index", align 4
@nvkm_uvmm_mthd_map._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s: lookup %016llx\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_map._entry_ptr.13 = internal global ptr @nvkm_uvmm_mthd_map._entry.11, section ".printk_index", align 4
@nvkm_uvmm_mthd_map._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_map._entry_ptr.15 = internal global ptr @nvkm_uvmm_mthd_map._entry.14, section ".printk_index", align 4
@nvkm_uvmm_mthd_map._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s: pfnmap %016llx\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_map._entry_ptr.18 = internal global ptr @nvkm_uvmm_mthd_map._entry.16, section ".printk_index", align 4
@nvkm_uvmm_mthd_map._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: %s: split %d %d %d %016llx %016llx %016llx %016llx\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_map._entry_ptr.21 = internal global ptr @nvkm_uvmm_mthd_map._entry.19, section ".printk_index", align 4
@nvkm_uvmm_mthd_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s: lookup %016llx: %016llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_uvmm_mthd_unmap\00", [43 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_unmap._entry_ptr = internal global ptr @nvkm_uvmm_mthd_unmap._entry, section ".printk_index", align 4
@nvkm_uvmm_mthd_unmap._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.23, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_unmap._entry_ptr.25 = internal global ptr @nvkm_uvmm_mthd_unmap._entry.24, section ".printk_index", align 4
@nvkm_uvmm_mthd_unmap._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s: unmapped\0A\00", [46 x i8] zeroinitializer }, align 32
@nvkm_uvmm_mthd_unmap._entry_ptr.28 = internal global ptr @nvkm_uvmm_mthd_unmap._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"nvkm_uvmm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 351, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 385, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 238, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 244, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 164, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 170, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 175, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 180, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 187, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 119, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 125, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 130, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @nvkm_uvmm_mthd_map._entry, ptr @nvkm_uvmm_mthd_map._entry.11, ptr @nvkm_uvmm_mthd_map._entry.14, ptr @nvkm_uvmm_mthd_map._entry.16, ptr @nvkm_uvmm_mthd_map._entry.19, ptr @nvkm_uvmm_mthd_map._entry_ptr, ptr @nvkm_uvmm_mthd_map._entry_ptr.13, ptr @nvkm_uvmm_mthd_map._entry_ptr.15, ptr @nvkm_uvmm_mthd_map._entry_ptr.18, ptr @nvkm_uvmm_mthd_map._entry_ptr.21, ptr @nvkm_uvmm_mthd_put._entry, ptr @nvkm_uvmm_mthd_put._entry.6, ptr @nvkm_uvmm_mthd_put._entry_ptr, ptr @nvkm_uvmm_mthd_put._entry_ptr.8, ptr @nvkm_uvmm_mthd_unmap._entry, ptr @nvkm_uvmm_mthd_unmap._entry.24, ptr @nvkm_uvmm_mthd_unmap._entry.26, ptr @nvkm_uvmm_mthd_unmap._entry_ptr, ptr @nvkm_uvmm_mthd_unmap._entry_ptr.25, ptr @nvkm_uvmm_mthd_unmap._entry_ptr.28, ptr @nvkm_uvmm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_put._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_map._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_map._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_map._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_map._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_unmap._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_uvmm_mthd_unmap._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_uvmm_search(ptr noundef %client, i64 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nvkm_object_search(ptr noundef %client, i64 noundef %handle, ptr noundef nonnull @nvkm_uvmm) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vmm = getelementptr inbounds %struct.nvkm_uvmm, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_uvmm_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %mmu1 = getelementptr inbounds %struct.nvkm_ummu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu1, align 8
  %maxver = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp3 = icmp ugt i32 %argc, 23
  br i1 %cmp3, label %land.lhs.true7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true7:                                   ; preds = %entry
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp10 = icmp eq i8 %7, 0
  br i1 %cmp10, label %if.then, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true7
  %add.ptr12 = getelementptr i8, ptr %argv, i32 24
  %sub = add i32 %argc, -24
  br i1 %cmp, label %if.then13, label %if.then.if.then18_crit_edge

if.then.if.then18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool14.not = icmp eq i32 %sub, 0
  br i1 %tobool14.not, label %if.then13.if.then18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13.if.then18_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %if.then13.if.then18_crit_edge, %if.then.if.then18_crit_edge
  %argv.addr.0 = phi ptr [ %add.ptr12, %if.then.if.then18_crit_edge ], [ null, %if.then13.if.then18_crit_edge ]
  %managed19 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %argv, i32 0, i32 2
  %8 = ptrtoint ptr %managed19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %managed19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp21 = icmp ne i8 %9, 0
  %addr24 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %argv, i32 0, i32 4
  %10 = ptrtoint ptr %addr24 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr24, align 8
  %size25 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %argv, i32 0, i32 5
  %12 = ptrtoint ptr %size25 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size25, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 80) #9
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then18.cleanup_crit_edge, label %if.end29

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.then18
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_uvmm, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #6
  %15 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %pobject, align 4
  %vmm = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vmm, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.then32, label %if.else48

if.then32:                                        ; preds = %if.end29
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %ctor = getelementptr inbounds %struct.nvkm_mmu_func, ptr %19, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctor, align 4
  %vmm35 = getelementptr inbounds %struct.nvkm_uvmm, ptr %call7.i.i, i32 0, i32 1
  %call36 = tail call i32 %21(ptr noundef %3, i1 noundef zeroext %cmp21, i64 noundef %11, i64 noundef %13, ptr noundef %argv.addr.0, i32 noundef %sub, ptr noundef null, ptr noundef nonnull @.str, ptr noundef %vmm35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %vmm35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm35, align 8
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug, align 4
  %client = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 8
  %debug41 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %debug41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug41, align 8
  %30 = tail call i32 @llvm.umax.i32(i32 %25, i32 %29)
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %debug, align 4
  br label %if.end55

if.else48:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool49.not = icmp eq i64 %13, 0
  br i1 %tobool49.not, label %if.end51, label %if.else48.cleanup_crit_edge

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call ptr @nvkm_vmm_ref(ptr noundef nonnull %17) #6
  %vmm54 = getelementptr inbounds %struct.nvkm_uvmm, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %vmm54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call53, ptr %vmm54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end39
  %vmm56 = getelementptr inbounds %struct.nvkm_uvmm, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %vmm56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vmm56, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %page58 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %36, i32 0, i32 8
  %page_nr = getelementptr inbounds %struct.nvif_vmm_v0, ptr %argv, i32 0, i32 1
  %37 = ptrtoint ptr %page_nr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %page_nr, align 1
  %tobool59.not122 = icmp eq ptr %page58, null
  br i1 %tobool59.not122, label %if.end55.while.end_crit_edge, label %if.end55.land.rhs_crit_edge

if.end55.land.rhs_crit_edge:                      ; preds = %if.end55
  br label %land.rhs

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end55.land.rhs_crit_edge
  %page.0124 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %page58, %if.end55.land.rhs_crit_edge ]
  %storemerge123 = phi i8 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.end55.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %page.0124 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %page.0124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool61.not = icmp eq i8 %39, 0
  br i1 %tobool61.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr %struct.nvkm_vmm_page, ptr %page.0124, i32 1
  %inc = add i8 %storemerge123, 1
  %40 = ptrtoint ptr %page_nr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %inc, ptr %page_nr, align 1
  %tobool59.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool59.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end55.while.end_crit_edge
  %start = getelementptr inbounds %struct.nvkm_vmm, ptr %34, i32 0, i32 6
  %41 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %start, align 8
  %43 = ptrtoint ptr %addr24 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %addr24, align 8
  %limit = getelementptr inbounds %struct.nvkm_vmm, ptr %34, i32 0, i32 7
  %44 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %limit, align 8
  %46 = ptrtoint ptr %size25 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %size25, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else48.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %if.then18.cleanup_crit_edge ], [ %call36, %if.then32.cleanup_crit_edge ], [ -22, %if.else48.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ -38, %land.lhs.true7.cleanup_crit_edge ], [ -7, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_uvmm_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #6
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_uvmm_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %memory.i = alloca ptr, align 4
  %vma.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %sw.caserange [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %vmm.i = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %vmm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vmm.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %page1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %4, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %sw.bb
  %nr.0.i = phi i8 [ 0, %sw.bb ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %idxprom.i = zext i8 %nr.0.i to i32
  %arrayidx.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i8 %6, 0
  %inc.i = add i8 %nr.0.i, 1
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %argc)
  %cmp2.i = icmp ugt i32 %argc, 7
  br i1 %cmp2.i, label %land.lhs.true6.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %7 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.i = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %argc)
  %tobool12.i = icmp eq i32 %argc, 8
  %spec.select.i = and i1 %tobool12.i, %cmp9.i
  br i1 %spec.select.i, label %if.then15.i, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15.i:                                      ; preds = %land.lhs.true6.i
  %index16.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 1
  %9 = ptrtoint ptr %index16.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index16.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %nr.0.i)
  %cmp19.not.i = icmp ult i8 %10, %nr.0.i
  br i1 %cmp19.not.i, label %if.end22.i, label %if.then15.i.cleanup_crit_edge

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i = zext i8 %10 to i32
  %arrayidx24.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %conv17.i
  %type25.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %conv17.i, i32 2
  %11 = ptrtoint ptr %type25.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type25.i, align 4
  %13 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx24.i, align 4
  %shift29.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 2
  %15 = ptrtoint ptr %shift29.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %shift29.i, align 1
  %and.i = and i8 %12, 1
  %sparse.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 3
  %16 = ptrtoint ptr %sparse.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and.i, ptr %sparse.i, align 1
  %and35.i = lshr i8 %12, 1
  %and35.lobit.i = and i8 %and35.i, 1
  %vram.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 4
  %17 = ptrtoint ptr %vram.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and35.lobit.i, ptr %vram.i, align 1
  %and43.i = lshr i8 %12, 2
  %and43.lobit.i = and i8 %and43.i, 1
  %host.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 5
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and43.lobit.i, ptr %host.i, align 1
  %19 = lshr i8 %12, 3
  %.lobit.i = and i8 %19, 1
  %comp.i = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %argv, i32 0, i32 6
  %20 = ptrtoint ptr %comp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit.i, ptr %comp.i, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %vmm1.i = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %21 = ptrtoint ptr %vmm1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vmm1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma.i) #6
  %23 = ptrtoint ptr %vma.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %vma.i, align 4, !annotation !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp2.i46 = icmp ugt i32 %argc, 23
  br i1 %cmp2.i46, label %land.lhs.true6.i48, label %sw.bb1.nvkm_uvmm_mthd_get.exit_crit_edge

sw.bb1.nvkm_uvmm_mthd_get.exit_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_get.exit

land.lhs.true6.i48:                               ; preds = %sw.bb1
  %24 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp9.i47 = icmp eq i8 %25, 0
  br i1 %cmp9.i47, label %if.then.i, label %land.lhs.true6.i48.nvkm_uvmm_mthd_get.exit_crit_edge

land.lhs.true6.i48.nvkm_uvmm_mthd_get.exit_crit_edge: ; preds = %land.lhs.true6.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_get.exit

if.then.i:                                        ; preds = %land.lhs.true6.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %argc)
  %tobool.not.i49 = icmp eq i32 %argc, 24
  br i1 %tobool.not.i49, label %if.then14.i, label %if.then.i.nvkm_uvmm_mthd_get.exit_crit_edge

if.then.i.nvkm_uvmm_mthd_get.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_get.exit

if.then14.i:                                      ; preds = %if.then.i
  %type.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp16.i = icmp eq i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp20.i = icmp eq i8 %27, 0
  %sparse23.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 2
  %28 = ptrtoint ptr %sparse23.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sparse23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.i = icmp ne i8 %29, 0
  %page26.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 3
  %30 = ptrtoint ptr %page26.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %page26.i, align 1
  %align27.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 4
  %32 = ptrtoint ptr %align27.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %align27.i, align 4
  %size28.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 6
  %34 = ptrtoint ptr %size28.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size28.i, align 8
  %mutex.i = getelementptr inbounds %struct.nvkm_vmm, ptr %22, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %call.i = call i32 @nvkm_vmm_get_locked(ptr noundef %22, i1 noundef zeroext %cmp16.i, i1 noundef zeroext %cmp20.i, i1 noundef zeroext %tobool24.i, i8 noundef zeroext %31, i8 noundef zeroext %33, i64 noundef %35, ptr noundef nonnull %vma.i) #6
  call void @mutex_unlock(ptr noundef %mutex.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.then14.i.nvkm_uvmm_mthd_get.exit_crit_edge

if.then14.i.nvkm_uvmm_mthd_get.exit_crit_edge:    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_get.exit

if.end36.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vma.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_vma, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %addr.i, align 8
  %addr37.i = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %argv, i32 0, i32 7
  %40 = ptrtoint ptr %addr37.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %addr37.i, align 8
  br label %nvkm_uvmm_mthd_get.exit

nvkm_uvmm_mthd_get.exit:                          ; preds = %if.end36.i, %if.then14.i.nvkm_uvmm_mthd_get.exit_crit_edge, %if.then.i.nvkm_uvmm_mthd_get.exit_crit_edge, %land.lhs.true6.i48.nvkm_uvmm_mthd_get.exit_crit_edge, %sw.bb1.nvkm_uvmm_mthd_get.exit_crit_edge
  %retval.0.i50 = phi i32 [ 0, %if.end36.i ], [ %call.i, %if.then14.i.nvkm_uvmm_mthd_get.exit_crit_edge ], [ -38, %sw.bb1.nvkm_uvmm_mthd_get.exit_crit_edge ], [ -38, %land.lhs.true6.i48.nvkm_uvmm_mthd_get.exit_crit_edge ], [ -7, %if.then.i.nvkm_uvmm_mthd_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %vmm1.i51 = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %41 = ptrtoint ptr %vmm1.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vmm1.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp2.i52 = icmp ugt i32 %argc, 15
  br i1 %cmp2.i52, label %land.lhs.true6.i54, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6.i54:                               ; preds = %sw.bb3
  %43 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp9.i53 = icmp eq i8 %44, 0
  br i1 %cmp9.i53, label %if.then.i56, label %land.lhs.true6.i54.cleanup_crit_edge

land.lhs.true6.i54.cleanup_crit_edge:             ; preds = %land.lhs.true6.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i56:                                      ; preds = %land.lhs.true6.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i55 = icmp eq i32 %argc, 16
  br i1 %tobool.not.i55, label %if.then14.i59, label %if.then.i56.cleanup_crit_edge

if.then.i56.cleanup_crit_edge:                    ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.i59:                                    ; preds = %if.then.i56
  %addr15.i = getelementptr inbounds %struct.nvif_vmm_put_v0, ptr %argv, i32 0, i32 2
  %45 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %addr15.i, align 8
  %mutex.i57 = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i57, i32 noundef 0) #6
  %47 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %addr15.i, align 8
  %call.i58 = tail call ptr @nvkm_vmm_node_search(ptr noundef %42, i64 noundef %48) #6
  %tobool18.not.i = icmp eq ptr %call.i58, null
  br i1 %tobool18.not.i, label %if.then14.i59.do.body.i_crit_edge, label %lor.lhs.false.i

if.then14.i59.do.body.i_crit_edge:                ; preds = %if.then14.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.then14.i59
  %addr19.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i58, i32 0, i32 2
  %49 = ptrtoint ptr %addr19.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %addr19.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %46)
  %cmp20.not.i = icmp eq i64 %50, %46
  br i1 %cmp20.not.i, label %lor.rhs.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %part.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i58, i32 0, i32 4
  %51 = ptrtoint ptr %part.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %part.i, align 1
  %52 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %bf.cast.not.i = icmp eq i8 %52, 0
  br i1 %bf.cast.not.i, label %if.end54.i, label %lor.rhs.i.do.body.i_crit_edge

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %lor.rhs.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %if.then14.i59.do.body.i_crit_edge
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 3
  %53 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp24.i = icmp ugt i32 %54, 3
  br i1 %cmp24.i, label %do.end.i, label %do.body.i.done.i_crit_edge

do.body.i.done.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

do.end.i:                                         ; preds = %do.body.i
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 1
  %55 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmu.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %56, i32 0, i32 1, i32 4
  %name33.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 2
  %61 = ptrtoint ptr %name33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name33.i, align 8
  br i1 %tobool18.not.i, label %do.end.i.cond.end46.i_crit_edge, label %cond.true38.i

do.end.i.cond.end46.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end46.i

cond.true38.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %addr35.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i58, i32 0, i32 2
  %63 = ptrtoint ptr %addr35.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %addr35.i, align 8
  %part39.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i58, i32 0, i32 4
  %65 = ptrtoint ptr %part39.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load40.i = load i8, ptr %part39.i, align 1
  %66 = lshr i8 %bf.load40.i, 3
  %.lobit.i60 = and i8 %66, 1
  %67 = zext i8 %.lobit.i60 to i32
  br label %cond.end46.i

cond.end46.i:                                     ; preds = %cond.true38.i, %do.end.i.cond.end46.i_crit_edge
  %cond36143.i = phi i64 [ %64, %cond.true38.i ], [ -1, %do.end.i.cond.end46.i_crit_edge ]
  %cond47.i = phi i32 [ %67, %cond.true38.i ], [ 0, %do.end.i.cond.end46.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.1, ptr noundef %name.i, ptr noundef %62, i64 noundef %46, i64 noundef %cond36143.i, i32 noundef %cond47.i) #10
  br label %done.i

if.end54.i:                                       ; preds = %lor.rhs.i
  %68 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %bf.cast58.not.i = icmp eq i8 %68, 0
  br i1 %bf.cast58.not.i, label %if.end94.i, label %do.body60.i

do.body60.i:                                      ; preds = %if.end54.i
  %debug62.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 3
  %69 = ptrtoint ptr %debug62.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp63.i = icmp ugt i32 %70, 3
  br i1 %cmp63.i, label %do.end76.i, label %do.body60.i.done.i_crit_edge

do.body60.i.done.i_crit_edge:                     ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

do.end76.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu68.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 1
  %71 = ptrtoint ptr %mmu68.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmu68.i, align 4
  %device77.i = getelementptr inbounds %struct.nvkm_mmu, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %device77.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device77.i, align 4
  %dev78.i = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev78.i, align 8
  %name79.i = getelementptr inbounds %struct.nvkm_mmu, ptr %72, i32 0, i32 1, i32 4
  %name81.i = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 2
  %77 = ptrtoint ptr %name81.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name81.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.7, ptr noundef %name79.i, ptr noundef %78, i64 noundef %46, i32 noundef 1) #10
  br label %done.i

if.end94.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvkm_vmm_put_locked(ptr noundef %42, ptr noundef nonnull %call.i58) #6
  br label %done.i

done.i:                                           ; preds = %if.end94.i, %do.end76.i, %do.body60.i.done.i_crit_edge, %cond.end46.i, %do.body.i.done.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end94.i ], [ -2, %cond.end46.i ], [ -2, %do.body.i.done.i_crit_edge ], [ -2, %do.end76.i ], [ -2, %do.body60.i.done.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i57) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %client1.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %79 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client1.i, align 4
  %vmm2.i = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %81 = ptrtoint ptr %vmm2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vmm2.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memory.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %argc)
  %cmp3.i = icmp ugt i32 %argc, 39
  br i1 %cmp3.i, label %land.lhs.true7.i, label %sw.bb5.nvkm_uvmm_mthd_map.exit_crit_edge

sw.bb5.nvkm_uvmm_mthd_map.exit_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_map.exit

land.lhs.true7.i:                                 ; preds = %sw.bb5
  %83 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp10.i = icmp eq i8 %84, 0
  br i1 %cmp10.i, label %if.then15.i63, label %land.lhs.true7.i.nvkm_uvmm_mthd_map.exit_crit_edge

land.lhs.true7.i.nvkm_uvmm_mthd_map.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_uvmm_mthd_map.exit

if.then15.i63:                                    ; preds = %land.lhs.true7.i
  %add.ptr.i = getelementptr i8, ptr %argv, i32 40
  %sub.i = add i32 %argc, -40
  %addr16.i = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %argv, i32 0, i32 2
  %85 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %addr16.i, align 8
  %size17.i = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %argv, i32 0, i32 3
  %87 = ptrtoint ptr %size17.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %size17.i, align 8
  %memory18.i = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %argv, i32 0, i32 4
  %89 = ptrtoint ptr %memory18.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %memory18.i, align 8
  %offset19.i = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %argv, i32 0, i32 5
  %91 = ptrtoint ptr %offset19.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %offset19.i, align 8
  %call.i62 = tail call ptr @nvkm_umem_search(ptr noundef %80, i64 noundef %90) #6
  %93 = ptrtoint ptr %memory.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i62, ptr %memory.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i65, label %if.end41.i

do.body.i65:                                      ; preds = %if.then15.i63
  %debug.i64 = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 3
  %94 = ptrtoint ptr %debug.i64 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp23.i = icmp ugt i32 %95, 3
  br i1 %cmp23.i, label %do.end.i70, label %do.body.i65.if.end37.i_crit_edge

do.body.i65.if.end37.i_crit_edge:                 ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

do.end.i70:                                       ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  %mmu.i66 = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 1
  %96 = ptrtoint ptr %mmu.i66 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmu.i66, align 4
  %device.i67 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %device.i67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device.i67, align 4
  %dev.i68 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev.i68 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i68, align 8
  %name.i69 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 4
  %name32.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 2
  %102 = ptrtoint ptr %name32.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name32.i, align 8
  %104 = ptrtoint ptr %call.i62 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.9, ptr noundef %name.i69, ptr noundef %103, i64 noundef %90, i32 noundef %104) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end.i70, %do.body.i65.if.end37.i_crit_edge
  %105 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %memory.i, align 4
  %107 = ptrtoint ptr %106 to i32
  br label %nvkm_uvmm_mthd_map.exit

if.end41.i:                                       ; preds = %if.then15.i63
  %mutex.i71 = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i71, i32 noundef 0) #6
  %call42.i = tail call ptr @nvkm_vmm_node_search(ptr noundef %82, i64 noundef %86) #6
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end73.i

do.body45.i:                                      ; preds = %if.end41.i
  %debug47.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 3
  %108 = ptrtoint ptr %debug47.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %debug47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp48.i = icmp ugt i32 %109, 3
  br i1 %cmp48.i, label %do.end61.i, label %do.body45.i.fail.i_crit_edge

do.body45.i.fail.i_crit_edge:                     ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

do.end61.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu53.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 1
  %110 = ptrtoint ptr %mmu53.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmu53.i, align 4
  %device62.i = getelementptr inbounds %struct.nvkm_mmu, ptr %111, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %device62.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device62.i, align 4
  %dev63.i = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %dev63.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev63.i, align 8
  %name64.i = getelementptr inbounds %struct.nvkm_mmu, ptr %111, i32 0, i32 1, i32 4
  %name66.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 2
  %116 = ptrtoint ptr %name66.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name66.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.12, ptr noundef %name64.i, ptr noundef %117, i64 noundef %86) #10
  br label %fail.i

if.end73.i:                                       ; preds = %if.end41.i
  %busy.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 4
  %118 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load.i72 = load i8, ptr %busy.i, align 1
  %119 = and i8 %bf.load.i72, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %bf.cast.not.i73 = icmp eq i8 %119, 0
  br i1 %bf.cast.not.i73, label %if.end109.i, label %do.body75.i

do.body75.i:                                      ; preds = %if.end73.i
  %debug77.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 3
  %120 = ptrtoint ptr %debug77.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %debug77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %121)
  %cmp78.i = icmp ugt i32 %121, 3
  br i1 %cmp78.i, label %do.end91.i, label %do.body75.i.fail.i_crit_edge

do.body75.i.fail.i_crit_edge:                     ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

do.end91.i:                                       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu83.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 1
  %122 = ptrtoint ptr %mmu83.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmu83.i, align 4
  %device92.i = getelementptr inbounds %struct.nvkm_mmu, ptr %123, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %device92.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device92.i, align 4
  %dev93.i = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %dev93.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev93.i, align 8
  %name94.i = getelementptr inbounds %struct.nvkm_mmu, ptr %123, i32 0, i32 1, i32 4
  %name96.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 2
  %128 = ptrtoint ptr %name96.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %name96.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.7, ptr noundef %name94.i, ptr noundef %129, i64 noundef %86, i32 noundef 1) #10
  br label %fail.i

if.end109.i:                                      ; preds = %if.end73.i
  %130 = and i8 %bf.load.i72, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %bf.cast113.not.i = icmp eq i8 %130, 0
  br i1 %bf.cast113.not.i, label %if.end109.i.if.end147.i_crit_edge, label %land.rhs.i

if.end109.i.if.end147.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

land.rhs.i:                                       ; preds = %if.end109.i
  %memory115.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 5
  %131 = ptrtoint ptr %memory115.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %memory115.i, align 8
  %tobool116.not.i = icmp eq ptr %132, null
  br i1 %tobool116.not.i, label %do.body119.i, label %land.rhs.i.if.end147.i_crit_edge

land.rhs.i.if.end147.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

do.body119.i:                                     ; preds = %land.rhs.i
  %debug121.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 3
  %133 = ptrtoint ptr %debug121.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp122.i = icmp ugt i32 %134, 3
  br i1 %cmp122.i, label %do.end135.i, label %do.body119.i.fail.i_crit_edge

do.body119.i.fail.i_crit_edge:                    ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

do.end135.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu127.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 1
  %135 = ptrtoint ptr %mmu127.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmu127.i, align 4
  %device136.i = getelementptr inbounds %struct.nvkm_mmu, ptr %136, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %device136.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device136.i, align 4
  %dev137.i = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dev137.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev137.i, align 8
  %name138.i = getelementptr inbounds %struct.nvkm_mmu, ptr %136, i32 0, i32 1, i32 4
  %name140.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 2
  %141 = ptrtoint ptr %name140.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name140.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %140, ptr noundef nonnull @.str.17, ptr noundef %name138.i, ptr noundef %142, i64 noundef %86) #10
  br label %fail.i

if.end147.i:                                      ; preds = %land.rhs.i.if.end147.i_crit_edge, %if.end109.i.if.end147.i_crit_edge
  %addr148.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 2
  %143 = ptrtoint ptr %addr148.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %addr148.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %144, i64 %86)
  %cmp149.not.i = icmp eq i64 %144, %86
  br i1 %cmp149.not.i, label %lor.rhs.i74, label %if.end147.i.if.then157.i_crit_edge

if.end147.i.if.then157.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then157.i

lor.rhs.i74:                                      ; preds = %if.end147.i
  %size151.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 3
  %145 = ptrtoint ptr %size151.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 7)
  %bf.load152.i = load i56, ptr %size151.i, align 8
  %bf.lshr153.i = lshr i56 %bf.load152.i, 6
  %bf.cast154.i = zext i56 %bf.lshr153.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %bf.cast154.i)
  %cmp155.not.i = icmp eq i64 %88, %bf.cast154.i
  br i1 %cmp155.not.i, label %lor.rhs.i74.if.end232.i_crit_edge, label %lor.rhs.i74.if.then157.i_crit_edge

lor.rhs.i74.if.then157.i_crit_edge:               ; preds = %lor.rhs.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then157.i

lor.rhs.i74.if.end232.i_crit_edge:                ; preds = %lor.rhs.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232.i

if.then157.i:                                     ; preds = %lor.rhs.i74.if.then157.i_crit_edge, %if.end147.i.if.then157.i_crit_edge
  %add.i = add i64 %88, %86
  %size159.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 3
  %146 = ptrtoint ptr %size159.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 7)
  %bf.load160.i = load i56, ptr %size159.i, align 8
  %bf.lshr161.i = lshr i56 %bf.load160.i, 6
  %bf.cast162.i = zext i56 %bf.lshr161.i to i64
  %add163.i = add i64 %144, %bf.cast162.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add163.i)
  %cmp164.i = icmp ugt i64 %add.i, %add163.i
  br i1 %cmp164.i, label %if.then157.i.do.body180.i_crit_edge, label %lor.lhs.false.i75

if.then157.i.do.body180.i_crit_edge:              ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180.i

lor.lhs.false.i75:                                ; preds = %if.then157.i
  %memory166.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 5
  %147 = ptrtoint ptr %memory166.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %memory166.i, align 8
  %tobool167.not.i = icmp eq ptr %148, null
  br i1 %tobool167.not.i, label %lor.lhs.false168.i, label %lor.lhs.false.i75.do.body180.i_crit_edge

lor.lhs.false.i75.do.body180.i_crit_edge:         ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180.i

lor.lhs.false168.i:                               ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %bf.load.i72)
  %cmp172.i = icmp ugt i8 %bf.load.i72, -33
  %149 = and i56 %bf.load160.i, 32
  %bf.cast178.not.i = icmp eq i56 %149, 0
  %or.cond.i = select i1 %cmp172.i, i1 %bf.cast178.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false168.i.do.body180.i_crit_edge, label %if.end227.i

lor.lhs.false168.i.do.body180.i_crit_edge:        ; preds = %lor.lhs.false168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180.i

do.body180.i:                                     ; preds = %lor.lhs.false168.i.do.body180.i_crit_edge, %lor.lhs.false.i75.do.body180.i_crit_edge, %if.then157.i.do.body180.i_crit_edge
  %debug182.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 3
  %150 = ptrtoint ptr %debug182.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %debug182.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %151)
  %cmp183.i = icmp ugt i32 %151, 3
  br i1 %cmp183.i, label %do.end196.i, label %do.body180.i.fail.i_crit_edge

do.body180.i.fail.i_crit_edge:                    ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

do.end196.i:                                      ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu188.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 1
  %152 = ptrtoint ptr %mmu188.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmu188.i, align 4
  %device197.i = getelementptr inbounds %struct.nvkm_mmu, ptr %153, i32 0, i32 1, i32 1
  %154 = ptrtoint ptr %device197.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %device197.i, align 4
  %dev198.i = getelementptr inbounds %struct.nvkm_device, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %dev198.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev198.i, align 8
  %name199.i = getelementptr inbounds %struct.nvkm_mmu, ptr %153, i32 0, i32 1, i32 4
  %name201.i = getelementptr inbounds %struct.nvkm_vmm, ptr %82, i32 0, i32 2
  %158 = ptrtoint ptr %name201.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name201.i, align 8
  %memory202.i = getelementptr inbounds %struct.nvkm_vma, ptr %call42.i, i32 0, i32 5
  %160 = ptrtoint ptr %memory202.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %memory202.i, align 8
  %tobool203.i = icmp ne ptr %161, null
  %lnot.ext.i = zext i1 %tobool203.i to i32
  %bf.lshr208.i = lshr i8 %bf.load.i72, 5
  %conv209.i = zext i8 %bf.lshr208.i to i32
  %162 = trunc i56 %bf.load160.i to i32
  %163 = lshr i32 %162, 5
  %164 = and i32 %163, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.20, ptr noundef %name199.i, ptr noundef %159, i32 noundef %lnot.ext.i, i32 noundef %conv209.i, i32 noundef %164, i64 noundef %86, i64 noundef %88, i64 noundef %144, i64 noundef %bf.cast162.i) #10
  br label %fail.i

if.end227.i:                                      ; preds = %lor.lhs.false168.i
  %call228.i = tail call ptr @nvkm_vmm_node_split(ptr noundef %82, ptr noundef nonnull %call42.i, i64 noundef %86, i64 noundef %88) #6
  %tobool229.not.i = icmp eq ptr %call228.i, null
  br i1 %tobool229.not.i, label %if.end227.i.fail.i_crit_edge, label %if.end227.i.if.end232.i_crit_edge

if.end227.i.if.end232.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232.i

if.end227.i.fail.i_crit_edge:                     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

if.end232.i:                                      ; preds = %if.end227.i.if.end232.i_crit_edge, %lor.rhs.i74.if.end232.i_crit_edge
  %vma.0.i = phi ptr [ %call228.i, %if.end227.i.if.end232.i_crit_edge ], [ %call42.i, %lor.rhs.i74.if.end232.i_crit_edge ]
  %busy233.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0.i, i32 0, i32 4
  %165 = ptrtoint ptr %busy233.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load234.i = load i8, ptr %busy233.i, align 1
  %bf.set.i = or i8 %bf.load234.i, 4
  store i8 %bf.set.i, ptr %busy233.i, align 1
  tail call void @mutex_unlock(ptr noundef %mutex.i71) #6
  %166 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %memory.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %map.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %169, i32 0, i32 9
  %170 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %map.i, align 4
  %call237.i = tail call i32 %171(ptr noundef %167, i64 noundef %92, ptr noundef %82, ptr noundef nonnull %vma.0.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237.i)
  %cmp238.i = icmp eq i32 %call237.i, 0
  br i1 %cmp238.i, label %if.then240.i, label %if.end241.i

if.then240.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvkm_memory_unref(ptr noundef nonnull %memory.i) #6
  br label %nvkm_uvmm_mthd_map.exit

if.end241.i:                                      ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i71, i32 noundef 0) #6
  %172 = ptrtoint ptr %busy233.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %bf.load244.i = load i8, ptr %busy233.i, align 1
  %bf.clear245.i = and i8 %bf.load244.i, -5
  store i8 %bf.clear245.i, ptr %busy233.i, align 1
  tail call void @nvkm_vmm_unmap_region(ptr noundef %82, ptr noundef nonnull %vma.0.i) #6
  br label %fail.i

fail.i:                                           ; preds = %if.end241.i, %if.end227.i.fail.i_crit_edge, %do.end196.i, %do.body180.i.fail.i_crit_edge, %do.end135.i, %do.body119.i.fail.i_crit_edge, %do.end91.i, %do.body75.i.fail.i_crit_edge, %do.end61.i, %do.body45.i.fail.i_crit_edge
  %ret.0.i76 = phi i32 [ %call237.i, %if.end241.i ], [ -2, %do.end61.i ], [ -2, %do.body45.i.fail.i_crit_edge ], [ -2, %do.end91.i ], [ -2, %do.body75.i.fail.i_crit_edge ], [ -22, %do.end135.i ], [ -22, %do.body119.i.fail.i_crit_edge ], [ -22, %do.end196.i ], [ -22, %do.body180.i.fail.i_crit_edge ], [ -12, %if.end227.i.fail.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i71) #6
  call void @nvkm_memory_unref(ptr noundef nonnull %memory.i) #6
  br label %nvkm_uvmm_mthd_map.exit

nvkm_uvmm_mthd_map.exit:                          ; preds = %fail.i, %if.then240.i, %if.end37.i, %land.lhs.true7.i.nvkm_uvmm_mthd_map.exit_crit_edge, %sw.bb5.nvkm_uvmm_mthd_map.exit_crit_edge
  %retval.0.i77 = phi i32 [ %107, %if.end37.i ], [ %ret.0.i76, %fail.i ], [ 0, %if.then240.i ], [ -38, %land.lhs.true7.i.nvkm_uvmm_mthd_map.exit_crit_edge ], [ -38, %sw.bb5.nvkm_uvmm_mthd_map.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memory.i) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %vmm1.i78 = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %173 = ptrtoint ptr %vmm1.i78 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %vmm1.i78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp2.i79 = icmp ugt i32 %argc, 15
  br i1 %cmp2.i79, label %land.lhs.true6.i81, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6.i81:                               ; preds = %sw.bb7
  %175 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp9.i80 = icmp eq i8 %176, 0
  br i1 %cmp9.i80, label %if.then.i83, label %land.lhs.true6.i81.cleanup_crit_edge

land.lhs.true6.i81.cleanup_crit_edge:             ; preds = %land.lhs.true6.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i83:                                      ; preds = %land.lhs.true6.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i82 = icmp eq i32 %argc, 16
  br i1 %tobool.not.i82, label %if.then14.i87, label %if.then.i83.cleanup_crit_edge

if.then.i83.cleanup_crit_edge:                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.i87:                                    ; preds = %if.then.i83
  %addr15.i84 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, ptr %argv, i32 0, i32 2
  %177 = ptrtoint ptr %addr15.i84 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %addr15.i84, align 8
  %mutex.i85 = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i85, i32 noundef 0) #6
  %call.i86 = tail call ptr @nvkm_vmm_node_search(ptr noundef %174, i64 noundef %178) #6
  %tobool17.not.i = icmp eq ptr %call.i86, null
  br i1 %tobool17.not.i, label %if.then14.i87.do.body.i91_crit_edge, label %lor.rhs.i89

if.then14.i87.do.body.i91_crit_edge:              ; preds = %if.then14.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i91

lor.rhs.i89:                                      ; preds = %if.then14.i87
  %addr18.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i86, i32 0, i32 2
  %179 = ptrtoint ptr %addr18.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %addr18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %178)
  %cmp19.not.i88 = icmp eq i64 %180, %178
  br i1 %cmp19.not.i88, label %if.end41.i100, label %lor.rhs.i89.do.body.i91_crit_edge

lor.rhs.i89.do.body.i91_crit_edge:                ; preds = %lor.rhs.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i91

do.body.i91:                                      ; preds = %lor.rhs.i89.do.body.i91_crit_edge, %if.then14.i87.do.body.i91_crit_edge
  %debug.i90 = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 3
  %181 = ptrtoint ptr %debug.i90 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %debug.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp22.i = icmp ugt i32 %182, 3
  br i1 %cmp22.i, label %do.end.i96, label %do.body.i91.done.i104_crit_edge

do.body.i91.done.i104_crit_edge:                  ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i104

do.end.i96:                                       ; preds = %do.body.i91
  %mmu.i92 = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 1
  %183 = ptrtoint ptr %mmu.i92 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mmu.i92, align 4
  %device.i93 = getelementptr inbounds %struct.nvkm_mmu, ptr %184, i32 0, i32 1, i32 1
  %185 = ptrtoint ptr %device.i93 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device.i93, align 4
  %dev.i94 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i94, align 8
  %name.i95 = getelementptr inbounds %struct.nvkm_mmu, ptr %184, i32 0, i32 1, i32 4
  %name31.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 2
  %189 = ptrtoint ptr %name31.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name31.i, align 8
  br i1 %tobool17.not.i, label %do.end.i96.cond.end.i_crit_edge, label %cond.true.i

do.end.i96.cond.end.i_crit_edge:                  ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  %addr33.i = getelementptr inbounds %struct.nvkm_vma, ptr %call.i86, i32 0, i32 2
  %191 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %addr33.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i96.cond.end.i_crit_edge
  %cond34.i = phi i64 [ %192, %cond.true.i ], [ -1, %do.end.i96.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %188, ptr noundef nonnull @.str.22, ptr noundef %name.i95, ptr noundef %190, i64 noundef %178, i64 noundef %cond34.i) #10
  br label %done.i104

if.end41.i100:                                    ; preds = %lor.rhs.i89
  %busy.i97 = getelementptr inbounds %struct.nvkm_vma, ptr %call.i86, i32 0, i32 4
  %193 = ptrtoint ptr %busy.i97 to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load.i98 = load i8, ptr %busy.i97, align 1
  %194 = and i8 %bf.load.i98, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %bf.cast.not.i99 = icmp eq i8 %194, 0
  br i1 %bf.cast.not.i99, label %if.end77.i, label %do.body43.i

do.body43.i:                                      ; preds = %if.end41.i100
  %debug45.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 3
  %195 = ptrtoint ptr %debug45.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %debug45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %196)
  %cmp46.i = icmp ugt i32 %196, 3
  br i1 %cmp46.i, label %do.end59.i, label %do.body43.i.done.i104_crit_edge

do.body43.i.done.i104_crit_edge:                  ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i104

do.end59.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu51.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 1
  %197 = ptrtoint ptr %mmu51.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mmu51.i, align 4
  %device60.i = getelementptr inbounds %struct.nvkm_mmu, ptr %198, i32 0, i32 1, i32 1
  %199 = ptrtoint ptr %device60.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device60.i, align 4
  %dev61.i = getelementptr inbounds %struct.nvkm_device, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev61.i, align 8
  %name62.i = getelementptr inbounds %struct.nvkm_mmu, ptr %198, i32 0, i32 1, i32 4
  %name64.i101 = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 2
  %203 = ptrtoint ptr %name64.i101 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name64.i101, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %202, ptr noundef nonnull @.str.7, ptr noundef %name62.i, ptr noundef %204, i64 noundef %178, i32 noundef 1) #10
  br label %done.i104

if.end77.i:                                       ; preds = %if.end41.i100
  %memory.i102 = getelementptr inbounds %struct.nvkm_vma, ptr %call.i86, i32 0, i32 5
  %205 = ptrtoint ptr %memory.i102 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %memory.i102, align 8
  %tobool78.not.i = icmp eq ptr %206, null
  br i1 %tobool78.not.i, label %do.body80.i, label %if.end108.i

do.body80.i:                                      ; preds = %if.end77.i
  %debug82.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 3
  %207 = ptrtoint ptr %debug82.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %debug82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %208)
  %cmp83.i = icmp ugt i32 %208, 3
  br i1 %cmp83.i, label %do.end96.i, label %do.body80.i.done.i104_crit_edge

do.body80.i.done.i104_crit_edge:                  ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i104

do.end96.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmu88.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 1
  %209 = ptrtoint ptr %mmu88.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmu88.i, align 4
  %device97.i = getelementptr inbounds %struct.nvkm_mmu, ptr %210, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %device97.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %device97.i, align 4
  %dev98.i = getelementptr inbounds %struct.nvkm_device, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %dev98.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev98.i, align 8
  %name99.i = getelementptr inbounds %struct.nvkm_mmu, ptr %210, i32 0, i32 1, i32 4
  %name101.i = getelementptr inbounds %struct.nvkm_vmm, ptr %174, i32 0, i32 2
  %215 = ptrtoint ptr %name101.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %name101.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %214, ptr noundef nonnull @.str.27, ptr noundef %name99.i, ptr noundef %216) #10
  br label %done.i104

if.end108.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvkm_vmm_unmap_locked(ptr noundef %174, ptr noundef nonnull %call.i86, i1 noundef zeroext false) #6
  br label %done.i104

done.i104:                                        ; preds = %if.end108.i, %do.end96.i, %do.body80.i.done.i104_crit_edge, %do.end59.i, %do.body43.i.done.i104_crit_edge, %cond.end.i, %do.body.i91.done.i104_crit_edge
  %ret.0.i103 = phi i32 [ 0, %if.end108.i ], [ -2, %cond.end.i ], [ -2, %do.body.i91.done.i104_crit_edge ], [ -2, %do.end59.i ], [ -2, %do.body43.i.done.i104_crit_edge ], [ -22, %do.end96.i ], [ -22, %do.body80.i.done.i104_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i85) #6
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %vmm1.i106 = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %217 = ptrtoint ptr %vmm1.i106 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %vmm1.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp2.i107 = icmp ugt i32 %argc, 23
  br i1 %cmp2.i107, label %land.lhs.true6.i109, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6.i109:                              ; preds = %sw.bb9
  %219 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp9.i108 = icmp eq i8 %220, 0
  br i1 %cmp9.i108, label %if.then14.i113, label %land.lhs.true6.i109.cleanup_crit_edge

land.lhs.true6.i109.cleanup_crit_edge:            ; preds = %land.lhs.true6.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.i113:                                   ; preds = %land.lhs.true6.i109
  %sub.i110 = add i32 %argc, -24
  %page15.i = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %argv, i32 0, i32 1
  %221 = ptrtoint ptr %page15.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %page15.i, align 1
  %addr16.i111 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %argv, i32 0, i32 3
  %223 = ptrtoint ptr %addr16.i111 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %addr16.i111, align 8
  %size17.i112 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %argv, i32 0, i32 4
  %225 = ptrtoint ptr %size17.i112 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %size17.i112, align 8
  %phys18.i = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %argv, i32 0, i32 5
  %conv19.i = zext i32 %sub.i110 to i64
  %sh_prom.i = zext i8 %222 to i64
  %shr.i = lshr i64 %226, %sh_prom.i
  %mul.i = shl i64 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %conv19.i)
  %cmp21.not.i = icmp eq i64 %mul.i, %conv19.i
  br i1 %cmp21.not.i, label %if.end25.i, label %if.then14.i113.cleanup_crit_edge

if.then14.i113.cleanup_crit_edge:                 ; preds = %if.then14.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25.i:                                       ; preds = %if.then14.i113
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %226)
  %tobool26.not.i = icmp eq i64 %226, 0
  br i1 %tobool26.not.i, label %if.end25.i.cleanup_crit_edge, label %if.then27.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i114 = getelementptr inbounds %struct.nvkm_vmm, ptr %218, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i114, i32 noundef 0) #6
  %call.i115 = tail call i32 @nvkm_vmm_pfn_map(ptr noundef %218, i8 noundef zeroext %222, i64 noundef %224, i64 noundef %226, ptr noundef %phys18.i) #6
  tail call void @mutex_unlock(ptr noundef %mutex.i114) #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %vmm1.i117 = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %227 = ptrtoint ptr %vmm1.i117 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vmm1.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp2.i118 = icmp ugt i32 %argc, 23
  br i1 %cmp2.i118, label %land.lhs.true6.i120, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true6.i120:                              ; preds = %sw.bb11
  %229 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %cmp9.i119 = icmp eq i8 %230, 0
  br i1 %cmp9.i119, label %if.then.i122, label %land.lhs.true6.i120.cleanup_crit_edge

land.lhs.true6.i120.cleanup_crit_edge:            ; preds = %land.lhs.true6.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i122:                                     ; preds = %land.lhs.true6.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %argc)
  %tobool.not.i121 = icmp eq i32 %argc, 24
  br i1 %tobool.not.i121, label %if.then14.i124, label %if.then.i122.cleanup_crit_edge

if.then.i122.cleanup_crit_edge:                   ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.i124:                                   ; preds = %if.then.i122
  %size16.i = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, ptr %argv, i32 0, i32 3
  %231 = ptrtoint ptr %size16.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %size16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %232)
  %tobool18.not.i123 = icmp eq i64 %232, 0
  br i1 %tobool18.not.i123, label %if.then14.i124.cleanup_crit_edge, label %if.then19.i

if.then14.i124.cleanup_crit_edge:                 ; preds = %if.then14.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.i:                                      ; preds = %if.then14.i124
  call void @__sanitizer_cov_trace_pc() #8
  %addr15.i125 = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, ptr %argv, i32 0, i32 2
  %233 = ptrtoint ptr %addr15.i125 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %addr15.i125, align 8
  %mutex.i126 = getelementptr inbounds %struct.nvkm_vmm, ptr %228, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i126, i32 noundef 0) #6
  %call.i127 = tail call i32 @nvkm_vmm_pfn_unmap(ptr noundef %228, i64 noundef %234, i64 noundef %232) #6
  tail call void @mutex_unlock(ptr noundef %mutex.i126) #6
  br label %cleanup

sw.bb13:                                          ; preds = %sw.caserange
  %vmm = getelementptr inbounds %struct.nvkm_uvmm, ptr %object, i32 0, i32 1
  %235 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %vmm, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 8
  %mthd14 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %238, i32 0, i32 5
  %239 = ptrtoint ptr %mthd14 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mthd14, align 4
  %tobool.not = icmp eq ptr %240, null
  br i1 %tobool.not, label %sw.bb13.cleanup_crit_edge, label %if.then

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %241 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %client, align 4
  %call20 = tail call i32 %240(ptr noundef %236, ptr noundef %242, i32 noundef %mthd, ptr noundef %argv, i32 noundef %argc) #6
  br label %cleanup

sw.caserange:                                     ; preds = %entry
  %243 = and i32 %mthd, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %243)
  %inbounds = icmp eq i32 %243, 128
  br i1 %inbounds, label %sw.bb13, label %sw.caserange.cleanup_crit_edge

sw.caserange.cleanup_crit_edge:                   ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.caserange.cleanup_crit_edge, %if.then, %sw.bb13.cleanup_crit_edge, %if.then19.i, %if.then14.i124.cleanup_crit_edge, %if.then.i122.cleanup_crit_edge, %land.lhs.true6.i120.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.then27.i, %if.end25.i.cleanup_crit_edge, %if.then14.i113.cleanup_crit_edge, %land.lhs.true6.i109.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %done.i104, %if.then.i83.cleanup_crit_edge, %land.lhs.true6.i81.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %nvkm_uvmm_mthd_map.exit, %done.i, %if.then.i56.cleanup_crit_edge, %land.lhs.true6.i54.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %nvkm_uvmm_mthd_get.exit, %if.end22.i, %if.then15.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then ], [ %retval.0.i77, %nvkm_uvmm_mthd_map.exit ], [ %retval.0.i50, %nvkm_uvmm_mthd_get.exit ], [ -22, %sw.caserange.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ 0, %if.end22.i ], [ -22, %if.then15.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i.cleanup_crit_edge ], [ -38, %land.lhs.true6.i.cleanup_crit_edge ], [ %ret.0.i, %done.i ], [ -38, %sw.bb3.cleanup_crit_edge ], [ -38, %land.lhs.true6.i54.cleanup_crit_edge ], [ -7, %if.then.i56.cleanup_crit_edge ], [ %ret.0.i103, %done.i104 ], [ -38, %sw.bb7.cleanup_crit_edge ], [ -38, %land.lhs.true6.i81.cleanup_crit_edge ], [ -7, %if.then.i83.cleanup_crit_edge ], [ -22, %if.then14.i113.cleanup_crit_edge ], [ %call.i115, %if.then27.i ], [ 0, %if.end25.i.cleanup_crit_edge ], [ -38, %land.lhs.true6.i109.cleanup_crit_edge ], [ -38, %sw.bb9.cleanup_crit_edge ], [ %call.i127, %if.then19.i ], [ 0, %if.then14.i124.cleanup_crit_edge ], [ -38, %sw.bb11.cleanup_crit_edge ], [ -38, %land.lhs.true6.i120.cleanup_crit_edge ], [ -7, %if.then.i122.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get_locked(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_node_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_umem_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_node_split(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unmap_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unmap_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_pfn_map(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_pfn_unmap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 385, i32 14}
!2 = !{ptr @nvkm_uvmm, !3, !"nvkm_uvmm", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 351, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 238, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvkm_uvmm_mthd_put._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_uvmm_mthd_put._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 244, i32 3}
!14 = !{ptr @nvkm_uvmm_mthd_put._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvkm_uvmm_mthd_put._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 164, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_uvmm_mthd_map._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_uvmm_mthd_map._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 170, i32 3}
!23 = !{ptr @nvkm_uvmm_mthd_map._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_uvmm_mthd_map._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @nvkm_uvmm_mthd_map._entry.14, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 175, i32 3}
!27 = !{ptr @nvkm_uvmm_mthd_map._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 180, i32 3}
!30 = !{ptr @nvkm_uvmm_mthd_map._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_uvmm_mthd_map._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 187, i32 4}
!34 = !{ptr @nvkm_uvmm_mthd_map._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvkm_uvmm_mthd_map._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 119, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nvkm_uvmm_mthd_unmap._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvkm_uvmm_mthd_unmap._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nvkm_uvmm_mthd_unmap._entry.24, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 125, i32 3}
!43 = !{ptr @nvkm_uvmm_mthd_unmap._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c", i32 130, i32 3}
!46 = !{ptr @nvkm_uvmm_mthd_unmap._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nvkm_uvmm_mthd_unmap._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
