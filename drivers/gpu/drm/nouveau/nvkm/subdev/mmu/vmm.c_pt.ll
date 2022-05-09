; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvkm_vmm_iter = type { ptr, ptr, ptr, i64, i16, i16, [5 x i32], [5 x ptr], i32 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\00", [50 x i8] zeroinitializer }, align 32
@nvkm_vmm_pfn_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: %s: paged map %d %d %016llx %016llx\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_vmm_pfn_map\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_vmm_pfn_map._entry_ptr = internal global ptr @nvkm_vmm_pfn_map._entry, section ".printk_index", align 4
@nvkm_vmm_get_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1642, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: %s: getref %d mapref %d sparse %d shift: %d align: %d size: %016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_vmm_get_locked\00", [44 x i8] zeroinitializer }, align 32
@nvkm_vmm_get_locked._entry_ptr = internal global ptr @nvkm_vmm_get_locked._entry, section ".printk_index", align 4
@nvkm_vmm_get_locked._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 1647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s: args %016llx %d %d %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nvkm_vmm_get_locked._entry_ptr.9 = internal global ptr @nvkm_vmm_get_locked._entry.7, section ".printk_index", align 4
@nvkm_vmm_get_locked._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 1659, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s: page size required: %d %016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_vmm_get_locked._entry_ptr.12 = internal global ptr @nvkm_vmm_get_locked._entry.10, section ".printk_index", align 4
@nvkm_vmm_get_locked._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str, i32 1673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s: page %d %016llx\0A\00", [39 x i8] zeroinitializer }, align 32
@nvkm_vmm_get_locked._entry_ptr.15 = internal global ptr @nvkm_vmm_get_locked._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bootstrap\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_vmm_ctor._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vmm->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unmap + unref\00", [18 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_ptes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s: %s %s empty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_vmm_unref_ptes\00", [44 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_ptes._entry_ptr = internal global ptr @nvkm_vmm_unref_ptes._entry, section ".printk_index", align 4
@nvkm_vmm_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: %s flush: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_vmm_flush\00", [17 x i8] zeroinitializer }, align 32
@nvkm_vmm_flush._entry_ptr = internal global ptr @nvkm_vmm_flush._entry, section ".printk_index", align 4
@nvkm_vmm_unref_sptes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: %s LPTE %05x: U -> S %d PTEs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_vmm_unref_sptes\00", [43 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_sptes._entry_ptr = internal global ptr @nvkm_vmm_unref_sptes._entry, section ".printk_index", align 4
@nvkm_vmm_unref_sptes._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: %s LPTE %05x: U -> I %d PTEs\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_sptes._entry_ptr.27 = internal global ptr @nvkm_vmm_unref_sptes._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%05x:\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xxxxx:\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PGD\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PGT\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPT\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LPT\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_pdes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s: %s PDE unmap %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_vmm_unref_pdes\00", [44 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_pdes._entry_ptr = internal global ptr @nvkm_vmm_unref_pdes._entry, section ".printk_index", align 4
@nvkm_vmm_unref_pdes._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %s: %s PDE free %s\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_vmm_unref_pdes._entry_ptr.39 = internal global ptr @nvkm_vmm_unref_pdes._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ref + map\00", [22 x i8] zeroinitializer }, align 32
@nvkm_vmm_ref_sptes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: %s SPTE %05x: U -> S %d PTEs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_vmm_ref_sptes\00", [45 x i8] zeroinitializer }, align 32
@nvkm_vmm_ref_sptes._entry_ptr = internal global ptr @nvkm_vmm_ref_sptes._entry, section ".printk_index", align 4
@nvkm_vmm_ref_sptes._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: %s LPTE %05x: S -> U %d PTEs\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_vmm_ref_sptes._entry_ptr.45 = internal global ptr @nvkm_vmm_ref_sptes._entry.43, section ".printk_index", align 4
@nvkm_vmm_ref_sptes._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: %s LPTE %05x: I -> U %d PTEs\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_vmm_ref_sptes._entry_ptr.48 = internal global ptr @nvkm_vmm_ref_sptes._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"map\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"unmap\00", [26 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s: overrun %016llx %016llx %016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_vmm_map_locked\00", [44 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_locked._entry_ptr = internal global ptr @nvkm_vmm_map_locked._entry, section ".printk_index", align 4
@nvkm_vmm_map_locked._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str, i32 1443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %s: invalid at any page size\0A\00", [62 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_locked._entry_ptr.55 = internal global ptr @nvkm_vmm_map_locked._entry.53, section ".printk_index", align 4
@nvkm_vmm_map_locked._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str, i32 1456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s: invalid %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_locked._entry_ptr.58 = internal global ptr @nvkm_vmm_map_locked._entry.56, section ".printk_index", align 4
@nvkm_vmm_map_choose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 1412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s: trying %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_vmm_map_choose\00", [44 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_choose._entry_ptr = internal global ptr @nvkm_vmm_map_choose._entry, section ".printk_index", align 4
@nvkm_vmm_map_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str, i32 1378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s: %d !VRAM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_vmm_map_valid\00", [45 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_valid._entry_ptr = internal global ptr @nvkm_vmm_map_valid._entry, section ".printk_index", align 4
@nvkm_vmm_map_valid._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str, i32 1385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s: %d !HOST\0A\00", [46 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_valid._entry_ptr.65 = internal global ptr @nvkm_vmm_map_valid._entry.63, section ".printk_index", align 4
@nvkm_vmm_map_valid._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str, i32 1400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: %s: alignment %016llx %016llx %016llx %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nvkm_vmm_map_valid._entry_ptr.68 = internal global ptr @nvkm_vmm_map_valid._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"unref\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sparse unref\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sparse ref\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@nvkm_vmm_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: %s: %s %s: %016llx %016llx %d %lld PTEs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_vmm_iter\00", [18 x i8] zeroinitializer }, align 32
@nvkm_vmm_iter._entry_ptr = internal global ptr @nvkm_vmm_iter._entry, section ".printk_index", align 4
@nvkm_vmm_ref_hwpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s: %s PDE write %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_vmm_ref_hwpt\00", [46 x i8] zeroinitializer }, align 32
@nvkm_vmm_ref_hwpt._entry_ptr = internal global ptr @nvkm_vmm_ref_hwpt._entry, section ".printk_index", align 4
@switch.table.nvkm_vmm_iter = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@switch.table.nvkm_vmm_unref_ptes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@switch.table.nvkm_vmm_unref_pdes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@switch.table.nvkm_vmm_unref_pdes.77 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1191, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1226, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1640, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1646, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1658, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1673, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1823, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1036, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1048, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 684, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 286, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 130, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 243, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 251, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 103, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 105, i32 24 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 88, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 89, i32 19 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 90, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 91, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 93, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 153, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 189, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 695, i32 50 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 347, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 350, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 357, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 721, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 710, i32 39 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1428, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1443, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1456, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1412, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1378, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1385, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1398, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 729, i32 39 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 605, i32 39 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 616, i32 51 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 737, i32 50 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 526, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 477, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [27 x i8] c"switch.table.nvkm_vmm_iter\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [33 x i8] c"switch.table.nvkm_vmm_unref_ptes\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [33 x i8] c"switch.table.nvkm_vmm_unref_pdes\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [36 x i8] c"switch.table.nvkm_vmm_unref_pdes.77\00", align 1
@llvm.compiler.used = appending global [106 x ptr] [ptr @nvkm_vmm_flush._entry, ptr @nvkm_vmm_flush._entry_ptr, ptr @nvkm_vmm_get_locked._entry, ptr @nvkm_vmm_get_locked._entry.10, ptr @nvkm_vmm_get_locked._entry.13, ptr @nvkm_vmm_get_locked._entry.7, ptr @nvkm_vmm_get_locked._entry_ptr, ptr @nvkm_vmm_get_locked._entry_ptr.12, ptr @nvkm_vmm_get_locked._entry_ptr.15, ptr @nvkm_vmm_get_locked._entry_ptr.9, ptr @nvkm_vmm_iter._entry, ptr @nvkm_vmm_iter._entry_ptr, ptr @nvkm_vmm_map_choose._entry, ptr @nvkm_vmm_map_choose._entry_ptr, ptr @nvkm_vmm_map_locked._entry, ptr @nvkm_vmm_map_locked._entry.53, ptr @nvkm_vmm_map_locked._entry.56, ptr @nvkm_vmm_map_locked._entry_ptr, ptr @nvkm_vmm_map_locked._entry_ptr.55, ptr @nvkm_vmm_map_locked._entry_ptr.58, ptr @nvkm_vmm_map_valid._entry, ptr @nvkm_vmm_map_valid._entry.63, ptr @nvkm_vmm_map_valid._entry.66, ptr @nvkm_vmm_map_valid._entry_ptr, ptr @nvkm_vmm_map_valid._entry_ptr.65, ptr @nvkm_vmm_map_valid._entry_ptr.68, ptr @nvkm_vmm_pfn_map._entry, ptr @nvkm_vmm_pfn_map._entry_ptr, ptr @nvkm_vmm_ref_hwpt._entry, ptr @nvkm_vmm_ref_hwpt._entry_ptr, ptr @nvkm_vmm_ref_sptes._entry, ptr @nvkm_vmm_ref_sptes._entry.43, ptr @nvkm_vmm_ref_sptes._entry.46, ptr @nvkm_vmm_ref_sptes._entry_ptr, ptr @nvkm_vmm_ref_sptes._entry_ptr.45, ptr @nvkm_vmm_ref_sptes._entry_ptr.48, ptr @nvkm_vmm_unref_pdes._entry, ptr @nvkm_vmm_unref_pdes._entry.37, ptr @nvkm_vmm_unref_pdes._entry_ptr, ptr @nvkm_vmm_unref_pdes._entry_ptr.39, ptr @nvkm_vmm_unref_ptes._entry, ptr @nvkm_vmm_unref_ptes._entry_ptr, ptr @nvkm_vmm_unref_sptes._entry, ptr @nvkm_vmm_unref_sptes._entry.25, ptr @nvkm_vmm_unref_sptes._entry_ptr, ptr @nvkm_vmm_unref_sptes._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @nvkm_vmm_ctor._key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.nvkm_vmm_iter, ptr @switch.table.nvkm_vmm_unref_ptes, ptr @switch.table.nvkm_vmm_unref_pdes, ptr @switch.table.nvkm_vmm_unref_pdes.77], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_pfn_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_get_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_get_locked._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_get_locked._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_get_locked._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_ctor._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_unref_ptes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_unref_sptes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_unref_sptes._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_unref_pdes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_unref_pdes._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_ref_sptes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_ref_sptes._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_ref_sptes._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_locked._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_locked._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_choose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_valid._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_map_valid._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vmm_ref_hwpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_vmm_iter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_vmm_unref_ptes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_vmm_unref_pdes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_vmm_unref_pdes.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_vma_tail(ptr noundef %vma, i64 noundef %tail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 7)
  %bf.load = load i56, ptr %size, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast, i64 %tail)
  %cmp = icmp eq i64 %bf.cast, %tail
  br i1 %cmp, label %do.body2, label %do.end7, !prof !153

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

do.end7:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end7.cleanup_crit_edge, label %if.end14

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %sub = sub i64 %bf.cast, %tail
  %add = add i64 %sub, %2
  %addr1.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %addr1.i, align 8
  %size2.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 3
  %5 = trunc i64 %tail to i56
  %6 = ptrtoint ptr %size2.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load.i = load i56, ptr %size2.i, align 8
  %bf.shl.i = shl i56 %5, 6
  %bf.clear.i = and i56 %bf.load.i, 1
  %bf.set.i = or i56 %bf.clear.i, %bf.shl.i
  %refd.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %refd.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6.i = load i8, ptr %refd.i, align 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load16 = load i56, ptr %size, align 8
  %.neg = mul i56 %5, -64
  %bf.lshr17127 = add i56 %bf.load16, %.neg
  store i56 %bf.lshr17127, ptr %size, align 8
  %bf.set40 = and i56 %bf.lshr17127, 62
  %bf.set52 = or i56 %bf.set40, %bf.set.i
  store i56 %bf.set52, ptr %size2.i, align 8
  %refd = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %9 = ptrtoint ptr %refd to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load54 = load i8, ptr %refd, align 1
  %bf.clear60 = and i8 %bf.load6.i, 1
  %bf.set90 = and i8 %bf.load54, -2
  %bf.set100 = or i8 %bf.set90, %bf.clear60
  store i8 %bf.set100, ptr %refd.i, align 1
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vma, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %vma, ptr noundef %11) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vma, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i.i, ptr %vma, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end14.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_node_search(ptr nocapture noundef readonly %vmm, i64 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.020 = load ptr, ptr %root, align 4
  %tobool.not21 = icmp eq ptr %node.020, null
  br i1 %tobool.not21, label %entry.cleanup7_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %node.022 = phi ptr [ %node.0, %cleanup.while.body_crit_edge ], [ %node.020, %entry.while.body_crit_edge ]
  %addr1 = getelementptr i8, ptr %node.022, i32 16
  %1 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %addr)
  %cmp = icmp ugt i64 %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.022, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %size = getelementptr i8, ptr %node.022, i32 24
  %3 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %3, i32 7)
  %bf.load = load i56, ptr %size, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  %add = add i64 %2, %bf.cast
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp3.not = icmp ugt i64 %add, %addr
  br i1 %cmp3.not, label %cleanup7.split.loop.exit, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.022, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then
  %node.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %4 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %cleanup.cleanup7_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

cleanup7.split.loop.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.le = getelementptr i8, ptr %node.022, i32 -8
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup7.split.loop.exit, %cleanup.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.2 = phi ptr [ %add.ptr.le, %cleanup7.split.loop.exit ], [ null, %entry.cleanup7_crit_edge ], [ null, %cleanup.cleanup7_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_node_split(ptr noundef %vmm, ptr noundef %vma, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %addr)
  %cmp.not = icmp eq i64 %1, %addr
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %size2 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 7)
  %bf.load = load i56, ptr %size2, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  %add = sub i64 %1, %addr
  %sub = add i64 %add, %bf.cast
  %call = tail call ptr @nvkm_vma_tail(ptr noundef %vma, i64 noundef %sub)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup32_crit_edge, label %if.end

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.end:                                           ; preds = %if.then
  %part = getelementptr inbounds %struct.nvkm_vma, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load5 = load i8, ptr %part, align 1
  %bf.set = or i8 %bf.load5, 8
  store i8 %bf.set, ptr %part, align 1
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 4
  %tobool.not27.i = icmp eq ptr %5, null
  br i1 %tobool.not27.i, label %if.end.nvkm_vmm_node_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end.nvkm_vmm_node_insert.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.nvkm_vma, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi ptr [ %5, %while.body.lr.ph.i ], [ %12, %if.end10.i.while.body.i_crit_edge ]
  %addr1.i = getelementptr i8, ptr %8, i32 16
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %10)
  %cmp.i = icmp ult i64 %7, %10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %10)
  %cmp4.i = icmp ugt i64 %7, %10
  br i1 %cmp4.i, label %if.then5.i, label %do.body.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %if.end10.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i:                                       ; preds = %if.then5.i, %if.then.i
  %ptr.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %11 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr.1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %8 to i32
  br label %nvkm_vmm_node_insert.exit

nvkm_vmm_node_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i, %if.end.nvkm_vmm_node_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.nvkm_vmm_node_insert.exit_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.1.i, %while.cond.while.end_crit_edge.i ], [ %root.i, %if.end.nvkm_vmm_node_insert.exit_crit_edge ]
  %tree.i = getelementptr inbounds %struct.nvkm_vma, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa.i, ptr %tree.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i.i, align 4
  %16 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tree.i, ptr %ptr.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i, ptr noundef %root.i) #11
  br label %if.end6

if.end6:                                          ; preds = %nvkm_vmm_node_insert.exit, %entry.if.end6_crit_edge
  %vma.addr.0 = phi ptr [ %call, %nvkm_vmm_node_insert.exit ], [ %vma, %entry.if.end6_crit_edge ]
  %prev.0 = phi ptr [ %vma, %nvkm_vmm_node_insert.exit ], [ null, %entry.if.end6_crit_edge ]
  %size7 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.addr.0, i32 0, i32 3
  %17 = ptrtoint ptr %size7 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load8 = load i56, ptr %size7, align 8
  %bf.lshr9 = lshr i56 %bf.load8, 6
  %bf.cast10 = zext i56 %bf.lshr9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast10, i64 %size)
  %cmp11.not = icmp eq i64 %bf.cast10, %size
  br i1 %cmp11.not, label %if.end6.cleanup32_crit_edge, label %if.then12

if.end6.cleanup32_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.then12:                                        ; preds = %if.end6
  %sub17 = sub i64 %bf.cast10, %size
  %call18 = tail call ptr @nvkm_vma_tail(ptr noundef %vma.addr.0, i64 noundef %sub17)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %size7 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load22 = load i56, ptr %size7, align 8
  %bf.lshr23 = lshr i56 %bf.load22, 6
  %bf.cast24 = zext i56 %bf.lshr23 to i64
  %call25 = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %vmm, ptr noundef %prev.0, ptr noundef %vma.addr.0, ptr noundef null, i64 noundef %bf.cast24)
  br label %cleanup32

if.end26:                                         ; preds = %if.then12
  %part27 = getelementptr inbounds %struct.nvkm_vma, ptr %call18, i32 0, i32 4
  %19 = ptrtoint ptr %part27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load28 = load i8, ptr %part27, align 1
  %bf.set30 = or i8 %bf.load28, 8
  store i8 %bf.set30, ptr %part27, align 1
  %root.i50 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %20 = ptrtoint ptr %root.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root.i50, align 4
  %tobool.not27.i51 = icmp eq ptr %21, null
  br i1 %tobool.not27.i51, label %if.end26.nvkm_vmm_node_insert.exit74_crit_edge, label %while.body.lr.ph.i53

if.end26.nvkm_vmm_node_insert.exit74_crit_edge:   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit74

while.body.lr.ph.i53:                             ; preds = %if.end26
  %addr.i52 = getelementptr inbounds %struct.nvkm_vma, ptr %call18, i32 0, i32 2
  %22 = ptrtoint ptr %addr.i52 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr.i52, align 8
  br label %while.body.i56

while.body.i56:                                   ; preds = %if.end10.i66.while.body.i56_crit_edge, %while.body.lr.ph.i53
  %24 = phi ptr [ %21, %while.body.lr.ph.i53 ], [ %28, %if.end10.i66.while.body.i56_crit_edge ]
  %addr1.i54 = getelementptr i8, ptr %24, i32 16
  %25 = ptrtoint ptr %addr1.i54 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr1.i54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %26)
  %cmp.i55 = icmp ult i64 %23, %26
  br i1 %cmp.i55, label %if.then.i58, label %if.else.i60

if.then.i58:                                      ; preds = %while.body.i56
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i57 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %if.end10.i66

if.else.i60:                                      ; preds = %while.body.i56
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %26)
  %cmp4.i59 = icmp ugt i64 %23, %26
  br i1 %cmp4.i59, label %if.then5.i62, label %do.body.i63

if.then5.i62:                                     ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i61 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %if.end10.i66

do.body.i63:                                      ; preds = %if.else.i60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i66:                                     ; preds = %if.then5.i62, %if.then.i58
  %ptr.1.i64 = phi ptr [ %rb_left.i57, %if.then.i58 ], [ %rb_right.i61, %if.then5.i62 ]
  %27 = ptrtoint ptr %ptr.1.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr.1.i64, align 4
  %tobool.not.i65 = icmp eq ptr %28, null
  br i1 %tobool.not.i65, label %while.cond.while.end_crit_edge.i68, label %if.end10.i66.while.body.i56_crit_edge

if.end10.i66.while.body.i56_crit_edge:            ; preds = %if.end10.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i56

while.cond.while.end_crit_edge.i68:               ; preds = %if.end10.i66
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i67 = ptrtoint ptr %24 to i32
  br label %nvkm_vmm_node_insert.exit74

nvkm_vmm_node_insert.exit74:                      ; preds = %while.cond.while.end_crit_edge.i68, %if.end26.nvkm_vmm_node_insert.exit74_crit_edge
  %parent.0.lcssa.i69 = phi i32 [ %phi.cast.le.i67, %while.cond.while.end_crit_edge.i68 ], [ 0, %if.end26.nvkm_vmm_node_insert.exit74_crit_edge ]
  %ptr.0.lcssa.i70 = phi ptr [ %ptr.1.i64, %while.cond.while.end_crit_edge.i68 ], [ %root.i50, %if.end26.nvkm_vmm_node_insert.exit74_crit_edge ]
  %tree.i71 = getelementptr inbounds %struct.nvkm_vma, ptr %call18, i32 0, i32 1
  %29 = ptrtoint ptr %tree.i71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %parent.0.lcssa.i69, ptr %tree.i71, align 4
  %rb_right.i.i72 = getelementptr inbounds %struct.nvkm_vma, ptr %call18, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %rb_right.i.i72 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_right.i.i72, align 4
  %rb_left.i.i73 = getelementptr inbounds %struct.nvkm_vma, ptr %call18, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %rb_left.i.i73 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_left.i.i73, align 4
  %32 = ptrtoint ptr %ptr.0.lcssa.i70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tree.i71, ptr %ptr.0.lcssa.i70, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i71, ptr noundef %root.i50) #11
  br label %cleanup32

cleanup32:                                        ; preds = %nvkm_vmm_node_insert.exit74, %if.then20, %if.end6.cleanup32_crit_edge, %if.then.cleanup32_crit_edge
  %retval.1 = phi ptr [ null, %if.then.cleanup32_crit_edge ], [ null, %if.then20 ], [ %vma.addr.0, %nvkm_vmm_node_insert.exit74 ], [ %vma.addr.0, %if.end6.cleanup32_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_vmm_node_merge(ptr noundef %vmm, ptr noundef %prev, ptr noundef %vma, ptr noundef %next, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %next, null
  br i1 %tobool.not, label %if.end61, label %if.then

if.then:                                          ; preds = %entry
  %size1 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 7)
  %bf.load = load i56, ptr %size1, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast, i64 %size)
  %cmp = icmp eq i64 %bf.cast, %size
  br i1 %cmp, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.then
  %size3 = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 3
  %1 = ptrtoint ptr %size3 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 7)
  %bf.load4 = load i56, ptr %size3, align 8
  %narrow158 = and i56 %bf.load, -64
  %bf.lshr5159 = add i56 %bf.load4, %narrow158
  %bf.shl = and i56 %bf.lshr5159, -64
  %bf.clear = and i56 %bf.load, 63
  %bf.set = or i56 %bf.shl, %bf.clear
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 7)
  store i56 %bf.set, ptr %size1, align 8
  %tree.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 1
  %root.i.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %tree.i.i, ptr noundef %root.i.i) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %next) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then2.nvkm_vmm_node_delete.exit_crit_edge

if.then2.nvkm_vmm_node_delete.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_delete.exit

if.end.i.i.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %next, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %nvkm_vmm_node_delete.exit

nvkm_vmm_node_delete.exit:                        ; preds = %if.end.i.i.i, %if.then2.nvkm_vmm_node_delete.exit_crit_edge
  %9 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %next, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %next) #11
  %tobool12.not = icmp eq ptr %prev, null
  br i1 %tobool12.not, label %nvkm_vmm_node_delete.exit.return_crit_edge, label %if.then13

nvkm_vmm_node_delete.exit.return_crit_edge:       ; preds = %nvkm_vmm_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then13:                                        ; preds = %nvkm_vmm_node_delete.exit
  %11 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load15 = load i56, ptr %size1, align 8
  %size18 = getelementptr inbounds %struct.nvkm_vma, ptr %prev, i32 0, i32 3
  %12 = ptrtoint ptr %size18 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load19 = load i56, ptr %size18, align 8
  %bf.lshr20 = and i56 %bf.load19, -64
  %bf.lshr16161 = add i56 %bf.lshr20, %bf.load15
  %bf.shl25 = and i56 %bf.lshr16161, -64
  %bf.clear26 = and i56 %bf.load19, 63
  %bf.set27 = or i56 %bf.shl25, %bf.clear26
  store i56 %bf.set27, ptr %size18, align 8
  %tree.i.i162 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %tree.i.i162, ptr noundef %root.i.i) #11
  %call.i.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vma) #11
  br i1 %call.i.i.i164, label %if.end.i.i.i167, label %if.then13.nvkm_vmm_node_delete.exit169_crit_edge

if.then13.nvkm_vmm_node_delete.exit169_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_delete.exit169

if.end.i.i.i167:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i165, align 4
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vma, align 4
  %prev1.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i166, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %nvkm_vmm_node_delete.exit169

nvkm_vmm_node_delete.exit169:                     ; preds = %if.end.i.i.i167, %if.then13.nvkm_vmm_node_delete.exit169_crit_edge
  %19 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %vma, align 4
  %prev.i.i168 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i168 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i168, align 4
  tail call void @kfree(ptr noundef %vma) #11
  br label %return

do.body:                                          ; preds = %if.then
  %tobool30.not = icmp eq ptr %prev, null
  br i1 %tobool30.not, label %do.end38, label %do.body34, !prof !156

do.body34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

do.end38:                                         ; preds = %do.body
  %tree.i = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 1
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %tree.i, ptr noundef %root.i) #11
  %21 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load40 = load i56, ptr %size1, align 8
  %22 = trunc i64 %size to i56
  %.neg156 = mul i56 %22, -64
  %bf.lshr41155 = add i56 %bf.load40, %.neg156
  store i56 %bf.lshr41155, ptr %size1, align 8
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr, align 8
  %sub49 = sub i64 %24, %size
  store i64 %sub49, ptr %addr, align 8
  %size50 = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 3
  %25 = ptrtoint ptr %size50 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 7)
  %bf.load51 = load i56, ptr %size50, align 8
  %26 = shl i56 %22, 6
  %bf.lshr52157 = add i56 %bf.load51, %26
  store i56 %bf.lshr52157, ptr %size50, align 8
  %27 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %root.i, align 4
  %tobool.not27.i = icmp eq ptr %28, null
  br i1 %tobool.not27.i, label %do.end38.nvkm_vmm_node_insert.exit_crit_edge, label %do.end38.while.body.i_crit_edge

do.end38.while.body.i_crit_edge:                  ; preds = %do.end38
  br label %while.body.i

do.end38.nvkm_vmm_node_insert.exit_crit_edge:     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %do.end38.while.body.i_crit_edge
  %29 = phi ptr [ %33, %if.end10.i.while.body.i_crit_edge ], [ %28, %do.end38.while.body.i_crit_edge ]
  %addr1.i = getelementptr i8, ptr %29, i32 16
  %30 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub49, i64 %31)
  %cmp.i = icmp ult i64 %sub49, %31
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub49, i64 %31)
  %cmp4.i = icmp ugt i64 %sub49, %31
  br i1 %cmp4.i, label %if.then5.i, label %do.body.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %if.end10.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i:                                       ; preds = %if.then5.i, %if.then.i
  %ptr.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %32 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptr.1.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %29 to i32
  br label %nvkm_vmm_node_insert.exit

nvkm_vmm_node_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i, %do.end38.nvkm_vmm_node_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %do.end38.nvkm_vmm_node_insert.exit_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.1.i, %while.cond.while.end_crit_edge.i ], [ %root.i, %do.end38.nvkm_vmm_node_insert.exit_crit_edge ]
  %34 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %parent.0.lcssa.i, ptr %tree.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %next, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_left.i.i, align 4
  %37 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tree.i, ptr %ptr.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i, ptr noundef %root.i) #11
  br label %return

if.end61:                                         ; preds = %entry
  %tobool62.not = icmp eq ptr %prev, null
  br i1 %tobool62.not, label %if.end61.return_crit_edge, label %if.then63

if.end61.return_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then63:                                        ; preds = %if.end61
  %size64 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %38 = ptrtoint ptr %size64 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 7)
  %bf.load65 = load i56, ptr %size64, align 8
  %bf.lshr66 = lshr i56 %bf.load65, 6
  %bf.cast67 = zext i56 %bf.lshr66 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast67, i64 %size)
  %cmp68.not = icmp eq i64 %bf.cast67, %size
  br i1 %cmp68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.then63
  %tree.i172 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1
  %root.i173 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %tree.i172, ptr noundef %root.i173) #11
  %size70 = getelementptr inbounds %struct.nvkm_vma, ptr %prev, i32 0, i32 3
  %39 = ptrtoint ptr %size70 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 7)
  %bf.load71 = load i56, ptr %size70, align 8
  %40 = trunc i64 %size to i56
  %41 = shl i56 %40, 6
  %bf.lshr72153 = add i56 %bf.load71, %41
  store i56 %bf.lshr72153, ptr %size70, align 8
  %addr81 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %42 = ptrtoint ptr %addr81 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %addr81, align 8
  %add82 = add i64 %43, %size
  store i64 %add82, ptr %addr81, align 8
  %44 = ptrtoint ptr %size64 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load84 = load i56, ptr %size64, align 8
  %.neg = mul i56 %40, -64
  %bf.lshr85154 = add i56 %bf.load84, %.neg
  store i56 %bf.lshr85154, ptr %size64, align 8
  %45 = ptrtoint ptr %root.i173 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %root.i173, align 4
  %tobool.not27.i175 = icmp eq ptr %46, null
  br i1 %tobool.not27.i175, label %if.then69.nvkm_vmm_node_insert.exit198_crit_edge, label %if.then69.while.body.i180_crit_edge

if.then69.while.body.i180_crit_edge:              ; preds = %if.then69
  br label %while.body.i180

if.then69.nvkm_vmm_node_insert.exit198_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit198

while.body.i180:                                  ; preds = %if.end10.i190.while.body.i180_crit_edge, %if.then69.while.body.i180_crit_edge
  %47 = phi ptr [ %51, %if.end10.i190.while.body.i180_crit_edge ], [ %46, %if.then69.while.body.i180_crit_edge ]
  %addr1.i178 = getelementptr i8, ptr %47, i32 16
  %48 = ptrtoint ptr %addr1.i178 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %addr1.i178, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add82, i64 %49)
  %cmp.i179 = icmp ult i64 %add82, %49
  br i1 %cmp.i179, label %if.then.i182, label %if.else.i184

if.then.i182:                                     ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i181 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 2
  br label %if.end10.i190

if.else.i184:                                     ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_cmp8(i64 %add82, i64 %49)
  %cmp4.i183 = icmp ugt i64 %add82, %49
  br i1 %cmp4.i183, label %if.then5.i186, label %do.body.i187

if.then5.i186:                                    ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i185 = getelementptr inbounds %struct.rb_node, ptr %47, i32 0, i32 1
  br label %if.end10.i190

do.body.i187:                                     ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i190:                                    ; preds = %if.then5.i186, %if.then.i182
  %ptr.1.i188 = phi ptr [ %rb_left.i181, %if.then.i182 ], [ %rb_right.i185, %if.then5.i186 ]
  %50 = ptrtoint ptr %ptr.1.i188 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptr.1.i188, align 4
  %tobool.not.i189 = icmp eq ptr %51, null
  br i1 %tobool.not.i189, label %while.cond.while.end_crit_edge.i192, label %if.end10.i190.while.body.i180_crit_edge

if.end10.i190.while.body.i180_crit_edge:          ; preds = %if.end10.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i180

while.cond.while.end_crit_edge.i192:              ; preds = %if.end10.i190
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i191 = ptrtoint ptr %47 to i32
  br label %nvkm_vmm_node_insert.exit198

nvkm_vmm_node_insert.exit198:                     ; preds = %while.cond.while.end_crit_edge.i192, %if.then69.nvkm_vmm_node_insert.exit198_crit_edge
  %parent.0.lcssa.i193 = phi i32 [ %phi.cast.le.i191, %while.cond.while.end_crit_edge.i192 ], [ 0, %if.then69.nvkm_vmm_node_insert.exit198_crit_edge ]
  %ptr.0.lcssa.i194 = phi ptr [ %ptr.1.i188, %while.cond.while.end_crit_edge.i192 ], [ %root.i173, %if.then69.nvkm_vmm_node_insert.exit198_crit_edge ]
  %52 = ptrtoint ptr %tree.i172 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %parent.0.lcssa.i193, ptr %tree.i172, align 4
  %rb_right.i.i196 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %rb_right.i.i196 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i.i196, align 4
  %rb_left.i.i197 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %rb_left.i.i197 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i.i197, align 4
  %55 = ptrtoint ptr %ptr.0.lcssa.i194 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tree.i172, ptr %ptr.0.lcssa.i194, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i172, ptr noundef %root.i173) #11
  br label %return

if.else:                                          ; preds = %if.then63
  %size98 = getelementptr inbounds %struct.nvkm_vma, ptr %prev, i32 0, i32 3
  %56 = ptrtoint ptr %size98 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 7)
  %bf.load99 = load i56, ptr %size98, align 8
  %narrow151 = and i56 %bf.load65, -64
  %bf.lshr100152 = add i56 %bf.load99, %narrow151
  store i56 %bf.lshr100152, ptr %size98, align 8
  %tree.i.i199 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1
  %root.i.i200 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %tree.i.i199, ptr noundef %root.i.i200) #11
  %call.i.i.i201 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vma) #11
  br i1 %call.i.i.i201, label %if.end.i.i.i204, label %if.else.nvkm_vmm_node_delete.exit206_crit_edge

if.else.nvkm_vmm_node_delete.exit206_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_delete.exit206

if.end.i.i.i204:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i202, align 4
  %59 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vma, align 4
  %prev1.i.i.i.i203 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i203, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %nvkm_vmm_node_delete.exit206

nvkm_vmm_node_delete.exit206:                     ; preds = %if.end.i.i.i204, %if.else.nvkm_vmm_node_delete.exit206_crit_edge
  %63 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %vma, align 4
  %prev.i.i205 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i205 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i205, align 4
  tail call void @kfree(ptr noundef %vma) #11
  br label %return

return:                                           ; preds = %nvkm_vmm_node_delete.exit206, %nvkm_vmm_node_insert.exit198, %if.end61.return_crit_edge, %nvkm_vmm_node_insert.exit, %nvkm_vmm_node_delete.exit169, %nvkm_vmm_node_delete.exit.return_crit_edge
  %retval.0 = phi ptr [ %prev, %nvkm_vmm_node_delete.exit169 ], [ %next, %nvkm_vmm_node_insert.exit ], [ %vma, %nvkm_vmm_node_delete.exit.return_crit_edge ], [ %prev, %nvkm_vmm_node_delete.exit206 ], [ %prev, %nvkm_vmm_node_insert.exit198 ], [ %vma, %if.end61.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_new_(ptr noundef %func, ptr noundef %mmu, i32 noundef %hdr, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %key, ptr noundef %name, ptr nocapture noundef writeonly %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #14
  %1 = ptrtoint ptr %pvmm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pvmm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %page1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %func, i32 0, i32 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %mmu3.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mmu3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mmu, ptr %mmu3.i, align 4
  %name4.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name4.i, align 8
  %debug.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug.i, align 4
  %debug5.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %debug5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %debug5.i, align 4
  %kref.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %kref.i, align 8
  %mutex.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %key, null
  %spec.select.i = select i1 %tobool.not.i, ptr @nvkm_vmm_ctor._key, ptr %key
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select.i) #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %page.0.i = phi ptr [ %page1.i, %if.end ], [ %arrayidx.i, %while.cond.i.while.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvkm_vmm_page, ptr %page.0.i, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %desc7.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %desc7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc7.i, align 4
  %bits8290.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bits8290.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bits8290.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not291.i = icmp eq i8 %14, 0
  br i1 %tobool9.not291.i, label %for.end.thread.i, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

for.end.thread.i:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %page.0.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %page.0.i, align 4
  %conv13302.i = zext i8 %16 to i32
  %incdec.ptr15304.i = getelementptr %struct.nvkm_vmm_desc, ptr %12, i32 -1
  br label %if.end38.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %17 = phi i8 [ %19, %for.body.i.for.body.i_crit_edge ], [ %14, %while.end.i.for.body.i_crit_edge ]
  %bits.0294.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end.i.for.body.i_crit_edge ]
  %levels.0293.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end.i.for.body.i_crit_edge ]
  %desc.0292.i = phi ptr [ %incdec.ptr11.i, %for.body.i.for.body.i_crit_edge ], [ %12, %while.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %17 to i32
  %add.i = add i32 %bits.0294.i, %conv.i
  %incdec.ptr11.i = getelementptr %struct.nvkm_vmm_desc, ptr %desc.0292.i, i32 1
  %inc.i = add i32 %levels.0293.i, 1
  %bits8.i = getelementptr %struct.nvkm_vmm_desc, ptr %desc.0292.i, i32 1, i32 1
  %18 = ptrtoint ptr %bits8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits8.i, align 4
  %tobool9.not.i = icmp eq i8 %19, 0
  br i1 %tobool9.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %20 = ptrtoint ptr %page.0.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %page.0.i, align 4
  %conv13.i = zext i8 %21 to i32
  %add14.i = add i32 %add.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 5
  br i1 %cmp.i, label %do.end.i, label %for.end.i.if.end38.i_crit_edge, !prof !153

for.end.i.if.end38.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1065, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end38.i:                                       ; preds = %for.end.i.if.end38.i_crit_edge, %for.end.thread.i
  %incdec.ptr15308.i = phi ptr [ %incdec.ptr15304.i, %for.end.thread.i ], [ %desc.0292.i, %for.end.i.if.end38.i_crit_edge ]
  %add14307.i = phi i32 [ %conv13302.i, %for.end.thread.i ], [ %add14.i, %for.end.i.if.end38.i_crit_edge ]
  %desc.0.lcssa306.i = phi ptr [ %12, %for.end.thread.i ], [ %incdec.ptr11.i, %for.end.i.if.end38.i_crit_edge ]
  %bits.i.i = getelementptr %struct.nvkm_vmm_desc, ptr %desc.0.lcssa306.i, i32 -1, i32 1
  %22 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bits.i.i, align 4
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %24 = ptrtoint ptr %incdec.ptr15308.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr15308.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp ugt i32 %25, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end38.i.if.end8.i.i.i.i_crit_edge

if.end38.i.if.end8.i.i.i.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp3.i.i = icmp eq i32 %25, 2
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.end8.i.i.i.i_crit_edge

if.then.i.i.if.end8.i.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 -8)
  %26 = load ptr, ptr inttoptr (i32 -8 to ptr), align 8
  %bits9.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bits9.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits9.i.i, align 4
  %conv10.i.i = zext i8 %28 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv10.i.i
  %shr.i.i = lshr i32 %shl.i.i, %sub.i.i
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then5.i.i, %if.then.i.i.if.end8.i.i.i.i_crit_edge, %if.end38.i.if.end8.i.i.i.i_crit_edge
  %lpte.0.i.i = phi i32 [ %shr.i.i, %if.then5.i.i ], [ 0, %if.end38.i.if.end8.i.i.i.i_crit_edge ], [ %shl.i.i, %if.then.i.i.if.end8.i.i.i.i_crit_edge ]
  %add.i.i = add i32 %lpte.0.i.i, 24
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.i.nvkm_vmm_pt_new.exit.thread.i_crit_edge, label %if.end13.i.i

if.end8.i.i.i.i.nvkm_vmm_pt_new.exit.thread.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_pt_new.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end8.i.i.i.i
  %page17.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %page17.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %page17.i.i, align 16
  %sparse19.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %sparse19.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %sparse19.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %sparse19.i.i, align 1
  %31 = ptrtoint ptr %incdec.ptr15308.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr15308.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp22.i.i = icmp eq i32 %32, 0
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.end13.i.i.nvkm_vmm_pt_new.exit.i_crit_edge

if.end13.i.i.nvkm_vmm_pt_new.exit.i_crit_edge:    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_pt_new.exit.i

if.then24.i.i:                                    ; preds = %if.end13.i.i
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 4) #11
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kvcalloc.exit.thread.i.i, label %kvcalloc.exit.i.i, !prof !153

kvcalloc.exit.thread.i.i:                         ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pde51.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %pde51.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pde51.i.i, align 4
  br label %if.then28.i.i

kvcalloc.exit.i.i:                                ; preds = %if.then24.i.i
  %36 = extractvalue { i32, i1 } %33, 0
  %call.i.i.i.i216.i = tail call noalias ptr @kvmalloc_node(i32 noundef %36, i32 noundef 3520, i32 noundef -1) #15
  %pde.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %pde.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i.i216.i, ptr %pde.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %call.i.i.i.i216.i, null
  br i1 %tobool27.not.i.i, label %kvcalloc.exit.i.i.if.then28.i.i_crit_edge, label %kvcalloc.exit.i.i.nvkm_vmm_pt_new.exit.i_crit_edge

kvcalloc.exit.i.i.nvkm_vmm_pt_new.exit.i_crit_edge: ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_pt_new.exit.i

kvcalloc.exit.i.i.if.then28.i.i_crit_edge:        ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %kvcalloc.exit.i.i.if.then28.i.i_crit_edge, %kvcalloc.exit.thread.i.i
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %nvkm_vmm_pt_new.exit.thread.i

nvkm_vmm_pt_new.exit.thread.i:                    ; preds = %if.then28.i.i, %if.end8.i.i.i.i.nvkm_vmm_pt_new.exit.thread.i_crit_edge
  %pd286.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %pd286.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %pd286.i, align 8
  br label %return

nvkm_vmm_pt_new.exit.i:                           ; preds = %kvcalloc.exit.i.i.nvkm_vmm_pt_new.exit.i_crit_edge, %if.end13.i.i.nvkm_vmm_pt_new.exit.i_crit_edge
  %pd.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i.i.i, ptr %pd.i, align 8
  %refs.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %refs.i, align 8
  %join.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %join.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %join.i, ptr %join.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %join.i, ptr %prev.i.i, align 8
  %size45.i = getelementptr %struct.nvkm_vmm_desc, ptr %desc.0.lcssa306.i, i32 -1, i32 2
  %43 = ptrtoint ptr %size45.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %size45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool46.not.i = icmp eq i8 %44, 0
  br i1 %tobool46.not.i, label %nvkm_vmm_pt_new.exit.i.if.end63.i_crit_edge, label %if.then47.i

nvkm_vmm_pt_new.exit.i.if.end63.i_crit_edge:      ; preds = %nvkm_vmm_pt_new.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then47.i:                                      ; preds = %nvkm_vmm_pt_new.exit.i
  %conv50.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bits.i.i, align 4
  %conv52.i = zext i8 %46 to i32
  %mul.i = shl i32 %conv50.i, %conv52.i
  %add53.i = add i32 %mul.i, %hdr
  %align.i = getelementptr %struct.nvkm_vmm_desc, ptr %desc.0.lcssa306.i, i32 -1, i32 3
  %47 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %align.i, align 4
  %call54.i = tail call ptr @nvkm_mmu_ptc_get(ptr noundef %mmu, i32 noundef %add53.i, i32 noundef %48, i1 noundef zeroext true) #11
  %49 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pd.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call54.i, ptr %50, align 4
  %52 = load ptr, ptr %pd.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool60.not.i = icmp eq ptr %54, null
  br i1 %tobool60.not.i, label %if.then47.i.return_crit_edge, label %if.then47.i.if.end63.i_crit_edge

if.then47.i.if.end63.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then47.i.return_crit_edge:                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end63.i:                                       ; preds = %if.then47.i.if.end63.i_crit_edge, %nvkm_vmm_pt_new.exit.i.if.end63.i_crit_edge
  %list.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i217.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i217.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list.i, ptr %prev.i217.i, align 8
  %free.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %free.i, align 4
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 12
  %58 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %root.i, align 8
  %start.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 6
  br i1 %managed, label %if.then67.i, label %if.else.i

if.then67.i:                                      ; preds = %if.end63.i
  %59 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %start.i, align 8
  %sh_prom.i = zext i32 %add14307.i to i64
  %shl68.i = shl nuw i64 1, %sh_prom.i
  %limit.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %shl68.i, ptr %limit.i, align 8
  %add69.i = add i64 %size, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add69.i, i64 %addr)
  %cmp70.i = icmp ult i64 %add69.i, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add69.i, i64 %shl68.i)
  %cmp74.i = icmp ugt i64 %add69.i, %shl68.i
  %or.cond.i = select i1 %cmp70.i, i1 true, i1 %cmp74.i
  br i1 %or.cond.i, label %if.then67.i.return_crit_edge, label %if.end77.i

if.then67.i.return_crit_edge:                     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end77.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %addr)
  %tobool78.not.i = icmp eq i64 %addr, 0
  br i1 %tobool78.not.i, label %if.end77.i.if.end82.i_crit_edge, label %land.lhs.true.i

if.end77.i.if.end82.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82.i

land.lhs.true.i:                                  ; preds = %if.end77.i
  %call79.i = tail call fastcc i32 @nvkm_vmm_ctor_managed(ptr noundef nonnull %call7.i.i, i64 noundef 0, i64 noundef %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %land.lhs.true.i.if.end82.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true.i.if.end82.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82.i

if.end82.i:                                       ; preds = %land.lhs.true.i.if.end82.i_crit_edge, %if.end77.i.if.end82.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool83.not.i = icmp eq i64 %size, 0
  br i1 %tobool83.not.i, label %if.end82.i.if.end90.i_crit_edge, label %if.then84.i

if.end82.i.if.end90.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

if.then84.i:                                      ; preds = %if.end82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i218.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not.i219.i = icmp eq ptr %call7.i.i.i218.i, null
  br i1 %tobool.not.i219.i, label %if.then84.i.return_crit_edge, label %if.end88.i

if.then84.i.return_crit_edge:                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end88.i:                                       ; preds = %if.then84.i
  %addr1.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 2
  %62 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %addr, ptr %addr1.i.i, align 8
  %size2.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 3
  %63 = trunc i64 %size to i56
  %64 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 7)
  %bf.load.i220.i = load i56, ptr %size2.i.i, align 8
  %bf.shl.i.i = shl i56 %63, 6
  %bf.clear.i221.i = and i56 %bf.load.i220.i, 49
  %bf.set.i.i = or i56 %bf.clear.i221.i, %bf.shl.i.i
  %bf.set5.i.i = or i56 %bf.set.i.i, 14
  store i56 %bf.set5.i.i, ptr %size2.i.i, align 8
  %refd.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 4
  %65 = ptrtoint ptr %refd.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load6.i.i = load i8, ptr %refd.i.i, align 1
  %bf.set8.i.i = or i8 %bf.load6.i.i, -32
  store i8 %bf.set8.i.i, ptr %refd.i.i, align 1
  %66 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %free.i, align 4
  %tobool.not55.i.i = icmp eq ptr %67, null
  br i1 %tobool.not55.i.i, label %if.end88.i.nvkm_vmm_free_insert.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end88.i.nvkm_vmm_free_insert.exit.i_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_insert.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end88.i
  %bf.lshr.i.i = and i56 %63, 1125899906842623
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end32.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %68 = phi ptr [ %67, %while.body.lr.ph.i.i ], [ %73, %if.end32.i.i.while.body.i.i_crit_edge ]
  %size1.i.i = getelementptr i8, ptr %68, i32 24
  %69 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 7)
  %bf.load2.i.i = load i56, ptr %size1.i.i, align 8
  %bf.lshr3.i.i = lshr i56 %bf.load2.i.i, 6
  %cmp.i224.i = icmp ult i56 %bf.lshr.i.i, %bf.lshr3.i.i
  br i1 %cmp.i224.i, label %if.then.i225.i, label %if.else.i.i

if.then.i225.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp13.i.i = icmp ugt i56 %bf.lshr.i.i, %bf.lshr3.i.i
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else15.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1
  br label %if.end32.i.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  %addr16.i.i = getelementptr i8, ptr %68, i32 16
  %70 = ptrtoint ptr %addr16.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %addr16.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %addr)
  %cmp17.i.i = icmp ugt i64 %71, %addr
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.else20.i.i

if.then18.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left19.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  br label %if.end32.i.i

if.else20.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %addr)
  %cmp23.i.i = icmp ult i64 %71, %addr
  br i1 %cmp23.i.i, label %if.then24.i226.i, label %do.body.i.i

if.then24.i226.i:                                 ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right25.i.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1
  br label %if.end32.i.i

do.body.i.i:                                      ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

if.end32.i.i:                                     ; preds = %if.then24.i226.i, %if.then18.i.i, %if.then14.i.i, %if.then.i225.i
  %ptr.1.i.i = phi ptr [ %rb_left.i.i, %if.then.i225.i ], [ %rb_right.i.i, %if.then14.i.i ], [ %rb_left19.i.i, %if.then18.i.i ], [ %rb_right25.i.i, %if.then24.i226.i ]
  %72 = ptrtoint ptr %ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptr.1.i.i, align 4
  %tobool.not.i227.i = icmp eq ptr %73, null
  br i1 %tobool.not.i227.i, label %while.cond.while.end_crit_edge.i.i, label %if.end32.i.i.while.body.i.i_crit_edge

if.end32.i.i.while.body.i.i_crit_edge:            ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i.i = ptrtoint ptr %68 to i32
  br label %nvkm_vmm_free_insert.exit.i

nvkm_vmm_free_insert.exit.i:                      ; preds = %while.cond.while.end_crit_edge.i.i, %if.end88.i.nvkm_vmm_free_insert.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end88.i.nvkm_vmm_free_insert.exit.i_crit_edge ]
  %ptr.0.lcssa.i.i = phi ptr [ %ptr.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %free.i, %if.end88.i.nvkm_vmm_free_insert.exit.i_crit_edge ]
  %tree.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 1
  %74 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %parent.0.lcssa.i.i, ptr %tree.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i218.i, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %77 = ptrtoint ptr %ptr.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tree.i.i, ptr %ptr.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i.i, ptr noundef %free.i) #11
  %78 = ptrtoint ptr %prev.i217.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i217.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i218.i, ptr noundef %79, ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %nvkm_vmm_free_insert.exit.i.if.end90.i_crit_edge

nvkm_vmm_free_insert.exit.i.if.end90.i_crit_edge: ; preds = %nvkm_vmm_free_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

if.end.i.i.i:                                     ; preds = %nvkm_vmm_free_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %prev.i217.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i218.i, ptr %prev.i217.i, align 8
  %81 = ptrtoint ptr %call7.i.i.i218.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %list.i, ptr %call7.i.i.i218.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i218.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %call7.i.i.i218.i, ptr %79, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end.i.i.i, %nvkm_vmm_free_insert.exit.i.if.end90.i_crit_edge, %if.end82.i.if.end90.i_crit_edge
  %84 = ptrtoint ptr %limit.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %limit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %add69.i)
  %tobool93.not.i = icmp eq i64 %85, %add69.i
  br i1 %tobool93.not.i, label %if.end90.i.if.end131.i_crit_edge, label %land.lhs.true94.i

if.end90.i.if.end131.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

land.lhs.true94.i:                                ; preds = %if.end90.i
  %sub.i = sub i64 %85, %add69.i
  %call95.i = tail call fastcc i32 @nvkm_vmm_ctor_managed(ptr noundef nonnull %call7.i.i, i64 noundef %add69.i, i64 noundef %sub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %land.lhs.true94.i.if.end131.i_crit_edge, label %land.lhs.true94.i.return_crit_edge

land.lhs.true94.i.return_crit_edge:               ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true94.i.if.end131.i_crit_edge:          ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.else.i:                                        ; preds = %if.end63.i
  %86 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %addr, ptr %start.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool100.not.i = icmp eq i64 %size, 0
  br i1 %tobool100.not.i, label %cond.false103.i, label %cond.true101.i

cond.true101.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %add102.i = add i64 %size, %addr
  br label %cond.end106.i

cond.false103.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sh_prom104.i = zext i32 %add14307.i to i64
  %shl105.i = shl nuw i64 1, %sh_prom104.i
  br label %cond.end106.i

cond.end106.i:                                    ; preds = %cond.false103.i, %cond.true101.i
  %cond107.i = phi i64 [ %add102.i, %cond.true101.i ], [ %shl105.i, %cond.false103.i ]
  %limit108.i = getelementptr inbounds %struct.nvkm_vmm, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %limit108.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %cond107.i, ptr %limit108.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cond107.i, i64 %addr)
  %cmp111.i = icmp ult i64 %cond107.i, %addr
  br i1 %cmp111.i, label %cond.end106.i.return_crit_edge, label %lor.lhs.false113.i

cond.end106.i.return_crit_edge:                   ; preds = %cond.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false113.i:                               ; preds = %cond.end106.i
  %sh_prom115.i = zext i32 %add14307.i to i64
  %shl116.i = shl nuw i64 1, %sh_prom115.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond107.i, i64 %shl116.i)
  %cmp117.i = icmp ugt i64 %cond107.i, %shl116.i
  br i1 %cmp117.i, label %lor.lhs.false113.i.return_crit_edge, label %if.end120.i

lor.lhs.false113.i.return_crit_edge:              ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end120.i:                                      ; preds = %lor.lhs.false113.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i229.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not.i230.i = icmp eq ptr %call7.i.i.i229.i, null
  br i1 %tobool.not.i230.i, label %if.end120.i.return_crit_edge, label %if.end128.i

if.end120.i.return_crit_edge:                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end128.i:                                      ; preds = %if.end120.i
  %sub124.i = sub i64 %cond107.i, %addr
  %addr1.i231.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 2
  %89 = ptrtoint ptr %addr1.i231.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %addr, ptr %addr1.i231.i, align 8
  %size2.i232.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 3
  %90 = trunc i64 %sub124.i to i56
  %91 = ptrtoint ptr %size2.i232.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 7)
  %bf.load.i233.i = load i56, ptr %size2.i232.i, align 8
  %bf.shl.i234.i = shl i56 %90, 6
  %bf.clear.i235.i = and i56 %bf.load.i233.i, 49
  %bf.set.i236.i = or i56 %bf.clear.i235.i, %bf.shl.i234.i
  %bf.set5.i237.i = or i56 %bf.set.i236.i, 14
  store i56 %bf.set5.i237.i, ptr %size2.i232.i, align 8
  %refd.i238.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 4
  %92 = ptrtoint ptr %refd.i238.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load6.i239.i = load i8, ptr %refd.i238.i, align 1
  %bf.set8.i240.i = or i8 %bf.load6.i239.i, -32
  store i8 %bf.set8.i240.i, ptr %refd.i238.i, align 1
  %93 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free.i, align 4
  %tobool.not55.i244.i = icmp eq ptr %94, null
  br i1 %tobool.not55.i244.i, label %if.end128.i.nvkm_vmm_free_insert.exit281.i_crit_edge, label %while.body.lr.ph.i249.i

if.end128.i.nvkm_vmm_free_insert.exit281.i_crit_edge: ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_insert.exit281.i

while.body.lr.ph.i249.i:                          ; preds = %if.end128.i
  %bf.lshr.i247.i = and i56 %90, 1125899906842623
  br label %while.body.i254.i

while.body.i254.i:                                ; preds = %if.end32.i273.i.while.body.i254.i_crit_edge, %while.body.lr.ph.i249.i
  %95 = phi ptr [ %94, %while.body.lr.ph.i249.i ], [ %100, %if.end32.i273.i.while.body.i254.i_crit_edge ]
  %size1.i250.i = getelementptr i8, ptr %95, i32 24
  %96 = ptrtoint ptr %size1.i250.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 7)
  %bf.load2.i251.i = load i56, ptr %size1.i250.i, align 8
  %bf.lshr3.i252.i = lshr i56 %bf.load2.i251.i, 6
  %cmp.i253.i = icmp ult i56 %bf.lshr.i247.i, %bf.lshr3.i252.i
  br i1 %cmp.i253.i, label %if.then.i256.i, label %if.else.i258.i

if.then.i256.i:                                   ; preds = %while.body.i254.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i255.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 2
  br label %if.end32.i273.i

if.else.i258.i:                                   ; preds = %while.body.i254.i
  %cmp13.i257.i = icmp ugt i56 %bf.lshr.i247.i, %bf.lshr3.i252.i
  br i1 %cmp13.i257.i, label %if.then14.i260.i, label %if.else15.i263.i

if.then14.i260.i:                                 ; preds = %if.else.i258.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i259.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 1
  br label %if.end32.i273.i

if.else15.i263.i:                                 ; preds = %if.else.i258.i
  %addr16.i261.i = getelementptr i8, ptr %95, i32 16
  %97 = ptrtoint ptr %addr16.i261.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %addr16.i261.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %addr)
  %cmp17.i262.i = icmp ugt i64 %98, %addr
  br i1 %cmp17.i262.i, label %if.then18.i265.i, label %if.else20.i267.i

if.then18.i265.i:                                 ; preds = %if.else15.i263.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left19.i264.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 2
  br label %if.end32.i273.i

if.else20.i267.i:                                 ; preds = %if.else15.i263.i
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %addr)
  %cmp23.i266.i = icmp ult i64 %98, %addr
  br i1 %cmp23.i266.i, label %if.then24.i269.i, label %do.body.i270.i

if.then24.i269.i:                                 ; preds = %if.else20.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right25.i268.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 1
  br label %if.end32.i273.i

do.body.i270.i:                                   ; preds = %if.else20.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

if.end32.i273.i:                                  ; preds = %if.then24.i269.i, %if.then18.i265.i, %if.then14.i260.i, %if.then.i256.i
  %ptr.1.i271.i = phi ptr [ %rb_left.i255.i, %if.then.i256.i ], [ %rb_right.i259.i, %if.then14.i260.i ], [ %rb_left19.i264.i, %if.then18.i265.i ], [ %rb_right25.i268.i, %if.then24.i269.i ]
  %99 = ptrtoint ptr %ptr.1.i271.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ptr.1.i271.i, align 4
  %tobool.not.i272.i = icmp eq ptr %100, null
  br i1 %tobool.not.i272.i, label %while.cond.while.end_crit_edge.i275.i, label %if.end32.i273.i.while.body.i254.i_crit_edge

if.end32.i273.i.while.body.i254.i_crit_edge:      ; preds = %if.end32.i273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i254.i

while.cond.while.end_crit_edge.i275.i:            ; preds = %if.end32.i273.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i274.i = ptrtoint ptr %95 to i32
  br label %nvkm_vmm_free_insert.exit281.i

nvkm_vmm_free_insert.exit281.i:                   ; preds = %while.cond.while.end_crit_edge.i275.i, %if.end128.i.nvkm_vmm_free_insert.exit281.i_crit_edge
  %parent.0.lcssa.i276.i = phi i32 [ %phi.cast.le.i274.i, %while.cond.while.end_crit_edge.i275.i ], [ 0, %if.end128.i.nvkm_vmm_free_insert.exit281.i_crit_edge ]
  %ptr.0.lcssa.i277.i = phi ptr [ %ptr.1.i271.i, %while.cond.while.end_crit_edge.i275.i ], [ %free.i, %if.end128.i.nvkm_vmm_free_insert.exit281.i_crit_edge ]
  %tree.i278.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 1
  %101 = ptrtoint ptr %tree.i278.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %parent.0.lcssa.i276.i, ptr %tree.i278.i, align 8
  %rb_right.i.i279.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %rb_right.i.i279.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %rb_right.i.i279.i, align 4
  %rb_left.i.i280.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i229.i, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %rb_left.i.i280.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %rb_left.i.i280.i, align 8
  %104 = ptrtoint ptr %ptr.0.lcssa.i277.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %tree.i278.i, ptr %ptr.0.lcssa.i277.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i278.i, ptr noundef %free.i) #11
  %105 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %list.i, align 4
  %call.i.i282.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i229.i, ptr noundef %list.i, ptr noundef %106) #11
  br i1 %call.i.i282.i, label %if.end.i.i284.i, label %nvkm_vmm_free_insert.exit281.i.if.end131.i_crit_edge

nvkm_vmm_free_insert.exit281.i.if.end131.i_crit_edge: ; preds = %nvkm_vmm_free_insert.exit281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.end.i.i284.i:                                  ; preds = %nvkm_vmm_free_insert.exit281.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i229.i, ptr %prev1.i.i.i, align 4
  %108 = ptrtoint ptr %call7.i.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %106, ptr %call7.i.i.i229.i, align 8
  %prev3.i.i283.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i229.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i283.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %list.i, ptr %prev3.i.i283.i, align 4
  %110 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call7.i.i.i229.i, ptr %list.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end.i.i284.i, %nvkm_vmm_free_insert.exit281.i.if.end131.i_crit_edge, %land.lhs.true94.i.if.end131.i_crit_edge, %if.end90.i.if.end131.i_crit_edge
  br label %return

return:                                           ; preds = %if.end131.i, %if.end120.i.return_crit_edge, %lor.lhs.false113.i.return_crit_edge, %cond.end106.i.return_crit_edge, %land.lhs.true94.i.return_crit_edge, %if.then84.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.then67.i.return_crit_edge, %if.then47.i.return_crit_edge, %nvkm_vmm_pt_new.exit.thread.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end131.i ], [ -12, %if.then47.i.return_crit_edge ], [ -22, %if.then67.i.return_crit_edge ], [ %call79.i, %land.lhs.true.i.return_crit_edge ], [ %call95.i, %land.lhs.true94.i.return_crit_edge ], [ -22, %lor.lhs.false113.i.return_crit_edge ], [ -22, %cond.end106.i.return_crit_edge ], [ -12, %nvkm_vmm_pt_new.exit.thread.i ], [ -12, %if.then84.i.return_crit_edge ], [ -12, %if.end120.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_pfn_unmap(ptr noundef %vmm, i64 noundef %addr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %0 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.020.i = load ptr, ptr %root.i, align 4
  %tobool.not21.i = icmp eq ptr %node.020.i, null
  br i1 %tobool.not21.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.022.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.020.i, %entry.while.body.i_crit_edge ]
  %addr1.i = getelementptr i8, ptr %node.022.i, i32 16
  %1 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %addr)
  %cmp.i = icmp ugt i64 %2, %addr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.022.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size.i = getelementptr i8, ptr %node.022.i, i32 24
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 7)
  %bf.load.i = load i56, ptr %size.i, align 8
  %bf.lshr.i = lshr i56 %bf.load.i, 6
  %bf.cast.i = zext i56 %bf.lshr.i to i64
  %add.i = add i64 %2, %bf.cast.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp3.not.i = icmp ugt i64 %add.i, %addr
  br i1 %cmp3.not.i, label %nvkm_vmm_node_search.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.022.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %4 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nvkm_vmm_node_search.exit:                        ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %node.022.i, i32 -8
  %add = add i64 %size, %addr
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %nvkm_vmm_node_search.exit.cleanup_crit_edge, label %do.body.preheader

nvkm_vmm_node_search.exit.cleanup_crit_edge:      ; preds = %nvkm_vmm_node_search.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.preheader:                                ; preds = %nvkm_vmm_node_search.exit
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %start.0 = phi i64 [ %27, %land.rhs.do.body_crit_edge ], [ %addr, %do.body.preheader ]
  %vma.0 = phi ptr [ %25, %land.rhs.do.body_crit_edge ], [ %add.ptr.le.i, %do.body.preheader ]
  %mapped = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 4
  %5 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %mapped, align 1
  %6 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %bf.cast.not = icmp eq i8 %6, 0
  br i1 %bf.cast.not, label %do.body.do.cond49_crit_edge, label %lor.lhs.false

do.body.do.cond49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond49

lor.lhs.false:                                    ; preds = %do.body
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 5
  %7 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memory, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end3, label %lor.lhs.false.do.cond49_crit_edge

lor.lhs.false.do.cond49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond49

if.end3:                                          ; preds = %lor.lhs.false
  %sub = sub i64 %add, %start.0
  %size4 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 3
  %9 = ptrtoint ptr %size4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load5 = load i56, ptr %size4, align 8
  %bf.lshr6 = lshr i56 %bf.load5, 6
  %bf.cast7 = zext i56 %bf.lshr6 to i64
  %addr8 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 2
  %10 = ptrtoint ptr %addr8 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr8, align 8
  %sub9.neg = sub i64 %11, %start.0
  %sub10 = add i64 %sub9.neg, %bf.cast7
  %12 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub10)
  %13 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vmm, align 8
  %bf.lshr12 = lshr i8 %bf.load, 5
  %idxprom = zext i8 %bf.lshr12 to i32
  %arrayidx = getelementptr %struct.nvkm_vmm_func, ptr %14, i32 0, i32 8, i32 %idxprom
  %desc.i = getelementptr %struct.nvkm_vmm_func, ptr %14, i32 0, i32 8, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %func2.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool5.not.i = icmp eq ptr %20, null
  br i1 %tobool5.not.i, label %cond.false8.i, label %if.end3.nvkm_vmm_ptes_unmap_put.exit_crit_edge

if.end3.nvkm_vmm_ptes_unmap_put.exit_crit_edge:   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit

cond.false8.i:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unmap.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit

nvkm_vmm_ptes_unmap_put.exit:                     ; preds = %cond.false8.i, %if.end3.nvkm_vmm_ptes_unmap_put.exit_crit_edge
  %cond10.i = phi ptr [ %20, %if.end3.nvkm_vmm_ptes_unmap_put.exit_crit_edge ], [ %22, %cond.false8.i ]
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx, i64 noundef %start.0, i64 noundef %12, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i) #11
  %call13 = tail call fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %vmm, ptr noundef nonnull %vma.0, i64 noundef %start.0, i64 noundef %12, i1 noundef zeroext false)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.then40.critedge, !prof !153

do.end:                                           ; preds = %nvkm_vmm_ptes_unmap_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 9, ptr noundef null) #11
  br label %do.cond49

if.then40.critedge:                               ; preds = %nvkm_vmm_ptes_unmap_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %refd41 = getelementptr inbounds %struct.nvkm_vma, ptr %call13, i32 0, i32 4
  %23 = ptrtoint ptr %refd41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load42 = load i8, ptr %refd41, align 1
  %bf.set = and i8 %bf.load42, 29
  %bf.clear46 = or i8 %bf.set, -32
  store i8 %bf.clear46, ptr %refd41, align 1
  br label %do.cond49

do.cond49:                                        ; preds = %if.then40.critedge, %do.end, %lor.lhs.false.do.cond49_crit_edge, %do.body.do.cond49_crit_edge
  %vma.1 = phi ptr [ %vma.0, %lor.lhs.false.do.cond49_crit_edge ], [ %call13, %if.then40.critedge ], [ %vma.0, %do.body.do.cond49_crit_edge ], [ %vma.0, %do.end ]
  %24 = ptrtoint ptr %vma.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vma.1, align 8
  %cmp51 = icmp eq ptr %25, %list
  %tobool59.not97 = icmp eq ptr %25, null
  %tobool59.not = or i1 %cmp51, %tobool59.not97
  br i1 %tobool59.not, label %do.cond49.cleanup_crit_edge, label %land.rhs

do.cond49.cleanup_crit_edge:                      ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %do.cond49
  %addr60 = getelementptr inbounds %struct.nvkm_vma, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %addr60 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr60, align 8
  %cmp61 = icmp ult i64 %27, %add
  br i1 %cmp61, label %land.rhs.do.body_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %do.cond49.cleanup_crit_edge, %nvkm_vmm_node_search.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %nvkm_vmm_node_search.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.cond49.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ -22, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %vmm, ptr noundef %vma, i64 noundef %addr, i64 noundef %size, i1 noundef zeroext %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %addr)
  %cmp = icmp eq i64 %1, %addr
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %part = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %2 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %part, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true2

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true2:                                   ; preds = %land.lhs.true
  %prev3 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %prev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev3, align 4
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %cmp4 = icmp eq ptr %5, %list
  %tobool.not8 = icmp eq ptr %5, null
  %tobool.not = or i1 %cmp4, %tobool.not8
  br i1 %tobool.not, label %land.lhs.true2.if.end17_crit_edge, label %if.then

land.lhs.true2.if.end17_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true2
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then.if.then16_crit_edge

if.then.if.then16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.then
  %mapped = getelementptr inbounds %struct.nvkm_vma, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8 = load i8, ptr %mapped, align 1
  %9 = and i8 %bf.load8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  %cmp14.not = xor i1 %10, %map
  br i1 %cmp14.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.then.if.then16_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false.if.end17_crit_edge, %land.lhs.true2.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %prev.0 = phi ptr [ null, %if.then16 ], [ %5, %lor.lhs.false.if.end17_crit_edge ], [ null, %land.lhs.true2.if.end17_crit_edge ], [ null, %land.lhs.true.if.end17_crit_edge ], [ null, %entry.if.end17_crit_edge ]
  %size19 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %11 = ptrtoint ptr %size19 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load20 = load i56, ptr %size19, align 8
  %bf.lshr21 = lshr i56 %bf.load20, 6
  %bf.cast22 = zext i56 %bf.lshr21 to i64
  %add = add i64 %1, %bf.cast22
  %add23 = add i64 %size, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add23)
  %cmp24 = icmp eq i64 %add, %add23
  br i1 %cmp24, label %land.lhs.true26, label %if.end17.if.end64_crit_edge

if.end17.if.end64_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true26:                                  ; preds = %if.end17
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vma, align 8
  %list29 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %cmp30 = icmp eq ptr %13, %list29
  %tobool41.not7 = icmp eq ptr %13, null
  %tobool41.not = or i1 %cmp30, %tobool41.not7
  br i1 %tobool41.not, label %land.lhs.true26.if.end64_crit_edge, label %if.then42

land.lhs.true26.if.end64_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then42:                                        ; preds = %land.lhs.true26
  %part43 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %part43 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load44 = load i8, ptr %part43, align 1
  %15 = and i8 %bf.load44, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast47.not = icmp eq i8 %15, 0
  br i1 %bf.cast47.not, label %if.then42.if.end64_crit_edge, label %lor.lhs.false48

if.then42.if.end64_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

lor.lhs.false48:                                  ; preds = %if.then42
  %memory49 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %memory49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memory49, align 8
  %tobool50.not = icmp eq ptr %17, null
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false48.if.end64_crit_edge

lor.lhs.false48.if.end64_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %18 = and i8 %bf.load44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %19 = icmp eq i8 %18, 0
  %cmp60.not = xor i1 %19, %map
  br i1 %cmp60.not, label %lor.lhs.false51.if.then68_crit_edge, label %lor.lhs.false51.if.end64_crit_edge

lor.lhs.false51.if.end64_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

lor.lhs.false51.if.then68_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.end64:                                         ; preds = %lor.lhs.false51.if.end64_crit_edge, %lor.lhs.false48.if.end64_crit_edge, %if.then42.if.end64_crit_edge, %land.lhs.true26.if.end64_crit_edge, %if.end17.if.end64_crit_edge
  %tobool65.not = icmp eq ptr %prev.0, null
  br i1 %tobool65.not, label %if.end69, label %if.end64.if.then68_crit_edge

if.end64.if.then68_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then68

if.then68:                                        ; preds = %if.end64.if.then68_crit_edge, %lor.lhs.false51.if.then68_crit_edge
  %next.06 = phi ptr [ null, %if.end64.if.then68_crit_edge ], [ %13, %lor.lhs.false51.if.then68_crit_edge ]
  %call = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %vmm, ptr noundef %prev.0, ptr noundef %vma, ptr noundef %next.06, i64 noundef %size)
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call ptr @nvkm_vmm_node_split(ptr noundef %vmm, ptr noundef %vma, i64 noundef %addr, i64 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then68
  %retval.0 = phi ptr [ %call, %if.then68 ], [ %call70, %if.end69 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_pfn_map(ptr noundef %vmm, i8 noundef zeroext %shift, i64 noundef %addr, i64 noundef %size, ptr noundef %pfn) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nvkm_vmm_map, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %page1 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8
  %add = add i64 %size, %addr
  %conv = zext i8 %shift to i32
  %sh_prom = zext i8 %shift to i64
  %shr = lshr i64 %size, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %2 = ptrtoint ptr %page1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not376 = icmp eq i8 %3, 0
  br i1 %tobool.not376, label %entry.do.body_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %4 = phi i8 [ %12, %while.body.land.rhs_crit_edge ], [ %3, %entry.land.rhs_crit_edge ]
  %page.0377 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %page1, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %shift)
  %cmp.not = icmp eq i8 %4, %shift
  br i1 %cmp.not, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %desc = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page.0377, i32 0, i32 1
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %func9 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %func9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func9, align 4
  %pfn10 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %pfn10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfn10, align 4
  %cmp11 = icmp eq ptr %10, null
  br i1 %cmp11, label %lor.rhs.while.body_crit_edge, label %lor.lhs.false

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %incdec.ptr = getelementptr %struct.nvkm_vmm_page, ptr %page.0377, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %while.body.do.body_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %lor.rhs
  %desc.le = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page.0377, i32 0, i32 1
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %13 = or i64 %size, %addr
  %14 = and i64 %13, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %15 = icmp ne i64 %14, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp29 = icmp ult i64 %add, %addr
  %or.cond363 = or i1 %cmp29, %15
  br i1 %or.cond363, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false31

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %limit33 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 7
  %16 = ptrtoint ptr %limit33 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %limit33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp34 = icmp ugt i64 %add, %17
  br i1 %cmp34, label %lor.lhs.false31.do.body_crit_edge, label %if.end55

lor.lhs.false31.do.body_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false31.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %while.body.do.body_crit_edge, %entry.do.body_crit_edge
  %18 = phi i8 [ %shift, %lor.lhs.false.do.body_crit_edge ], [ %shift, %lor.lhs.false31.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ], [ 0, %while.body.do.body_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp36 = icmp ugt i32 %20, 3
  br i1 %cmp36, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %21 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %22, i32 0, i32 1, i32 4
  %name46 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %27 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name46, align 8
  %conv49 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %28, i32 noundef %conv, i32 noundef %conv49, i64 noundef %addr, i64 noundef %size) #16
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false31
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %29 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.020.i = load ptr, ptr %root.i, align 4
  %tobool.not21.i = icmp eq ptr %node.020.i, null
  br i1 %tobool.not21.i, label %if.end55.cleanup_crit_edge, label %if.end55.while.body.i_crit_edge

if.end55.while.body.i_crit_edge:                  ; preds = %if.end55
  br label %while.body.i

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end55.while.body.i_crit_edge
  %node.022.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.020.i, %if.end55.while.body.i_crit_edge ]
  %addr1.i = getelementptr i8, ptr %node.022.i, i32 16
  %30 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %addr)
  %cmp.i = icmp ugt i64 %31, %addr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.022.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %size.i = getelementptr i8, ptr %node.022.i, i32 24
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load.i = load i56, ptr %size.i, align 8
  %bf.lshr.i = lshr i56 %bf.load.i, 6
  %bf.cast.i = zext i56 %bf.lshr.i to i64
  %add.i = add i64 %31, %bf.cast.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %addr)
  %cmp3.not.i = icmp ugt i64 %add.i, %addr
  br i1 %cmp3.not.i, label %nvkm_vmm_node_search.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.022.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %33 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nvkm_vmm_node_search.exit:                        ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %node.022.i, i32 -8
  %tobool56.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool56.not, label %nvkm_vmm_node_search.exit.cleanup_crit_edge, label %do.body59.preheader

nvkm_vmm_node_search.exit.cleanup_crit_edge:      ; preds = %nvkm_vmm_node_search.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body59.preheader:                              ; preds = %nvkm_vmm_node_search.exit
  %sub.ptr.lhs.cast = ptrtoint ptr %page.0377 to i32
  %page185 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %args, i32 0, i32 7
  %pfn187 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %args, i32 0, i32 5
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  br label %do.body59

do.body59:                                        ; preds = %if.end247.do.body59_crit_edge, %do.body59.preheader
  %start.0 = phi i64 [ %add210, %if.end247.do.body59_crit_edge ], [ %addr, %do.body59.preheader ]
  %pi.0 = phi i32 [ %pi.2, %if.end247.do.body59_crit_edge ], [ 0, %do.body59.preheader ]
  %vma.0 = phi ptr [ %vma.3, %if.end247.do.body59_crit_edge ], [ %add.ptr.le.i, %do.body59.preheader ]
  %arrayidx = getelementptr i64, ptr %pfn, i32 %pi.0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx, align 8
  %and60 = and i64 %35, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61 = icmp ne i64 %and60, 0
  %36 = trunc i64 %and60 to i8
  %mapped63 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 4
  %37 = ptrtoint ptr %mapped63 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %mapped63, align 1
  %38 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %bf.cast.not = icmp eq i8 %38, 0
  %sub66 = sub i64 %add, %start.0
  %39 = trunc i64 %and60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pi.0, i32 %conv2)
  %cmp69380 = icmp slt i32 %pi.0, %conv2
  br i1 %cmp69380, label %for.body.preheader, label %do.body59.for.end_crit_edge

do.body59.for.end_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %do.body59
  %40 = sub i32 %conv2, %pi.0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %add68382 = phi i32 [ %add68, %for.inc.for.body_crit_edge ], [ %pi.0, %for.body.preheader ]
  %pn.0381 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx74 = getelementptr i64, ptr %pfn, i32 %add68382
  %41 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx74, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %39)
  %cmp79.not = icmp eq i32 %44, %39
  br i1 %cmp79.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %pn.0381, 1
  %add68 = add i32 %inc, %pi.0
  %exitcond.not = icmp eq i32 %inc, %40
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body59.for.end_crit_edge
  %pn.0.lcssa = phi i32 [ 0, %do.body59.for.end_crit_edge ], [ %pn.0381, %for.body.for.end_crit_edge ], [ %40, %for.inc.for.end_crit_edge ]
  %45 = ptrtoint ptr %page.0377 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %page.0377, align 4
  %conv84 = zext i8 %46 to i32
  %shl85 = shl i32 %pn.0.lcssa, %conv84
  %conv86 = sext i32 %shl85 to i64
  %47 = call i64 @llvm.umin.i64(i64 %sub66, i64 %conv86)
  %size90 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 3
  %48 = ptrtoint ptr %size90 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 7)
  %bf.load91 = load i56, ptr %size90, align 8
  %bf.lshr92 = lshr i56 %bf.load91, 6
  %bf.cast93 = zext i56 %bf.lshr92 to i64
  %addr94 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 2
  %49 = ptrtoint ptr %addr94 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %addr94, align 8
  %add95 = sub i64 %50, %start.0
  %sub96 = add i64 %add95, %bf.cast93
  %51 = call i64 @llvm.umin.i64(i64 %47, i64 %sub96)
  %52 = and i56 %bf.load91, 32
  %bf.cast107.not = icmp eq i56 %52, 0
  br i1 %bf.cast107.not, label %for.end.next_crit_edge, label %lor.lhs.false108

for.end.next_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

lor.lhs.false108:                                 ; preds = %for.end
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %vma.0, i32 0, i32 5
  %53 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %memory, align 8
  %tobool109.not = icmp eq ptr %54, null
  br i1 %tobool109.not, label %if.end111, label %lor.lhs.false108.next_crit_edge

lor.lhs.false108.next_crit_edge:                  ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end111:                                        ; preds = %lor.lhs.false108
  %.lobit = lshr exact i8 %38, 1
  %55 = zext i8 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %55)
  %cmp116.not = icmp eq i32 %39, %55
  br i1 %cmp116.not, label %if.end111.if.end182_crit_edge, label %if.then118

if.end111.if.end182_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end182

if.then118:                                       ; preds = %if.end111
  %call124 = call fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %vmm, ptr noundef %vma.0, i64 noundef %start.0, i64 noundef %51, i1 noundef zeroext %tobool61)
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %do.end142, label %if.end158, !prof !153

do.end142:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1274, i32 noundef 9, ptr noundef null) #11
  br label %next

if.end158:                                        ; preds = %if.then118
  %mapped160 = getelementptr inbounds %struct.nvkm_vma, ptr %call124, i32 0, i32 4
  %56 = ptrtoint ptr %mapped160 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load161 = load i8, ptr %mapped160, align 1
  %bf.shl = shl nuw nsw i8 %36, 1
  %bf.clear162 = and i8 %bf.load161, -3
  %bf.set = or i8 %bf.clear162, %bf.shl
  store i8 %bf.set, ptr %mapped160, align 1
  br i1 %tobool61, label %if.then164, label %if.else

if.then164:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vmm, align 8
  %page166 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %58, i32 0, i32 8
  %sub.ptr.rhs.cast169 = ptrtoint ptr %page166 to i32
  %sub.ptr.sub170 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast169
  %sub.ptr.div171 = sdiv exact i32 %sub.ptr.sub170, 12
  %conv172 = trunc i32 %sub.ptr.div171 to i8
  %bf.shl174 = shl i8 %conv172, 5
  %bf.clear175 = and i8 %bf.set, 31
  %bf.set176 = or i8 %bf.shl174, %bf.clear175
  br label %if.end181

if.else:                                          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set180 = or i8 %bf.set, -32
  br label %if.end181

if.end181:                                        ; preds = %if.else, %if.then164
  %storemerge = phi i8 [ %bf.set180, %if.else ], [ %bf.set176, %if.then164 ]
  %59 = ptrtoint ptr %mapped160 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %storemerge, ptr %mapped160, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end111.if.end182_crit_edge
  %vma.1 = phi ptr [ %call124, %if.end181 ], [ %vma.0, %if.end111.if.end182_crit_edge ]
  br i1 %tobool61, label %if.then184, label %if.else199

if.then184:                                       ; preds = %if.end182
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #11
  %60 = call ptr @memset(ptr %args, i32 255, i32 72)
  %61 = ptrtoint ptr %page185 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %page.0377, ptr %page185, align 8
  %62 = ptrtoint ptr %pfn187 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx, ptr %pfn187, align 4
  %63 = ptrtoint ptr %desc.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc.le, align 4
  %func191 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %func191 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %func191, align 4
  %pfn192 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %pfn192 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pfn192, align 4
  br i1 %bf.cast.not, label %if.then189, label %if.else194

if.then189:                                       ; preds = %if.then184
  %call.i = call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0377, i64 noundef %start.0, i64 noundef %51, ptr noundef nonnull @.str.40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef %68, ptr noundef nonnull %args, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, -1
  br i1 %cmp.not.i, label %if.then189.if.end198_crit_edge, label %if.then.i366

if.then189.if.end198_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then.i366:                                     ; preds = %if.then189
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %start.0)
  %tobool.not.i365 = icmp eq i64 %call.i, %start.0
  br i1 %tobool.not.i365, label %if.then.i366.if.end198_crit_edge, label %if.then1.i

if.then.i366.if.end198_crit_edge:                 ; preds = %if.then.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then1.i:                                       ; preds = %if.then.i366
  %sub.i = sub i64 %call.i, %start.0
  %69 = ptrtoint ptr %desc.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc.le, align 4
  %func2.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %func2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %func2.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tobool5.not.i.i = icmp eq ptr %74, null
  br i1 %tobool5.not.i.i, label %cond.false8.i.i, label %if.then1.i.nvkm_vmm_ptes_unmap_put.exit.i_crit_edge

if.then1.i.nvkm_vmm_ptes_unmap_put.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit.i

cond.false8.i.i:                                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unmap.i.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit.i

nvkm_vmm_ptes_unmap_put.exit.i:                   ; preds = %cond.false8.i.i, %if.then1.i.nvkm_vmm_ptes_unmap_put.exit.i_crit_edge
  %cond10.i.i = phi ptr [ %74, %if.then1.i.nvkm_vmm_ptes_unmap_put.exit.i_crit_edge ], [ %76, %cond.false8.i.i ]
  %call.i.i = call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0377, i64 noundef %start.0, i64 noundef %sub.i, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i.i) #11
  br label %if.end198

if.else194:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  %call.i368 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0377, i64 noundef %start.0, i64 noundef %51, ptr noundef nonnull @.str.49, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef %68, ptr noundef nonnull %args, ptr noundef null) #11
  br label %if.end198

if.end198:                                        ; preds = %if.else194, %nvkm_vmm_ptes_unmap_put.exit.i, %if.then.i366.if.end198_crit_edge, %if.then189.if.end198_crit_edge
  %ret.0 = phi i32 [ 0, %if.else194 ], [ -12, %nvkm_vmm_ptes_unmap_put.exit.i ], [ -12, %if.then.i366.if.end198_crit_edge ], [ 0, %if.then189.if.end198_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #11
  br label %next

if.else199:                                       ; preds = %if.end182
  br i1 %bf.cast.not, label %if.else199.next_crit_edge, label %if.then201

if.else199.next_crit_edge:                        ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.then201:                                       ; preds = %if.else199
  %77 = ptrtoint ptr %desc.le to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc.le, align 4
  %func2.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %func2.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %tobool5.not.i = icmp eq ptr %82, null
  br i1 %tobool5.not.i, label %cond.false8.i, label %if.then201.nvkm_vmm_ptes_unmap_put.exit_crit_edge

if.then201.nvkm_vmm_ptes_unmap_put.exit_crit_edge: ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit

cond.false8.i:                                    ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %unmap.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit

nvkm_vmm_ptes_unmap_put.exit:                     ; preds = %cond.false8.i, %if.then201.nvkm_vmm_ptes_unmap_put.exit_crit_edge
  %cond10.i = phi ptr [ %82, %if.then201.nvkm_vmm_ptes_unmap_put.exit_crit_edge ], [ %84, %cond.false8.i ]
  %call.i369 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0377, i64 noundef %start.0, i64 noundef %51, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i) #11
  br label %next

next:                                             ; preds = %nvkm_vmm_ptes_unmap_put.exit, %if.else199.next_crit_edge, %if.end198, %do.end142, %lor.lhs.false108.next_crit_edge, %for.end.next_crit_edge
  %ret.1 = phi i32 [ -22, %do.end142 ], [ %ret.0, %if.end198 ], [ 0, %nvkm_vmm_ptes_unmap_put.exit ], [ 0, %if.else199.next_crit_edge ], [ -22, %lor.lhs.false108.next_crit_edge ], [ -22, %for.end.next_crit_edge ]
  %vma.2 = phi ptr [ %vma.0, %do.end142 ], [ %vma.1, %if.end198 ], [ %vma.1, %nvkm_vmm_ptes_unmap_put.exit ], [ %vma.1, %if.else199.next_crit_edge ], [ %vma.0, %lor.lhs.false108.next_crit_edge ], [ %vma.0, %for.end.next_crit_edge ]
  %addr204 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 2
  %85 = ptrtoint ptr %addr204 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %addr204, align 8
  %size205 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 3
  %87 = ptrtoint ptr %size205 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 7)
  %bf.load206 = load i56, ptr %size205, align 8
  %bf.lshr207 = lshr i56 %bf.load206, 6
  %bf.cast208 = zext i56 %bf.lshr207 to i64
  %add209 = add i64 %86, %bf.cast208
  %add210 = add i64 %51, %start.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add209, i64 %add210)
  %cmp211 = icmp eq i64 %add209, %add210
  br i1 %cmp211, label %if.then213, label %next.if.end224_crit_edge

next.if.end224_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end224

if.then213:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %vma.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vma.2, align 8
  %cmp215 = icmp eq ptr %89, %list
  %spec.select = select i1 %cmp215, ptr null, ptr %89
  br label %if.end224

if.end224:                                        ; preds = %if.then213, %next.if.end224_crit_edge
  %vma.3 = phi ptr [ %spec.select, %if.then213 ], [ %vma.2, %next.if.end224_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool226.not = icmp eq i32 %ret.1, 0
  br i1 %tobool226.not, label %if.else239, label %while.cond228.preheader

while.cond228.preheader:                          ; preds = %if.end224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool229.not385 = icmp eq i64 %51, 0
  br i1 %tobool229.not385, label %while.cond228.preheader.if.end247_crit_edge, label %while.cond228.preheader.while.body230_crit_edge

while.cond228.preheader.while.body230_crit_edge:  ; preds = %while.cond228.preheader
  br label %while.body230

while.cond228.preheader.if.end247_crit_edge:      ; preds = %while.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

while.body230:                                    ; preds = %while.body230.while.body230_crit_edge, %while.cond228.preheader.while.body230_crit_edge
  %size65.0387 = phi i64 [ %sub237, %while.body230.while.body230_crit_edge ], [ %51, %while.cond228.preheader.while.body230_crit_edge ]
  %pi.1386 = phi i32 [ %inc231, %while.body230.while.body230_crit_edge ], [ %pi.0, %while.cond228.preheader.while.body230_crit_edge ]
  %inc231 = add i32 %pi.1386, 1
  %arrayidx232 = getelementptr i64, ptr %pfn, i32 %pi.1386
  %90 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %arrayidx232, align 8
  %91 = ptrtoint ptr %page.0377 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %page.0377, align 4
  %conv234 = zext i8 %92 to i32
  %shl235 = shl nuw i32 1, %conv234
  %conv236 = sext i32 %shl235 to i64
  %sub237 = sub i64 %size65.0387, %conv236
  %tobool229.not = icmp eq i64 %sub237, 0
  br i1 %tobool229.not, label %while.body230.if.end247_crit_edge, label %while.body230.while.body230_crit_edge

while.body230.while.body230_crit_edge:            ; preds = %while.body230
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body230

while.body230.if.end247_crit_edge:                ; preds = %while.body230
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

if.else239:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %page.0377 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %page.0377, align 4
  %sh_prom242 = zext i8 %94 to i64
  %shr243 = lshr i64 %51, %sh_prom242
  %95 = trunc i64 %shr243 to i32
  %conv246 = add i32 %pi.0, %95
  br label %if.end247

if.end247:                                        ; preds = %if.else239, %while.body230.if.end247_crit_edge, %while.cond228.preheader.if.end247_crit_edge
  %pi.2 = phi i32 [ %conv246, %if.else239 ], [ %pi.0, %while.cond228.preheader.if.end247_crit_edge ], [ %inc231, %while.body230.if.end247_crit_edge ]
  %tobool249.not = icmp ne ptr %vma.3, null
  call void @__sanitizer_cov_trace_cmp8(i64 %add210, i64 %add)
  %cmp251 = icmp ult i64 %add210, %add
  %or.cond364 = select i1 %tobool249.not, i1 %cmp251, i1 false
  br i1 %or.cond364, label %if.end247.do.body59_crit_edge, label %if.end247.cleanup_crit_edge

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end247.do.body59_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

cleanup:                                          ; preds = %if.end247.cleanup_crit_edge, %nvkm_vmm_node_search.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -2, %nvkm_vmm_node_search.exit.cleanup_crit_edge ], [ -2, %if.end55.cleanup_crit_edge ], [ 0, %if.end247.cleanup_crit_edge ], [ -2, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap_region(ptr noundef %vmm, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 5
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %tags = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 6
  tail call void @nvkm_memory_tags_put(ptr noundef %1, ptr noundef %5, ptr noundef %tags) #11
  tail call void @nvkm_memory_unref(ptr noundef %memory) #11
  %mapped = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %6 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mapped, align 1
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, ptr %mapped, align 1
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prev4 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %prev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev4, align 4
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %cmp = icmp eq ptr %9, %list
  %tobool.not62 = icmp eq ptr %9, null
  %tobool.not = or i1 %cmp, %tobool.not62
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mapped8 = getelementptr inbounds %struct.nvkm_vma, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %mapped8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load9 = load i8, ptr %mapped8, align 1
  %11 = and i8 %bf.load9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast12.not = icmp eq i8 %11, 0
  %spec.store.select = select i1 %bf.cast12.not, ptr %9, ptr null
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %prev.0 = phi ptr [ %spec.store.select, %land.lhs.true7 ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vma, align 8
  %list15 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %cmp16 = icmp eq ptr %13, %list15
  %tobool26.not63 = icmp eq ptr %13, null
  %tobool26.not = or i1 %cmp16, %tobool26.not63
  br i1 %tobool26.not, label %if.end.if.end39_crit_edge, label %land.lhs.true27

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true27:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %part28 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %part28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load29 = load i8, ptr %part28, align 1
  %15 = and i8 %bf.load29, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %16 = icmp eq i8 %15, 8
  %spec.select61 = select i1 %16, ptr %13, ptr null
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true27, %if.end.if.end39_crit_edge
  %next.0 = phi ptr [ null, %if.end.if.end39_crit_edge ], [ %spec.select61, %land.lhs.true27 ]
  %size = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %17 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load40 = load i56, ptr %size, align 8
  %bf.lshr41 = lshr i56 %bf.load40, 6
  %bf.cast42 = zext i56 %bf.lshr41 to i64
  %call = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %vmm, ptr noundef %prev.0, ptr noundef %vma, ptr noundef %next.0, i64 noundef %bf.cast42)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_tags_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap_locked(ptr noundef %vmm, ptr noundef %vma, i1 noundef zeroext %pfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %refd = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %2 = ptrtoint ptr %refd to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %refd, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %idxprom = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8, i32 %idxprom
  %mapref = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %3 = ptrtoint ptr %mapref to i32
  call void @__asan_loadN_noabort(i32 %3, i32 7)
  %bf.load2 = load i56, ptr %mapref, align 8
  %4 = and i56 %bf.load2, 32
  %bf.cast.not = icmp eq i56 %4, 0
  %addr14 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %5 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %addr14, align 8
  %bf.lshr17 = lshr i56 %bf.load2, 6
  %bf.cast18 = zext i56 %bf.lshr17 to i64
  %7 = and i56 %bf.load2, 16
  %bf.cast23.not = icmp eq i56 %7, 0
  %desc.i39 = getelementptr %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %desc.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i39, align 4
  %func2.i40 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %func2.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func2.i40, align 4
  br i1 %bf.cast.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %bf.cast23.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sparse4.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %11, i32 0, i32 2
  br label %cond.end9.sink.split.i

cond.false.i:                                     ; preds = %if.then
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %cond.false8.i, label %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge

cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit

cond.false8.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %11, i32 0, i32 1
  br label %cond.end9.sink.split.i

cond.end9.sink.split.i:                           ; preds = %cond.false8.i, %cond.true.i
  %unmap.sink.i = phi ptr [ %unmap.i, %cond.false8.i ], [ %sparse4.i, %cond.true.i ]
  %14 = ptrtoint ptr %unmap.sink.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unmap.sink.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit

nvkm_vmm_ptes_unmap_put.exit:                     ; preds = %cond.end9.sink.split.i, %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge
  %cond10.i = phi ptr [ %13, %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge ], [ %15, %cond.end9.sink.split.i ]
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx, i64 noundef %6, i64 noundef %bf.cast18, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext %pfn, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i) #11
  %16 = ptrtoint ptr %refd to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load12 = load i8, ptr %refd, align 1
  %bf.set = or i8 %bf.load12, -32
  store i8 %bf.set, ptr %refd, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %bf.cast23.not, label %cond.false.i44, label %cond.true.i42

cond.true.i42:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sparse4.i41 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %11, i32 0, i32 2
  br label %cond.end9.sink.split.i48

cond.false.i44:                                   ; preds = %if.else
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  %tobool5.not.i43 = icmp eq ptr %18, null
  br i1 %tobool5.not.i43, label %cond.false8.i46, label %cond.false.i44.nvkm_vmm_ptes_unmap.exit_crit_edge

cond.false.i44.nvkm_vmm_ptes_unmap.exit_crit_edge: ; preds = %cond.false.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap.exit

cond.false8.i46:                                  ; preds = %cond.false.i44
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i45 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %11, i32 0, i32 1
  br label %cond.end9.sink.split.i48

cond.end9.sink.split.i48:                         ; preds = %cond.false8.i46, %cond.true.i42
  %unmap.sink.i47 = phi ptr [ %unmap.i45, %cond.false8.i46 ], [ %sparse4.i41, %cond.true.i42 ]
  %19 = ptrtoint ptr %unmap.sink.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unmap.sink.i47, align 4
  br label %nvkm_vmm_ptes_unmap.exit

nvkm_vmm_ptes_unmap.exit:                         ; preds = %cond.end9.sink.split.i48, %cond.false.i44.nvkm_vmm_ptes_unmap.exit_crit_edge
  %cond10.i49 = phi ptr [ %18, %cond.false.i44.nvkm_vmm_ptes_unmap.exit_crit_edge ], [ %20, %cond.end9.sink.split.i48 ]
  %call.i50 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx, i64 noundef %6, i64 noundef %bf.cast18, ptr noundef nonnull @.str.50, i1 noundef zeroext false, i1 noundef zeroext %pfn, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %cond10.i49) #11
  br label %if.end

if.end:                                           ; preds = %nvkm_vmm_ptes_unmap.exit, %nvkm_vmm_ptes_unmap_put.exit
  tail call void @nvkm_vmm_unmap_region(ptr noundef %vmm, ptr noundef %vma)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap(ptr noundef %vmm, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 5
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  tail call void @nvkm_vmm_unmap_locked(ptr noundef %vmm, ptr noundef %vma, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_map(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %size.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %size.i, align 4
  %call.i = tail call i64 %5(ptr noundef %1) #11
  %offset.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset.i, align 8
  %size3.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load.i = load i56, ptr %size3.i, align 8
  %bf.lshr.i = lshr i56 %bf.load.i, 6
  %bf.cast.i = zext i56 %bf.lshr.i to i64
  %add.i = add i64 %7, %bf.cast.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %add.i)
  %cmp.i = icmp ult i64 %call.i, %add.i
  br i1 %cmp.i, label %do.body.i, label %if.end28.i, !prof !153

do.body.i:                                        ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %9 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp5.i = icmp ugt i32 %10, 3
  br i1 %cmp5.i, label %do.end.i, label %do.body.i.nvkm_vmm_map_locked.exit_crit_edge

do.body.i.nvkm_vmm_map_locked.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %11 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmu.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %12, i32 0, i32 1, i32 4
  %name12.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %17 = ptrtoint ptr %name12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name12.i, align 8
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %size15.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %size15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %size15.i, align 4
  %call17.i = tail call i64 %24(ptr noundef %20) #11
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset.i, align 8
  %27 = ptrtoint ptr %size3.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 7)
  %bf.load20.i = load i56, ptr %size3.i, align 8
  %bf.lshr21.i = lshr i56 %bf.load20.i, 6
  %bf.cast22.i = zext i56 %bf.lshr21.i to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.51, ptr noundef %name.i, ptr noundef %18, i64 noundef %call17.i, i64 noundef %26, i64 noundef %bf.cast22.i) #16
  br label %nvkm_vmm_map_locked.exit

if.end28.i:                                       ; preds = %entry
  %28 = and i56 %bf.load.i, 14
  %cmp32.i = icmp eq i56 %28, 14
  br i1 %cmp32.i, label %land.lhs.true.i, label %if.end28.i.if.else.i_crit_edge

if.end28.i.if.else.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %refd.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %29 = ptrtoint ptr %refd.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load34.i = load i8, ptr %refd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %bf.load34.i)
  %cmp37.i = icmp ugt i8 %bf.load34.i, -33
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  %debug41.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %30 = ptrtoint ptr %debug41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug41.i, align 4
  store i32 0, ptr %debug41.i, align 4
  %32 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vmm, align 8
  %page.i.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %33, i32 0, i32 8
  %page1.i.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %34 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %page.i.i, ptr %page1.i.i, align 8
  %35 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not31.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not31.i.i, label %if.then39.i.do.body47.i_crit_edge, label %do.body.lr.ph.i.i

if.then39.i.do.body47.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47.i

do.body.lr.ph.i.i:                                ; preds = %if.then39.i
  %mmu.i.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %name9.i.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %37 = phi i8 [ %36, %do.body.lr.ph.i.i ], [ %51, %for.inc.i.i.do.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %debug41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i.i = icmp ugt i32 %39, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.if.end14.i.i_crit_edge

do.body.i.i.if.end14.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmu.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %41, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %41, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %name9.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name9.i.i, align 8
  %conv.i.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.59, ptr noundef %name.i.i, ptr noundef %47, i32 noundef %conv.i.i) #16
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.if.end14.i.i_crit_edge
  %call.i.i = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i.i, label %nvkm_vmm_map_choose.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end14.i.i
  %48 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %page1.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.nvkm_vmm_page, ptr %49, i32 1
  store ptr %incdec.ptr.i.i, ptr %page1.i.i, align 8
  %50 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.do.body47.i_crit_edge, label %for.inc.i.i.do.body.i.i_crit_edge

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

for.inc.i.i.do.body47.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body47.i

nvkm_vmm_map_choose.exit.i:                       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %debug41.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %31, ptr %debug41.i, align 4
  br label %if.end134.i

do.body47.i:                                      ; preds = %for.inc.i.i.do.body47.i_crit_edge, %if.then39.i.do.body47.i_crit_edge
  %53 = ptrtoint ptr %debug41.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %31, ptr %debug41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp50.i = icmp ugt i32 %31, 3
  br i1 %cmp50.i, label %do.end63.i, label %do.body47.i.if.end72.i_crit_edge

do.body47.i.if.end72.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

do.end63.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu55.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %54 = ptrtoint ptr %mmu55.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmu55.i, align 4
  %device64.i = getelementptr inbounds %struct.nvkm_mmu, ptr %55, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %device64.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device64.i, align 4
  %dev65.i = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev65.i, align 8
  %name66.i = getelementptr inbounds %struct.nvkm_mmu, ptr %55, i32 0, i32 1, i32 4
  %name68.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %60 = ptrtoint ptr %name68.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name68.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.54, ptr noundef %name66.i, ptr noundef %61) #16
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end63.i, %do.body47.i.if.end72.i_crit_edge
  %62 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vmm, align 8
  %page.i346.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %page.i346.i, ptr %page1.i.i, align 8
  %65 = ptrtoint ptr %page.i346.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %page.i346.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not31.i348.i = icmp eq i8 %66, 0
  br i1 %tobool.not31.i348.i, label %if.end72.i.nvkm_vmm_map_locked.exit_crit_edge, label %do.body.lr.ph.i352.i

if.end72.i.nvkm_vmm_map_locked.exit_crit_edge:    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

do.body.lr.ph.i352.i:                             ; preds = %if.end72.i
  %mmu.i350.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %name9.i351.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  br label %do.body.i354.i

do.body.i354.i:                                   ; preds = %for.inc.i365.i.do.body.i354.i_crit_edge, %do.body.lr.ph.i352.i
  %67 = phi i8 [ %66, %do.body.lr.ph.i352.i ], [ %81, %for.inc.i365.i.do.body.i354.i_crit_edge ]
  %68 = ptrtoint ptr %debug41.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp.i353.i = icmp ugt i32 %69, 3
  br i1 %cmp.i353.i, label %do.end.i359.i, label %do.body.i354.i.if.end14.i362.i_crit_edge

do.body.i354.i.if.end14.i362.i_crit_edge:         ; preds = %do.body.i354.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i362.i

do.end.i359.i:                                    ; preds = %do.body.i354.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %mmu.i350.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmu.i350.i, align 4
  %device.i355.i = getelementptr inbounds %struct.nvkm_mmu, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %device.i355.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device.i355.i, align 4
  %dev.i356.i = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev.i356.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i356.i, align 8
  %name.i357.i = getelementptr inbounds %struct.nvkm_mmu, ptr %71, i32 0, i32 1, i32 4
  %76 = ptrtoint ptr %name9.i351.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name9.i351.i, align 8
  %conv.i358.i = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.59, ptr noundef %name.i357.i, ptr noundef %77, i32 noundef %conv.i358.i) #16
  br label %if.end14.i362.i

if.end14.i362.i:                                  ; preds = %do.end.i359.i, %do.body.i354.i.if.end14.i362.i_crit_edge
  %call.i360.i = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i360.i)
  %tobool17.not.i361.i = icmp eq i32 %call.i360.i, 0
  br i1 %tobool17.not.i361.i, label %if.end14.i362.i.nvkm_vmm_map_locked.exit_crit_edge, label %for.inc.i365.i

if.end14.i362.i.nvkm_vmm_map_locked.exit_crit_edge: ; preds = %if.end14.i362.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

for.inc.i365.i:                                   ; preds = %if.end14.i362.i
  %78 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %page1.i.i, align 8
  %incdec.ptr.i363.i = getelementptr %struct.nvkm_vmm_page, ptr %79, i32 1
  store ptr %incdec.ptr.i363.i, ptr %page1.i.i, align 8
  %80 = ptrtoint ptr %incdec.ptr.i363.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.i363.i, align 4
  %tobool.not.i364.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i364.i, label %for.inc.i365.i.nvkm_vmm_map_locked.exit_crit_edge, label %for.inc.i365.i.do.body.i354.i_crit_edge

for.inc.i365.i.do.body.i354.i_crit_edge:          ; preds = %for.inc.i365.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i354.i

for.inc.i365.i.nvkm_vmm_map_locked.exit_crit_edge: ; preds = %for.inc.i365.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end28.i.if.else.i_crit_edge
  %refd77.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %82 = ptrtoint ptr %refd77.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load78.i = load i8, ptr %refd77.i, align 1
  %bf.lshr79.i = lshr i8 %bf.load78.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bf.lshr79.i)
  %cmp81.not.i = icmp eq i8 %bf.lshr79.i, 7
  br i1 %cmp81.not.i, label %if.else90.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv80.i = zext i8 %bf.lshr79.i to i32
  %83 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vmm, align 8
  %arrayidx.i = getelementptr %struct.nvkm_vmm_func, ptr %84, i32 0, i32 8, i32 %conv80.i
  br label %if.end101.i

if.else90.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vmm, align 8
  %87 = trunc i56 %bf.load.i to i32
  %88 = lshr i32 %87, 1
  %bf.cast97.i = and i32 %88, 7
  %arrayidx99.i = getelementptr %struct.nvkm_vmm_func, ptr %86, i32 0, i32 8, i32 %bf.cast97.i
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else90.i, %if.then83.i
  %arrayidx.sink.i = phi ptr [ %arrayidx99.i, %if.else90.i ], [ %arrayidx.i, %if.then83.i ]
  %89 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx.sink.i, ptr %89, align 8
  %call102.i = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end134.i_crit_edge, label %do.body105.i

if.end101.i.if.end134.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134.i

do.body105.i:                                     ; preds = %if.end101.i
  %debug107.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %91 = ptrtoint ptr %debug107.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp108.i = icmp ugt i32 %92, 3
  br i1 %cmp108.i, label %do.end121.i, label %do.body105.i.nvkm_vmm_map_locked.exit_crit_edge

do.body105.i.nvkm_vmm_map_locked.exit_crit_edge:  ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

do.end121.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu113.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %93 = ptrtoint ptr %mmu113.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmu113.i, align 4
  %device122.i = getelementptr inbounds %struct.nvkm_mmu, ptr %94, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %device122.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %device122.i, align 4
  %dev123.i = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %dev123.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev123.i, align 8
  %name124.i = getelementptr inbounds %struct.nvkm_mmu, ptr %94, i32 0, i32 1, i32 4
  %name126.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %99 = ptrtoint ptr %name126.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name126.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.57, ptr noundef %name124.i, ptr noundef %100, i32 noundef %call102.i) #16
  br label %nvkm_vmm_map_locked.exit

if.end134.i:                                      ; preds = %if.end101.i.if.end134.i_crit_edge, %nvkm_vmm_map_choose.exit.i
  %101 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %offset.i, align 8
  %off.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 6
  %103 = ptrtoint ptr %off.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %off.i, align 8
  %mem.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %104 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mem.i, align 8
  %tobool136.not.i = icmp eq ptr %105, null
  br i1 %tobool136.not.i, label %if.else157.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool139.not380.i = icmp eq i64 %102, 0
  br i1 %tobool139.not380.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %106 = phi i64 [ %sub.i, %for.inc.i.for.body.i_crit_edge ], [ %102, %for.cond.preheader.i.for.body.i_crit_edge ]
  %107 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mem.i, align 8
  %length.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %length.i, align 4
  %conv142.i = zext i32 %110 to i64
  %shl.i = shl nuw nsw i64 %conv142.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %shl.i)
  %cmp144.i = icmp ult i64 %106, %shl.i
  br i1 %cmp144.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %sub.i = sub i64 %106, %shl.i
  %111 = ptrtoint ptr %off.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %sub.i, ptr %off.i, align 8
  %next.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %108, i32 0, i32 2
  %112 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %next.i, align 4
  %114 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %mem.i, align 8
  %tobool139.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool139.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %page154.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %115 = ptrtoint ptr %page154.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %page154.i, align 8
  %desc.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %desc.i, align 4
  %func155.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %func155.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %func155.i, align 4
  %mem156.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %120, i32 0, i32 4
  br label %if.end195.i

if.else157.i:                                     ; preds = %if.end134.i
  %sgl.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %121 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sgl.i, align 4
  %tobool158.not.i = icmp eq ptr %122, null
  br i1 %tobool158.not.i, label %if.else186.i, label %for.cond160.preheader.i

for.cond160.preheader.i:                          ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool162.not381.i = icmp eq i64 %102, 0
  br i1 %tobool162.not381.i, label %for.cond160.preheader.i.for.end181.i_crit_edge, label %for.cond160.preheader.i.for.body163.i_crit_edge

for.cond160.preheader.i.for.body163.i_crit_edge:  ; preds = %for.cond160.preheader.i
  br label %for.body163.i

for.cond160.preheader.i.for.end181.i_crit_edge:   ; preds = %for.cond160.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end181.i

for.body163.i:                                    ; preds = %for.inc177.i.for.body163.i_crit_edge, %for.cond160.preheader.i.for.body163.i_crit_edge
  %123 = phi i64 [ %131, %for.inc177.i.for.body163.i_crit_edge ], [ %102, %for.cond160.preheader.i.for.body163.i_crit_edge ]
  %124 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sgl.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma_length.i, align 4
  %conv166.i = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %conv166.i)
  %cmp168.i = icmp ult i64 %123, %conv166.i
  br i1 %cmp168.i, label %for.body163.i.for.end181.i_crit_edge, label %for.inc177.i

for.body163.i.for.end181.i_crit_edge:             ; preds = %for.body163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end181.i

for.inc177.i:                                     ; preds = %for.body163.i
  %sub173.i = sub i64 %123, %conv166.i
  %128 = ptrtoint ptr %off.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %sub173.i, ptr %off.i, align 8
  %call179.i = tail call ptr @sg_next(ptr noundef %125) #11
  %129 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call179.i, ptr %sgl.i, align 4
  %130 = ptrtoint ptr %off.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %off.i, align 8
  %tobool162.not.i = icmp eq i64 %131, 0
  br i1 %tobool162.not.i, label %for.inc177.i.for.end181.i_crit_edge, label %for.inc177.i.for.body163.i_crit_edge

for.inc177.i.for.body163.i_crit_edge:             ; preds = %for.inc177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body163.i

for.inc177.i.for.end181.i_crit_edge:              ; preds = %for.inc177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end181.i

for.end181.i:                                     ; preds = %for.inc177.i.for.end181.i_crit_edge, %for.body163.i.for.end181.i_crit_edge, %for.cond160.preheader.i.for.end181.i_crit_edge
  %page182.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %132 = ptrtoint ptr %page182.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %page182.i, align 8
  %desc183.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %desc183.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %desc183.i, align 4
  %func184.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %func184.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %func184.i, align 4
  %sgl185.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %137, i32 0, i32 6
  br label %if.end195.i

if.else186.i:                                     ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i64 %102, 12
  %dma.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %138 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dma.i, align 8
  %idx.ext.i = trunc i64 %shr.i to i32
  %add.ptr.i = getelementptr i32, ptr %139, i32 %idx.ext.i
  store ptr %add.ptr.i, ptr %dma.i, align 8
  %and.i = and i64 %102, -4096
  %140 = ptrtoint ptr %off.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %and.i, ptr %off.i, align 8
  %page190.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %141 = ptrtoint ptr %page190.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %page190.i, align 8
  %desc191.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %desc191.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %desc191.i, align 4
  %func192.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %func192.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %func192.i, align 4
  %dma193.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %146, i32 0, i32 5
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.else186.i, %for.end181.i, %for.end.i
  %func.0.in.i = phi ptr [ %mem156.i, %for.end.i ], [ %sgl185.i, %for.end181.i ], [ %dma193.i, %if.else186.i ]
  %147 = ptrtoint ptr %func.0.in.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %func.0.i = load ptr, ptr %func.0.in.i, align 4
  %refd196.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %148 = ptrtoint ptr %refd196.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load197.i = load i8, ptr %refd196.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %bf.load197.i)
  %cmp200.i = icmp ugt i8 %bf.load197.i, -33
  %page203.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %149 = ptrtoint ptr %page203.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %page203.i, align 8
  %addr.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %151 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %addr.i, align 8
  %153 = ptrtoint ptr %size3.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 7)
  %bf.load205.i = load i56, ptr %size3.i, align 8
  %bf.lshr206.i = lshr i56 %bf.load205.i, 6
  %bf.cast207.i = zext i56 %bf.lshr206.i to i64
  br i1 %cmp200.i, label %if.then202.i, label %if.else220.i

if.then202.i:                                     ; preds = %if.end195.i
  %call.i368.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %150, i64 noundef %152, i64 noundef %bf.cast207.i, ptr noundef nonnull @.str.40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef %func.0.i, ptr noundef %map, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i368.i)
  %cmp.not.i.i = icmp eq i64 %call.i368.i, -1
  br i1 %cmp.not.i.i, label %if.end211.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i368.i, i64 %152)
  %tobool.not.i369.i = icmp eq i64 %call.i368.i, %152
  br i1 %tobool.not.i369.i, label %if.then.i.i.nvkm_vmm_map_locked.exit_crit_edge, label %if.then1.i.i

if.then.i.i.nvkm_vmm_map_locked.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_map_locked.exit

if.then1.i.i:                                     ; preds = %if.then.i.i
  %sub.i.i = sub i64 %call.i368.i, %152
  %desc.i.i.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %150, i32 0, i32 1
  %154 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %desc.i.i.i, align 4
  %func2.i.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %func2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %func2.i.i.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %tobool5.not.i.i.i = icmp eq ptr %159, null
  br i1 %tobool5.not.i.i.i, label %cond.false8.i.i.i, label %if.then1.i.i.nvkm_vmm_ptes_unmap_put.exit.i.i_crit_edge

if.then1.i.i.nvkm_vmm_ptes_unmap_put.exit.i.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit.i.i

cond.false8.i.i.i:                                ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i.i.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %157, i32 0, i32 1
  %160 = ptrtoint ptr %unmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %unmap.i.i.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit.i.i

nvkm_vmm_ptes_unmap_put.exit.i.i:                 ; preds = %cond.false8.i.i.i, %if.then1.i.i.nvkm_vmm_ptes_unmap_put.exit.i.i_crit_edge
  %cond10.i.i.i = phi ptr [ %159, %if.then1.i.i.nvkm_vmm_ptes_unmap_put.exit.i.i_crit_edge ], [ %161, %cond.false8.i.i.i ]
  %call.i.i.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %150, i64 noundef %152, i64 noundef %sub.i.i, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i.i.i) #11
  br label %nvkm_vmm_map_locked.exit

if.end211.i:                                      ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #13
  %162 = ptrtoint ptr %page203.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %page203.i, align 8
  %164 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vmm, align 8
  %page214.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %165, i32 0, i32 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %163 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %page214.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  %conv216.i = trunc i32 %sub.ptr.div.i to i8
  %166 = ptrtoint ptr %refd196.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load218.i = load i8, ptr %refd196.i, align 1
  %bf.shl.i = shl i8 %conv216.i, 5
  %bf.clear219.i = and i8 %bf.load218.i, 31
  %bf.set.i = or i8 %bf.shl.i, %bf.clear219.i
  store i8 %bf.set.i, ptr %refd196.i, align 1
  br label %if.end227.i

if.else220.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i371.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %150, i64 noundef %152, i64 noundef %bf.cast207.i, ptr noundef nonnull @.str.49, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef %func.0.i, ptr noundef %map, ptr noundef null) #11
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.else220.i, %if.end211.i
  %memory228.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 5
  %167 = ptrtoint ptr %memory228.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %memory228.i, align 8
  %mmu229.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %169 = ptrtoint ptr %mmu229.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mmu229.i, align 4
  %device231.i = getelementptr inbounds %struct.nvkm_mmu, ptr %170, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %device231.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device231.i, align 4
  %tags.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 6
  tail call void @nvkm_memory_tags_put(ptr noundef %168, ptr noundef %172, ptr noundef %tags.i) #11
  tail call void @nvkm_memory_unref(ptr noundef %memory228.i) #11
  %173 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %map, align 8
  %call234.i = tail call ptr @nvkm_memory_ref(ptr noundef %174) #11
  %175 = ptrtoint ptr %memory228.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call234.i, ptr %memory228.i, align 8
  %176 = ptrtoint ptr %refd196.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load236.i = load i8, ptr %refd196.i, align 1
  %bf.set238.i = or i8 %bf.load236.i, 2
  store i8 %bf.set238.i, ptr %refd196.i, align 1
  %tags239.i = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 8
  %177 = ptrtoint ptr %tags239.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tags239.i, align 4
  %179 = ptrtoint ptr %tags.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %tags.i, align 4
  br label %nvkm_vmm_map_locked.exit

nvkm_vmm_map_locked.exit:                         ; preds = %if.end227.i, %nvkm_vmm_ptes_unmap_put.exit.i.i, %if.then.i.i.nvkm_vmm_map_locked.exit_crit_edge, %do.end121.i, %do.body105.i.nvkm_vmm_map_locked.exit_crit_edge, %for.inc.i365.i.nvkm_vmm_map_locked.exit_crit_edge, %if.end14.i362.i.nvkm_vmm_map_locked.exit_crit_edge, %if.end72.i.nvkm_vmm_map_locked.exit_crit_edge, %do.end.i, %do.body.i.nvkm_vmm_map_locked.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end227.i ], [ -22, %do.end.i ], [ -22, %do.body.i.nvkm_vmm_map_locked.exit_crit_edge ], [ %call102.i, %do.end121.i ], [ %call102.i, %do.body105.i.nvkm_vmm_map_locked.exit_crit_edge ], [ -22, %if.end72.i.nvkm_vmm_map_locked.exit_crit_edge ], [ -12, %nvkm_vmm_ptes_unmap_put.exit.i.i ], [ -12, %if.then.i.i.nvkm_vmm_map_locked.exit_crit_edge ], [ -22, %for.inc.i365.i.nvkm_vmm_map_locked.exit_crit_edge ], [ -22, %if.end14.i362.i.nvkm_vmm_map_locked.exit_crit_edge ]
  %busy = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %180 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load = load i8, ptr %busy, align 1
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %busy, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_put_locked(ptr noundef %vmm, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %page1 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8
  %part = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 4
  %2 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %part, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %do.end8, label %do.body3, !prof !156

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1542, 0\0A.popsection", ""() #11, !srcloc !159
  unreachable

do.end8:                                          ; preds = %entry
  %mapref = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %4 = ptrtoint ptr %mapref to i32
  call void @__asan_loadN_noabort(i32 %4, i32 7)
  %bf.load9 = load i56, ptr %mapref, align 8
  %5 = and i56 %bf.load9, 48
  %.not = icmp eq i56 %5, 16
  br i1 %.not, label %do.end8.if.end100_crit_edge, label %do.body18.preheader

do.end8.if.end100_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

do.body18.preheader:                              ; preds = %do.end8
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  br label %do.body18

do.body18:                                        ; preds = %land.rhs91.do.body18_crit_edge, %do.body18.preheader
  %next.0 = phi ptr [ %.lcssa, %land.rhs91.do.body18_crit_edge ], [ %vma, %do.body18.preheader ]
  %memory = getelementptr inbounds %struct.nvkm_vma, ptr %next.0, i32 0, i32 5
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 8
  %cmp = icmp ne ptr %7, null
  %mapped = getelementptr inbounds %struct.nvkm_vma, ptr %next.0, i32 0, i32 4
  %8 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load19 = load i8, ptr %mapped, align 1
  %9 = and i8 %bf.load19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %bf.cast22.not = icmp eq i8 %9, 0
  %bf.lshr26 = lshr i8 %bf.load19, 5
  %addr27 = getelementptr inbounds %struct.nvkm_vma, ptr %next.0, i32 0, i32 2
  %10 = ptrtoint ptr %addr27 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr27, align 8
  %size28 = getelementptr inbounds %struct.nvkm_vma, ptr %next.0, i32 0, i32 3
  %12 = ptrtoint ptr %size28 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 7)
  %bf.load29 = load i56, ptr %size28, align 8
  %bf.lshr30 = lshr i56 %bf.load29, 6
  %bf.cast31 = zext i56 %bf.lshr30 to i64
  %13 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next.0, align 8
  %cmp33251 = icmp eq ptr %14, %list
  %tobool36.not253268 = icmp eq ptr %14, null
  %tobool36.not253 = or i1 %cmp33251, %tobool36.not253268
  br i1 %tobool36.not253, label %do.body18.while.end_crit_edge, label %land.lhs.true.lr.ph

do.body18.while.end_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %do.body18
  %.lobit240 = lshr exact i8 %9, 1
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %spec.select255 = phi ptr [ %14, %land.lhs.true.lr.ph ], [ %22, %while.body.land.lhs.true_crit_edge ]
  %size.0254 = phi i64 [ %bf.cast31, %land.lhs.true.lr.ph ], [ %add, %while.body.land.lhs.true_crit_edge ]
  %part37 = getelementptr inbounds %struct.nvkm_vma, ptr %spec.select255, i32 0, i32 4
  %15 = ptrtoint ptr %part37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load38 = load i8, ptr %part37, align 1
  %16 = and i8 %bf.load38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast41.not = icmp ne i8 %16, 0
  %17 = lshr i8 %bf.load38, 1
  %.lobit = and i8 %17, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %.lobit240)
  %cmp50 = icmp eq i8 %.lobit, %.lobit240
  %or.cond241 = select i1 %bf.cast41.not, i1 %cmp50, i1 false
  br i1 %or.cond241, label %land.lhs.true52, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true52:                                  ; preds = %land.lhs.true
  %memory53 = getelementptr inbounds %struct.nvkm_vma, ptr %spec.select255, i32 0, i32 5
  %18 = ptrtoint ptr %memory53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory53, align 8
  %cmp54 = icmp eq ptr %19, null
  %cmp58 = xor i1 %cmp, %cmp54
  %bf.lshr62 = lshr i8 %bf.load38, 5
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr62, i8 %bf.lshr26)
  %cmp65 = icmp eq i8 %bf.lshr62, %bf.lshr26
  %or.cond242 = select i1 %cmp58, i1 %cmp65, i1 false
  br i1 %or.cond242, label %while.body, label %land.lhs.true52.while.end_crit_edge

land.lhs.true52.while.end_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.lhs.true52
  %size67 = getelementptr inbounds %struct.nvkm_vma, ptr %spec.select255, i32 0, i32 3
  %20 = ptrtoint ptr %size67 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load68 = load i56, ptr %size67, align 8
  %bf.lshr69 = lshr i56 %bf.load68, 6
  %bf.cast70 = zext i56 %bf.lshr69 to i64
  %add = add i64 %size.0254, %bf.cast70
  %21 = ptrtoint ptr %spec.select255 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec.select255, align 8
  %cmp33 = icmp eq ptr %22, %list
  %tobool36.not269 = icmp eq ptr %22, null
  %tobool36.not = or i1 %cmp33, %tobool36.not269
  br i1 %tobool36.not, label %while.body.while.end_crit_edge, label %while.body.land.lhs.true_crit_edge

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.lhs.true52.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %do.body18.while.end_crit_edge
  %size.0.lcssa = phi i64 [ %bf.cast31, %do.body18.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ], [ %size.0254, %land.lhs.true.while.end_crit_edge ], [ %size.0254, %land.lhs.true52.while.end_crit_edge ]
  %.lcssa = phi ptr [ %14, %do.body18.while.end_crit_edge ], [ %22, %while.body.while.end_crit_edge ], [ %spec.select255, %land.lhs.true.while.end_crit_edge ], [ %spec.select255, %land.lhs.true52.while.end_crit_edge ]
  %spec.select.lcssa = phi ptr [ null, %do.body18.while.end_crit_edge ], [ null, %while.body.while.end_crit_edge ], [ %spec.select255, %land.lhs.true.while.end_crit_edge ], [ %spec.select255, %land.lhs.true52.while.end_crit_edge ]
  %tobool36.not.lcssa = phi i1 [ true, %do.body18.while.end_crit_edge ], [ true, %while.body.while.end_crit_edge ], [ false, %land.lhs.true.while.end_crit_edge ], [ false, %land.lhs.true52.while.end_crit_edge ]
  br i1 %bf.cast22.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %while.end
  %idxprom = zext i8 %bf.lshr26 to i32
  %arrayidx = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %idxprom
  %23 = ptrtoint ptr %mapref to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load74 = load i56, ptr %mapref, align 8
  %24 = and i56 %bf.load74, 16
  %bf.cast77.not = icmp eq i56 %24, 0
  %lnot79 = xor i1 %cmp, true
  %desc.i = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i, align 4
  %func2.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func2.i, align 4
  br i1 %bf.cast77.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %sparse4.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %28, i32 0, i32 2
  br label %cond.end9.sink.split.i

cond.false.i:                                     ; preds = %if.then72
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool5.not.i = icmp eq ptr %30, null
  br i1 %tobool5.not.i, label %cond.false8.i, label %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge

cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_unmap_put.exit

cond.false8.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %28, i32 0, i32 1
  br label %cond.end9.sink.split.i

cond.end9.sink.split.i:                           ; preds = %cond.false8.i, %cond.true.i
  %unmap.sink.i = phi ptr [ %unmap.i, %cond.false8.i ], [ %sparse4.i, %cond.true.i ]
  %31 = ptrtoint ptr %unmap.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unmap.sink.i, align 4
  br label %nvkm_vmm_ptes_unmap_put.exit

nvkm_vmm_ptes_unmap_put.exit:                     ; preds = %cond.end9.sink.split.i, %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge
  %cond10.i = phi ptr [ %30, %cond.false.i.nvkm_vmm_ptes_unmap_put.exit_crit_edge ], [ %32, %cond.end9.sink.split.i ]
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx, i64 noundef %11, i64 noundef %size.0.lcssa, ptr noundef nonnull @.str.18, i1 noundef zeroext false, i1 noundef zeroext %lnot79, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond10.i) #11
  br label %if.end88

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %bf.lshr26)
  %cmp82.not = icmp eq i8 %bf.lshr26, 7
  br i1 %cmp82.not, label %if.else.if.end88_crit_edge, label %if.then84

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv81 = zext i8 %bf.lshr26 to i32
  %arrayidx86 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %conv81
  %call.i245 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx86, i64 noundef %11, i64 noundef %size.0.lcssa, ptr noundef nonnull @.str.69, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.else.if.end88_crit_edge, %nvkm_vmm_ptes_unmap_put.exit
  br i1 %tobool36.not.lcssa, label %if.end88.if.end100_crit_edge, label %land.rhs91

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

land.rhs91:                                       ; preds = %if.end88
  %part92 = getelementptr inbounds %struct.nvkm_vma, ptr %spec.select.lcssa, i32 0, i32 4
  %33 = ptrtoint ptr %part92 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load93 = load i8, ptr %part92, align 1
  %34 = and i8 %bf.load93, 8
  %bf.cast96.not = icmp eq i8 %34, 0
  br i1 %bf.cast96.not, label %land.rhs91.if.end100_crit_edge, label %land.rhs91.do.body18_crit_edge

land.rhs91.do.body18_crit_edge:                   ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

land.rhs91.if.end100_crit_edge:                   ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end100:                                        ; preds = %land.rhs91.if.end100_crit_edge, %if.end88.if.end100_crit_edge, %do.end8.if.end100_crit_edge
  %list112 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  br label %do.body101

do.body101:                                       ; preds = %land.rhs125.do.body101_crit_edge, %if.end100
  %next.2 = phi ptr [ %vma, %if.end100 ], [ %38, %land.rhs125.do.body101_crit_edge ]
  %mapped102 = getelementptr inbounds %struct.nvkm_vma, ptr %next.2, i32 0, i32 4
  %35 = ptrtoint ptr %mapped102 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load103 = load i8, ptr %mapped102, align 1
  %36 = and i8 %bf.load103, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %bf.cast106.not = icmp eq i8 %36, 0
  br i1 %bf.cast106.not, label %do.body101.do.cond109_crit_edge, label %if.then107

do.body101.do.cond109_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond109

if.then107:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvkm_vmm_unmap_region(ptr noundef %vmm, ptr noundef %next.2)
  br label %do.cond109

do.cond109:                                       ; preds = %if.then107, %do.body101.do.cond109_crit_edge
  %37 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vma, align 8
  %cmp113 = icmp eq ptr %38, %list112
  %tobool124.not250 = icmp eq ptr %38, null
  %tobool124.not = or i1 %cmp113, %tobool124.not250
  br i1 %tobool124.not, label %do.cond109.do.end133_crit_edge, label %land.rhs125

do.cond109.do.end133_crit_edge:                   ; preds = %do.cond109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end133

land.rhs125:                                      ; preds = %do.cond109
  %part126 = getelementptr inbounds %struct.nvkm_vma, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %part126 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load127 = load i8, ptr %part126, align 1
  %40 = and i8 %bf.load127, 8
  %bf.cast130.not = icmp eq i8 %40, 0
  br i1 %bf.cast130.not, label %land.rhs125.do.end133_crit_edge, label %land.rhs125.do.body101_crit_edge

land.rhs125.do.body101_crit_edge:                 ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body101

land.rhs125.do.end133_crit_edge:                  ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end133

do.end133:                                        ; preds = %land.rhs125.do.end133_crit_edge, %do.cond109.do.end133_crit_edge
  %41 = ptrtoint ptr %mapref to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load135 = load i56, ptr %mapref, align 8
  %42 = and i56 %bf.load135, 48
  %43 = icmp eq i56 %42, 16
  br i1 %43, label %if.then146, label %if.else157

if.then146:                                       ; preds = %do.end133
  %44 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load148 = load i8, ptr %part, align 1
  %bf.lshr149 = lshr i8 %bf.load148, 5
  %idxprom150 = zext i8 %bf.lshr149 to i32
  %arrayidx151 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %idxprom150
  %addr152 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %45 = ptrtoint ptr %addr152 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %addr152, align 8
  %bf.lshr155 = lshr i56 %bf.load135, 6
  %bf.cast156 = zext i56 %bf.lshr155 to i64
  %desc.i246 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %idxprom150, i32 1
  %47 = ptrtoint ptr %desc.i246 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i246, align 4
  %func.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %func.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %cond.false.i248, label %if.then146.nvkm_vmm_ptes_sparse_put.exit_crit_edge

if.then146.nvkm_vmm_ptes_sparse_put.exit_crit_edge: ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_sparse_put.exit

cond.false.i248:                                  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i247 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %unmap.i247 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unmap.i247, align 4
  br label %nvkm_vmm_ptes_sparse_put.exit

nvkm_vmm_ptes_sparse_put.exit:                    ; preds = %cond.false.i248, %if.then146.nvkm_vmm_ptes_sparse_put.exit_crit_edge
  %cond.i = phi ptr [ %54, %cond.false.i248 ], [ %52, %if.then146.nvkm_vmm_ptes_sparse_put.exit_crit_edge ]
  %call.i249 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx151, i64 noundef %46, i64 noundef %bf.cast156, ptr noundef nonnull @.str.70, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond.i) #11
  br label %if.end170

if.else157:                                       ; preds = %do.end133
  %55 = and i56 %bf.load135, 16
  %bf.cast162.not = icmp eq i56 %55, 0
  br i1 %bf.cast162.not, label %if.else157.if.end170_crit_edge, label %if.then163

if.else157.if.end170_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then163:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #13
  %addr164 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %56 = ptrtoint ptr %addr164 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %addr164, align 8
  %bf.lshr167 = lshr i56 %bf.load135, 6
  %bf.cast168 = zext i56 %bf.lshr167 to i64
  %call = tail call fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %vmm, i64 noundef %57, i64 noundef %bf.cast168, i1 noundef zeroext false)
  br label %if.end170

if.end170:                                        ; preds = %if.then163, %if.else157.if.end170_crit_edge, %nvkm_vmm_ptes_sparse_put.exit
  %tree.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %tree.i, ptr noundef %root.i) #11
  %58 = ptrtoint ptr %mapref to i32
  call void @__asan_loadN_noabort(i32 %58, i32 7)
  %bf.load172 = load i56, ptr %mapref, align 8
  %bf.set = or i56 %bf.load172, 14
  store i56 %bf.set, ptr %mapref, align 8
  %59 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load175 = load i8, ptr %part, align 1
  %bf.set177 = and i8 %bf.load175, 15
  %bf.clear179 = or i8 %bf.set177, -32
  store i8 %bf.clear179, ptr %part, align 1
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %vmm, ptr noundef %vma)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %vmm, i64 noundef %addr, i64 noundef %size, i1 noundef zeroext %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %page1 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not161 = icmp eq i64 %size, 0
  br i1 %tobool.not161, label %entry.cleanup80_crit_edge, label %entry.while.cond2.preheader_crit_edge

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  br label %while.cond2.preheader

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

while.cond2.preheader:                            ; preds = %if.end76.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %m.0166 = phi i32 [ %m.1, %if.end76.while.cond2.preheader_crit_edge ], [ 0, %entry.while.cond2.preheader_crit_edge ]
  %addr.addr.0164 = phi i64 [ %add78, %if.end76.while.cond2.preheader_crit_edge ], [ %addr, %entry.while.cond2.preheader_crit_edge ]
  %size.addr.0162 = phi i64 [ %sub77, %if.end76.while.cond2.preheader_crit_edge ], [ %size, %entry.while.cond2.preheader_crit_edge ]
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %while.cond2.preheader
  %m.1 = phi i32 [ %inc, %while.cond2.while.cond2_crit_edge ], [ %m.0166, %while.cond2.preheader ]
  %arrayidx = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %m.1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  %sh_prom = zext i8 %3 to i64
  %size.addr.0.highbits = lshr i64 %size.addr.0162, %sh_prom
  %cmp = icmp eq i64 %size.addr.0.highbits, 0
  %inc = add i32 %m.1, 1
  br i1 %cmp, label %while.cond2.while.cond2_crit_edge, label %while.cond2.while.cond5_crit_edge

while.cond2.while.cond5_crit_edge:                ; preds = %while.cond2
  br label %while.cond5

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %while.cond2.while.cond5_crit_edge
  %i.0 = phi i32 [ %inc14, %while.cond5.while.cond5_crit_edge ], [ %m.1, %while.cond2.while.cond5_crit_edge ]
  %arrayidx6 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %i.0
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 4
  %sh_prom9 = zext i8 %5 to i64
  %notmask = shl nsw i64 -1, %sh_prom9
  %sub = xor i64 %notmask, -1
  %and = and i64 %addr.addr.0164, %sub
  %cmp11.not = icmp eq i64 %and, 0
  %inc14 = add i32 %i.0, 1
  br i1 %cmp11.not, label %while.end15, label %while.cond5.while.cond5_crit_edge

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond5

while.end15:                                      ; preds = %while.cond5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %m.1)
  %cmp16.not = icmp eq i32 %i.0, %m.1
  br i1 %cmp16.not, label %while.end15.if.end62_crit_edge, label %if.then

while.end15.if.end62_crit_edge:                   ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then:                                          ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #13
  %sub18 = add i32 %i.0, -1
  %arrayidx19 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %sub18
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 4
  %sh_prom22 = zext i8 %7 to i64
  %shl23 = shl nuw i64 1, %sh_prom22
  %sub24 = add i64 %addr.addr.0164, -1
  %add = add i64 %sub24, %shl23
  %neg = sub i64 0, %shl23
  %and26 = and i64 %add, %neg
  %sub27 = sub i64 %and26, %addr.addr.0164
  %sub28 = sub i64 %size.addr.0162, %sub27
  call void @__sanitizer_cov_trace_cmp8(i64 %sub28, i64 %shl23)
  %cmp29.not = icmp ult i64 %sub28, %shl23
  %size.addr.0.sub27 = select i1 %cmp29.not, i64 %size.addr.0162, i64 %sub27
  br label %if.end62

if.end62:                                         ; preds = %if.then, %while.end15.if.end62_crit_edge
  %size.addr.0.pn = phi i64 [ %size.addr.0.sub27, %if.then ], [ %size.addr.0162, %while.end15.if.end62_crit_edge ]
  %block.1 = and i64 %size.addr.0.pn, %notmask
  br i1 %ref, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.end62
  %type.i = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %i.0, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then64.if.then67_crit_edge, label %if.then.i

if.then64.if.then67_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then.i:                                        ; preds = %if.then64
  %desc.i = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %i.0, i32 1
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %func.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func.i, align 4
  %sparse.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sparse.i, align 4
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx6, i64 noundef %addr.addr.0164, i64 noundef %block.1, ptr noundef nonnull @.str.71, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, -1
  br i1 %cmp.not.i, label %if.then.i.if.end76_crit_edge, label %if.then2.i

if.then.i.if.end76_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %addr.addr.0164)
  %tobool3.not.i = icmp eq i64 %call.i, %addr.addr.0164
  br i1 %tobool3.not.i, label %if.then2.i.if.then67_crit_edge, label %if.then4.i

if.then2.i.if.then67_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67

if.then4.i:                                       ; preds = %if.then2.i
  %sub.i = sub i64 %call.i, %addr.addr.0164
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i, align 4
  %func.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge

if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_sparse_put.exit.i

cond.false.i.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unmap.i.i, align 4
  br label %nvkm_vmm_ptes_sparse_put.exit.i

nvkm_vmm_ptes_sparse_put.exit.i:                  ; preds = %cond.false.i.i, %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge
  %cond.i.i = phi ptr [ %24, %cond.false.i.i ], [ %22, %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge ]
  %call.i.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx6, i64 noundef %addr.addr.0164, i64 noundef %sub.i, ptr noundef nonnull @.str.70, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond.i.i) #11
  br label %if.then67

if.then67:                                        ; preds = %nvkm_vmm_ptes_sparse_put.exit.i, %if.then2.i.if.then67_crit_edge, %if.then64.if.then67_crit_edge
  %retval.1.i.ph = phi i32 [ -12, %if.then2.i.if.then67_crit_edge ], [ -12, %nvkm_vmm_ptes_sparse_put.exit.i ], [ -22, %if.then64.if.then67_crit_edge ]
  %sub68 = sub i64 %addr.addr.0164, %addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub68)
  %tobool69.not = icmp eq i64 %sub68, 0
  br i1 %tobool69.not, label %if.then67.cleanup80_crit_edge, label %if.then70

if.then67.cleanup80_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.then70:                                        ; preds = %if.then67
  %25 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vmm, align 8
  %page1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %26, i32 0, i32 8
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge, %if.then70
  %m.0.i172 = phi i32 [ 0, %if.then70 ], [ %m.1.i, %nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge ]
  %addr.addr.0.i170 = phi i64 [ %addr, %if.then70 ], [ %add78.i, %nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge ]
  %size.addr.0.i168 = phi i64 [ %sub68, %if.then70 ], [ %sub77.i, %nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge ]
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.cond2.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %m.1.i = phi i32 [ %inc.i, %while.cond2.i.while.cond2.i_crit_edge ], [ %m.0.i172, %while.cond2.i.preheader ]
  %arrayidx.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %m.1.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 4
  %sh_prom.i = zext i8 %28 to i64
  %size.addr.0.highbits.i = lshr i64 %size.addr.0.i168, %sh_prom.i
  %cmp.i = icmp eq i64 %size.addr.0.highbits.i, 0
  %inc.i = add i32 %m.1.i, 1
  br i1 %cmp.i, label %while.cond2.i.while.cond2.i_crit_edge, label %while.cond2.i.while.cond5.i_crit_edge

while.cond2.i.while.cond5.i_crit_edge:            ; preds = %while.cond2.i
  br label %while.cond5.i

while.cond2.i.while.cond2.i_crit_edge:            ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i

while.cond5.i:                                    ; preds = %while.cond5.i.while.cond5.i_crit_edge, %while.cond2.i.while.cond5.i_crit_edge
  %i.0.i = phi i32 [ %inc14.i, %while.cond5.i.while.cond5.i_crit_edge ], [ %m.1.i, %while.cond2.i.while.cond5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %i.0.i
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx6.i, align 4
  %sh_prom9.i = zext i8 %30 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom9.i
  %sub.i134 = xor i64 %notmask.i, -1
  %and.i = and i64 %addr.addr.0.i170, %sub.i134
  %cmp11.not.i = icmp eq i64 %and.i, 0
  %inc14.i = add i32 %i.0.i, 1
  br i1 %cmp11.not.i, label %while.end15.i, label %while.cond5.i.while.cond5.i_crit_edge

while.cond5.i.while.cond5.i_crit_edge:            ; preds = %while.cond5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond5.i

while.end15.i:                                    ; preds = %while.cond5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %m.1.i)
  %cmp16.not.i = icmp eq i32 %i.0.i, %m.1.i
  br i1 %cmp16.not.i, label %while.end15.i.if.end62.i_crit_edge, label %if.then.i135

while.end15.i.if.end62.i_crit_edge:               ; preds = %while.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then.i135:                                     ; preds = %while.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub18.i = add i32 %i.0.i, -1
  %arrayidx19.i = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %sub18.i
  %31 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx19.i, align 4
  %sh_prom22.i = zext i8 %32 to i64
  %shl23.i = shl nuw i64 1, %sh_prom22.i
  %sub24.i = add i64 %addr.addr.0.i170, -1
  %add.i = add i64 %sub24.i, %shl23.i
  %neg.i = sub i64 0, %shl23.i
  %and26.i = and i64 %add.i, %neg.i
  %sub27.i = sub i64 %and26.i, %addr.addr.0.i170
  %sub28.i = sub i64 %size.addr.0.i168, %sub27.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub28.i, i64 %shl23.i)
  %cmp29.not.i = icmp ult i64 %sub28.i, %shl23.i
  %size.addr.0.i.sub27.i = select i1 %cmp29.not.i, i64 %size.addr.0.i168, i64 %sub27.i
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then.i135, %while.end15.i.if.end62.i_crit_edge
  %size.addr.0.i.pn = phi i64 [ %size.addr.0.i.sub27.i, %if.then.i135 ], [ %size.addr.0.i168, %while.end15.i.if.end62.i_crit_edge ]
  %block.1.i = and i64 %size.addr.0.i.pn, %notmask.i
  %desc.i140 = getelementptr %struct.nvkm_vmm_page, ptr %page1.i, i32 %i.0.i, i32 1
  %33 = ptrtoint ptr %desc.i140 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc.i140, align 4
  %func.i141 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %func.i141 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %func.i141, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool.not.i142 = icmp eq ptr %38, null
  br i1 %tobool.not.i142, label %cond.false.i144, label %if.end62.i.nvkm_vmm_ptes_sparse_put.exit147_crit_edge

if.end62.i.nvkm_vmm_ptes_sparse_put.exit147_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_sparse_put.exit147

cond.false.i144:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i143 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %unmap.i143 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %unmap.i143, align 4
  br label %nvkm_vmm_ptes_sparse_put.exit147

nvkm_vmm_ptes_sparse_put.exit147:                 ; preds = %cond.false.i144, %if.end62.i.nvkm_vmm_ptes_sparse_put.exit147_crit_edge
  %cond.i145 = phi ptr [ %40, %cond.false.i144 ], [ %38, %if.end62.i.nvkm_vmm_ptes_sparse_put.exit147_crit_edge ]
  %call.i146 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx6.i, i64 noundef %addr.addr.0.i170, i64 noundef %block.1.i, ptr noundef nonnull @.str.70, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond.i145) #11
  %sub77.i = sub i64 %size.addr.0.i168, %block.1.i
  %add78.i = add i64 %block.1.i, %addr.addr.0.i170
  %tobool.not.i133 = icmp eq i64 %sub77.i, 0
  br i1 %tobool.not.i133, label %nvkm_vmm_ptes_sparse_put.exit147.cleanup80_crit_edge, label %nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge

nvkm_vmm_ptes_sparse_put.exit147.while.cond2.i.preheader_crit_edge: ; preds = %nvkm_vmm_ptes_sparse_put.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.i.preheader

nvkm_vmm_ptes_sparse_put.exit147.cleanup80_crit_edge: ; preds = %nvkm_vmm_ptes_sparse_put.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.else74:                                        ; preds = %if.end62
  %desc.i136 = getelementptr %struct.nvkm_vmm_page, ptr %page1, i32 %i.0, i32 1
  %41 = ptrtoint ptr %desc.i136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc.i136, align 4
  %func.i137 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %func.i137 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %func.i137, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i138 = icmp eq ptr %46, null
  br i1 %tobool.not.i138, label %cond.false.i, label %if.else74.nvkm_vmm_ptes_sparse_put.exit_crit_edge

if.else74.nvkm_vmm_ptes_sparse_put.exit_crit_edge: ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_sparse_put.exit

cond.false.i:                                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %unmap.i, align 4
  br label %nvkm_vmm_ptes_sparse_put.exit

nvkm_vmm_ptes_sparse_put.exit:                    ; preds = %cond.false.i, %if.else74.nvkm_vmm_ptes_sparse_put.exit_crit_edge
  %cond.i = phi ptr [ %48, %cond.false.i ], [ %46, %if.else74.nvkm_vmm_ptes_sparse_put.exit_crit_edge ]
  %call.i139 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %arrayidx6, i64 noundef %addr.addr.0164, i64 noundef %block.1, ptr noundef nonnull @.str.70, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond.i) #11
  br label %if.end76

if.end76:                                         ; preds = %nvkm_vmm_ptes_sparse_put.exit, %if.then.i.if.end76_crit_edge
  %sub77 = sub i64 %size.addr.0162, %block.1
  %add78 = add i64 %block.1, %addr.addr.0164
  %tobool.not = icmp eq i64 %sub77, 0
  br i1 %tobool.not, label %if.end76.cleanup80_crit_edge, label %if.end76.while.cond2.preheader_crit_edge

if.end76.while.cond2.preheader_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond2.preheader

if.end76.cleanup80_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

cleanup80:                                        ; preds = %if.end76.cleanup80_crit_edge, %nvkm_vmm_ptes_sparse_put.exit147.cleanup80_crit_edge, %if.then67.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.3 = phi i32 [ %retval.1.i.ph, %if.then67.cleanup80_crit_edge ], [ 0, %entry.cleanup80_crit_edge ], [ %retval.1.i.ph, %nvkm_vmm_ptes_sparse_put.exit147.cleanup80_crit_edge ], [ 0, %if.end76.cleanup80_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_vmm_put_region(ptr noundef %vmm, ptr noundef %vma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prev1 = getelementptr inbounds %struct.list_head, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev1, align 4
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %cmp = icmp eq ptr %1, %list
  %tobool.not81 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp, %tobool.not81
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %used = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %used, align 1
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %addr4 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %6 = ptrtoint ptr %addr4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %addr4, align 8
  %size = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load5 = load i56, ptr %size, align 8
  %size8 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %8 = ptrtoint ptr %size8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load9 = load i56, ptr %size8, align 8
  %bf.lshr10 = and i56 %bf.load9, -64
  %bf.lshr671 = add i56 %bf.lshr10, %bf.load5
  %bf.shl = and i56 %bf.lshr671, -64
  %bf.clear13 = and i56 %bf.load9, 63
  %bf.set = or i56 %bf.shl, %bf.clear13
  store i56 %bf.set, ptr %size8, align 8
  %tree.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 1
  %free.i.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 11
  tail call void @rb_erase(ptr noundef %tree.i.i, ptr noundef %free.i.i) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.nvkm_vmm_free_delete.exit_crit_edge

if.then.nvkm_vmm_free_delete.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_delete.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %nvkm_vmm_free_delete.exit

nvkm_vmm_free_delete.exit:                        ; preds = %if.end.i.i.i, %if.then.nvkm_vmm_free_delete.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %nvkm_vmm_free_delete.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vma, align 8
  %cmp17 = icmp eq ptr %18, %list
  %tobool27.not82 = icmp eq ptr %18, null
  %tobool27.not = or i1 %cmp17, %tobool27.not82
  br i1 %tobool27.not, label %if.end.if.end50_crit_edge, label %land.lhs.true28

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true28:                                  ; preds = %if.end
  %used29 = getelementptr inbounds %struct.nvkm_vma, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %used29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load30 = load i8, ptr %used29, align 1
  %20 = and i8 %bf.load30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %bf.cast33.not = icmp eq i8 %20, 0
  br i1 %bf.cast33.not, label %if.then34, label %land.lhs.true28.if.end50_crit_edge

land.lhs.true28.if.end50_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then34:                                        ; preds = %land.lhs.true28
  %size35 = getelementptr inbounds %struct.nvkm_vma, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %size35 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load36 = load i56, ptr %size35, align 8
  %size39 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %22 = ptrtoint ptr %size39 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 7)
  %bf.load40 = load i56, ptr %size39, align 8
  %bf.lshr41 = and i56 %bf.load40, -64
  %bf.lshr3769 = add i56 %bf.lshr41, %bf.load36
  %bf.shl46 = and i56 %bf.lshr3769, -64
  %bf.clear47 = and i56 %bf.load40, 63
  %bf.set48 = or i56 %bf.shl46, %bf.clear47
  store i56 %bf.set48, ptr %size39, align 8
  %tree.i.i73 = getelementptr inbounds %struct.nvkm_vma, ptr %18, i32 0, i32 1
  %free.i.i74 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 11
  tail call void @rb_erase(ptr noundef %tree.i.i73, ptr noundef %free.i.i74) #11
  %call.i.i.i75 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %18) #11
  br i1 %call.i.i.i75, label %if.end.i.i.i78, label %if.then34.nvkm_vmm_free_delete.exit80_crit_edge

if.then34.nvkm_vmm_free_delete.exit80_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_delete.exit80

if.end.i.i.i78:                                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i76 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i76, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i77, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %nvkm_vmm_free_delete.exit80

nvkm_vmm_free_delete.exit80:                      ; preds = %if.end.i.i.i78, %if.then34.nvkm_vmm_free_delete.exit80_crit_edge
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i79 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i79, align 4
  tail call void @kfree(ptr noundef nonnull %18) #11
  br label %if.end50

if.end50:                                         ; preds = %nvkm_vmm_free_delete.exit80, %land.lhs.true28.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %free.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 11
  %31 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free.i, align 4
  %tobool.not55.i = icmp eq ptr %32, null
  br i1 %tobool.not55.i, label %if.end50.nvkm_vmm_free_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end50.nvkm_vmm_free_insert.exit_crit_edge:     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end50
  %size.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 7)
  %bf.load.i = load i56, ptr %size.i, align 8
  %bf.lshr.i = lshr i56 %bf.load.i, 6
  %addr.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %34 = phi ptr [ %32, %while.body.lr.ph.i ], [ %41, %if.end32.i.while.body.i_crit_edge ]
  %size1.i = getelementptr i8, ptr %34, i32 24
  %35 = ptrtoint ptr %size1.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load2.i = load i56, ptr %size1.i, align 8
  %bf.lshr3.i = lshr i56 %bf.load2.i, 6
  %cmp.i = icmp ult i56 %bf.lshr.i, %bf.lshr3.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 2
  br label %if.end32.i

if.else.i:                                        ; preds = %while.body.i
  %cmp13.i = icmp ugt i56 %bf.lshr.i, %bf.lshr3.i
  br i1 %cmp13.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 1
  br label %if.end32.i

if.else15.i:                                      ; preds = %if.else.i
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %addr.i, align 8
  %addr16.i = getelementptr i8, ptr %34, i32 16
  %38 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %addr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp17.i = icmp ult i64 %37, %39
  br i1 %cmp17.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left19.i = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 2
  br label %if.end32.i

if.else20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp23.i = icmp ugt i64 %37, %39
  br i1 %cmp23.i, label %if.then24.i, label %do.body.i

if.then24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right25.i = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 1
  br label %if.end32.i

do.body.i:                                        ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

if.end32.i:                                       ; preds = %if.then24.i, %if.then18.i, %if.then14.i, %if.then.i
  %ptr.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then14.i ], [ %rb_left19.i, %if.then18.i ], [ %rb_right25.i, %if.then24.i ]
  %40 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptr.1.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %34 to i32
  br label %nvkm_vmm_free_insert.exit

nvkm_vmm_free_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i, %if.end50.nvkm_vmm_free_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end50.nvkm_vmm_free_insert.exit_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.1.i, %while.cond.while.end_crit_edge.i ], [ %free.i, %if.end50.nvkm_vmm_free_insert.exit_crit_edge ]
  %tree.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1
  %42 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %parent.0.lcssa.i, ptr %tree.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rb_left.i.i, align 4
  %45 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tree.i, ptr %ptr.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i, ptr noundef %free.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_put(ptr noundef %vmm, ptr nocapture noundef %pvma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  tail call void @nvkm_vmm_put_locked(ptr noundef %vmm, ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %2 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pvma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_get_locked(ptr noundef %vmm, i1 noundef zeroext %getref, i1 noundef zeroext %mapref, i1 noundef zeroext %sparse, i8 noundef zeroext %shift, i8 noundef zeroext %align, i64 noundef %size, ptr nocapture noundef writeonly %pvma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %arrayidx = getelementptr %struct.nvkm_vmm_func, ptr %1, i32 3, i32 1
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %4 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 4
  %name9 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %10 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name9, align 8
  %conv = zext i1 %getref to i32
  %conv11 = zext i1 %mapref to i32
  %conv13 = zext i1 %sparse to i32
  %conv14 = zext i8 %shift to i32
  %conv15 = zext i8 %align to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %11, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i64 noundef %size) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end, %entry.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool21.not = icmp eq i64 %size, 0
  %brmerge = or i1 %tobool21.not, %getref
  %not.mapref = xor i1 %mapref, true
  %spec.select = and i1 %not.mapref, %sparse
  %spec.select620 = select i1 %brmerge, i1 %tobool21.not, i1 %spec.select, !prof !160
  br i1 %spec.select620, label %do.body29, label %if.end63, !prof !153

do.body29:                                        ; preds = %if.end18
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp32 = icmp ugt i32 %13, 3
  br i1 %cmp32, label %do.end45, label %do.body29.cleanup457_crit_edge

do.body29.cleanup457_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

do.end45:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %mmu37 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %14 = ptrtoint ptr %mmu37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu37, align 4
  %device46 = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device46, align 4
  %dev47 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev47, align 8
  %name48 = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 4
  %name50 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %20 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name50, align 8
  %conv52 = zext i1 %getref to i32
  %conv54 = zext i1 %mapref to i32
  %conv56 = zext i1 %sparse to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef %name48, ptr noundef %21, i64 noundef %size, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56) #16
  br label %cleanup457

if.end63:                                         ; preds = %if.end18
  br i1 %getref, label %if.end63.land.rhs68_crit_edge, label %lor.lhs.false

if.end63.land.rhs68_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs68

lor.lhs.false:                                    ; preds = %if.end63
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 8
  %page_block = getelementptr inbounds %struct.nvkm_vmm_func, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %page_block to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %page_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool67.not = icmp eq i64 %25, 0
  br i1 %tobool67.not, label %if.end112, label %lor.lhs.false.land.rhs68_crit_edge

lor.lhs.false.land.rhs68_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs68

land.rhs68:                                       ; preds = %lor.lhs.false.land.rhs68_crit_edge, %if.end63.land.rhs68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift)
  %cond = icmp eq i8 %shift, 0
  br i1 %cond, label %do.body80, label %land.rhs68.if.then114_crit_edge, !prof !153

land.rhs68.if.then114_crit_edge:                  ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then114

do.body80:                                        ; preds = %land.rhs68
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp83 = icmp ugt i32 %27, 3
  br i1 %cmp83, label %do.end96, label %do.body80.cleanup457_crit_edge

do.body80.cleanup457_crit_edge:                   ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

do.end96:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  %mmu88 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %28 = ptrtoint ptr %mmu88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmu88, align 4
  %device97 = getelementptr inbounds %struct.nvkm_mmu, ptr %29, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device97, align 4
  %dev98 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev98, align 8
  %name99 = getelementptr inbounds %struct.nvkm_mmu, ptr %29, i32 0, i32 1, i32 4
  %name101 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %34 = ptrtoint ptr %name101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name101, align 8
  %conv103 = zext i1 %getref to i32
  %36 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vmm, align 8
  %page_block105 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %page_block105 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %page_block105, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef %name99, ptr noundef %35, i32 noundef %conv103, i64 noundef %39) #16
  br label %cleanup457

if.end112:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift)
  %tobool113.not = icmp eq i8 %shift, 0
  br i1 %tobool113.not, label %if.else, label %if.end112.if.then114_crit_edge

if.end112.if.then114_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then114

if.then114:                                       ; preds = %if.end112.if.then114_crit_edge, %land.rhs68.if.then114_crit_edge
  %40 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vmm, align 8
  %page116 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %41, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then114
  %page.0 = phi ptr [ %page116, %if.then114 ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %42 = ptrtoint ptr %page.0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool119.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %shift)
  %cmp123 = icmp eq i8 %43, %shift
  %or.cond = or i1 %tobool119.not, %cmp123
  %incdec.ptr = getelementptr %struct.nvkm_vmm_page, ptr %page.0, i32 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool119.not, label %for.end.do.body135_crit_edge, label %lor.lhs.false129

for.end.do.body135_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135

lor.lhs.false129:                                 ; preds = %for.end
  %sh_prom = zext i8 %43 to i64
  %notmask613 = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask613, -1
  %and = and i64 %sub, %size
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp132 = icmp eq i64 %and, 0
  br i1 %cmp132, label %if.end164, label %lor.lhs.false129.do.body135_crit_edge

lor.lhs.false129.do.body135_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135

do.body135:                                       ; preds = %lor.lhs.false129.do.body135_crit_edge, %for.end.do.body135_crit_edge
  %44 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp138 = icmp ugt i32 %45, 3
  br i1 %cmp138, label %do.end151, label %do.body135.cleanup457_crit_edge

do.body135.cleanup457_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

do.end151:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %mmu143 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %46 = ptrtoint ptr %mmu143 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmu143, align 4
  %device152 = getelementptr inbounds %struct.nvkm_mmu, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %device152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device152, align 4
  %dev153 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev153, align 8
  %name154 = getelementptr inbounds %struct.nvkm_mmu, ptr %47, i32 0, i32 1, i32 4
  %name156 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %52 = ptrtoint ptr %name156 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name156, align 8
  %conv157 = zext i8 %shift to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.14, ptr noundef %name154, ptr noundef %53, i32 noundef %conv157, i64 noundef %size) #16
  br label %cleanup457

if.end164:                                        ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #13
  %54 = tail call i8 @llvm.umax.i8(i8 %align, i8 %shift)
  br label %if.end185

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %55 = tail call i8 @llvm.umax.i8(i8 %align, i8 12)
  br label %if.end185

if.end185:                                        ; preds = %if.else, %if.end164
  %page.1 = phi ptr [ %page.0, %if.end164 ], [ %arrayidx, %if.else ]
  %align.addr.0 = phi i8 [ %54, %if.end164 ], [ %55, %if.else ]
  %free = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 11
  %56 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %56)
  %temp.0709 = load ptr, ptr %free, align 4
  %tobool186.not710 = icmp eq ptr %temp.0709, null
  br i1 %tobool186.not710, label %if.end185.cleanup457_crit_edge, label %if.end185.while.body_crit_edge

if.end185.while.body_crit_edge:                   ; preds = %if.end185
  br label %while.body

if.end185.cleanup457_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end185.while.body_crit_edge
  %temp.0712 = phi ptr [ %temp.0, %while.body.while.body_crit_edge ], [ %temp.0709, %if.end185.while.body_crit_edge ]
  %node.0711 = phi ptr [ %node.1, %while.body.while.body_crit_edge ], [ null, %if.end185.while.body_crit_edge ]
  %size188 = getelementptr i8, ptr %temp.0712, i32 24
  %57 = ptrtoint ptr %size188 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 7)
  %bf.load = load i56, ptr %size188, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast, i64 %size)
  %cmp189 = icmp ult i64 %bf.cast, %size
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %temp.0712, i32 0, i32 1
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %temp.0712, i32 0, i32 2
  %temp.1.in = select i1 %cmp189, ptr %rb_right, ptr %rb_left
  %node.1 = select i1 %cmp189, ptr %node.0711, ptr %temp.0712
  %58 = ptrtoint ptr %temp.1.in to i32
  call void @__asan_load4_noabort(i32 %58)
  %temp.0 = load ptr, ptr %temp.1.in, align 4
  %tobool186.not = icmp eq ptr %temp.0, null
  br i1 %tobool186.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  %tobool194.not = icmp eq ptr %node.1, null
  br i1 %tobool194.not, label %while.end.cleanup457_crit_edge, label %do.body205.preheader, !prof !153

while.end.cleanup457_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

do.body205.preheader:                             ; preds = %while.end
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %sub.ptr.lhs.cast = ptrtoint ptr %page.1 to i32
  %sh_prom263 = zext i8 %align.addr.0 to i64
  %notmask = shl nsw i64 -1, %sh_prom263
  %sub265 = xor i64 %notmask, -1
  br label %do.body205

do.body205:                                       ; preds = %do.cond319.do.body205_crit_edge, %do.body205.preheader
  %node.2 = phi ptr [ %call, %do.cond319.do.body205_crit_edge ], [ %node.1, %do.body205.preheader ]
  %add.ptr209 = getelementptr i8, ptr %node.2, i32 -8
  %prev210 = getelementptr i8, ptr %node.2, i32 -4
  %59 = ptrtoint ptr %prev210 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev210, align 4
  %cmp211 = icmp eq ptr %60, %list
  %spec.select614 = select i1 %cmp211, ptr null, ptr %60
  %61 = ptrtoint ptr %add.ptr209 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr209, align 8
  %cmp225 = icmp eq ptr %62, %list
  %cond235 = select i1 %cmp225, ptr null, ptr %62
  %63 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vmm, align 8
  %page237 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %64, i32 0, i32 8
  %sub.ptr.rhs.cast = ptrtoint ptr %page237 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %addr239 = getelementptr i8, ptr %node.2, i32 16
  %65 = ptrtoint ptr %addr239 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %addr239, align 8
  %page_block241 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %64, i32 0, i32 7
  %67 = ptrtoint ptr %page_block241 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %page_block241, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool242.not = icmp eq i64 %68, 0
  %tobool244.not = icmp eq ptr %spec.select614, null
  %or.cond615 = select i1 %tobool242.not, i1 true, i1 %tobool244.not
  br i1 %or.cond615, label %do.body205.if.end261_crit_edge, label %land.lhs.true245

do.body205.if.end261_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

land.lhs.true245:                                 ; preds = %do.body205
  %page246 = getelementptr inbounds %struct.nvkm_vma, ptr %spec.select614, i32 0, i32 3
  %69 = ptrtoint ptr %page246 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 7)
  %bf.load247 = load i56, ptr %page246, align 8
  %70 = trunc i56 %bf.load247 to i32
  %71 = lshr i32 %70, 1
  %bf.cast249 = and i32 %71, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast249, i32 %sub.ptr.div)
  %cmp251.not = icmp eq i32 %bf.cast249, %sub.ptr.div
  br i1 %cmp251.not, label %land.lhs.true245.if.end261_crit_edge, label %if.then253

land.lhs.true245.if.end261_crit_edge:             ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

if.then253:                                       ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #13
  %sub256 = add i64 %66, -1
  %add = add i64 %sub256, %68
  %neg = sub i64 0, %68
  %and260 = and i64 %add, %neg
  br label %if.end261

if.end261:                                        ; preds = %if.then253, %land.lhs.true245.if.end261_crit_edge, %do.body205.if.end261_crit_edge
  %addr.0 = phi i64 [ %and260, %if.then253 ], [ %66, %land.lhs.true245.if.end261_crit_edge ], [ %66, %do.body205.if.end261_crit_edge ]
  %add266 = add i64 %addr.0, %sub265
  %and272 = and i64 %add266, %notmask
  %size274 = getelementptr i8, ptr %node.2, i32 24
  %72 = ptrtoint ptr %size274 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 7)
  %bf.load275 = load i56, ptr %size274, align 8
  %bf.lshr276 = lshr i56 %bf.load275, 6
  %bf.cast277 = zext i56 %bf.lshr276 to i64
  %add278 = add i64 %66, %bf.cast277
  %tobool283.not = icmp eq ptr %cond235, null
  %or.cond616 = select i1 %tobool242.not, i1 true, i1 %tobool283.not
  br i1 %or.cond616, label %if.end261.if.end307_crit_edge, label %land.lhs.true284

if.end261.if.end307_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

land.lhs.true284:                                 ; preds = %if.end261
  %page285 = getelementptr inbounds %struct.nvkm_vma, ptr %cond235, i32 0, i32 3
  %73 = ptrtoint ptr %page285 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 7)
  %bf.load286 = load i56, ptr %page285, align 8
  %74 = trunc i56 %bf.load286 to i32
  %75 = lshr i32 %74, 1
  %bf.cast289 = and i32 %75, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast289, i32 %sub.ptr.div)
  %cmp291.not = icmp eq i32 %bf.cast289, %sub.ptr.div
  br i1 %cmp291.not, label %land.lhs.true284.if.end307_crit_edge, label %if.then293

land.lhs.true284.if.end307_crit_edge:             ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

if.then293:                                       ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #13
  %neg305 = sub i64 0, %68
  %and306 = and i64 %add278, %neg305
  br label %if.end307

if.end307:                                        ; preds = %if.then293, %land.lhs.true284.if.end307_crit_edge, %if.end261.if.end307_crit_edge
  %tail.0 = phi i64 [ %and306, %if.then293 ], [ %add278, %land.lhs.true284.if.end307_crit_edge ], [ %add278, %if.end261.if.end307_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %tail.0, i64 %and272)
  %cmp308.not = icmp ult i64 %tail.0, %and272
  %sub311 = sub i64 %tail.0, %and272
  call void @__sanitizer_cov_trace_cmp8(i64 %sub311, i64 %size)
  %cmp312.not = icmp ult i64 %sub311, %size
  %or.cond617 = or i1 %cmp308.not, %cmp312.not
  br i1 %or.cond617, label %do.cond319, label %do.end321

do.cond319:                                       ; preds = %if.end307
  %call = tail call ptr @rb_next(ptr noundef nonnull %node.2) #11
  %tobool320.not = icmp eq ptr %call, null
  br i1 %tobool320.not, label %do.cond319.cleanup457_crit_edge, label %do.cond319.do.body205_crit_edge

do.cond319.do.body205_crit_edge:                  ; preds = %do.cond319
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body205

do.cond319.cleanup457_crit_edge:                  ; preds = %do.cond319
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

do.end321:                                        ; preds = %if.end307
  %add.ptr209.le = getelementptr i8, ptr %node.2, i32 -8
  %addr239.le = getelementptr i8, ptr %node.2, i32 16
  %size274.le = getelementptr i8, ptr %node.2, i32 24
  tail call void @rb_erase(ptr noundef nonnull %node.2, ptr noundef %free) #11
  %tobool322.not = icmp eq ptr %add.ptr209.le, null
  br i1 %tobool322.not, label %do.end321.cleanup457_crit_edge, label %if.end332, !prof !153

do.end321.cleanup457_crit_edge:                   ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup457

if.end332:                                        ; preds = %do.end321
  %76 = ptrtoint ptr %addr239.le to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %addr239.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %and272)
  %cmp334.not = icmp eq i64 %77, %and272
  br i1 %cmp334.not, label %if.end332.if.end348_crit_edge, label %if.then336

if.end332.if.end348_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end348

if.then336:                                       ; preds = %if.end332
  %78 = ptrtoint ptr %size274.le to i32
  call void @__asan_loadN_noabort(i32 %78, i32 7)
  %bf.load338 = load i56, ptr %size274.le, align 8
  %bf.lshr339 = lshr i56 %bf.load338, 6
  %bf.cast340 = zext i56 %bf.lshr339 to i64
  %add342 = sub i64 %77, %and272
  %sub343 = add i64 %add342, %bf.cast340
  %call344 = tail call ptr @nvkm_vma_tail(ptr noundef nonnull %add.ptr209.le, i64 noundef %sub343)
  %tobool345.not = icmp eq ptr %call344, null
  br i1 %tobool345.not, label %if.then346, label %if.end347

if.then346:                                       ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %vmm, ptr noundef nonnull %add.ptr209.le)
  br label %cleanup457

if.end347:                                        ; preds = %if.then336
  %79 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %free, align 4
  %tobool.not55.i = icmp eq ptr %80, null
  br i1 %tobool.not55.i, label %if.end347.nvkm_vmm_free_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end347.nvkm_vmm_free_insert.exit_crit_edge:    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end347
  %81 = ptrtoint ptr %size274.le to i32
  call void @__asan_loadN_noabort(i32 %81, i32 7)
  %bf.load.i = load i56, ptr %size274.le, align 8
  %bf.lshr.i = lshr i56 %bf.load.i, 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %82 = phi ptr [ %80, %while.body.lr.ph.i ], [ %89, %if.end32.i.while.body.i_crit_edge ]
  %size1.i = getelementptr i8, ptr %82, i32 24
  %83 = ptrtoint ptr %size1.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 7)
  %bf.load2.i = load i56, ptr %size1.i, align 8
  %bf.lshr3.i = lshr i56 %bf.load2.i, 6
  %cmp.i = icmp ult i56 %bf.lshr.i, %bf.lshr3.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 2
  br label %if.end32.i

if.else.i:                                        ; preds = %while.body.i
  %cmp13.i = icmp ugt i56 %bf.lshr.i, %bf.lshr3.i
  br i1 %cmp13.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 1
  br label %if.end32.i

if.else15.i:                                      ; preds = %if.else.i
  %84 = ptrtoint ptr %addr239.le to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %addr239.le, align 8
  %addr16.i = getelementptr i8, ptr %82, i32 16
  %86 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %addr16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp17.i = icmp ult i64 %85, %87
  br i1 %cmp17.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left19.i = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 2
  br label %if.end32.i

if.else20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp23.i = icmp ugt i64 %85, %87
  br i1 %cmp23.i, label %if.then24.i, label %do.body.i

if.then24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right25.i = getelementptr inbounds %struct.rb_node, ptr %82, i32 0, i32 1
  br label %if.end32.i

do.body.i:                                        ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

if.end32.i:                                       ; preds = %if.then24.i, %if.then18.i, %if.then14.i, %if.then.i
  %ptr.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then14.i ], [ %rb_left19.i, %if.then18.i ], [ %rb_right25.i, %if.then24.i ]
  %88 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ptr.1.i, align 4
  %tobool.not.i = icmp eq ptr %89, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %82 to i32
  br label %nvkm_vmm_free_insert.exit

nvkm_vmm_free_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i, %if.end347.nvkm_vmm_free_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end347.nvkm_vmm_free_insert.exit_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.1.i, %while.cond.while.end_crit_edge.i ], [ %free, %if.end347.nvkm_vmm_free_insert.exit_crit_edge ]
  %90 = ptrtoint ptr %node.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %parent.0.lcssa.i, ptr %node.2, align 4
  %rb_right.i.i = getelementptr i8, ptr %node.2, i32 4
  %91 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr i8, ptr %node.2, i32 8
  %92 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %rb_left.i.i, align 4
  %93 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %node.2, ptr %ptr.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.2, ptr noundef %free) #11
  br label %if.end348

if.end348:                                        ; preds = %nvkm_vmm_free_insert.exit, %if.end332.if.end348_crit_edge
  %vma.2 = phi ptr [ %call344, %nvkm_vmm_free_insert.exit ], [ %add.ptr209.le, %if.end332.if.end348_crit_edge ]
  %size349 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 3
  %94 = ptrtoint ptr %size349 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 7)
  %bf.load350 = load i56, ptr %size349, align 8
  %bf.lshr351 = lshr i56 %bf.load350, 6
  %bf.cast352 = zext i56 %bf.lshr351 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.cast352, i64 %size)
  %cmp353.not = icmp eq i64 %bf.cast352, %size
  br i1 %cmp353.not, label %if.end348.if.end365_crit_edge, label %if.then355

if.end348.if.end365_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then355:                                       ; preds = %if.end348
  %sub360 = sub i64 %bf.cast352, %size
  %call361 = tail call ptr @nvkm_vma_tail(ptr noundef nonnull %vma.2, i64 noundef %sub360)
  %tobool362.not = icmp eq ptr %call361, null
  br i1 %tobool362.not, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %vmm, ptr noundef nonnull %vma.2)
  br label %cleanup457

if.end364:                                        ; preds = %if.then355
  %95 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %free, align 4
  %tobool.not55.i624 = icmp eq ptr %96, null
  br i1 %tobool.not55.i624, label %if.end364.nvkm_vmm_free_insert.exit661_crit_edge, label %while.body.lr.ph.i629

if.end364.nvkm_vmm_free_insert.exit661_crit_edge: ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_free_insert.exit661

while.body.lr.ph.i629:                            ; preds = %if.end364
  %size.i625 = getelementptr inbounds %struct.nvkm_vma, ptr %call361, i32 0, i32 3
  %97 = ptrtoint ptr %size.i625 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 7)
  %bf.load.i626 = load i56, ptr %size.i625, align 8
  %bf.lshr.i627 = lshr i56 %bf.load.i626, 6
  %addr.i628 = getelementptr inbounds %struct.nvkm_vma, ptr %call361, i32 0, i32 2
  br label %while.body.i634

while.body.i634:                                  ; preds = %if.end32.i653.while.body.i634_crit_edge, %while.body.lr.ph.i629
  %98 = phi ptr [ %96, %while.body.lr.ph.i629 ], [ %105, %if.end32.i653.while.body.i634_crit_edge ]
  %size1.i630 = getelementptr i8, ptr %98, i32 24
  %99 = ptrtoint ptr %size1.i630 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 7)
  %bf.load2.i631 = load i56, ptr %size1.i630, align 8
  %bf.lshr3.i632 = lshr i56 %bf.load2.i631, 6
  %cmp.i633 = icmp ult i56 %bf.lshr.i627, %bf.lshr3.i632
  br i1 %cmp.i633, label %if.then.i636, label %if.else.i638

if.then.i636:                                     ; preds = %while.body.i634
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i635 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 2
  br label %if.end32.i653

if.else.i638:                                     ; preds = %while.body.i634
  %cmp13.i637 = icmp ugt i56 %bf.lshr.i627, %bf.lshr3.i632
  br i1 %cmp13.i637, label %if.then14.i640, label %if.else15.i643

if.then14.i640:                                   ; preds = %if.else.i638
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i639 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1
  br label %if.end32.i653

if.else15.i643:                                   ; preds = %if.else.i638
  %100 = ptrtoint ptr %addr.i628 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %addr.i628, align 8
  %addr16.i641 = getelementptr i8, ptr %98, i32 16
  %102 = ptrtoint ptr %addr16.i641 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %addr16.i641, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %103)
  %cmp17.i642 = icmp ult i64 %101, %103
  br i1 %cmp17.i642, label %if.then18.i645, label %if.else20.i647

if.then18.i645:                                   ; preds = %if.else15.i643
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left19.i644 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 2
  br label %if.end32.i653

if.else20.i647:                                   ; preds = %if.else15.i643
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %103)
  %cmp23.i646 = icmp ugt i64 %101, %103
  br i1 %cmp23.i646, label %if.then24.i649, label %do.body.i650

if.then24.i649:                                   ; preds = %if.else20.i647
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right25.i648 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1
  br label %if.end32.i653

do.body.i650:                                     ; preds = %if.else20.i647
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

if.end32.i653:                                    ; preds = %if.then24.i649, %if.then18.i645, %if.then14.i640, %if.then.i636
  %ptr.1.i651 = phi ptr [ %rb_left.i635, %if.then.i636 ], [ %rb_right.i639, %if.then14.i640 ], [ %rb_left19.i644, %if.then18.i645 ], [ %rb_right25.i648, %if.then24.i649 ]
  %104 = ptrtoint ptr %ptr.1.i651 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ptr.1.i651, align 4
  %tobool.not.i652 = icmp eq ptr %105, null
  br i1 %tobool.not.i652, label %while.cond.while.end_crit_edge.i655, label %if.end32.i653.while.body.i634_crit_edge

if.end32.i653.while.body.i634_crit_edge:          ; preds = %if.end32.i653
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i634

while.cond.while.end_crit_edge.i655:              ; preds = %if.end32.i653
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i654 = ptrtoint ptr %98 to i32
  br label %nvkm_vmm_free_insert.exit661

nvkm_vmm_free_insert.exit661:                     ; preds = %while.cond.while.end_crit_edge.i655, %if.end364.nvkm_vmm_free_insert.exit661_crit_edge
  %parent.0.lcssa.i656 = phi i32 [ %phi.cast.le.i654, %while.cond.while.end_crit_edge.i655 ], [ 0, %if.end364.nvkm_vmm_free_insert.exit661_crit_edge ]
  %ptr.0.lcssa.i657 = phi ptr [ %ptr.1.i651, %while.cond.while.end_crit_edge.i655 ], [ %free, %if.end364.nvkm_vmm_free_insert.exit661_crit_edge ]
  %tree.i658 = getelementptr inbounds %struct.nvkm_vma, ptr %call361, i32 0, i32 1
  %106 = ptrtoint ptr %tree.i658 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %parent.0.lcssa.i656, ptr %tree.i658, align 4
  %rb_right.i.i659 = getelementptr inbounds %struct.nvkm_vma, ptr %call361, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %rb_right.i.i659 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %rb_right.i.i659, align 4
  %rb_left.i.i660 = getelementptr inbounds %struct.nvkm_vma, ptr %call361, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %rb_left.i.i660 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rb_left.i.i660, align 4
  %109 = ptrtoint ptr %ptr.0.lcssa.i657 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %tree.i658, ptr %ptr.0.lcssa.i657, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i658, ptr noundef %free) #11
  br label %if.end365

if.end365:                                        ; preds = %nvkm_vmm_free_insert.exit661, %if.end348.if.end365_crit_edge
  %brmerge618.demorgan = and i1 %getref, %sparse
  br i1 %brmerge618.demorgan, label %if.then371, label %if.else378

if.then371:                                       ; preds = %if.end365
  %addr372 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 2
  %110 = ptrtoint ptr %addr372 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %addr372, align 8
  %type.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page.1, i32 0, i32 2
  %112 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %type.i, align 4
  %114 = and i8 %113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i662 = icmp eq i8 %114, 0
  br i1 %tobool.not.i662, label %if.then371.if.then401_crit_edge, label %if.then.i663

if.then371.if.then401_crit_edge:                  ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

if.then.i663:                                     ; preds = %if.then371
  %115 = ptrtoint ptr %size349 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 7)
  %bf.load374 = load i56, ptr %size349, align 8
  %bf.lshr375 = lshr i56 %bf.load374, 6
  %bf.cast376 = zext i56 %bf.lshr375 to i64
  %desc.i = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page.1, i32 0, i32 1
  %116 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc.i, align 4
  %func.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %func.i, align 4
  %sparse.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sparse.i, align 4
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.1, i64 noundef %111, i64 noundef %bf.cast376, ptr noundef nonnull @.str.71, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef %121) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, -1
  br i1 %cmp.not.i, label %if.then.i663.if.end402_crit_edge, label %if.then2.i

if.then.i663.if.end402_crit_edge:                 ; preds = %if.then.i663
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end402

if.then2.i:                                       ; preds = %if.then.i663
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %111)
  %tobool3.not.i = icmp eq i64 %call.i, %111
  br i1 %tobool3.not.i, label %if.then2.i.if.then401_crit_edge, label %if.then4.i

if.then2.i.if.then401_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

if.then4.i:                                       ; preds = %if.then2.i
  %sub.i = sub i64 %call.i, %111
  %122 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc.i, align 4
  %func.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %func.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %tobool.not.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge

if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ptes_sparse_put.exit.i

cond.false.i.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %unmap.i.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %unmap.i.i, align 4
  br label %nvkm_vmm_ptes_sparse_put.exit.i

nvkm_vmm_ptes_sparse_put.exit.i:                  ; preds = %cond.false.i.i, %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge
  %cond.i.i = phi ptr [ %129, %cond.false.i.i ], [ %127, %if.then4.i.nvkm_vmm_ptes_sparse_put.exit.i_crit_edge ]
  %call.i.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.1, i64 noundef %111, i64 noundef %sub.i, ptr noundef nonnull @.str.70, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %cond.i.i) #11
  br label %if.then401

if.else378:                                       ; preds = %if.end365
  br i1 %sparse, label %if.end399, label %if.else387

if.else387:                                       ; preds = %if.else378
  br i1 %getref, label %if.then389, label %if.else387.if.end402_crit_edge

if.else387.if.end402_crit_edge:                   ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end402

if.then389:                                       ; preds = %if.else387
  %addr390 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 2
  %130 = ptrtoint ptr %addr390 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %addr390, align 8
  %132 = ptrtoint ptr %size349 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 7)
  %bf.load392 = load i56, ptr %size349, align 8
  %bf.lshr393 = lshr i56 %bf.load392, 6
  %bf.cast394 = zext i56 %bf.lshr393 to i64
  %call.i664 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.1, i64 noundef %131, i64 noundef %bf.cast394, ptr noundef nonnull @.str.72, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i664)
  %cmp.not.i665 = icmp eq i64 %call.i664, -1
  br i1 %cmp.not.i665, label %if.then389.if.end402_crit_edge, label %if.then.i666

if.then389.if.end402_crit_edge:                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end402

if.then.i666:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i664, i64 %131)
  %cmp1.not.i = icmp eq i64 %call.i664, %131
  br i1 %cmp1.not.i, label %if.then.i666.if.then401_crit_edge, label %if.then2.i669

if.then.i666.if.then401_crit_edge:                ; preds = %if.then.i666
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

if.then2.i669:                                    ; preds = %if.then.i666
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i667 = sub i64 %call.i664, %131
  %call.i.i668 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.1, i64 noundef %131, i64 noundef %sub.i667, ptr noundef nonnull @.str.69, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  br label %if.then401

if.end399:                                        ; preds = %if.else378
  %addr381 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 2
  %133 = ptrtoint ptr %addr381 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %addr381, align 8
  %135 = ptrtoint ptr %size349 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 7)
  %bf.load383 = load i56, ptr %size349, align 8
  %bf.lshr384 = lshr i56 %bf.load383, 6
  %bf.cast385 = zext i56 %bf.lshr384 to i64
  %call386 = tail call fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %vmm, i64 noundef %134, i64 noundef %bf.cast385, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool400.not = icmp eq i32 %call386, 0
  br i1 %tobool400.not, label %if.end399.if.end402_crit_edge, label %if.end399.if.then401_crit_edge

if.end399.if.then401_crit_edge:                   ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

if.end399.if.end402_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end402

if.then401:                                       ; preds = %if.end399.if.then401_crit_edge, %if.then2.i669, %if.then.i666.if.then401_crit_edge, %nvkm_vmm_ptes_sparse_put.exit.i, %if.then2.i.if.then401_crit_edge, %if.then371.if.then401_crit_edge
  %ret.0697 = phi i32 [ %call386, %if.end399.if.then401_crit_edge ], [ -12, %if.then.i666.if.then401_crit_edge ], [ -12, %if.then2.i669 ], [ -22, %if.then371.if.then401_crit_edge ], [ -12, %if.then2.i.if.then401_crit_edge ], [ -12, %nvkm_vmm_ptes_sparse_put.exit.i ]
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %vmm, ptr noundef nonnull %vma.2)
  br label %cleanup457

if.end402:                                        ; preds = %if.end399.if.end402_crit_edge, %if.then389.if.end402_crit_edge, %if.else387.if.end402_crit_edge, %if.then.i663.if.end402_crit_edge
  %phi.sel = select i1 %getref, i56 0, i56 32
  %spec.select619 = select i1 %mapref, i56 %phi.sel, i56 0
  %136 = ptrtoint ptr %size349 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 7)
  %bf.load411 = load i56, ptr %size349, align 8
  %bf.clear412 = and i56 %bf.load411, -49
  %bf.shl417 = select i1 %sparse, i56 16, i56 0
  %bf.set = or i56 %bf.shl417, %spec.select619
  %bf.set419 = or i56 %bf.set, %bf.clear412
  store i56 %bf.set419, ptr %size349, align 8
  %137 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vmm, align 8
  %page423 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %138, i32 0, i32 8
  %sub.ptr.rhs.cast426 = ptrtoint ptr %page423 to i32
  %sub.ptr.sub427 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast426
  %sub.ptr.div428 = sdiv exact i32 %sub.ptr.sub427, 12
  %139 = shl nsw i32 %sub.ptr.div428, 1
  %140 = and i32 %139, 14
  %bf.shl432 = zext i32 %140 to i56
  %bf.clear433 = and i56 %bf.set419, -15
  %bf.set434 = or i56 %bf.clear433, %bf.shl432
  store i56 %bf.set434, ptr %size349, align 8
  %141 = trunc i32 %139 to i8
  %phi.bo612 = shl i8 %141, 4
  %cond447 = select i1 %getref, i8 %phi.bo612, i8 -32
  %refd = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 4
  %142 = ptrtoint ptr %refd to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load449 = load i8, ptr %refd, align 1
  %bf.clear452 = and i8 %bf.load449, 15
  %bf.clear455 = or i8 %bf.clear452, %cond447
  %bf.set456 = or i8 %bf.clear455, 16
  store i8 %bf.set456, ptr %refd, align 1
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %143 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %root.i, align 4
  %tobool.not27.i = icmp eq ptr %144, null
  br i1 %tobool.not27.i, label %if.end402.nvkm_vmm_node_insert.exit_crit_edge, label %while.body.lr.ph.i671

if.end402.nvkm_vmm_node_insert.exit_crit_edge:    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit

while.body.lr.ph.i671:                            ; preds = %if.end402
  %addr.i670 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 2
  %145 = ptrtoint ptr %addr.i670 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %addr.i670, align 8
  br label %while.body.i673

while.body.i673:                                  ; preds = %if.end10.i.while.body.i673_crit_edge, %while.body.lr.ph.i671
  %147 = phi ptr [ %144, %while.body.lr.ph.i671 ], [ %151, %if.end10.i.while.body.i673_crit_edge ]
  %addr1.i = getelementptr i8, ptr %147, i32 16
  %148 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %149)
  %cmp.i672 = icmp ult i64 %146, %149
  br i1 %cmp.i672, label %if.then.i675, label %if.else.i676

if.then.i675:                                     ; preds = %while.body.i673
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i674 = getelementptr inbounds %struct.rb_node, ptr %147, i32 0, i32 2
  br label %if.end10.i

if.else.i676:                                     ; preds = %while.body.i673
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %149)
  %cmp4.i = icmp ugt i64 %146, %149
  br i1 %cmp4.i, label %if.then5.i, label %do.body.i678

if.then5.i:                                       ; preds = %if.else.i676
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i677 = getelementptr inbounds %struct.rb_node, ptr %147, i32 0, i32 1
  br label %if.end10.i

do.body.i678:                                     ; preds = %if.else.i676
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i:                                       ; preds = %if.then5.i, %if.then.i675
  %ptr.1.i679 = phi ptr [ %rb_left.i674, %if.then.i675 ], [ %rb_right.i677, %if.then5.i ]
  %150 = ptrtoint ptr %ptr.1.i679 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ptr.1.i679, align 4
  %tobool.not.i680 = icmp eq ptr %151, null
  br i1 %tobool.not.i680, label %while.cond.while.end_crit_edge.i682, label %if.end10.i.while.body.i673_crit_edge

if.end10.i.while.body.i673_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i673

while.cond.while.end_crit_edge.i682:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i681 = ptrtoint ptr %147 to i32
  br label %nvkm_vmm_node_insert.exit

nvkm_vmm_node_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i682, %if.end402.nvkm_vmm_node_insert.exit_crit_edge
  %parent.0.lcssa.i683 = phi i32 [ %phi.cast.le.i681, %while.cond.while.end_crit_edge.i682 ], [ 0, %if.end402.nvkm_vmm_node_insert.exit_crit_edge ]
  %ptr.0.lcssa.i684 = phi ptr [ %ptr.1.i679, %while.cond.while.end_crit_edge.i682 ], [ %root.i, %if.end402.nvkm_vmm_node_insert.exit_crit_edge ]
  %tree.i685 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 1
  %152 = ptrtoint ptr %tree.i685 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %parent.0.lcssa.i683, ptr %tree.i685, align 4
  %rb_right.i.i686 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %rb_right.i.i686 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %rb_right.i.i686, align 4
  %rb_left.i.i687 = getelementptr inbounds %struct.nvkm_vma, ptr %vma.2, i32 0, i32 1, i32 2
  %154 = ptrtoint ptr %rb_left.i.i687 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %rb_left.i.i687, align 4
  %155 = ptrtoint ptr %ptr.0.lcssa.i684 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %tree.i685, ptr %ptr.0.lcssa.i684, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i685, ptr noundef %root.i) #11
  %156 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %vma.2, ptr %pvma, align 4
  br label %cleanup457

cleanup457:                                       ; preds = %nvkm_vmm_node_insert.exit, %if.then401, %if.then363, %if.then346, %do.end321.cleanup457_crit_edge, %do.cond319.cleanup457_crit_edge, %while.end.cleanup457_crit_edge, %if.end185.cleanup457_crit_edge, %do.end151, %do.body135.cleanup457_crit_edge, %do.end96, %do.body80.cleanup457_crit_edge, %do.end45, %do.body29.cleanup457_crit_edge
  %retval.0 = phi i32 [ %ret.0697, %if.then401 ], [ 0, %nvkm_vmm_node_insert.exit ], [ -12, %if.then363 ], [ -12, %if.then346 ], [ -22, %do.end45 ], [ -22, %do.body29.cleanup457_crit_edge ], [ -22, %do.end96 ], [ -22, %do.body80.cleanup457_crit_edge ], [ -22, %do.end151 ], [ -22, %do.body135.cleanup457_crit_edge ], [ -28, %while.end.cleanup457_crit_edge ], [ -28, %do.end321.cleanup457_crit_edge ], [ -28, %if.end185.cleanup457_crit_edge ], [ -28, %do.cond319.cleanup457_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_get(ptr noundef %vmm, i8 noundef zeroext %page, i64 noundef %size, ptr nocapture noundef writeonly %pvma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call = tail call i32 @nvkm_vmm_get_locked(ptr noundef %vmm, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext %page, i8 noundef zeroext 0, i64 noundef %size, ptr noundef %pvma)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_part(ptr noundef %vmm, ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inst, null
  %tobool1.not = icmp eq ptr %vmm, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %part = getelementptr inbounds %struct.nvkm_vmm_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmm, align 8
  %part5 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %part5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part5, align 4
  tail call void %7(ptr noundef nonnull %vmm, ptr noundef nonnull %inst) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_join(ptr noundef %vmm, ptr noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmm, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call i32 %7(ptr noundef %vmm, ptr noundef %inst) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_boot(ptr noundef %vmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 8
  %page1 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %1, i32 0, i32 8
  %limit2 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 7
  %2 = ptrtoint ptr %limit2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %limit2, align 8
  %start = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 6
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %page.0 = phi ptr [ %page1, %entry ], [ %arrayidx, %while.cond.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_vmm_page, ptr %page.0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub = sub i64 %3, %5
  %call.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0, i64 noundef %5, i64 noundef %sub, ptr noundef nonnull @.str.72, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, -1
  br i1 %cmp.not.i, label %if.end, label %if.then.i

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %5)
  %cmp1.not.i = icmp eq i64 %call.i, %5
  br i1 %cmp1.not.i, label %if.then.i.cleanup_crit_edge, label %if.then2.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i64 %call.i, %5
  %call.i.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0, i64 noundef %5, i64 noundef %sub.i, ptr noundef nonnull @.str.69, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %call6 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page.0, i64 noundef %9, i64 noundef %sub, ptr noundef nonnull @.str.16, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_boot_ptes, ptr noundef null, ptr noundef null, ptr noundef null)
  %bootstrapped = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 13
  %10 = ptrtoint ptr %bootstrapped to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bootstrapped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then2.i ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @nvkm_vmm_iter(ptr noundef %vmm, ptr noundef %page, i64 noundef %addr, i64 noundef %size, ptr noundef %name, i1 noundef zeroext %ref, i1 noundef zeroext %pfn, ptr noundef readonly %REF_PTES, ptr noundef readonly %MAP_PTES, ptr noundef %map, ptr noundef readonly %CLR_PTES) unnamed_addr #5 align 64 {
entry:
  %_buf.i303 = alloca [35 x i8], align 1
  %_buf.i = alloca [35 x i8], align 1
  %it = alloca %struct.nvkm_vmm_iter, align 8
  %_buf = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  %desc2 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %page, i32 0, i32 1
  %0 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc2, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %it) #11
  %2 = getelementptr inbounds i8, ptr %it, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 64)
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page, align 4
  %sh_prom = zext i8 %5 to i64
  %6 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page, ptr %it, align 8
  %desc4 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %7 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %desc4, align 4
  %vmm5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %8 = ptrtoint ptr %vmm5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vmm, ptr %vmm5, align 8
  %shr9 = lshr i64 %size, %sh_prom
  %cnt = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 3
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %shr9, ptr %cnt, align 8
  %flush = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 8
  %10 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %flush, align 4
  %lvl = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %11 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %lvl, align 2
  %bits11353 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bits11353 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits11353, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not354 = icmp eq i8 %13, 0
  br i1 %tobool.not354, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr = lshr i64 %addr, %sh_prom
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %14 = phi i8 [ %21, %for.body.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %bits11358 = phi ptr [ %bits11, %for.body.for.body_crit_edge ], [ %bits11353, %for.body.preheader ]
  %idxprom357 = phi i32 [ %idxprom, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bits.0356 = phi i64 [ %shr28, %for.body.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %storemerge355 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv16 = zext i8 %14 to i32
  %notmask = shl nsw i32 -1, %conv16
  %sub = xor i32 %notmask, -1
  %15 = trunc i64 %bits.0356 to i32
  %conv18 = and i32 %sub, %15
  %arrayidx21 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom357
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv18, ptr %arrayidx21, align 4
  %17 = ptrtoint ptr %bits11358 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits11358, align 4
  %sh_prom27 = zext i8 %18 to i64
  %shr28 = lshr i64 %bits.0356, %sh_prom27
  %inc = add i16 %storemerge355, 1
  %19 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %inc, ptr %lvl, align 2
  %idxprom = zext i16 %inc to i32
  %bits11 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %bits11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bits11, align 4
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %storemerge.lcssa = phi i16 [ -1, %entry.for.end_crit_edge ], [ %storemerge355, %for.body.for.end_crit_edge ]
  %max = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %22 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %storemerge.lcssa, ptr %max, align 8
  %pd = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 8
  %23 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pd, align 8
  %idxprom32 = zext i16 %storemerge.lcssa to i32
  %arrayidx33 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %idxprom32
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx33, align 4
  %26 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %lvl, align 2
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf) #11
  %27 = call ptr @memset(ptr %_buf, i32 255, i32 35)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %lvl.017.i = phi i32 [ %idxprom32, %for.end ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %buf.addr.016.i = phi ptr [ %_buf, %for.end ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %lvl, align 2
  %conv3.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i, i32 %conv3.i)
  %cmp4.not.i = icmp ult i32 %lvl.017.i, %conv3.i
  br i1 %cmp4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i, ptr noundef nonnull @.str.28, i32 noundef %31) #11
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = call ptr @memcpy(ptr %buf.addr.016.i, ptr @.str.29, i32 7)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %call.sink.i = phi i32 [ %call.i, %if.then.i ], [ 6, %if.else.i ]
  %add.ptr.i = getelementptr i8, ptr %buf.addr.016.i, i32 %call.sink.i
  %dec.i = add nsw i32 %lvl.017.i, -1
  %cmp.i = icmp sgt i32 %lvl.017.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %nvkm_vmm_trace.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

nvkm_vmm_trace.exit:                              ; preds = %for.inc.i
  %33 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vmm5, align 8
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp = icmp ugt i32 %36, 4
  br i1 %cmp, label %do.end, label %nvkm_vmm_trace.exit.if.end53_crit_edge

nvkm_vmm_trace.exit.if.end53_crit_edge:           ; preds = %nvkm_vmm_trace.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.end:                                           ; preds = %nvkm_vmm_trace.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %38, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %name44 = getelementptr inbounds %struct.nvkm_mmu, ptr %38, i32 0, i32 1, i32 4
  %name46 = getelementptr inbounds %struct.nvkm_vmm, ptr %34, i32 0, i32 2
  %43 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name46, align 8
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %page, align 4
  %conv49 = zext i8 %46 to i32
  %47 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %cnt, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.73, ptr noundef %name44, ptr noundef %44, ptr noundef nonnull %_buf, ptr noundef %name, i64 noundef %addr, i64 noundef %size, i32 noundef %conv49, i64 noundef %48) #16
  br label %if.end53

if.end53:                                         ; preds = %do.end, %nvkm_vmm_trace.exit.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf) #11
  %49 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max, align 8
  %51 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %lvl, align 2
  %52 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool61.not371 = icmp eq i64 %53, 0
  br i1 %tobool61.not371, label %if.end53.while.end185_crit_edge, label %while.body.lr.ph

if.end53.while.end185_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end185

while.body.lr.ph:                                 ; preds = %if.end53
  %pte72 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6
  %tobool126.not = icmp eq ptr %REF_PTES, null
  %tobool134.not = icmp eq ptr %MAP_PTES, null
  %tobool136.not = icmp eq ptr %CLR_PTES, null
  %or.cond = and i1 %tobool134.not, %tobool136.not
  br label %while.body

while.body:                                       ; preds = %cleanup178.while.body_crit_edge, %while.body.lr.ph
  %54 = phi i64 [ %53, %while.body.lr.ph ], [ %254, %cleanup178.while.body_crit_edge ]
  %55 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %lvl, align 2
  %idxprom64 = zext i16 %56 to i32
  %arrayidx65 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %idxprom64
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx65, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp67 = icmp eq i32 %60, 2
  %conv68 = zext i1 %cmp67 to i32
  %61 = ptrtoint ptr %bits11353 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bits11353, align 4
  %conv70 = zext i8 %62 to i32
  %shl71 = shl nuw i32 1, %conv70
  %63 = ptrtoint ptr %pte72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pte72, align 4
  %sub75 = sub i32 %shl71, %64
  %conv76 = zext i32 %sub75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %conv76)
  %cmp77 = icmp ult i64 %54, %conv76
  %extract.t = trunc i64 %54 to i32
  %cond.off0 = select i1 %cmp77, i32 %extract.t, i32 %sub75
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool82.not359 = icmp eq i16 %56, 0
  br i1 %tobool82.not359, label %while.body.for.end125_crit_edge, label %while.body.for.body83_crit_edge

while.body.for.body83_crit_edge:                  ; preds = %while.body
  br label %for.body83

while.body.for.end125_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

for.body83:                                       ; preds = %for.inc122.for.body83_crit_edge, %while.body.for.body83_crit_edge
  %pgt.0360 = phi ptr [ %221, %for.inc122.for.body83_crit_edge ], [ %58, %while.body.for.body83_crit_edge ]
  %65 = phi i16 [ %dec124, %for.inc122.for.body83_crit_edge ], [ %56, %while.body.for.body83_crit_edge ]
  %idxprom86 = zext i16 %65 to i32
  %arrayidx87 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom86
  %66 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx87, align 4
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgt.0360, i32 0, i32 4
  %68 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pde, align 4
  %arrayidx90 = getelementptr ptr, ptr %69, i32 %67
  %70 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx90, align 4
  br i1 %ref, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %for.body83
  %tobool.not.i = icmp eq ptr %71, null
  %cmp.i273 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i273
  br i1 %spec.select.i, label %if.then92, label %land.lhs.true.land.lhs.true106_crit_edge

land.lhs.true.land.lhs.true106_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true106

if.then92:                                        ; preds = %land.lhs.true
  %72 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc4, align 4
  %sub.i = add nsw i32 %idxprom86, -1
  %arrayidx.i275 = getelementptr %struct.nvkm_vmm_desc, ptr %73, i32 %sub.i
  %74 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %it, align 8
  %bits.i.i = getelementptr %struct.nvkm_vmm_desc, ptr %73, i32 %sub.i, i32 1
  %76 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bits.i.i, align 4
  %conv.i.i = zext i8 %77 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %78 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i19.i = icmp ugt i32 %79, 1
  br i1 %cmp.i19.i, label %if.then.i.i, label %if.then92.if.end8.i.i.i.i_crit_edge

if.then92.if.end8.i.i.i.i_crit_edge:              ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp3.i.i = icmp eq i32 %79, 2
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.then.i.i.if.end8.i.i.i.i_crit_edge

if.then.i.i.if.end8.i.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %desc6.i.i = getelementptr %struct.nvkm_vmm_page, ptr %75, i32 -1, i32 1
  %80 = ptrtoint ptr %desc6.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc6.i.i, align 4
  %bits9.i.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %bits9.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bits9.i.i, align 4
  %conv10.i.i = zext i8 %83 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv10.i.i
  %shr.i.i = lshr i32 %shl.i.i, %sub.i.i
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then5.i.i, %if.then.i.i.if.end8.i.i.i.i_crit_edge, %if.then92.if.end8.i.i.i.i_crit_edge
  %lpte.0.i.i = phi i32 [ %shr.i.i, %if.then5.i.i ], [ 0, %if.then92.if.end8.i.i.i.i_crit_edge ], [ %shl.i.i, %if.then.i.i.if.end8.i.i.i.i_crit_edge ]
  %add.i.i = add i32 %lpte.0.i.i, 24
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.i.if.then.i277_crit_edge, label %if.end13.i.i

if.end8.i.i.i.i.if.then.i277_crit_edge:           ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i277

if.end13.i.i:                                     ; preds = %if.end8.i.i.i.i
  %tobool14.not.i.i = icmp eq ptr %75, null
  br i1 %tobool14.not.i.i, label %if.end13.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end13.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %75, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end13.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i8 [ %85, %cond.true.i.i ], [ 0, %if.end13.i.i.cond.end.i.i_crit_edge ]
  %page17.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %page17.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %cond.i.i, ptr %page17.i.i, align 16
  %sparse19.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %sparse19.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %sparse19.i.i, align 1
  %bf.shl.i.i = select i1 %cmp.i273, i8 -128, i8 0
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %sparse19.i.i, align 1
  %88 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp22.i.i = icmp eq i32 %89, 0
  br i1 %cmp22.i.i, label %if.then24.i.i, label %cond.end.i.i.nvkm_vmm_ref_swpt.exit_crit_edge

cond.end.i.i.nvkm_vmm_ref_swpt.exit_crit_edge:    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ref_swpt.exit

if.then24.i.i:                                    ; preds = %cond.end.i.i
  %90 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 4) #11
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %kvcalloc.exit.thread.i.i, label %kvcalloc.exit.i.i, !prof !153

kvcalloc.exit.thread.i.i:                         ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pde51.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %pde51.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %pde51.i.i, align 4
  br label %if.then28.i.i

kvcalloc.exit.i.i:                                ; preds = %if.then24.i.i
  %93 = extractvalue { i32, i1 } %90, 0
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %93, i32 noundef 3520, i32 noundef -1) #15
  %pde.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %call9.i.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %pde.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i.i.i.i, ptr %pde.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool27.not.i.i, label %kvcalloc.exit.i.i.if.then28.i.i_crit_edge, label %kvcalloc.exit.i.i.nvkm_vmm_ref_swpt.exit_crit_edge

kvcalloc.exit.i.i.nvkm_vmm_ref_swpt.exit_crit_edge: ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ref_swpt.exit

kvcalloc.exit.i.i.if.then28.i.i_crit_edge:        ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %kvcalloc.exit.i.i.if.then28.i.i_crit_edge, %kvcalloc.exit.thread.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %if.then.i277

if.then.i277:                                     ; preds = %if.then28.i.i, %if.end8.i.i.i.i.if.then.i277_crit_edge
  %refs.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgt.0360, i32 0, i32 1
  %95 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool5.not.i = icmp eq i32 %96, 0
  br i1 %tobool5.not.i, label %if.then.i277.fail.sink.split_crit_edge, label %if.then.i277.fail_crit_edge

if.then.i277.fail_crit_edge:                      ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then.i277.fail.sink.split_crit_edge:           ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split

nvkm_vmm_ref_swpt.exit:                           ; preds = %kvcalloc.exit.i.i.nvkm_vmm_ref_swpt.exit_crit_edge, %cond.end.i.i.nvkm_vmm_ref_swpt.exit_crit_edge
  %97 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pde, align 4
  %arrayidx9.i = getelementptr ptr, ptr %98, i32 %67
  %99 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call9.i.i.i.i, ptr %arrayidx9.i, align 4
  br label %land.lhs.true106

if.end96:                                         ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %lvl, align 2
  %conv101 = zext i16 %101 to i32
  %sub102 = add nsw i32 %conv101, -1
  %arrayidx103 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %sub102
  %102 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %71, ptr %arrayidx103, align 4
  br label %for.inc122

land.lhs.true106:                                 ; preds = %nvkm_vmm_ref_swpt.exit, %land.lhs.true.land.lhs.true106_crit_edge
  %103 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pde, align 4
  %arrayidx98332 = getelementptr ptr, ptr %104, i32 %67
  %105 = ptrtoint ptr %arrayidx98332 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx98332, align 4
  %107 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %lvl, align 2
  %conv101333 = zext i16 %108 to i32
  %sub102334 = add nsw i32 %conv101333, -1
  %arrayidx103335 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %sub102334
  %109 = ptrtoint ptr %arrayidx103335 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %arrayidx103335, align 4
  %arrayidx110 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %sub102334
  %110 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp112 = icmp eq i32 %111, 2
  %conv113 = zext i1 %cmp112 to i32
  %arrayidx114 = getelementptr %struct.nvkm_vmm_pt, ptr %106, i32 0, i32 1, i32 %conv113
  %112 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool115.not = icmp eq i32 %113, 0
  br i1 %tobool115.not, label %if.then116, label %land.lhs.true106.for.inc122_crit_edge

land.lhs.true106.for.inc122_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc122

if.then116:                                       ; preds = %land.lhs.true106
  %114 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc4, align 4
  %arrayidx.i282 = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334
  %116 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp.i283 = icmp eq i32 %117, 2
  %conv3.i284 = zext i1 %cmp.i283 to i32
  %118 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pde, align 4
  %arrayidx4.i = getelementptr ptr, ptr %119, i32 %67
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx4.i, align 4
  %sparse.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i = load i8, ptr %sparse.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %land.rhs.i, label %if.then116.land.end.i_crit_edge

if.then116.land.end.i_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  %func.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 4
  %123 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %func.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %tobool.not.i286 = icmp eq ptr %126, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then116.land.end.i_crit_edge
  %127 = phi i1 [ false, %if.then116.land.end.i_crit_edge ], [ %tobool.not.i286, %land.rhs.i ]
  %128 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vmm5, align 8
  %mmu6.i = getelementptr inbounds %struct.nvkm_vmm, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %mmu6.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmu6.i, align 4
  %bits.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 1
  %132 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bits.i, align 4
  %conv7.i = zext i8 %133 to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %size8.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 2
  %134 = ptrtoint ptr %size8.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %size8.i, align 1
  %conv9.i = zext i8 %135 to i32
  %mul.i = shl i32 %conv9.i, %conv7.i
  %refs.i287 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgt.0360, i32 0, i32 1
  %136 = ptrtoint ptr %refs.i287 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %refs.i287, align 4
  %inc.i = add i32 %137, 1
  store i32 %inc.i, ptr %refs.i287, align 4
  %align.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 3
  %138 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %align.i, align 4
  %call.i288 = call ptr @nvkm_mmu_ptc_get(ptr noundef %131, i32 noundef %mul.i, i32 noundef %139, i1 noundef zeroext %127) #11
  %arrayidx13.i = getelementptr [2 x ptr], ptr %121, i32 0, i32 %conv3.i284
  %140 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i288, ptr %arrayidx13.i, align 4
  %tobool16.not.i = icmp eq ptr %call.i288, null
  br i1 %tobool16.not.i, label %nvkm_vmm_ref_hwpt.exit.thread, label %if.end.i

nvkm_vmm_ref_hwpt.exit.thread:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %lvl, align 2
  %dec.i289 = add i16 %142, -1
  store i16 %dec.i289, ptr %lvl, align 2
  br label %fail.sink.split

if.end.i:                                         ; preds = %land.end.i
  br i1 %127, label %if.end.i.do.body.i_crit_edge, label %if.end20.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end20.i:                                       ; preds = %if.end.i
  %143 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %144)
  %cmp24.i = icmp eq i32 %144, 3
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.end20.i.if.else83.i_crit_edge

if.end20.i.if.else83.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %arrayidx27.i = getelementptr %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool28.not.i = icmp eq i32 %146, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.else83.i_crit_edge, label %for.cond.preheader.i

land.lhs.true.i.if.else83.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %func64.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 4
  br label %for.body.i291

for.body.i291:                                    ; preds = %if.end80.i.for.body.i291_crit_edge, %for.cond.preheader.i
  %ptei.0225.i = phi i32 [ 0, %for.cond.preheader.i ], [ %ptei.1.lcssa.i, %if.end80.i.for.body.i291_crit_edge ]
  %arrayidx32.i = getelementptr %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 5, i32 %ptei.0225.i
  %147 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx32.i, align 1
  %149 = and i8 %148, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool34.i = icmp ne i8 %149, 0
  %ptei.1215.i = add nuw i32 %ptei.0225.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ptei.1215.i, i32 %shl.i)
  %cmp38216.i = icmp ult i32 %ptei.1215.i, %shl.i
  br i1 %cmp38216.i, label %for.body40.preheader.i, label %for.body.i291.for.end.i_crit_edge

for.body.i291.for.end.i_crit_edge:                ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body40.preheader.i:                           ; preds = %for.body.i291
  %150 = sub i32 %shl.i, %ptei.0225.i
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc.i292.for.body40.i_crit_edge, %for.body40.preheader.i
  %ptei.1218.i = phi i32 [ %ptei.1.i, %for.inc.i292.for.body40.i_crit_edge ], [ %ptei.1215.i, %for.body40.preheader.i ]
  %ptes.0217.i = phi i32 [ %inc55.i, %for.inc.i292.for.body40.i_crit_edge ], [ 1, %for.body40.preheader.i ]
  %arrayidx42.i = getelementptr %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 5, i32 %ptei.1218.i
  %151 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx42.i, align 1
  %153 = and i8 %152, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool45.i = icmp eq i8 %153, 0
  %cmp51.not.i = xor i1 %tobool34.i, %tobool45.i
  br i1 %cmp51.not.i, label %for.inc.i292, label %for.body40.i.for.end.i_crit_edge

for.body40.i.for.end.i_crit_edge:                 ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i292:                                     ; preds = %for.body40.i
  %inc55.i = add i32 %ptes.0217.i, 1
  %ptei.1.i = add i32 %ptei.1218.i, 1
  %exitcond.not.i = icmp eq i32 %ptei.1.i, %shl.i
  br i1 %exitcond.not.i, label %for.inc.i292.for.end.i_crit_edge, label %for.inc.i292.for.body40.i_crit_edge

for.inc.i292.for.body40.i_crit_edge:              ; preds = %for.inc.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40.i

for.inc.i292.for.end.i_crit_edge:                 ; preds = %for.inc.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i292.for.end.i_crit_edge, %for.body40.i.for.end.i_crit_edge, %for.body.i291.for.end.i_crit_edge
  %ptes.0.lcssa.i = phi i32 [ 1, %for.body.i291.for.end.i_crit_edge ], [ %150, %for.inc.i292.for.end.i_crit_edge ], [ %ptes.0217.i, %for.body40.i.for.end.i_crit_edge ]
  %ptei.1.lcssa.i = phi i32 [ %ptei.1215.i, %for.body.i291.for.end.i_crit_edge ], [ %shl.i, %for.inc.i292.for.end.i_crit_edge ], [ %ptei.1218.i, %for.body40.i.for.end.i_crit_edge ]
  br i1 %tobool34.i, label %if.else71.i, label %if.then58.i

if.then58.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load60.i = load i8, ptr %sparse.i, align 1
  %155 = ptrtoint ptr %func64.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %func64.i, align 4
  %sparse65.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %156, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load60.i)
  %bf.cast62.not227.i = icmp slt i8 %bf.load60.i, 0
  %.sink226.i = select i1 %bf.cast62.not227.i, ptr %sparse65.i, ptr %156
  %157 = ptrtoint ptr %.sink226.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %.sink226.i, align 4
  call void %158(ptr noundef %129, ptr noundef nonnull %call.i288, i32 noundef %ptei.0225.i, i32 noundef %ptes.0.lcssa.i) #11
  %159 = call ptr @memset(ptr %arrayidx32.i, i32 0, i32 %ptes.0.lcssa.i)
  br label %if.end80.i

if.else71.i:                                      ; preds = %for.end.i
  %160 = ptrtoint ptr %func64.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %func64.i, align 4
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %unmap.i, align 4
  call void %163(ptr noundef %129, ptr noundef nonnull %call.i288, i32 noundef %ptei.0225.i, i32 noundef %ptes.0.lcssa.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes.0.lcssa.i)
  %tobool74.not222.i = icmp eq i32 %ptes.0.lcssa.i, 0
  br i1 %tobool74.not222.i, label %if.else71.i.if.end80.i_crit_edge, label %if.else71.i.while.body.i_crit_edge

if.else71.i.while.body.i_crit_edge:               ; preds = %if.else71.i
  br label %while.body.i

if.else71.i.if.end80.i_crit_edge:                 ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else71.i.while.body.i_crit_edge
  %ptes.1224.i = phi i32 [ %dec73.i, %while.body.i.while.body.i_crit_edge ], [ %ptes.0.lcssa.i, %if.else71.i.while.body.i_crit_edge ]
  %pteb.1223.i = phi i32 [ %inc76.i, %while.body.i.while.body.i_crit_edge ], [ %ptei.0225.i, %if.else71.i.while.body.i_crit_edge ]
  %dec73.i = add i32 %ptes.1224.i, -1
  %inc76.i = add i32 %pteb.1223.i, 1
  %arrayidx77.i = getelementptr %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 5, i32 %pteb.1223.i
  %164 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx77.i, align 1
  %166 = or i8 %165, 64
  store i8 %166, ptr %arrayidx77.i, align 1
  %tobool74.not.i = icmp eq i32 %dec73.i, 0
  br i1 %tobool74.not.i, label %while.body.i.if.end80.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.if.end80.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i

if.end80.i:                                       ; preds = %while.body.i.if.end80.i_crit_edge, %if.else71.i.if.end80.i_crit_edge, %if.then58.i
  %cmp30.i = icmp ult i32 %ptei.1.lcssa.i, %shl.i
  br i1 %cmp30.i, label %if.end80.i.for.body.i291_crit_edge, label %if.end80.i.do.body.i_crit_edge

if.end80.i.do.body.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end80.i.for.body.i291_crit_edge:               ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i291

if.else83.i:                                      ; preds = %land.lhs.true.i.if.else83.i_crit_edge, %if.end20.i.if.else83.i_crit_edge
  %167 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load85.i = load i8, ptr %sparse.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load85.i)
  %bf.cast87.not.i = icmp sgt i8 %bf.load85.i, -1
  br i1 %bf.cast87.not.i, label %if.else91.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.else83.i
  %168 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values)
  switch i32 %144, label %if.then88.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge [
    i32 0, label %while.cond.preheader.i.i
    i32 3, label %if.then3.i.i
  ]

if.then88.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge: ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_sparse_ptes.exit.i

while.cond.preheader.i.i:                         ; preds = %if.then88.i
  %pde.i.i293 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i
  %ptes.addr.012.i.i = phi i32 [ %shl.i, %while.cond.preheader.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %ptei.addr.011.i.i = phi i32 [ 0, %while.cond.preheader.i.i ], [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %ptes.addr.012.i.i, -1
  %169 = ptrtoint ptr %pde.i.i293 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pde.i.i293, align 4
  %inc.i.i = add i32 %ptei.addr.011.i.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %170, i32 %ptei.addr.011.i.i
  %171 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr inttoptr (i32 -16 to ptr), ptr %arrayidx.i.i, align 4
  %tobool.not.i.i294 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i294, label %while.body.i.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_sparse_ptes.exit.i

if.then3.i.i:                                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i = getelementptr %struct.nvkm_vmm_pt, ptr %121, i32 0, i32 5, i32 0
  %172 = call ptr @memset(ptr %arrayidx4.i.i, i32 128, i32 %shl.i)
  br label %nvkm_vmm_sparse_ptes.exit.i

nvkm_vmm_sparse_ptes.exit.i:                      ; preds = %if.then3.i.i, %while.body.i.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge, %if.then88.i.nvkm_vmm_sparse_ptes.exit.i_crit_edge
  %func89.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 4
  %173 = ptrtoint ptr %func89.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %func89.i, align 4
  %sparse90.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %174, i32 0, i32 2
  br label %do.body.sink.split.i

if.else91.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #13
  %func92.i = getelementptr %struct.nvkm_vmm_desc, ptr %115, i32 %sub102334, i32 4
  %175 = ptrtoint ptr %func92.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %func92.i, align 4
  br label %do.body.sink.split.i

do.body.sink.split.i:                             ; preds = %if.else91.i, %nvkm_vmm_sparse_ptes.exit.i
  %sparse90.sink.i = phi ptr [ %sparse90.i, %nvkm_vmm_sparse_ptes.exit.i ], [ %176, %if.else91.i ]
  %177 = ptrtoint ptr %sparse90.sink.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sparse90.sink.i, align 4
  call void %178(ptr noundef %129, ptr noundef nonnull %call.i288, i32 noundef 0, i32 noundef %shl.i) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %if.end80.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i) #11
  %179 = call ptr @memset(ptr %_buf.i, i32 255, i32 35)
  %180 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %max, align 8
  %conv.i.i295 = zext i16 %181 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i
  %lvl.017.i.i = phi i32 [ %conv.i.i295, %do.body.i ], [ %dec.i212.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buf.addr.016.i.i = phi ptr [ %_buf.i, %do.body.i ], [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %182 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %lvl, align 2
  %conv3.i.i = zext i16 %183 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i, i32 %conv3.i.i)
  %cmp4.not.i.i = icmp ult i32 %lvl.017.i.i, %conv3.i.i
  br i1 %cmp4.not.i.i, label %if.else.i.i, label %if.then.i.i296

if.then.i.i296:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i211.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i
  %184 = ptrtoint ptr %arrayidx.i211.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i211.i, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i, ptr noundef nonnull @.str.28, i32 noundef %185) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %186 = call ptr @memcpy(ptr %buf.addr.016.i.i, ptr @.str.29, i32 7)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i296
  %call.sink.i.i = phi i32 [ %call.i.i, %if.then.i.i296 ], [ 6, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.016.i.i, i32 %call.sink.i.i
  %dec.i212.i = add nsw i32 %lvl.017.i.i, -1
  %cmp.i.i297 = icmp sgt i32 %lvl.017.i.i, 0
  br i1 %cmp.i.i297, label %for.inc.i.i.for.body.i.i_crit_edge, label %nvkm_vmm_trace.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvkm_vmm_trace.exit.i:                            ; preds = %for.inc.i.i
  %187 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %vmm5, align 8
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %190)
  %cmp98.i = icmp ugt i32 %190, 4
  br i1 %cmp98.i, label %do.end.i, label %nvkm_vmm_trace.exit.i.nvkm_vmm_ref_hwpt.exit_crit_edge

nvkm_vmm_trace.exit.i.nvkm_vmm_ref_hwpt.exit_crit_edge: ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_ref_hwpt.exit

do.end.i:                                         ; preds = %nvkm_vmm_trace.exit.i
  %mmu102.i = getelementptr inbounds %struct.nvkm_vmm, ptr %188, i32 0, i32 1
  %191 = ptrtoint ptr %mmu102.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmu102.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %192, i32 0, i32 1, i32 1
  %193 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %192, i32 0, i32 1, i32 4
  %name109.i = getelementptr inbounds %struct.nvkm_vmm, ptr %188, i32 0, i32 2
  %197 = ptrtoint ptr %name109.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %name109.i, align 8
  %199 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %200)
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %switch.lookup, label %do.end.i.nvkm_vmm_desc_type.exit.i_crit_edge

do.end.i.nvkm_vmm_desc_type.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_desc_type.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.nvkm_vmm_iter, i32 0, i32 %200
  %202 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %202)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvkm_vmm_desc_type.exit.i

nvkm_vmm_desc_type.exit.i:                        ; preds = %switch.lookup, %do.end.i.nvkm_vmm_desc_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.34, %do.end.i.nvkm_vmm_desc_type.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %196, ptr noundef nonnull @.str.75, ptr noundef %name.i, ptr noundef %198, ptr noundef nonnull %_buf.i, ptr noundef nonnull %retval.0.i.i) #16
  br label %nvkm_vmm_ref_hwpt.exit

nvkm_vmm_ref_hwpt.exit:                           ; preds = %nvkm_vmm_desc_type.exit.i, %nvkm_vmm_trace.exit.i.nvkm_vmm_ref_hwpt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i) #11
  %203 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %desc4, align 4
  %205 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %lvl, align 2
  %idxprom.i = zext i16 %206 to i32
  %func123.i = getelementptr %struct.nvkm_vmm_desc, ptr %204, i32 %idxprom.i, i32 4
  %207 = ptrtoint ptr %func123.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %func123.i, align 4
  %pde124.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %pde124.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pde124.i, align 4
  %211 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %vmm5, align 8
  call void %210(ptr noundef %212, ptr noundef %pgt.0360, i32 noundef %67) #11
  %213 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %flush, align 4
  %215 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %max, align 8
  %conv.i214.i = zext i16 %216 to i32
  %217 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %lvl, align 2
  %conv1.i.i = zext i16 %218 to i32
  %sub.i.i298 = sub nsw i32 %conv.i214.i, %conv1.i.i
  %219 = call i32 @llvm.smin.i32(i32 %214, i32 %sub.i.i298) #11
  %220 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %flush, align 4
  br label %for.inc122

for.inc122:                                       ; preds = %nvkm_vmm_ref_hwpt.exit, %land.lhs.true106.for.inc122_crit_edge, %if.end96
  %221 = phi ptr [ %106, %nvkm_vmm_ref_hwpt.exit ], [ %106, %land.lhs.true106.for.inc122_crit_edge ], [ %71, %if.end96 ]
  %222 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %lvl, align 2
  %dec124 = add i16 %223, -1
  store i16 %dec124, ptr %lvl, align 2
  %tobool82.not = icmp eq i16 %dec124, 0
  br i1 %tobool82.not, label %for.inc122.for.end125_crit_edge, label %for.inc122.for.body83_crit_edge

for.inc122.for.body83_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83

for.inc122.for.end125_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

for.end125:                                       ; preds = %for.inc122.for.end125_crit_edge, %while.body.for.end125_crit_edge
  %pgt.0.lcssa = phi ptr [ %58, %while.body.for.end125_crit_edge ], [ %221, %for.inc122.for.end125_crit_edge ]
  br i1 %tobool126.not, label %for.end125.if.then130_crit_edge, label %lor.lhs.false

for.end125.if.then130_crit_edge:                  ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then130

lor.lhs.false:                                    ; preds = %for.end125
  %call128 = call zeroext i1 %REF_PTES(ptr noundef nonnull %it, i1 noundef zeroext %pfn, i32 noundef %64, i32 noundef %cond.off0) #11
  br i1 %call128, label %lor.lhs.false.if.then130_crit_edge, label %lor.lhs.false.if.end142_crit_edge

lor.lhs.false.if.end142_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

lor.lhs.false.if.then130_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then130

if.then130:                                       ; preds = %lor.lhs.false.if.then130_crit_edge, %for.end125.if.then130_crit_edge
  %arrayidx133 = getelementptr [2 x ptr], ptr %pgt.0.lcssa, i32 0, i32 %conv68
  %224 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx133, align 4
  br i1 %or.cond, label %if.then130.if.end142_crit_edge, label %if.then137

if.then130.if.end142_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then137:                                       ; preds = %if.then130
  br i1 %tobool134.not, label %if.else, label %if.then139

if.then139:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  call void %MAP_PTES(ptr noundef %vmm, ptr noundef %225, i32 noundef %64, i32 noundef %cond.off0, ptr noundef %map) #11
  br label %if.end140

if.else:                                          ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  call void %CLR_PTES(ptr noundef %vmm, ptr noundef %225, i32 noundef %64, i32 noundef %cond.off0) #11
  br label %if.end140

if.end140:                                        ; preds = %if.else, %if.then139
  %226 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %flush, align 4
  %228 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %max, align 8
  %conv.i300 = zext i16 %229 to i32
  %230 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %lvl, align 2
  %conv1.i = zext i16 %231 to i32
  %sub.i302 = sub nsw i32 %conv.i300, %conv1.i
  %232 = call i32 @llvm.smin.i32(i32 %227, i32 %sub.i302) #11
  %233 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %flush, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.end140, %if.then130.if.end142_crit_edge, %lor.lhs.false.if.end142_crit_edge
  %234 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %lvl, align 2
  %idxprom145 = zext i16 %235 to i32
  %arrayidx146 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom145
  %236 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx146, align 4
  %add = add i32 %237, %cond.off0
  store i32 %add, ptr %arrayidx146, align 4
  %conv147 = zext i32 %cond.off0 to i64
  %238 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %cnt, align 8
  %sub149 = sub i64 %239, %conv147
  store i64 %sub149, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %239, i64 %conv147)
  %tobool151.not = icmp eq i64 %239, %conv147
  br i1 %tobool151.not, label %if.end142.cleanup178_crit_edge, label %while.cond153.preheader

if.end142.cleanup178_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178

while.cond153.preheader:                          ; preds = %if.end142
  %240 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %lvl, align 2
  %idxprom156364 = zext i16 %241 to i32
  %arrayidx157365 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom156364
  %242 = ptrtoint ptr %arrayidx157365 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx157365, align 4
  %bits161366 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %idxprom156364, i32 1
  %244 = ptrtoint ptr %bits161366 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %bits161366, align 4
  %conv162367 = zext i8 %245 to i32
  %shl163368 = shl nuw i32 1, %conv162367
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %shl163368)
  %cmp164369 = icmp eq i32 %243, %shl163368
  br i1 %cmp164369, label %while.cond153.preheader.while.body166_crit_edge, label %while.cond153.preheader.cleanup178thread-pre-split_crit_edge

while.cond153.preheader.cleanup178thread-pre-split_crit_edge: ; preds = %while.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178thread-pre-split

while.cond153.preheader.while.body166_crit_edge:  ; preds = %while.cond153.preheader
  br label %while.body166

while.body166:                                    ; preds = %while.body166.while.body166_crit_edge, %while.cond153.preheader.while.body166_crit_edge
  %arrayidx157370 = phi ptr [ %arrayidx175, %while.body166.while.body166_crit_edge ], [ %arrayidx157365, %while.cond153.preheader.while.body166_crit_edge ]
  %246 = phi i16 [ %inc169, %while.body166.while.body166_crit_edge ], [ %241, %while.cond153.preheader.while.body166_crit_edge ]
  %inc169 = add i16 %246, 1
  %247 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %inc169, ptr %lvl, align 2
  %248 = ptrtoint ptr %arrayidx157370 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %arrayidx157370, align 4
  %idxprom174 = zext i16 %inc169 to i32
  %arrayidx175 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom174
  %249 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx175, align 4
  %inc176 = add i32 %250, 1
  store i32 %inc176, ptr %arrayidx175, align 4
  %bits161 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %idxprom174, i32 1
  %251 = ptrtoint ptr %bits161 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %bits161, align 4
  %conv162 = zext i8 %252 to i32
  %shl163 = shl nuw i32 1, %conv162
  %cmp164 = icmp eq i32 %inc176, %shl163
  br i1 %cmp164, label %while.body166.while.body166_crit_edge, label %while.body166.cleanup178thread-pre-split_crit_edge

while.body166.cleanup178thread-pre-split_crit_edge: ; preds = %while.body166
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178thread-pre-split

while.body166.while.body166_crit_edge:            ; preds = %while.body166
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body166

cleanup178thread-pre-split:                       ; preds = %while.body166.cleanup178thread-pre-split_crit_edge, %while.cond153.preheader.cleanup178thread-pre-split_crit_edge
  %253 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %253)
  %.pr = load i64, ptr %cnt, align 8
  br label %cleanup178

cleanup178:                                       ; preds = %cleanup178thread-pre-split, %if.end142.cleanup178_crit_edge
  %254 = phi i64 [ %.pr, %cleanup178thread-pre-split ], [ %sub149, %if.end142.cleanup178_crit_edge ]
  %tobool61.not = icmp eq i64 %254, 0
  br i1 %tobool61.not, label %cleanup178.while.end185_crit_edge, label %cleanup178.while.body_crit_edge

cleanup178.while.body_crit_edge:                  ; preds = %cleanup178
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup178.while.end185_crit_edge:                ; preds = %cleanup178
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end185

while.end185:                                     ; preds = %cleanup178.while.end185_crit_edge, %if.end53.while.end185_crit_edge
  %255 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %256)
  %cmp.not.i = icmp eq i32 %256, 5
  br i1 %cmp.not.i, label %while.end185.cleanup214_crit_edge, label %if.then.i306

while.end185.cleanup214_crit_edge:                ; preds = %while.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup214

if.then.i306:                                     ; preds = %while.end185
  %257 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %vmm5, align 8
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 8
  %flush1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %260, i32 0, i32 4
  %261 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %flush1.i, align 8
  %tobool.not.i305 = icmp eq ptr %262, null
  br i1 %tobool.not.i305, label %if.then.i306.cleanup214_crit_edge, label %do.body.i309

if.then.i306.cleanup214_crit_edge:                ; preds = %if.then.i306
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup214

do.body.i309:                                     ; preds = %if.then.i306
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i303) #11
  %263 = call ptr @memset(ptr %_buf.i303, i32 255, i32 35)
  %264 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %max, align 8
  %conv.i.i308 = zext i16 %265 to i32
  br label %for.body.i.i314

for.body.i.i314:                                  ; preds = %for.inc.i.i323.for.body.i.i314_crit_edge, %do.body.i309
  %lvl.017.i.i310 = phi i32 [ %conv.i.i308, %do.body.i309 ], [ %dec.i.i321, %for.inc.i.i323.for.body.i.i314_crit_edge ]
  %buf.addr.016.i.i311 = phi ptr [ %_buf.i303, %do.body.i309 ], [ %add.ptr.i.i320, %for.inc.i.i323.for.body.i.i314_crit_edge ]
  %266 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %lvl, align 2
  %conv3.i.i312 = zext i16 %267 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i310, i32 %conv3.i.i312)
  %cmp4.not.i.i313 = icmp ult i32 %lvl.017.i.i310, %conv3.i.i312
  br i1 %cmp4.not.i.i313, label %if.else.i.i318, label %if.then.i.i317

if.then.i.i317:                                   ; preds = %for.body.i.i314
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i315 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i310
  %268 = ptrtoint ptr %arrayidx.i.i315 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.i.i315, align 4
  %call.i.i316 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i311, ptr noundef nonnull @.str.28, i32 noundef %269) #11
  br label %for.inc.i.i323

if.else.i.i318:                                   ; preds = %for.body.i.i314
  call void @__sanitizer_cov_trace_pc() #13
  %270 = call ptr @memcpy(ptr %buf.addr.016.i.i311, ptr @.str.29, i32 7)
  br label %for.inc.i.i323

for.inc.i.i323:                                   ; preds = %if.else.i.i318, %if.then.i.i317
  %call.sink.i.i319 = phi i32 [ %call.i.i316, %if.then.i.i317 ], [ 6, %if.else.i.i318 ]
  %add.ptr.i.i320 = getelementptr i8, ptr %buf.addr.016.i.i311, i32 %call.sink.i.i319
  %dec.i.i321 = add nsw i32 %lvl.017.i.i310, -1
  %cmp.i.i322 = icmp sgt i32 %lvl.017.i.i310, 0
  br i1 %cmp.i.i322, label %for.inc.i.i323.for.body.i.i314_crit_edge, label %nvkm_vmm_trace.exit.i325

for.inc.i.i323.for.body.i.i314_crit_edge:         ; preds = %for.inc.i.i323
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i314

nvkm_vmm_trace.exit.i325:                         ; preds = %for.inc.i.i323
  %271 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %vmm5, align 8
  %debug.i324 = getelementptr inbounds %struct.nvkm_vmm, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %debug.i324 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %debug.i324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %274)
  %cmp5.i = icmp ugt i32 %274, 4
  br i1 %cmp5.i, label %do.end.i329, label %nvkm_vmm_trace.exit.i325.if.end18.i_crit_edge

nvkm_vmm_trace.exit.i325.if.end18.i_crit_edge:    ; preds = %nvkm_vmm_trace.exit.i325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.end.i329:                                      ; preds = %nvkm_vmm_trace.exit.i325
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %272, i32 0, i32 1
  %275 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mmu.i, align 4
  %device.i326 = getelementptr inbounds %struct.nvkm_mmu, ptr %276, i32 0, i32 1, i32 1
  %277 = ptrtoint ptr %device.i326 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %device.i326, align 4
  %dev.i327 = getelementptr inbounds %struct.nvkm_device, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %dev.i327 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i327, align 8
  %name.i328 = getelementptr inbounds %struct.nvkm_mmu, ptr %276, i32 0, i32 1, i32 4
  %name13.i = getelementptr inbounds %struct.nvkm_vmm, ptr %272, i32 0, i32 2
  %281 = ptrtoint ptr %name13.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %name13.i, align 8
  %283 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %flush, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %280, ptr noundef nonnull @.str.21, ptr noundef %name.i328, ptr noundef %282, ptr noundef nonnull %_buf.i303, i32 noundef %284) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i329, %nvkm_vmm_trace.exit.i325.if.end18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i303) #11
  %285 = ptrtoint ptr %vmm5 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %vmm5, align 8
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 8
  %flush25.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %flush25.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %flush25.i, align 8
  %291 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %flush, align 4
  call void %290(ptr noundef %286, i32 noundef %292) #11
  br label %cleanup214

fail.sink.split:                                  ; preds = %nvkm_vmm_ref_hwpt.exit.thread, %if.then.i277.fail.sink.split_crit_edge
  call fastcc void @nvkm_vmm_unref_pdes(ptr noundef nonnull %it) #11
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.then.i277.fail_crit_edge
  %293 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %max, align 8
  %dec188 = add i16 %294, -1
  store i16 %dec188, ptr %max, align 8
  %idxprom189 = zext i16 %294 to i32
  %arrayidx190 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %idxprom189
  %295 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx190, align 4
  %conv191 = zext i32 %296 to i64
  %297 = zext i16 %dec188 to i32
  br label %do.body192

do.body192:                                       ; preds = %do.body192.do.body192_crit_edge, %fail
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.body192.do.body192_crit_edge ], [ %297, %fail ]
  %addr.addr.0 = phi i64 [ %or, %do.body192.do.body192_crit_edge ], [ %conv191, %fail ]
  %bits196 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %indvars.iv, i32 1
  %298 = ptrtoint ptr %bits196 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %bits196, align 4
  %sh_prom198 = zext i8 %299 to i64
  %shl199 = shl i64 %addr.addr.0, %sh_prom198
  %arrayidx203 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %indvars.iv
  %300 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx203, align 4
  %conv204 = zext i32 %301 to i64
  %or = or i64 %shl199, %conv204
  %302 = trunc i32 %indvars.iv to i16
  %dec207 = add i16 %302, -1
  %303 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %dec207, ptr %max, align 8
  %tobool208.not = icmp eq i32 %indvars.iv, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %tobool208.not, label %do.end209, label %do.body192.do.body192_crit_edge

do.body192.do.body192_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body192

do.end209:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  %304 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %page, align 4
  %sh_prom212 = zext i8 %305 to i64
  %shl213 = shl i64 %or, %sh_prom212
  br label %cleanup214

cleanup214:                                       ; preds = %do.end209, %if.end18.i, %if.then.i306.cleanup214_crit_edge, %while.end185.cleanup214_crit_edge
  %retval.0 = phi i64 [ %shl213, %do.end209 ], [ -1, %while.end185.cleanup214_crit_edge ], [ -1, %if.end18.i ], [ -1, %if.then.i306.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %it) #11
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_boot_ptes(ptr nocapture noundef readonly %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %conv = zext i1 %cmp to i32
  %pt = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7
  %4 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pt, align 8
  %arrayidx4 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %boot = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %boot, align 4
  %vmm = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %14 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vmm, align 8
  tail call void %13(ptr noundef %9, ptr noundef %15) #11
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unref(ptr nocapture noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvmm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.nvkm_vmm, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !156

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  %root.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 12
  %call76.i.i.i = tail call ptr @rb_first(ptr noundef %root.i.i.i) #11
  %tobool.not77.i.i.i = icmp eq ptr %call76.i.i.i, null
  br i1 %tobool.not77.i.i.i, label %if.then.i.while.end.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then.i.while.end.i.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then.i
  %mutex.i.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 5
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %nvkm_vmm_put.exit.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %call78.i.i.i = phi ptr [ %call76.i.i.i, %while.body.lr.ph.i.i.i ], [ %call.i.i.i, %nvkm_vmm_put.exit.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %call78.i.i.i, i32 -8
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.nvkm_vmm_put.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.nvkm_vmm_put.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_put.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i, i32 noundef 0) #11
  tail call void @nvkm_vmm_put_locked(ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.i.i.i) #11
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i) #11
  br label %nvkm_vmm_put.exit.i.i.i

nvkm_vmm_put.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %while.body.i.i.i.nvkm_vmm_put.exit.i.i.i_crit_edge
  %call.i.i.i = tail call ptr @rb_first(ptr noundef %root.i.i.i) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %nvkm_vmm_put.exit.i.i.i.while.end.i.i.i_crit_edge, label %nvkm_vmm_put.exit.i.i.i.while.body.i.i.i_crit_edge

nvkm_vmm_put.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %nvkm_vmm_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

nvkm_vmm_put.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %nvkm_vmm_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %nvkm_vmm_put.exit.i.i.i.while.end.i.i.i_crit_edge, %if.then.i.while.end.i.i.i_crit_edge
  %bootstrapped.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %bootstrapped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bootstrapped.i.i.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i.i.i, label %while.end.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

while.end.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %while.end.i.i.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %page3.i.i.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %6, i32 0, i32 8
  %limit4.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %limit4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %limit4.i.i.i, align 8
  %start.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start.i.i.i, align 8
  br label %while.cond5.i.i.i

while.cond5.i.i.i:                                ; preds = %while.cond5.i.i.i.while.cond5.i.i.i_crit_edge, %if.then.i.i.i
  %page.0.i.i.i = phi ptr [ %page3.i.i.i, %if.then.i.i.i ], [ %arrayidx.i.i.i, %while.cond5.i.i.i.while.cond5.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.nvkm_vmm_page, ptr %page.0.i.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool6.not.i.i.i, label %while.end8.i.i.i, label %while.cond5.i.i.i.while.cond5.i.i.i_crit_edge

while.cond5.i.i.i.while.cond5.i.i.i_crit_edge:    ; preds = %while.cond5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond5.i.i.i

while.end8.i.i.i:                                 ; preds = %while.cond5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i64 %8, %10
  %mmu.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %mmu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu.i.i.i, align 4
  tail call void @nvkm_mmu_ptc_dump(ptr noundef %14) #11
  %15 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start.i.i.i, align 8
  %call.i.i.i.i = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef nonnull %1, ptr noundef %page.0.i.i.i, i64 noundef %16, i64 noundef %sub.i.i.i, ptr noundef nonnull @.str.69, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end8.i.i.i, %while.end.i.i.i.if.end.i.i.i_crit_edge
  %list.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.list_del.exit.i.i.i_crit_edge

if.end.i.i.i.list_del.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.list_del.exit.i.i.i_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %18) #11
  %27 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %28, %list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %list_del.exit.i.i.i.if.end31.i.i.i_crit_edge, label %do.end.i.i.i, !prof !156

list_del.exit.i.i.i.if.end31.i.i.i_crit_edge:     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i.i.i

do.end.i.i.i:                                     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1003, i32 noundef 9, ptr noundef null) #11
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %do.end.i.i.i, %list_del.exit.i.i.i.if.end31.i.i.i_crit_edge
  %nullp.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %nullp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nullp.i.i.i, align 8
  %tobool39.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool39.not.i.i.i, label %if.end31.i.i.i.if.end43.i.i.i_crit_edge, label %if.then40.i.i.i

if.end31.i.i.i.if.end43.i.i.i_crit_edge:          ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu41.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %mmu41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmu41.i.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i.i, align 8
  %null.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %null.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %null.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef 16384, ptr noundef nonnull %30, i32 noundef %38, i32 noundef 0) #11
  br label %if.end43.i.i.i

if.end43.i.i.i:                                   ; preds = %if.then40.i.i.i, %if.end31.i.i.i.if.end43.i.i.i_crit_edge
  %pd.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pd.i.i.i, align 8
  %tobool44.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool44.not.i.i.i, label %if.end43.i.i.i.nvkm_vmm_del.exit.i_crit_edge, label %if.then45.i.i.i

if.end43.i.i.i.nvkm_vmm_del.exit.i_crit_edge:     ; preds = %if.end43.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_del.exit.i

if.then45.i.i.i:                                  ; preds = %if.end43.i.i.i
  %mmu46.i.i.i = getelementptr %struct.nvkm_vmm, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %mmu46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmu46.i.i.i, align 4
  tail call void @nvkm_mmu_ptc_put(ptr noundef %42, i1 noundef zeroext true, ptr noundef nonnull %40) #11
  %43 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pd.i.i.i, align 4
  %tobool.not.i74.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i74.i.i.i, label %if.then45.i.i.i.nvkm_vmm_del.exit.i_crit_edge, label %if.then.i75.i.i.i

if.then45.i.i.i.nvkm_vmm_del.exit.i_crit_edge:    ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_del.exit.i

if.then.i75.i.i.i:                                ; preds = %if.then45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pde.i.i.i.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %pde.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pde.i.i.i.i, align 4
  tail call void @kvfree(ptr noundef %46) #11
  tail call void @kfree(ptr noundef nonnull %44) #11
  %47 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %pd.i.i.i, align 4
  br label %nvkm_vmm_del.exit.i

nvkm_vmm_del.exit.i:                              ; preds = %if.then.i75.i.i.i, %if.then45.i.i.i.nvkm_vmm_del.exit.i_crit_edge, %if.end43.i.i.i.nvkm_vmm_del.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvkm_vmm_del.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %48 = ptrtoint ptr %pvmm to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %pvmm, align 4
  br label %if.end

if.end:                                           ; preds = %kref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_ref(ptr noundef returned %vmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vmm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !153

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !156

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %vmm
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_new(ptr nocapture noundef readonly %device, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr nocapture noundef writeonly %pvmm) local_unnamed_addr #0 align 64 {
entry:
  %vmm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 35
  %0 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmm) #11
  %2 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vmm, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %ctor = getelementptr inbounds %struct.nvkm_mmu_func, ptr %4, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctor, align 4
  %call = call i32 %6(ptr noundef %1, i1 noundef zeroext false, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef nonnull %vmm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @nvkm_vmm_unref(ptr noundef nonnull %vmm)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vmm, align 4
  %9 = ptrtoint ptr %pvmm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pvmm, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmm) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_mmu_ptc_get(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_vmm_ctor_managed(ptr noundef %vmm, i64 noundef %addr, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr1.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %addr, ptr %addr1.i, align 8
  %size2.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 3
  %2 = trunc i64 %size to i56
  %3 = ptrtoint ptr %size2.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 7)
  %bf.load.i = load i56, ptr %size2.i, align 8
  %bf.shl.i = shl i56 %2, 6
  %bf.clear.i = and i56 %bf.load.i, 1
  %bf.set.i = or i56 %bf.clear.i, %bf.shl.i
  %refd.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %refd.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load6.i = load i8, ptr %refd.i, align 1
  %bf.clear2 = or i56 %bf.set.i, 46
  store i56 %bf.clear2, ptr %size2.i, align 8
  %bf.set6 = or i8 %bf.load6.i, -16
  store i8 %bf.set6, ptr %refd.i, align 1
  %root.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 12
  %5 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root.i, align 4
  %tobool.not27.i = icmp eq ptr %6, null
  br i1 %tobool.not27.i, label %if.end.nvkm_vmm_node_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end.nvkm_vmm_node_insert.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_node_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %addr1.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %9 = phi ptr [ %6, %while.body.lr.ph.i ], [ %13, %if.end10.i.while.body.i_crit_edge ]
  %addr1.i12 = getelementptr i8, ptr %9, i32 16
  %10 = ptrtoint ptr %addr1.i12 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr1.i12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %11)
  %cmp.i = icmp ult i64 %8, %11
  br i1 %cmp.i, label %if.then.i13, label %if.else.i

if.then.i13:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %11)
  %cmp4.i = icmp ugt i64 %8, %11
  br i1 %cmp4.i, label %if.then5.i, label %do.body.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %if.end10.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #11, !srcloc !155
  unreachable

if.end10.i:                                       ; preds = %if.then5.i, %if.then.i13
  %ptr.1.i = phi ptr [ %rb_left.i, %if.then.i13 ], [ %rb_right.i, %if.then5.i ]
  %12 = ptrtoint ptr %ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr.1.i, align 4
  %tobool.not.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i14, label %while.cond.while.end_crit_edge.i, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %9 to i32
  br label %nvkm_vmm_node_insert.exit

nvkm_vmm_node_insert.exit:                        ; preds = %while.cond.while.end_crit_edge.i, %if.end.nvkm_vmm_node_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.nvkm_vmm_node_insert.exit_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.1.i, %while.cond.while.end_crit_edge.i ], [ %root.i, %if.end.nvkm_vmm_node_insert.exit_crit_edge ]
  %tree.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parent.0.lcssa.i, ptr %tree.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.nvkm_vma, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.i, align 8
  %17 = ptrtoint ptr %ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tree.i, ptr %ptr.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %tree.i, ptr noundef %root.i) #11
  %list = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %19, ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %nvkm_vmm_node_insert.exit.cleanup_crit_edge

nvkm_vmm_node_insert.exit.cleanup_crit_edge:      ; preds = %nvkm_vmm_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %nvkm_vmm_node_insert.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %nvkm_vmm_node_insert.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nvkm_vmm_node_insert.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_unref_ptes(ptr noundef %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  %_buf.i92 = alloca [35 x i8], align 1
  %_buf102.i = alloca [35 x i8], align 1
  %_buf.i = alloca [35 x i8], align 1
  %_buf = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %conv = zext i1 %cmp to i32
  %pt = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7
  %4 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pt, align 8
  br i1 %pfn, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  %func = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %pfn_clear = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %pfn_clear to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pfn_clear, align 4
  %vmm = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %10 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vmm, align 8
  %arrayidx4 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %conv
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %call = tail call zeroext i1 %9(ptr noundef %11, ptr noundef %13, i32 noundef %ptei, i32 noundef %ptes) #11
  br i1 %call, label %if.then7, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.then
  %flush.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 8
  %14 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flush.i, align 4
  %max.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %16 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max.i, align 8
  %conv.i = zext i16 %17 to i32
  %lvl.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %18 = ptrtoint ptr %lvl.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lvl.i, align 2
  %conv1.i = zext i16 %19 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %20 = tail call i32 @llvm.smin.i32(i32 %15, i32 %sub.i) #11
  %21 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flush.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 5
  br i1 %cmp.not.i, label %if.then7.nvkm_vmm_flush.exit_crit_edge, label %if.then.i

if.then7.nvkm_vmm_flush.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_flush.exit

if.then.i:                                        ; preds = %if.then7
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %flush1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flush1.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then.i.if.end28.i_crit_edge, label %do.body.i

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.body.i:                                        ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i) #11
  %28 = call ptr @memset(ptr %_buf.i, i32 255, i32 35)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i
  %lvl.017.i.i = phi i32 [ %conv.i, %do.body.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buf.addr.016.i.i = phi ptr [ %_buf.i, %do.body.i ], [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %29 = ptrtoint ptr %lvl.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %lvl.i, align 2
  %conv3.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i, i32 %conv3.i.i)
  %cmp4.not.i.i = icmp ult i32 %lvl.017.i.i, %conv3.i.i
  br i1 %cmp4.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i, ptr noundef nonnull @.str.28, i32 noundef %32) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = call ptr @memcpy(ptr %buf.addr.016.i.i, ptr @.str.29, i32 7)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %call.sink.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 6, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.016.i.i, i32 %call.sink.i.i
  %dec.i.i = add nsw i32 %lvl.017.i.i, -1
  %cmp.i.i = icmp sgt i32 %lvl.017.i.i, 0
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %nvkm_vmm_trace.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvkm_vmm_trace.exit.i:                            ; preds = %for.inc.i.i
  %34 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vmm, align 8
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp5.i = icmp ugt i32 %37, 4
  br i1 %cmp5.i, label %do.end.i, label %nvkm_vmm_trace.exit.i.if.end18.i_crit_edge

nvkm_vmm_trace.exit.i.if.end18.i_crit_edge:       ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.end.i:                                         ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmu.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %39, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %39, i32 0, i32 1, i32 4
  %name13.i = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 2
  %44 = ptrtoint ptr %name13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name13.i, align 8
  %46 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flush.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.21, ptr noundef %name.i, ptr noundef %45, ptr noundef nonnull %_buf.i, i32 noundef %47) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %nvkm_vmm_trace.exit.i.if.end18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i) #11
  %48 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vmm, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %flush25.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %flush25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %flush25.i, align 8
  %54 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flush.i, align 4
  call void %53(ptr noundef %49, i32 noundef %55) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end18.i, %if.then.i.if.end28.i_crit_edge
  %56 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %flush.i, align 4
  br label %nvkm_vmm_flush.exit

nvkm_vmm_flush.exit:                              ; preds = %if.end28.i, %if.then7.nvkm_vmm_flush.exit_crit_edge
  %57 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %func, align 4
  %pfn_unmap = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %pfn_unmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pfn_unmap, align 4
  %61 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vmm, align 8
  %63 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx4, align 4
  call void %60(ptr noundef %62, ptr noundef %64, i32 noundef %ptei, i32 noundef %ptes) #11
  br label %if.end12

if.end12:                                         ; preds = %nvkm_vmm_flush.exit, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %arrayidx13 = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 1, i32 %conv
  %65 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx13, align 4
  %sub = sub i32 %66, %ptes
  store i32 %sub, ptr %arrayidx13, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp15 = icmp eq i32 %68, 2
  br i1 %cmp15, label %land.lhs.true, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end12
  %refs = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 1
  %69 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool19.not = icmp eq i32 %70, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx21 = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool22.not = icmp eq i32 %72, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end24thread-pre-split_crit_edge, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false.if.end24thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24thread-pre-split

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %73 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %it, align 8
  %desc1.i = getelementptr %struct.nvkm_vmm_page, ptr %74, i32 -1, i32 1
  %75 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc1.i, align 4
  %bits.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bits.i, align 4
  %conv.i93 = zext i8 %78 to i32
  %bits2.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %bits2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bits2.i, align 4
  %conv3.i = zext i8 %80 to i32
  %sub.i94 = sub nsw i32 %conv.i93, %conv3.i
  %shl.i = shl nuw i32 1, %sub.i94
  %vmm4.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %81 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vmm4.i, align 8
  %shr.i = lshr i32 %ptei, %sub.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not232.i = icmp eq i32 %ptes, 0
  br i1 %tobool.not232.i, label %if.then23.if.end24thread-pre-split_crit_edge, label %for.body.preheader.i

if.then23.if.end24thread-pre-split_crit_edge:     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24thread-pre-split

for.body.preheader.i:                             ; preds = %if.then23
  %sub5.i = add i32 %shl.i, -1
  %and.i = and i32 %sub5.i, %ptei
  %sub6.peel.i = sub i32 %shl.i, %and.i
  %83 = call i32 @llvm.umin.i32(i32 %sub6.peel.i, i32 %ptes) #11
  %arrayidx8.peel.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %shr.i
  %84 = ptrtoint ptr %arrayidx8.peel.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx8.peel.i, align 1
  %86 = trunc i32 %83 to i8
  %conv11.peel.i = sub i8 %85, %86
  store i8 %conv11.peel.i, ptr %arrayidx8.peel.i, align 1
  %sub12.peel.i = sub i32 %ptes, %83
  %inc.peel.i = add i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub12.peel.i, 0
  br i1 %tobool.not.peel.i, label %for.body.preheader.i.for.end.i_crit_edge, label %for.body.preheader.i.for.body.i_crit_edge

for.body.preheader.i.for.body.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %for.body.i

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i.for.body.i_crit_edge
  %ptes.addr.0235.i = phi i32 [ %sub12.i, %for.body.i.for.body.i_crit_edge ], [ %sub12.peel.i, %for.body.preheader.i.for.body.i_crit_edge ]
  %lpti.0234.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %inc.peel.i, %for.body.preheader.i.for.body.i_crit_edge ]
  %87 = call i32 @llvm.umin.i32(i32 %shl.i, i32 %ptes.addr.0235.i) #11
  %arrayidx8.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %lpti.0234.i
  %88 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx8.i, align 1
  %90 = trunc i32 %87 to i8
  %conv11.i = sub i8 %89, %90
  store i8 %conv11.i, ptr %arrayidx8.i, align 1
  %sub12.i = sub i32 %ptes.addr.0235.i, %87
  %inc.i = add i32 %lpti.0234.i, 1
  %tobool.not.i95 = icmp eq i32 %sub12.i, 0
  br i1 %tobool.not.i95, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge, !llvm.loop !166

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %lpti.0.lcssa.i = phi i32 [ %inc.peel.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %91 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool14.not.i = icmp ne i32 %92, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %lpti.0.lcssa.i)
  %cmp17244.i = icmp ult i32 %shr.i, %lpti.0.lcssa.i
  %or.cond.i = select i1 %tobool14.not.i, i1 %cmp17244.i, i1 false
  br i1 %or.cond.i, label %for.body19.lr.ph.i, label %for.end.i.if.end24thread-pre-split_crit_edge

for.end.i.if.end24thread-pre-split_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24thread-pre-split

for.body19.lr.ph.i:                               ; preds = %for.end.i
  %max.i.i96 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %lvl2.i.i97 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %func.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %76, i32 0, i32 4
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc143.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %ptei.addr.0245.i = phi i32 [ %shr.i, %for.body19.lr.ph.i ], [ %ptei.addr.3.i, %for.inc143.i.for.body19.i_crit_edge ]
  %arrayidx21.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.0245.i
  %93 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx21.i, align 1
  %95 = and i8 %94, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool24.not.i = icmp eq i8 %95, 0
  br i1 %tobool24.not.i, label %if.end42.i, label %for.body19.i.for.cond27.i_crit_edge

for.body19.i.for.cond27.i_crit_edge:              ; preds = %for.body19.i
  br label %for.cond27.i

for.cond27.i:                                     ; preds = %for.body30.i.for.cond27.i_crit_edge, %for.body19.i.for.cond27.i_crit_edge
  %ptei.addr.1.in.i = phi i32 [ %ptei.addr.1.i, %for.body30.i.for.cond27.i_crit_edge ], [ %ptei.addr.0245.i, %for.body19.i.for.cond27.i_crit_edge ]
  %ptei.addr.1.i = add i32 %ptei.addr.1.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ptei.addr.1.i, i32 %lpti.0.lcssa.i)
  %cmp28.i = icmp ult i32 %ptei.addr.1.i, %lpti.0.lcssa.i
  br i1 %cmp28.i, label %for.body30.i, label %for.cond27.i.if.end24thread-pre-split_crit_edge

for.cond27.i.if.end24thread-pre-split_crit_edge:  ; preds = %for.cond27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24thread-pre-split

for.body30.i:                                     ; preds = %for.cond27.i
  %arrayidx32.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.1.i
  %96 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx32.i, align 1
  %98 = and i8 %97, 63
  %tobool35.not.i = icmp eq i8 %98, 0
  br i1 %tobool35.not.i, label %for.body30.i.for.inc143.i_crit_edge, label %for.body30.i.for.cond27.i_crit_edge

for.body30.i.for.cond27.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond27.i

for.body30.i.for.inc143.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc143.i

if.end42.i:                                       ; preds = %for.body19.i
  %99 = and i8 %94, -65
  %100 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx21.i, align 1
  %ptei.addr.2236.i = add nuw i32 %ptei.addr.0245.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ptei.addr.2236.i, i32 %lpti.0.lcssa.i)
  %cmp50237.i = icmp ult i32 %ptei.addr.2236.i, %lpti.0.lcssa.i
  br i1 %cmp50237.i, label %for.body52.preheader.i, label %if.end42.i.for.end68.i_crit_edge

if.end42.i.for.end68.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68.i

for.body52.preheader.i:                           ; preds = %if.end42.i
  %101 = sub i32 %lpti.0.lcssa.i, %ptei.addr.0245.i
  br label %for.body52.i

for.body52.i:                                     ; preds = %if.end59.i.for.body52.i_crit_edge, %for.body52.preheader.i
  %ptei.addr.2239.i = phi i32 [ %ptei.addr.2.i, %if.end59.i.for.body52.i_crit_edge ], [ %ptei.addr.2236.i, %for.body52.preheader.i ]
  %ptes.addr.2238.i = phi i32 [ %inc66.i, %if.end59.i.for.body52.i_crit_edge ], [ 1, %for.body52.preheader.i ]
  %arrayidx54.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.2239.i
  %102 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx54.i, align 1
  %104 = and i8 %103, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool57.not.i = icmp eq i8 %104, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %for.body52.i.for.end68thread-pre-split.i_crit_edge

for.body52.i.for.end68thread-pre-split.i_crit_edge: ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68thread-pre-split.i

if.end59.i:                                       ; preds = %for.body52.i
  %and63.i = and i8 %103, -65
  %105 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %and63.i, ptr %arrayidx54.i, align 1
  %inc66.i = add i32 %ptes.addr.2238.i, 1
  %ptei.addr.2.i = add i32 %ptei.addr.2239.i, 1
  %exitcond.not.i = icmp eq i32 %ptei.addr.2.i, %lpti.0.lcssa.i
  br i1 %exitcond.not.i, label %if.end59.i.for.end68thread-pre-split.i_crit_edge, label %if.end59.i.for.body52.i_crit_edge

if.end59.i.for.body52.i_crit_edge:                ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52.i

if.end59.i.for.end68thread-pre-split.i_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68thread-pre-split.i

for.end68thread-pre-split.i:                      ; preds = %if.end59.i.for.end68thread-pre-split.i_crit_edge, %for.body52.i.for.end68thread-pre-split.i_crit_edge
  %ptes.addr.2.lcssa.ph.i = phi i32 [ %ptes.addr.2238.i, %for.body52.i.for.end68thread-pre-split.i_crit_edge ], [ %101, %if.end59.i.for.end68thread-pre-split.i_crit_edge ]
  %ptei.addr.2.lcssa.ph.i = phi i32 [ %ptei.addr.2239.i, %for.body52.i.for.end68thread-pre-split.i_crit_edge ], [ %lpti.0.lcssa.i, %if.end59.i.for.end68thread-pre-split.i_crit_edge ]
  %106 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %.pr.i = load i8, ptr %arrayidx21.i, align 1
  br label %for.end68.i

for.end68.i:                                      ; preds = %for.end68thread-pre-split.i, %if.end42.i.for.end68.i_crit_edge
  %107 = phi i8 [ %.pr.i, %for.end68thread-pre-split.i ], [ %99, %if.end42.i.for.end68.i_crit_edge ]
  %ptes.addr.2.lcssa.i = phi i32 [ %ptes.addr.2.lcssa.ph.i, %for.end68thread-pre-split.i ], [ 1, %if.end42.i.for.end68.i_crit_edge ]
  %ptei.addr.2.lcssa.i = phi i32 [ %ptei.addr.2.lcssa.ph.i, %for.end68thread-pre-split.i ], [ %ptei.addr.2236.i, %if.end42.i.for.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %107)
  %tobool73.not.i = icmp sgt i8 %107, -1
  br i1 %tobool73.not.i, label %if.else.i, label %do.body.i99

do.body.i99:                                      ; preds = %for.end68.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i92) #11
  %108 = call ptr @memset(ptr %_buf.i92, i32 255, i32 35)
  %109 = ptrtoint ptr %max.i.i96 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %max.i.i96, align 8
  %conv.i.i98 = zext i16 %110 to i32
  br label %for.body.i.i104

for.body.i.i104:                                  ; preds = %for.inc.i.i113.for.body.i.i104_crit_edge, %do.body.i99
  %lvl.017.i.i100 = phi i32 [ %conv.i.i98, %do.body.i99 ], [ %dec.i.i111, %for.inc.i.i113.for.body.i.i104_crit_edge ]
  %buf.addr.016.i.i101 = phi ptr [ %_buf.i92, %do.body.i99 ], [ %add.ptr.i.i110, %for.inc.i.i113.for.body.i.i104_crit_edge ]
  %111 = ptrtoint ptr %lvl2.i.i97 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %lvl2.i.i97, align 2
  %conv3.i.i102 = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i100, i32 %conv3.i.i102)
  %cmp4.not.i.i103 = icmp ult i32 %lvl.017.i.i100, %conv3.i.i102
  br i1 %cmp4.not.i.i103, label %if.else.i.i108, label %if.then.i.i107

if.then.i.i107:                                   ; preds = %for.body.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i105 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i100
  %113 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i105, align 4
  %call.i.i106 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i101, ptr noundef nonnull @.str.28, i32 noundef %114) #11
  br label %for.inc.i.i113

if.else.i.i108:                                   ; preds = %for.body.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  %115 = call ptr @memcpy(ptr %buf.addr.016.i.i101, ptr @.str.29, i32 7)
  br label %for.inc.i.i113

for.inc.i.i113:                                   ; preds = %if.else.i.i108, %if.then.i.i107
  %call.sink.i.i109 = phi i32 [ %call.i.i106, %if.then.i.i107 ], [ 6, %if.else.i.i108 ]
  %add.ptr.i.i110 = getelementptr i8, ptr %buf.addr.016.i.i101, i32 %call.sink.i.i109
  %dec.i.i111 = add nsw i32 %lvl.017.i.i100, -1
  %cmp.i.i112 = icmp sgt i32 %lvl.017.i.i100, 0
  br i1 %cmp.i.i112, label %for.inc.i.i113.for.body.i.i104_crit_edge, label %nvkm_vmm_trace.exit.i115

for.inc.i.i113.for.body.i.i104_crit_edge:         ; preds = %for.inc.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i104

nvkm_vmm_trace.exit.i115:                         ; preds = %for.inc.i.i113
  %116 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vmm4.i, align 8
  %debug.i114 = getelementptr inbounds %struct.nvkm_vmm, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %debug.i114 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %debug.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp77.i = icmp ugt i32 %119, 4
  br i1 %cmp77.i, label %do.end.i120, label %nvkm_vmm_trace.exit.i115.if.end92.i_crit_edge

nvkm_vmm_trace.exit.i115.if.end92.i_crit_edge:    ; preds = %nvkm_vmm_trace.exit.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

do.end.i120:                                      ; preds = %nvkm_vmm_trace.exit.i115
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i116 = getelementptr inbounds %struct.nvkm_vmm, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %mmu.i116 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmu.i116, align 4
  %device.i117 = getelementptr inbounds %struct.nvkm_mmu, ptr %121, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %device.i117 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device.i117, align 4
  %dev.i118 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i118, align 8
  %name.i119 = getelementptr inbounds %struct.nvkm_mmu, ptr %121, i32 0, i32 1, i32 4
  %name87.i = getelementptr inbounds %struct.nvkm_vmm, ptr %117, i32 0, i32 2
  %126 = ptrtoint ptr %name87.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %name87.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %125, ptr noundef nonnull @.str.23, ptr noundef %name.i119, ptr noundef %127, ptr noundef nonnull %_buf.i92, i32 noundef %ptei.addr.0245.i, i32 noundef %ptes.addr.2.lcssa.i) #16
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end.i120, %nvkm_vmm_trace.exit.i115.if.end92.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i92) #11
  %128 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %func.i, align 4
  %sparse.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %129, i32 0, i32 2
  br label %for.inc143.sink.split.i

if.else.i:                                        ; preds = %for.end68.i
  %130 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %func.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %tobool99.not.i = icmp eq ptr %133, null
  br i1 %tobool99.not.i, label %if.else.i.for.inc143.i_crit_edge, label %do.body101.i

if.else.i.for.inc143.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc143.i

do.body101.i:                                     ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf102.i) #11
  %134 = call ptr @memset(ptr %_buf102.i, i32 255, i32 35)
  %135 = ptrtoint ptr %max.i.i96 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %max.i.i96, align 8
  %conv.i215.i = zext i16 %136 to i32
  br label %for.body.i221.i

for.body.i221.i:                                  ; preds = %for.inc.i230.i.for.body.i221.i_crit_edge, %do.body101.i
  %lvl.017.i217.i = phi i32 [ %conv.i215.i, %do.body101.i ], [ %dec.i228.i, %for.inc.i230.i.for.body.i221.i_crit_edge ]
  %buf.addr.016.i218.i = phi ptr [ %_buf102.i, %do.body101.i ], [ %add.ptr.i227.i, %for.inc.i230.i.for.body.i221.i_crit_edge ]
  %137 = ptrtoint ptr %lvl2.i.i97 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %lvl2.i.i97, align 2
  %conv3.i219.i = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i217.i, i32 %conv3.i219.i)
  %cmp4.not.i220.i = icmp ult i32 %lvl.017.i217.i, %conv3.i219.i
  br i1 %cmp4.not.i220.i, label %if.else.i225.i, label %if.then.i224.i

if.then.i224.i:                                   ; preds = %for.body.i221.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i222.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i217.i
  %139 = ptrtoint ptr %arrayidx.i222.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i222.i, align 4
  %call.i223.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i218.i, ptr noundef nonnull @.str.28, i32 noundef %140) #11
  br label %for.inc.i230.i

if.else.i225.i:                                   ; preds = %for.body.i221.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = call ptr @memcpy(ptr %buf.addr.016.i218.i, ptr @.str.29, i32 7)
  br label %for.inc.i230.i

for.inc.i230.i:                                   ; preds = %if.else.i225.i, %if.then.i224.i
  %call.sink.i226.i = phi i32 [ %call.i223.i, %if.then.i224.i ], [ 6, %if.else.i225.i ]
  %add.ptr.i227.i = getelementptr i8, ptr %buf.addr.016.i218.i, i32 %call.sink.i226.i
  %dec.i228.i = add nsw i32 %lvl.017.i217.i, -1
  %cmp.i229.i = icmp sgt i32 %lvl.017.i217.i, 0
  br i1 %cmp.i229.i, label %for.inc.i230.i.for.body.i221.i_crit_edge, label %nvkm_vmm_trace.exit231.i

for.inc.i230.i.for.body.i221.i_crit_edge:         ; preds = %for.inc.i230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i221.i

nvkm_vmm_trace.exit231.i:                         ; preds = %for.inc.i230.i
  %142 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vmm4.i, align 8
  %debug108.i = getelementptr inbounds %struct.nvkm_vmm, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %debug108.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %debug108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %145)
  %cmp109.i = icmp ugt i32 %145, 4
  br i1 %cmp109.i, label %do.end122.i, label %nvkm_vmm_trace.exit231.i.if.end132.i_crit_edge

nvkm_vmm_trace.exit231.i.if.end132.i_crit_edge:   ; preds = %nvkm_vmm_trace.exit231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

do.end122.i:                                      ; preds = %nvkm_vmm_trace.exit231.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu114.i = getelementptr inbounds %struct.nvkm_vmm, ptr %143, i32 0, i32 1
  %146 = ptrtoint ptr %mmu114.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmu114.i, align 4
  %device123.i = getelementptr inbounds %struct.nvkm_mmu, ptr %147, i32 0, i32 1, i32 1
  %148 = ptrtoint ptr %device123.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device123.i, align 4
  %dev124.i = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %dev124.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev124.i, align 8
  %name125.i = getelementptr inbounds %struct.nvkm_mmu, ptr %147, i32 0, i32 1, i32 4
  %name127.i = getelementptr inbounds %struct.nvkm_vmm, ptr %143, i32 0, i32 2
  %152 = ptrtoint ptr %name127.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name127.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %151, ptr noundef nonnull @.str.26, ptr noundef %name125.i, ptr noundef %153, ptr noundef nonnull %_buf102.i, i32 noundef %ptei.addr.0245.i, i32 noundef %ptes.addr.2.lcssa.i) #16
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.end122.i, %nvkm_vmm_trace.exit231.i.if.end132.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf102.i) #11
  %154 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %func.i, align 4
  br label %for.inc143.sink.split.i

for.inc143.sink.split.i:                          ; preds = %if.end132.i, %if.end92.i
  %sparse.sink.i = phi ptr [ %sparse.i, %if.end92.i ], [ %155, %if.end132.i ]
  %156 = ptrtoint ptr %sparse.sink.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sparse.sink.i, align 4
  %158 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %5, align 4
  call void %157(ptr noundef %82, ptr noundef %159, i32 noundef %ptei.addr.0245.i, i32 noundef %ptes.addr.2.lcssa.i) #11
  br label %for.inc143.i

for.inc143.i:                                     ; preds = %for.inc143.sink.split.i, %if.else.i.for.inc143.i_crit_edge, %for.body30.i.for.inc143.i_crit_edge
  %ptei.addr.3.i = phi i32 [ %ptei.addr.2.lcssa.i, %if.else.i.for.inc143.i_crit_edge ], [ %ptei.addr.2.lcssa.i, %for.inc143.sink.split.i ], [ %ptei.addr.1.i, %for.body30.i.for.inc143.i_crit_edge ]
  %cmp17.i = icmp ult i32 %ptei.addr.3.i, %lpti.0.lcssa.i
  br i1 %cmp17.i, label %for.inc143.i.for.body19.i_crit_edge, label %for.inc143.i.if.end24thread-pre-split_crit_edge

for.inc143.i.if.end24thread-pre-split_crit_edge:  ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24thread-pre-split

for.inc143.i.for.body19.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.i

if.end24thread-pre-split:                         ; preds = %for.inc143.i.if.end24thread-pre-split_crit_edge, %for.cond27.i.if.end24thread-pre-split_crit_edge, %for.end.i.if.end24thread-pre-split_crit_edge, %if.then23.if.end24thread-pre-split_crit_edge, %lor.lhs.false.if.end24thread-pre-split_crit_edge
  %160 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr = load i32, ptr %arrayidx13, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.end12.if.end24_crit_edge
  %161 = phi i32 [ %.pr, %if.end24thread-pre-split ], [ %sub, %if.end12.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool27.not = icmp eq i32 %161, 0
  br i1 %tobool27.not, label %if.then28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  %lvl = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %162 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %lvl, align 2
  %inc = add i16 %163, 1
  store i16 %inc, ptr %lvl, align 2
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf) #11
  %164 = call ptr @memset(ptr %_buf, i32 255, i32 35)
  %max.i121 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %165 = ptrtoint ptr %max.i121 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %max.i121, align 8
  %conv.i122 = zext i16 %166 to i32
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i.for.body.i124_crit_edge, %if.then28
  %lvl.017.i = phi i32 [ %conv.i122, %if.then28 ], [ %dec.i, %for.inc.i.for.body.i124_crit_edge ]
  %buf.addr.016.i = phi ptr [ %_buf, %if.then28 ], [ %add.ptr.i, %for.inc.i.for.body.i124_crit_edge ]
  %167 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %lvl, align 2
  %conv3.i123 = zext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i, i32 %conv3.i123)
  %cmp4.not.i = icmp ult i32 %lvl.017.i, %conv3.i123
  br i1 %cmp4.not.i, label %if.else.i126, label %if.then.i125

if.then.i125:                                     ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i
  %169 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i, ptr noundef nonnull @.str.28, i32 noundef %170) #11
  br label %for.inc.i

if.else.i126:                                     ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  %171 = call ptr @memcpy(ptr %buf.addr.016.i, ptr @.str.29, i32 7)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i126, %if.then.i125
  %call.sink.i = phi i32 [ %call.i, %if.then.i125 ], [ 6, %if.else.i126 ]
  %add.ptr.i = getelementptr i8, ptr %buf.addr.016.i, i32 %call.sink.i
  %dec.i = add nsw i32 %lvl.017.i, -1
  %cmp.i = icmp sgt i32 %lvl.017.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i124_crit_edge, label %nvkm_vmm_trace.exit

for.inc.i.for.body.i124_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i124

nvkm_vmm_trace.exit:                              ; preds = %for.inc.i
  %vmm30 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %172 = ptrtoint ptr %vmm30 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %vmm30, align 8
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp31 = icmp ugt i32 %175, 4
  br i1 %cmp31, label %do.end, label %nvkm_vmm_trace.exit.if.end47_crit_edge

nvkm_vmm_trace.exit.if.end47_crit_edge:           ; preds = %nvkm_vmm_trace.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end:                                           ; preds = %nvkm_vmm_trace.exit
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %173, i32 0, i32 1
  %176 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %177, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %177, i32 0, i32 1, i32 4
  %name41 = getelementptr inbounds %struct.nvkm_vmm, ptr %173, i32 0, i32 2
  %182 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name41, align 8
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %185)
  %186 = icmp ult i32 %185, 4
  br i1 %186, label %switch.lookup, label %do.end.nvkm_vmm_desc_type.exit_crit_edge

do.end.nvkm_vmm_desc_type.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_desc_type.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.nvkm_vmm_unref_ptes, i32 0, i32 %185
  %187 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %187)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvkm_vmm_desc_type.exit

nvkm_vmm_desc_type.exit:                          ; preds = %switch.lookup, %do.end.nvkm_vmm_desc_type.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.34, %do.end.nvkm_vmm_desc_type.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef %183, ptr noundef nonnull %_buf, ptr noundef nonnull %retval.0.i) #16
  br label %if.end47

if.end47:                                         ; preds = %nvkm_vmm_desc_type.exit, %nvkm_vmm_trace.exit.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf) #11
  %188 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %lvl, align 2
  %dec = add i16 %189, -1
  store i16 %dec, ptr %lvl, align 2
  call fastcc void @nvkm_vmm_unref_pdes(ptr noundef %it)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end24.cleanup_crit_edge
  %190 = xor i1 %tobool27.not, true
  ret i1 %190
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_vmm_unref_pdes(ptr noundef %it) unnamed_addr #0 align 64 {
entry:
  %_buf.i = alloca [35 x i8], align 1
  %pt10 = alloca ptr, align 4
  %_buf = alloca [35 x i8], align 1
  %_buf81 = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %lvl = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %2 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lvl, align 2
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %conv = zext i1 %cmp to i32
  %add = add nuw nsw i32 %idxprom, 1
  %arrayidx5 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %add
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %arrayidx9 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt10) #11
  %arrayidx12 = getelementptr [2 x ptr], ptr %9, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %12 = ptrtoint ptr %pt10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pt10, align 4
  %vmm13 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %13 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vmm13, align 8
  %arrayidx17 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %add
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 4
  %inc = add i16 %3, 1
  %17 = ptrtoint ptr %lvl to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %inc, ptr %lvl, align 2
  %refs = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refs, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.else78, label %if.then

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lvl, align 2
  %idxprom21 = zext i16 %21 to i32
  %func23 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %idxprom21, i32 4
  %22 = ptrtoint ptr %func23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func23, align 4
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf) #11
  %24 = call ptr @memset(ptr %_buf, i32 255, i32 35)
  %max.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %25 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max.i, align 8
  %conv.i = zext i16 %26 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %lvl.017.i = phi i32 [ %conv.i, %if.then ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %buf.addr.016.i = phi ptr [ %_buf, %if.then ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %lvl, align 2
  %conv3.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i, i32 %conv3.i)
  %cmp4.not.i = icmp ult i32 %lvl.017.i, %conv3.i
  br i1 %cmp4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i, ptr noundef nonnull @.str.28, i32 noundef %30) #11
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = call ptr @memcpy(ptr %buf.addr.016.i, ptr @.str.29, i32 7)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %call.sink.i = phi i32 [ %call.i, %if.then.i ], [ 6, %if.else.i ]
  %add.ptr.i = getelementptr i8, ptr %buf.addr.016.i, i32 %call.sink.i
  %dec.i = add nsw i32 %lvl.017.i, -1
  %cmp.i = icmp sgt i32 %lvl.017.i, 0
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %nvkm_vmm_trace.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

nvkm_vmm_trace.exit:                              ; preds = %for.inc.i
  %32 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vmm13, align 8
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp26 = icmp ugt i32 %35, 4
  br i1 %cmp26, label %do.end, label %nvkm_vmm_trace.exit.if.end43_crit_edge

nvkm_vmm_trace.exit.if.end43_crit_edge:           ; preds = %nvkm_vmm_trace.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end:                                           ; preds = %nvkm_vmm_trace.exit
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %37, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %37, i32 0, i32 1, i32 4
  %name36 = getelementptr inbounds %struct.nvkm_vmm, ptr %33, i32 0, i32 2
  %42 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name36, align 8
  %44 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %lvl, align 2
  %conv39 = zext i16 %45 to i32
  %sub = add nsw i32 %conv39, -1
  %arrayidx40 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %sub
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %switch.lookup, label %do.end.nvkm_vmm_desc_type.exit_crit_edge

do.end.nvkm_vmm_desc_type.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_desc_type.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.nvkm_vmm_unref_pdes, i32 0, i32 %47
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvkm_vmm_desc_type.exit

nvkm_vmm_desc_type.exit:                          ; preds = %switch.lookup, %do.end.nvkm_vmm_desc_type.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.34, %do.end.nvkm_vmm_desc_type.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef %43, ptr noundef nonnull %_buf, ptr noundef nonnull %retval.0.i) #16
  br label %if.end43

if.end43:                                         ; preds = %nvkm_vmm_desc_type.exit, %nvkm_vmm_trace.exit.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf) #11
  %50 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx12, align 4
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx52 = getelementptr %struct.nvkm_vmm_pt, ptr %9, i32 0, i32 1, i32 %lnot.ext
  %51 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool53.not = icmp eq i32 %52, 0
  br i1 %tobool53.not, label %if.then54, label %if.else75

if.then54:                                        ; preds = %if.end43
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %7, align 4
  %tobool57.not = icmp eq ptr %54, null
  br i1 %tobool57.not, label %if.else70, label %if.then58

if.then58:                                        ; preds = %if.then54
  %sparse = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %9, i32 0, i32 3
  %55 = ptrtoint ptr %sparse to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %sparse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %sparse60 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 2
  %56 = ptrtoint ptr %sparse60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sparse60, align 4
  call void %57(ptr noundef %14, ptr noundef nonnull %54, i32 noundef %16, i32 noundef 1) #11
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %7, i32 0, i32 4
  %58 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pde, align 4
  %arrayidx64 = getelementptr ptr, ptr %59, i32 %16
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -16 to ptr), ptr %arrayidx64, align 4
  br label %if.end77

if.else:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %unmap = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 1
  %61 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %unmap, align 4
  call void %62(ptr noundef %14, ptr noundef nonnull %54, i32 noundef %16, i32 noundef 1) #11
  %pde67 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %7, i32 0, i32 4
  %63 = ptrtoint ptr %pde67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pde67, align 4
  %arrayidx68 = getelementptr ptr, ptr %64, i32 %16
  %65 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx68, align 4
  br label %if.end77

if.else70:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %pde71 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 3
  %66 = ptrtoint ptr %pde71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pde71, align 4
  call void %67(ptr noundef %14, ptr noundef %7, i32 noundef %16) #11
  %pde72 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %7, i32 0, i32 4
  %68 = ptrtoint ptr %pde72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pde72, align 4
  %arrayidx73 = getelementptr ptr, ptr %69, i32 %16
  %70 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx73, align 4
  br label %if.end77

if.else75:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %pde76 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 3
  %71 = ptrtoint ptr %pde76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pde76, align 4
  call void %72(ptr noundef %14, ptr noundef %7, i32 noundef %16) #11
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.else70, %if.else, %if.then59
  %flush.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 8
  %73 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flush.i, align 4
  %75 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %max.i, align 8
  %conv.i190 = zext i16 %76 to i32
  %77 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %lvl, align 2
  %conv1.i = zext i16 %78 to i32
  %sub.i = sub nsw i32 %conv.i190, %conv1.i
  %79 = call i32 @llvm.smin.i32(i32 %74, i32 %sub.i) #11
  %80 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %flush.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %79)
  %cmp.not.i = icmp eq i32 %79, 5
  br i1 %cmp.not.i, label %if.end77.do.body80_crit_edge, label %if.then.i192

if.end77.do.body80_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body80

if.then.i192:                                     ; preds = %if.end77
  %81 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vmm13, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %flush1.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %flush1.i, align 8
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.then.i192.if.end28.i_crit_edge, label %do.body.i

if.then.i192.if.end28.i_crit_edge:                ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.body.i:                                        ; preds = %if.then.i192
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i) #11
  %87 = call ptr @memset(ptr %_buf.i, i32 255, i32 35)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i
  %lvl.017.i.i = phi i32 [ %conv.i190, %do.body.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buf.addr.016.i.i = phi ptr [ %_buf.i, %do.body.i ], [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %88 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %lvl, align 2
  %conv3.i.i = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i, i32 %conv3.i.i)
  %cmp4.not.i.i = icmp ult i32 %lvl.017.i.i, %conv3.i.i
  br i1 %cmp4.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i
  %90 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i, ptr noundef nonnull @.str.28, i32 noundef %91) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = call ptr @memcpy(ptr %buf.addr.016.i.i, ptr @.str.29, i32 7)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %call.sink.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 6, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.016.i.i, i32 %call.sink.i.i
  %dec.i.i = add nsw i32 %lvl.017.i.i, -1
  %cmp.i.i = icmp sgt i32 %lvl.017.i.i, 0
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %nvkm_vmm_trace.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvkm_vmm_trace.exit.i:                            ; preds = %for.inc.i.i
  %93 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vmm13, align 8
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp5.i = icmp ugt i32 %96, 4
  br i1 %cmp5.i, label %do.end.i, label %nvkm_vmm_trace.exit.i.if.end18.i_crit_edge

nvkm_vmm_trace.exit.i.if.end18.i_crit_edge:       ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.end.i:                                         ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmu.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %98, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %98, i32 0, i32 1, i32 4
  %name13.i = getelementptr inbounds %struct.nvkm_vmm, ptr %94, i32 0, i32 2
  %103 = ptrtoint ptr %name13.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name13.i, align 8
  %105 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flush.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.21, ptr noundef %name.i, ptr noundef %104, ptr noundef nonnull %_buf.i, i32 noundef %106) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %nvkm_vmm_trace.exit.i.if.end18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i) #11
  %107 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vmm13, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %flush25.i = getelementptr inbounds %struct.nvkm_vmm_func, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %flush25.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %flush25.i, align 8
  %113 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flush.i, align 4
  call void %112(ptr noundef %108, i32 noundef %114) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end18.i, %if.then.i192.if.end28.i_crit_edge
  %115 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 5, ptr %flush.i, align 4
  br label %do.body80

if.else78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvkm_vmm_unref_pdes(ptr noundef %it)
  br label %do.body80

do.body80:                                        ; preds = %if.else78, %if.end28.i, %if.end77.do.body80_crit_edge
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf81) #11
  %116 = call ptr @memset(ptr %_buf81, i32 255, i32 35)
  %max.i193 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %117 = ptrtoint ptr %max.i193 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %max.i193, align 8
  %conv.i194 = zext i16 %118 to i32
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.inc.i209.for.body.i200_crit_edge, %do.body80
  %lvl.017.i196 = phi i32 [ %conv.i194, %do.body80 ], [ %dec.i207, %for.inc.i209.for.body.i200_crit_edge ]
  %buf.addr.016.i197 = phi ptr [ %_buf81, %do.body80 ], [ %add.ptr.i206, %for.inc.i209.for.body.i200_crit_edge ]
  %119 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %lvl, align 2
  %conv3.i198 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i196, i32 %conv3.i198)
  %cmp4.not.i199 = icmp ult i32 %lvl.017.i196, %conv3.i198
  br i1 %cmp4.not.i199, label %if.else.i204, label %if.then.i203

if.then.i203:                                     ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i201 = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i196
  %121 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i201, align 4
  %call.i202 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i197, ptr noundef nonnull @.str.28, i32 noundef %122) #11
  br label %for.inc.i209

if.else.i204:                                     ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  %123 = call ptr @memcpy(ptr %buf.addr.016.i197, ptr @.str.29, i32 7)
  br label %for.inc.i209

for.inc.i209:                                     ; preds = %if.else.i204, %if.then.i203
  %call.sink.i205 = phi i32 [ %call.i202, %if.then.i203 ], [ 6, %if.else.i204 ]
  %add.ptr.i206 = getelementptr i8, ptr %buf.addr.016.i197, i32 %call.sink.i205
  %dec.i207 = add nsw i32 %lvl.017.i196, -1
  %cmp.i208 = icmp sgt i32 %lvl.017.i196, 0
  br i1 %cmp.i208, label %for.inc.i209.for.body.i200_crit_edge, label %nvkm_vmm_trace.exit210

for.inc.i209.for.body.i200_crit_edge:             ; preds = %for.inc.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i200

nvkm_vmm_trace.exit210:                           ; preds = %for.inc.i209
  %124 = ptrtoint ptr %vmm13 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vmm13, align 8
  %debug87 = getelementptr inbounds %struct.nvkm_vmm, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %debug87 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %127)
  %cmp88 = icmp ugt i32 %127, 4
  br i1 %cmp88, label %do.end101, label %nvkm_vmm_trace.exit210.if.end116_crit_edge

nvkm_vmm_trace.exit210.if.end116_crit_edge:       ; preds = %nvkm_vmm_trace.exit210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

do.end101:                                        ; preds = %nvkm_vmm_trace.exit210
  %mmu93 = getelementptr inbounds %struct.nvkm_vmm, ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %mmu93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmu93, align 4
  %device102 = getelementptr inbounds %struct.nvkm_mmu, ptr %129, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %device102 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device102, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev103, align 8
  %name104 = getelementptr inbounds %struct.nvkm_mmu, ptr %129, i32 0, i32 1, i32 4
  %name106 = getelementptr inbounds %struct.nvkm_vmm, ptr %125, i32 0, i32 2
  %134 = ptrtoint ptr %name106 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %name106, align 8
  %136 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %lvl, align 2
  %conv109 = zext i16 %137 to i32
  %sub110 = add nsw i32 %conv109, -1
  %arrayidx111 = getelementptr %struct.nvkm_vmm_desc, ptr %1, i32 %sub110
  %138 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %switch.lookup222, label %do.end101.nvkm_vmm_desc_type.exit216_crit_edge

do.end101.nvkm_vmm_desc_type.exit216_crit_edge:   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_desc_type.exit216

switch.lookup222:                                 ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep223 = getelementptr inbounds [4 x ptr], ptr @switch.table.nvkm_vmm_unref_pdes.77, i32 0, i32 %139
  %141 = ptrtoint ptr %switch.gep223 to i32
  call void @__asan_load4_noabort(i32 %141)
  %switch.load224 = load ptr, ptr %switch.gep223, align 4
  br label %nvkm_vmm_desc_type.exit216

nvkm_vmm_desc_type.exit216:                       ; preds = %switch.lookup222, %do.end101.nvkm_vmm_desc_type.exit216_crit_edge
  %retval.0.i215 = phi ptr [ %switch.load224, %switch.lookup222 ], [ @.str.34, %do.end101.nvkm_vmm_desc_type.exit216_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %133, ptr noundef nonnull @.str.38, ptr noundef %name104, ptr noundef %135, ptr noundef nonnull %_buf81, ptr noundef nonnull %retval.0.i215) #16
  br label %if.end116

if.end116:                                        ; preds = %nvkm_vmm_desc_type.exit216, %nvkm_vmm_trace.exit210.if.end116_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf81) #11
  %mmu121 = getelementptr inbounds %struct.nvkm_vmm, ptr %14, i32 0, i32 1
  %142 = ptrtoint ptr %mmu121 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmu121, align 4
  %bootstrapped = getelementptr inbounds %struct.nvkm_vmm, ptr %14, i32 0, i32 13
  %144 = ptrtoint ptr %bootstrapped to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bootstrapped, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool122 = icmp ne i8 %145, 0
  call void @nvkm_mmu_ptc_put(ptr noundef %143, i1 noundef zeroext %tobool122, ptr noundef nonnull %pt10) #11
  %lnot125 = xor i1 %cmp, true
  %lnot.ext126 = zext i1 %lnot125 to i32
  %arrayidx127 = getelementptr %struct.nvkm_vmm_pt, ptr %9, i32 0, i32 1, i32 %lnot.ext126
  %146 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool128.not = icmp ne i32 %147, 0
  %tobool.not.i217 = icmp eq ptr %9, null
  %or.cond = select i1 %tobool128.not, i1 true, i1 %tobool.not.i217
  br i1 %or.cond, label %if.end116.if.end130_crit_edge, label %if.then.i218

if.end116.if.end130_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then.i218:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %pde.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %9, i32 0, i32 4
  %148 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pde.i, align 4
  call void @kvfree(ptr noundef %149) #11
  call void @kfree(ptr noundef nonnull %9) #11
  br label %if.end130

if.end130:                                        ; preds = %if.then.i218, %if.end116.if.end130_crit_edge
  %150 = ptrtoint ptr %lvl to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %lvl, align 2
  %dec132 = add i16 %151, -1
  store i16 %dec132, ptr %lvl, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt10) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mmu_ptc_put(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_ref_ptes(ptr nocapture noundef readonly %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  %_buf.i = alloca [35 x i8], align 1
  %_buf99.i = alloca [35 x i8], align 1
  %_buf141.i = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %conv = zext i1 %cmp to i32
  %pt = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7
  %4 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pt, align 8
  %arrayidx3 = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 1, i32 %conv
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %7, %ptes
  store i32 %add, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %it, align 8
  %desc1.i = getelementptr %struct.nvkm_vmm_page, ptr %11, i32 -1, i32 1
  %12 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc1.i, align 4
  %bits.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bits.i, align 4
  %conv.i = zext i8 %15 to i32
  %bits2.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %bits2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits2.i, align 4
  %conv3.i = zext i8 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  %shl.i = shl nuw i32 1, %sub.i
  %vmm4.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 2
  %18 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vmm4.i, align 8
  %shr.i = lshr i32 %ptei, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not304.i = icmp eq i32 %ptes, 0
  br i1 %tobool.not304.i, label %if.then.if.end_crit_edge, label %for.body.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %sub5.i = add i32 %shl.i, -1
  %and.i = and i32 %sub5.i, %ptei
  %sub6.peel.i = sub i32 %shl.i, %and.i
  %20 = tail call i32 @llvm.umin.i32(i32 %sub6.peel.i, i32 %ptes) #11
  %arrayidx8.peel.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx8.peel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.peel.i, align 1
  %23 = trunc i32 %20 to i8
  %conv10.peel.i = add i8 %22, %23
  store i8 %conv10.peel.i, ptr %arrayidx8.peel.i, align 1
  %sub11.peel.i = sub i32 %ptes, %20
  %inc.peel.i = add i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub11.peel.i, 0
  br i1 %tobool.not.peel.i, label %for.body.preheader.i.for.end.i_crit_edge, label %for.body.preheader.i.for.body.i_crit_edge

for.body.preheader.i.for.body.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %for.body.i

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i.for.body.i_crit_edge
  %ptes.addr.0307.i = phi i32 [ %sub11.i, %for.body.i.for.body.i_crit_edge ], [ %sub11.peel.i, %for.body.preheader.i.for.body.i_crit_edge ]
  %lpti.0306.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %inc.peel.i, %for.body.preheader.i.for.body.i_crit_edge ]
  %24 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 %ptes.addr.0307.i) #11
  %arrayidx8.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %lpti.0306.i
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx8.i, align 1
  %27 = trunc i32 %24 to i8
  %conv10.i = add i8 %26, %27
  store i8 %conv10.i, ptr %arrayidx8.i, align 1
  %sub11.i = sub i32 %ptes.addr.0307.i, %24
  %inc.i = add i32 %lpti.0306.i, 1
  %tobool.not.i = icmp eq i32 %sub11.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge, !llvm.loop !168

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %lpti.0.lcssa.i = phi i32 [ %inc.peel.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %refs.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.i = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %lpti.0.lcssa.i)
  %cmp16316.i = icmp ult i32 %shr.i, %lpti.0.lcssa.i
  %or.cond.i = select i1 %tobool13.not.i, i1 %cmp16316.i, i1 false
  br i1 %or.cond.i, label %for.body18.lr.ph.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body18.lr.ph.i:                               ; preds = %for.end.i
  %max.i.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 4
  %lvl2.i.i = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 5
  %func.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %1, i32 0, i32 4
  %arrayidx97.i = getelementptr [2 x ptr], ptr %5, i32 0, i32 1
  %func134.i = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %13, i32 0, i32 4
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc182.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %ptei.addr.0317.i = phi i32 [ %shr.i, %for.body18.lr.ph.i ], [ %ptei.addr.3.i, %for.inc182.i.for.body18.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.0317.i
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20.i, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not.i = icmp eq i8 %32, 0
  br i1 %tobool23.not.i, label %if.end41.i, label %for.body18.i.for.cond26.i_crit_edge

for.body18.i.for.cond26.i_crit_edge:              ; preds = %for.body18.i
  br label %for.cond26.i

for.cond26.i:                                     ; preds = %for.body29.i.for.cond26.i_crit_edge, %for.body18.i.for.cond26.i_crit_edge
  %ptei.addr.1.in.i = phi i32 [ %ptei.addr.1.i, %for.body29.i.for.cond26.i_crit_edge ], [ %ptei.addr.0317.i, %for.body18.i.for.cond26.i_crit_edge ]
  %ptei.addr.1.i = add i32 %ptei.addr.1.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ptei.addr.1.i, i32 %lpti.0.lcssa.i)
  %cmp27.i = icmp ult i32 %ptei.addr.1.i, %lpti.0.lcssa.i
  br i1 %cmp27.i, label %for.body29.i, label %for.cond26.i.if.end_crit_edge

for.cond26.i.if.end_crit_edge:                    ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body29.i:                                     ; preds = %for.cond26.i
  %arrayidx31.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.1.i
  %33 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx31.i, align 1
  %35 = and i8 %34, 64
  %tobool34.not.i = icmp eq i8 %35, 0
  br i1 %tobool34.not.i, label %for.body29.i.for.inc182.i_crit_edge, label %for.body29.i.for.cond26.i_crit_edge

for.body29.i.for.cond26.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.i

for.body29.i.for.inc182.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc182.i

if.end41.i:                                       ; preds = %for.body18.i
  %36 = or i8 %31, 64
  %37 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx20.i, align 1
  %ptei.addr.2308.i = add nuw i32 %ptei.addr.0317.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ptei.addr.2308.i, i32 %lpti.0.lcssa.i)
  %cmp48309.i = icmp ult i32 %ptei.addr.2308.i, %lpti.0.lcssa.i
  br i1 %cmp48309.i, label %for.body50.preheader.i, label %if.end41.i.for.end66.i_crit_edge

if.end41.i.for.end66.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66.i

for.body50.preheader.i:                           ; preds = %if.end41.i
  %38 = sub i32 %lpti.0.lcssa.i, %ptei.addr.0317.i
  br label %for.body50.i

for.body50.i:                                     ; preds = %if.end57.i.for.body50.i_crit_edge, %for.body50.preheader.i
  %ptei.addr.2311.i = phi i32 [ %ptei.addr.2.i, %if.end57.i.for.body50.i_crit_edge ], [ %ptei.addr.2308.i, %for.body50.preheader.i ]
  %ptes.addr.2310.i = phi i32 [ %inc64.i, %if.end57.i.for.body50.i_crit_edge ], [ 1, %for.body50.preheader.i ]
  %arrayidx52.i = getelementptr %struct.nvkm_vmm_pt, ptr %5, i32 0, i32 5, i32 %ptei.addr.2311.i
  %39 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx52.i, align 1
  %41 = and i8 %40, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool55.not.i = icmp eq i8 %41, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %for.body50.i.for.end66thread-pre-split.i_crit_edge

for.body50.i.for.end66thread-pre-split.i_crit_edge: ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66thread-pre-split.i

if.end57.i:                                       ; preds = %for.body50.i
  %or61.i = or i8 %40, 64
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or61.i, ptr %arrayidx52.i, align 1
  %inc64.i = add i32 %ptes.addr.2310.i, 1
  %ptei.addr.2.i = add i32 %ptei.addr.2311.i, 1
  %exitcond.not.i = icmp eq i32 %ptei.addr.2.i, %lpti.0.lcssa.i
  br i1 %exitcond.not.i, label %if.end57.i.for.end66thread-pre-split.i_crit_edge, label %if.end57.i.for.body50.i_crit_edge

if.end57.i.for.body50.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body50.i

if.end57.i.for.end66thread-pre-split.i_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end66thread-pre-split.i

for.end66thread-pre-split.i:                      ; preds = %if.end57.i.for.end66thread-pre-split.i_crit_edge, %for.body50.i.for.end66thread-pre-split.i_crit_edge
  %ptes.addr.2.lcssa.ph.i = phi i32 [ %ptes.addr.2310.i, %for.body50.i.for.end66thread-pre-split.i_crit_edge ], [ %38, %if.end57.i.for.end66thread-pre-split.i_crit_edge ]
  %ptei.addr.2.lcssa.ph.i = phi i32 [ %ptei.addr.2311.i, %for.body50.i.for.end66thread-pre-split.i_crit_edge ], [ %lpti.0.lcssa.i, %if.end57.i.for.end66thread-pre-split.i_crit_edge ]
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr.i = load i8, ptr %arrayidx20.i, align 1
  br label %for.end66.i

for.end66.i:                                      ; preds = %for.end66thread-pre-split.i, %if.end41.i.for.end66.i_crit_edge
  %44 = phi i8 [ %.pr.i, %for.end66thread-pre-split.i ], [ %36, %if.end41.i.for.end66.i_crit_edge ]
  %ptes.addr.2.lcssa.i = phi i32 [ %ptes.addr.2.lcssa.ph.i, %for.end66thread-pre-split.i ], [ 1, %if.end41.i.for.end66.i_crit_edge ]
  %ptei.addr.2.lcssa.i = phi i32 [ %ptei.addr.2.lcssa.ph.i, %for.end66thread-pre-split.i ], [ %ptei.addr.2308.i, %if.end41.i.for.end66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool71.not.i = icmp sgt i8 %44, -1
  br i1 %tobool71.not.i, label %if.else.i, label %if.then72.i

if.then72.i:                                      ; preds = %for.end66.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf.i) #11
  %45 = call ptr @memset(ptr %_buf.i, i32 255, i32 35)
  %46 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max.i.i, align 8
  %conv.i.i = zext i16 %47 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then72.i
  %lvl.017.i.i = phi i32 [ %conv.i.i, %if.then72.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buf.addr.016.i.i = phi ptr [ %_buf.i, %if.then72.i ], [ %add.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %lvl2.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %lvl2.i.i, align 2
  %conv3.i.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i.i, i32 %conv3.i.i)
  %cmp4.not.i.i = icmp ult i32 %lvl.017.i.i, %conv3.i.i
  br i1 %cmp4.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i.i, ptr noundef nonnull @.str.28, i32 noundef %51) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = call ptr @memcpy(ptr %buf.addr.016.i.i, ptr @.str.29, i32 7)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %call.sink.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 6, %if.else.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.016.i.i, i32 %call.sink.i.i
  %dec.i.i = add nsw i32 %lvl.017.i.i, -1
  %cmp.i.i = icmp sgt i32 %lvl.017.i.i, 0
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %nvkm_vmm_trace.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvkm_vmm_trace.exit.i:                            ; preds = %for.inc.i.i
  %mul.i = shl i32 %ptei.addr.0317.i, %sub.i
  %mul74.i = shl i32 %ptes.addr.2.lcssa.i, %sub.i
  %53 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vmm4.i, align 8
  %debug.i = getelementptr inbounds %struct.nvkm_vmm, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp77.i = icmp ugt i32 %56, 4
  br i1 %cmp77.i, label %do.end.i, label %nvkm_vmm_trace.exit.i.if.end92.i_crit_edge

nvkm_vmm_trace.exit.i.if.end92.i_crit_edge:       ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

do.end.i:                                         ; preds = %nvkm_vmm_trace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu.i = getelementptr inbounds %struct.nvkm_vmm, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmu.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %58, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_mmu, ptr %58, i32 0, i32 1, i32 4
  %name87.i = getelementptr inbounds %struct.nvkm_vmm, ptr %54, i32 0, i32 2
  %63 = ptrtoint ptr %name87.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name87.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.41, ptr noundef %name.i, ptr noundef %64, ptr noundef nonnull %_buf.i, i32 noundef %mul.i, i32 noundef %mul74.i) #16
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end.i, %nvkm_vmm_trace.exit.i.if.end92.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf.i) #11
  %65 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %func.i, align 4
  %sparse.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %sparse.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sparse.i, align 4
  %69 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx97.i, align 4
  call void %68(ptr noundef %19, ptr noundef %70, i32 noundef %mul.i, i32 noundef %mul74.i) #11
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf99.i) #11
  %71 = call ptr @memset(ptr %_buf99.i, i32 255, i32 35)
  %72 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %max.i.i, align 8
  %conv.i269.i = zext i16 %73 to i32
  br label %for.body.i275.i

for.body.i275.i:                                  ; preds = %for.inc.i284.i.for.body.i275.i_crit_edge, %if.end92.i
  %lvl.017.i271.i = phi i32 [ %conv.i269.i, %if.end92.i ], [ %dec.i282.i, %for.inc.i284.i.for.body.i275.i_crit_edge ]
  %buf.addr.016.i272.i = phi ptr [ %_buf99.i, %if.end92.i ], [ %add.ptr.i281.i, %for.inc.i284.i.for.body.i275.i_crit_edge ]
  %74 = ptrtoint ptr %lvl2.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %lvl2.i.i, align 2
  %conv3.i273.i = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i271.i, i32 %conv3.i273.i)
  %cmp4.not.i274.i = icmp ult i32 %lvl.017.i271.i, %conv3.i273.i
  br i1 %cmp4.not.i274.i, label %if.else.i279.i, label %if.then.i278.i

if.then.i278.i:                                   ; preds = %for.body.i275.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i276.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i271.i
  %76 = ptrtoint ptr %arrayidx.i276.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i276.i, align 4
  %call.i277.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i272.i, ptr noundef nonnull @.str.28, i32 noundef %77) #11
  br label %for.inc.i284.i

if.else.i279.i:                                   ; preds = %for.body.i275.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = call ptr @memcpy(ptr %buf.addr.016.i272.i, ptr @.str.29, i32 7)
  br label %for.inc.i284.i

for.inc.i284.i:                                   ; preds = %if.else.i279.i, %if.then.i278.i
  %call.sink.i280.i = phi i32 [ %call.i277.i, %if.then.i278.i ], [ 6, %if.else.i279.i ]
  %add.ptr.i281.i = getelementptr i8, ptr %buf.addr.016.i272.i, i32 %call.sink.i280.i
  %dec.i282.i = add nsw i32 %lvl.017.i271.i, -1
  %cmp.i283.i = icmp sgt i32 %lvl.017.i271.i, 0
  br i1 %cmp.i283.i, label %for.inc.i284.i.for.body.i275.i_crit_edge, label %nvkm_vmm_trace.exit285.i

for.inc.i284.i.for.body.i275.i_crit_edge:         ; preds = %for.inc.i284.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i275.i

nvkm_vmm_trace.exit285.i:                         ; preds = %for.inc.i284.i
  %79 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vmm4.i, align 8
  %debug105.i = getelementptr inbounds %struct.nvkm_vmm, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %debug105.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp106.i = icmp ugt i32 %82, 4
  br i1 %cmp106.i, label %do.end119.i, label %nvkm_vmm_trace.exit285.i.if.end129.i_crit_edge

nvkm_vmm_trace.exit285.i.if.end129.i_crit_edge:   ; preds = %nvkm_vmm_trace.exit285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129.i

do.end119.i:                                      ; preds = %nvkm_vmm_trace.exit285.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu111.i = getelementptr inbounds %struct.nvkm_vmm, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %mmu111.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmu111.i, align 4
  %device120.i = getelementptr inbounds %struct.nvkm_mmu, ptr %84, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %device120.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device120.i, align 4
  %dev121.i = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev121.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev121.i, align 8
  %name122.i = getelementptr inbounds %struct.nvkm_mmu, ptr %84, i32 0, i32 1, i32 4
  %name124.i = getelementptr inbounds %struct.nvkm_vmm, ptr %80, i32 0, i32 2
  %89 = ptrtoint ptr %name124.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name124.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.44, ptr noundef %name122.i, ptr noundef %90, ptr noundef nonnull %_buf99.i, i32 noundef %ptei.addr.0317.i, i32 noundef %ptes.addr.2.lcssa.i) #16
  br label %if.end129.i

if.end129.i:                                      ; preds = %do.end119.i, %nvkm_vmm_trace.exit285.i.if.end129.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf99.i) #11
  br label %for.inc182.sink.split.i

if.else.i:                                        ; preds = %for.end66.i
  %91 = ptrtoint ptr %func134.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %func134.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %tobool138.not.i = icmp eq ptr %94, null
  br i1 %tobool138.not.i, label %if.else.i.for.inc182.i_crit_edge, label %do.body140.i

if.else.i.for.inc182.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc182.i

do.body140.i:                                     ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %_buf141.i) #11
  %95 = call ptr @memset(ptr %_buf141.i, i32 255, i32 35)
  %96 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %max.i.i, align 8
  %conv.i287.i = zext i16 %97 to i32
  br label %for.body.i293.i

for.body.i293.i:                                  ; preds = %for.inc.i302.i.for.body.i293.i_crit_edge, %do.body140.i
  %lvl.017.i289.i = phi i32 [ %conv.i287.i, %do.body140.i ], [ %dec.i300.i, %for.inc.i302.i.for.body.i293.i_crit_edge ]
  %buf.addr.016.i290.i = phi ptr [ %_buf141.i, %do.body140.i ], [ %add.ptr.i299.i, %for.inc.i302.i.for.body.i293.i_crit_edge ]
  %98 = ptrtoint ptr %lvl2.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %lvl2.i.i, align 2
  %conv3.i291.i = zext i16 %99 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lvl.017.i289.i, i32 %conv3.i291.i)
  %cmp4.not.i292.i = icmp ult i32 %lvl.017.i289.i, %conv3.i291.i
  br i1 %cmp4.not.i292.i, label %if.else.i297.i, label %if.then.i296.i

if.then.i296.i:                                   ; preds = %for.body.i293.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i294.i = getelementptr %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 6, i32 %lvl.017.i289.i
  %100 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i294.i, align 4
  %call.i295.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.addr.016.i290.i, ptr noundef nonnull @.str.28, i32 noundef %101) #11
  br label %for.inc.i302.i

if.else.i297.i:                                   ; preds = %for.body.i293.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = call ptr @memcpy(ptr %buf.addr.016.i290.i, ptr @.str.29, i32 7)
  br label %for.inc.i302.i

for.inc.i302.i:                                   ; preds = %if.else.i297.i, %if.then.i296.i
  %call.sink.i298.i = phi i32 [ %call.i295.i, %if.then.i296.i ], [ 6, %if.else.i297.i ]
  %add.ptr.i299.i = getelementptr i8, ptr %buf.addr.016.i290.i, i32 %call.sink.i298.i
  %dec.i300.i = add nsw i32 %lvl.017.i289.i, -1
  %cmp.i301.i = icmp sgt i32 %lvl.017.i289.i, 0
  br i1 %cmp.i301.i, label %for.inc.i302.i.for.body.i293.i_crit_edge, label %nvkm_vmm_trace.exit303.i

for.inc.i302.i.for.body.i293.i_crit_edge:         ; preds = %for.inc.i302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i293.i

nvkm_vmm_trace.exit303.i:                         ; preds = %for.inc.i302.i
  %103 = ptrtoint ptr %vmm4.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vmm4.i, align 8
  %debug147.i = getelementptr inbounds %struct.nvkm_vmm, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %debug147.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %debug147.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp148.i = icmp ugt i32 %106, 4
  br i1 %cmp148.i, label %do.end161.i, label %nvkm_vmm_trace.exit303.i.if.end171.i_crit_edge

nvkm_vmm_trace.exit303.i.if.end171.i_crit_edge:   ; preds = %nvkm_vmm_trace.exit303.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

do.end161.i:                                      ; preds = %nvkm_vmm_trace.exit303.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmu153.i = getelementptr inbounds %struct.nvkm_vmm, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %mmu153.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmu153.i, align 4
  %device162.i = getelementptr inbounds %struct.nvkm_mmu, ptr %108, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %device162.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device162.i, align 4
  %dev163.i = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev163.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev163.i, align 8
  %name164.i = getelementptr inbounds %struct.nvkm_mmu, ptr %108, i32 0, i32 1, i32 4
  %name166.i = getelementptr inbounds %struct.nvkm_vmm, ptr %104, i32 0, i32 2
  %113 = ptrtoint ptr %name166.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name166.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.47, ptr noundef %name164.i, ptr noundef %114, ptr noundef nonnull %_buf141.i, i32 noundef %ptei.addr.0317.i, i32 noundef %ptes.addr.2.lcssa.i) #16
  br label %if.end171.i

if.end171.i:                                      ; preds = %do.end161.i, %nvkm_vmm_trace.exit303.i.if.end171.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %_buf141.i) #11
  br label %for.inc182.sink.split.i

for.inc182.sink.split.i:                          ; preds = %if.end171.i, %if.end129.i
  %115 = ptrtoint ptr %func134.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %func134.i, align 4
  %unmap.i = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %unmap.i, align 4
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %5, align 4
  call void %118(ptr noundef %19, ptr noundef %120, i32 noundef %ptei.addr.0317.i, i32 noundef %ptes.addr.2.lcssa.i) #11
  br label %for.inc182.i

for.inc182.i:                                     ; preds = %for.inc182.sink.split.i, %if.else.i.for.inc182.i_crit_edge, %for.body29.i.for.inc182.i_crit_edge
  %ptei.addr.3.i = phi i32 [ %ptei.addr.2.lcssa.i, %if.else.i.for.inc182.i_crit_edge ], [ %ptei.addr.2.lcssa.i, %for.inc182.sink.split.i ], [ %ptei.addr.1.i, %for.body29.i.for.inc182.i_crit_edge ]
  %cmp16.i = icmp ult i32 %ptei.addr.3.i, %lpti.0.lcssa.i
  br i1 %cmp16.i, label %for.inc182.i.for.body18.i_crit_edge, label %for.inc182.i.if.end_crit_edge

for.inc182.i.if.end_crit_edge:                    ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc182.i.for.body18.i_crit_edge:              ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

if.end:                                           ; preds = %for.inc182.i.if.end_crit_edge, %for.cond26.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_vmm_map_valid(ptr noundef %vmm, ptr nocapture noundef readonly %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  %call = tail call i32 %5(ptr noundef %1) #11
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call, label %do.end65 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb19_crit_edge
    i32 3, label %entry.sw.bb19_crit_edge199
  ]

entry.sw.bb19_crit_edge199:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

sw.bb:                                            ; preds = %entry
  %page = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 8
  %type = getelementptr inbounds %struct.nvkm_vmm_page, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp ugt i32 %13, 3
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %14 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 4
  %name10 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %20 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name10, align 8
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %8, align 4
  %conv12 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.61, ptr noundef %name, ptr noundef %21, i32 noundef %conv12) #16
  br label %return

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge199
  %page20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %24 = ptrtoint ptr %page20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page20, align 8
  %type21 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type21, align 4
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp eq i8 %28, 0
  br i1 %tobool24.not, label %do.body26, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body26:                                        ; preds = %sw.bb19
  %debug28 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %29 = ptrtoint ptr %debug28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp29 = icmp ugt i32 %30, 3
  br i1 %cmp29, label %do.end42, label %do.body26.return_crit_edge

do.body26.return_crit_edge:                       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end42:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %mmu34 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %31 = ptrtoint ptr %mmu34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmu34, align 4
  %device43 = getelementptr inbounds %struct.nvkm_mmu, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device43, align 4
  %dev44 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev44, align 8
  %name45 = getelementptr inbounds %struct.nvkm_mmu, ptr %32, i32 0, i32 1, i32 4
  %name47 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %37 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name47, align 8
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %25, align 4
  %conv50 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.64, ptr noundef %name45, ptr noundef %38, i32 noundef %conv50) #16
  br label %return

do.end65:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1390, i32 noundef 9, ptr noundef null) #11
  br label %return

sw.epilog:                                        ; preds = %sw.bb19.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %addr = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 2
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %addr, align 8
  %page78 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %43 = ptrtoint ptr %page78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page78, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %sh_prom = zext i8 %46 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and81 = and i64 %42, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %cmp82 = icmp eq i64 %and81, 0
  br i1 %cmp82, label %lor.lhs.false, label %sw.epilog.do.body116_crit_edge

sw.epilog.do.body116_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body116

lor.lhs.false:                                    ; preds = %sw.epilog
  %size = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %47 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %47, i32 7)
  %bf.load = load i56, ptr %size, align 8
  %bf.lshr = lshr i56 %bf.load, 6
  %bf.cast = zext i56 %bf.lshr to i64
  %and90 = and i64 %bf.cast, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90)
  %cmp91 = icmp eq i64 %and90, 0
  br i1 %cmp91, label %lor.lhs.false93, label %lor.lhs.false.do.body116_crit_edge

lor.lhs.false.do.body116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body116

lor.lhs.false93:                                  ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %offset, align 8
  %and100 = and i64 %49, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and100)
  %cmp101 = icmp eq i64 %and100, 0
  br i1 %cmp101, label %lor.lhs.false103, label %lor.lhs.false93.do.body116_crit_edge

lor.lhs.false93.do.body116_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body116

lor.lhs.false103:                                 ; preds = %lor.lhs.false93
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %page106 = getelementptr inbounds %struct.nvkm_memory_func, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %page106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %page106, align 4
  %call108 = tail call zeroext i8 %55(ptr noundef %51) #11
  %56 = ptrtoint ptr %page78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page78, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call108, i8 %59)
  %cmp113 = icmp ult i8 %call108, %59
  br i1 %cmp113, label %lor.lhs.false103.do.body116_crit_edge, label %if.end159

lor.lhs.false103.do.body116_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body116

do.body116:                                       ; preds = %lor.lhs.false103.do.body116_crit_edge, %lor.lhs.false93.do.body116_crit_edge, %lor.lhs.false.do.body116_crit_edge, %sw.epilog.do.body116_crit_edge
  %debug118 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %60 = ptrtoint ptr %debug118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp119 = icmp ugt i32 %61, 3
  br i1 %cmp119, label %do.end132, label %do.body116.return_crit_edge

do.body116.return_crit_edge:                      ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end132:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %mmu124 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %62 = ptrtoint ptr %mmu124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmu124, align 4
  %device133 = getelementptr inbounds %struct.nvkm_mmu, ptr %63, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %device133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device133, align 4
  %dev134 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev134, align 8
  %name135 = getelementptr inbounds %struct.nvkm_mmu, ptr %63, i32 0, i32 1, i32 4
  %name137 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %68 = ptrtoint ptr %name137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name137, align 8
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %addr, align 8
  %size139 = getelementptr inbounds %struct.nvkm_vma, ptr %vma, i32 0, i32 3
  %72 = ptrtoint ptr %size139 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 7)
  %bf.load140 = load i56, ptr %size139, align 8
  %bf.lshr141 = lshr i56 %bf.load140, 6
  %bf.cast142 = zext i56 %bf.lshr141 to i64
  %offset143 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %73 = ptrtoint ptr %offset143 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %offset143, align 8
  %75 = ptrtoint ptr %page78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %page78, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 4
  %conv146 = zext i8 %78 to i32
  %79 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %page149 = getelementptr inbounds %struct.nvkm_memory_func, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %page149 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %page149, align 4
  %call151 = tail call zeroext i8 %84(ptr noundef %80) #11
  %conv152 = zext i8 %call151 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.67, ptr noundef %name135, ptr noundef %69, i64 noundef %71, i64 noundef %bf.cast142, i64 noundef %74, i32 noundef %conv146, i32 noundef %conv152) #16
  br label %return

if.end159:                                        ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vmm, align 8
  %valid = getelementptr inbounds %struct.nvkm_vmm_func, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %valid, align 4
  %call161 = tail call i32 %88(ptr noundef %vmm, ptr noundef %argv, i32 noundef %argc, ptr noundef %map) #11
  br label %return

return:                                           ; preds = %if.end159, %do.end132, %do.body116.return_crit_edge, %do.end65, %do.end42, %do.body26.return_crit_edge, %do.end, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -38, %do.end65 ], [ %call161, %if.end159 ], [ -22, %do.end ], [ -22, %do.body.return_crit_edge ], [ -22, %do.end42 ], [ -22, %do.body26.return_crit_edge ], [ -22, %do.end132 ], [ -22, %do.body116.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_memory_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_sparse_unref_ptes(ptr noundef %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pt1 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7
  %0 = ptrtoint ptr %pt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pt1, align 8
  %desc = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %5, label %entry.if.end9_crit_edge [
    i32 0, label %if.then
    i32 3, label %if.then6
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pde, align 4
  %arrayidx2 = getelementptr ptr, ptr %8, i32 %ptei
  %mul = shl i32 %ptes, 2
  %9 = call ptr @memset(ptr %arrayidx2, i32 0, i32 %mul)
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx7 = getelementptr %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 5, i32 %ptei
  %10 = call ptr @memset(ptr %arrayidx7, i32 0, i32 %ptes)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then, %entry.if.end9_crit_edge
  %call = tail call zeroext i1 @nvkm_vmm_unref_ptes(ptr noundef %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes)
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_sparse_ref_ptes(ptr nocapture noundef readonly %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pt = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %it, i32 0, i32 7
  %2 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %5, label %entry.nvkm_vmm_sparse_ptes.exit_crit_edge [
    i32 0, label %while.cond.preheader.i
    i32 3, label %if.then3.i
  ]

entry.nvkm_vmm_sparse_ptes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_sparse_ptes.exit

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not10.i = icmp eq i32 %ptes, 0
  br i1 %tobool.not10.i, label %while.cond.preheader.i.nvkm_vmm_sparse_ptes.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.nvkm_vmm_sparse_ptes.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_sparse_ptes.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %pde.i = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %3, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ptes.addr.012.i = phi i32 [ %ptes, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %ptei.addr.011.i = phi i32 [ %ptei, %while.body.lr.ph.i ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %ptes.addr.012.i, -1
  %7 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pde.i, align 4
  %inc.i = add i32 %ptei.addr.011.i, 1
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %ptei.addr.011.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -16 to ptr), ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.nvkm_vmm_sparse_ptes.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.nvkm_vmm_sparse_ptes.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvkm_vmm_sparse_ptes.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i = getelementptr %struct.nvkm_vmm_pt, ptr %3, i32 0, i32 5, i32 %ptei
  %10 = call ptr @memset(ptr %arrayidx4.i, i32 128, i32 %ptes)
  br label %nvkm_vmm_sparse_ptes.exit

nvkm_vmm_sparse_ptes.exit:                        ; preds = %if.then3.i, %while.body.i.nvkm_vmm_sparse_ptes.exit_crit_edge, %while.cond.preheader.i.nvkm_vmm_sparse_ptes.exit_crit_edge, %entry.nvkm_vmm_sparse_ptes.exit_crit_edge
  %call = tail call zeroext i1 @nvkm_vmm_ref_ptes(ptr noundef %it, i1 noundef zeroext %pfn, i32 noundef %ptei, i32 noundef %ptes)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mmu_ptc_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1191, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1226, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nvkm_vmm_pfn_map._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @nvkm_vmm_pfn_map._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1640, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nvkm_vmm_get_locked._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_vmm_get_locked._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1646, i32 3}
!16 = !{ptr @nvkm_vmm_get_locked._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_vmm_get_locked._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1658, i32 3}
!20 = !{ptr @nvkm_vmm_get_locked._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_vmm_get_locked._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1673, i32 4}
!24 = !{ptr @nvkm_vmm_get_locked._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_vmm_get_locked._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1823, i32 46}
!28 = !{ptr @nvkm_vmm_ctor._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1036, i32 31}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1048, i32 28}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 684, i32 39}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 286, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nvkm_vmm_unref_ptes._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_vmm_unref_ptes._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 130, i32 4}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nvkm_vmm_flush._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nvkm_vmm_flush._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 243, i32 4}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nvkm_vmm_unref_sptes._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvkm_vmm_unref_sptes._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 251, i32 4}
!51 = !{ptr @nvkm_vmm_unref_sptes._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvkm_vmm_unref_sptes._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 103, i32 25}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 105, i32 24}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 88, i32 19}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 89, i32 19}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 90, i32 19}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 91, i32 19}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 93, i32 10}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 153, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvkm_vmm_unref_pdes._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nvkm_vmm_unref_pdes._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 189, i32 2}
!74 = !{ptr @nvkm_vmm_unref_pdes._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nvkm_vmm_unref_pdes._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 695, i32 50}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 347, i32 4}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nvkm_vmm_ref_sptes._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvkm_vmm_ref_sptes._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 350, i32 4}
!85 = !{ptr @nvkm_vmm_ref_sptes._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nvkm_vmm_ref_sptes._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 357, i32 4}
!89 = !{ptr @nvkm_vmm_ref_sptes._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @nvkm_vmm_ref_sptes._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 721, i32 39}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 710, i32 39}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1428, i32 3}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nvkm_vmm_map_locked._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @nvkm_vmm_map_locked._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1443, i32 4}
!102 = !{ptr @nvkm_vmm_map_locked._entry.53, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @nvkm_vmm_map_locked._entry_ptr.55, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1456, i32 4}
!106 = !{ptr @nvkm_vmm_map_locked._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nvkm_vmm_map_locked._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1412, i32 3}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nvkm_vmm_map_choose._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @nvkm_vmm_map_choose._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1378, i32 4}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nvkm_vmm_map_valid._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @nvkm_vmm_map_valid._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1385, i32 4}
!120 = !{ptr @nvkm_vmm_map_valid._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nvkm_vmm_map_valid._entry_ptr.65, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 1398, i32 3}
!124 = !{ptr @nvkm_vmm_map_valid._entry.66, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @nvkm_vmm_map_valid._entry_ptr.68, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 729, i32 39}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 605, i32 39}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 616, i32 51}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 737, i32 50}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 526, i32 2}
!136 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @nvkm_vmm_iter._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @nvkm_vmm_iter._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c", i32 477, i32 2}
!141 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @nvkm_vmm_ref_hwpt._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @nvkm_vmm_ref_hwpt._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2156354882, i64 2156355392, i64 2156354919, i64 2156354975, i64 2156355009, i64 2156355033, i64 2156355074, i64 2156355095, i64 2156355123, i64 2156355157}
!155 = !{i64 2156365121, i64 2156365631, i64 2156365158, i64 2156365214, i64 2156365248, i64 2156365272, i64 2156365313, i64 2156365334, i64 2156365362, i64 2156365396}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2156367942, i64 2156368452, i64 2156367979, i64 2156368035, i64 2156368069, i64 2156368093, i64 2156368134, i64 2156368155, i64 2156368183, i64 2156368217}
!158 = !{i64 2156362038, i64 2156362548, i64 2156362075, i64 2156362131, i64 2156362165, i64 2156362189, i64 2156362230, i64 2156362251, i64 2156362279, i64 2156362313}
!159 = !{i64 2156421968, i64 2156422479, i64 2156422005, i64 2156422061, i64 2156422095, i64 2156422119, i64 2156422160, i64 2156422181, i64 2156422209, i64 2156422243}
!160 = !{!"branch_weights", i32 2002, i32 2000}
!161 = !{i64 2148749434}
!162 = !{i64 2148663874, i64 2148663906, i64 2148663935, i64 2148663969, i64 2148664000, i64 2148664023}
!163 = !{i64 2149947207}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148661409, i64 2148661441, i64 2148661470, i64 2148661504, i64 2148661535, i64 2148661558}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.peeled.count", i32 1}
!168 = distinct !{!168, !167}
