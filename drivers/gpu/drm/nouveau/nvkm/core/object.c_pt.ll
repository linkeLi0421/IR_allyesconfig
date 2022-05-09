; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/object.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fini\00", [27 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nouveau: %s:%08x:%08x: %s children...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_object_fini\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/object.c\00", [53 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry_ptr = internal global ptr @nvkm_object_fini._entry, section ".printk_index", align 4
@nvkm_object_fini._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016nouveau: %s:%08x:%08x: %s running...\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry_ptr.7 = internal global ptr @nvkm_object_fini._entry.5, section ".printk_index", align 4
@nvkm_object_fini._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nouveau: %s:%08x:%08x: %s failed with %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry_ptr.10 = internal global ptr @nvkm_object_fini._entry.8, section ".printk_index", align 4
@nvkm_object_fini._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016nouveau: %s:%08x:%08x: %s completed in %lldus\0A\00", [47 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry_ptr.13 = internal global ptr @nvkm_object_fini._entry.11, section ".printk_index", align 4
@nvkm_object_fini._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012nouveau: %s:%08x:%08x: failed to restart, %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nvkm_object_fini._entry_ptr.16 = internal global ptr @nvkm_object_fini._entry.14, section ".printk_index", align 4
@nvkm_object_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016nouveau: %s:%08x:%08x: init running...\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_object_init\00", [47 x i8] zeroinitializer }, align 32
@nvkm_object_init._entry_ptr = internal global ptr @nvkm_object_init._entry, section ".printk_index", align 4
@nvkm_object_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016nouveau: %s:%08x:%08x: init children...\0A\00", [53 x i8] zeroinitializer }, align 32
@nvkm_object_init._entry_ptr.21 = internal global ptr @nvkm_object_init._entry.19, section ".printk_index", align 4
@nvkm_object_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016nouveau: %s:%08x:%08x: init completed in %lldus\0A\00", [45 x i8] zeroinitializer }, align 32
@nvkm_object_init._entry_ptr.24 = internal global ptr @nvkm_object_init._entry.22, section ".printk_index", align 4
@nvkm_object_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.4, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nouveau: %s:%08x:%08x: init failed with %d\0A\00", [50 x i8] zeroinitializer }, align 32
@nvkm_object_init._entry_ptr.27 = internal global ptr @nvkm_object_init._entry.25, section ".printk_index", align 4
@nvkm_object_dtor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016nouveau: %s:%08x:%08x: destroy children...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_object_dtor\00", [47 x i8] zeroinitializer }, align 32
@nvkm_object_dtor._entry_ptr = internal global ptr @nvkm_object_dtor._entry, section ".printk_index", align 4
@nvkm_object_dtor._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nouveau: %s:%08x:%08x: destroy running...\0A\00", [51 x i8] zeroinitializer }, align 32
@nvkm_object_dtor._entry_ptr.32 = internal global ptr @nvkm_object_dtor._entry.30, section ".printk_index", align 4
@nvkm_object_dtor._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016nouveau: %s:%08x:%08x: destroy completed in %lldus...\0A\00", [39 x i8] zeroinitializer }, align 32
@nvkm_object_dtor._entry_ptr.35 = internal global ptr @nvkm_object_dtor._entry.33, section ".printk_index", align 4
@nvkm_object_func = internal constant { %struct.nvkm_object_func, [36 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 181, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 181, i32 45 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 186, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 194, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 198, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 205, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 212, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 228, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 236, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 244, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 251, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 264, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 270, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 276, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"nvkm_object_func\00", align 1
@___asan_gen_.127 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/object.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 1 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @nvkm_object_dtor._entry, ptr @nvkm_object_dtor._entry.30, ptr @nvkm_object_dtor._entry.33, ptr @nvkm_object_dtor._entry_ptr, ptr @nvkm_object_dtor._entry_ptr.32, ptr @nvkm_object_dtor._entry_ptr.35, ptr @nvkm_object_fini._entry, ptr @nvkm_object_fini._entry.11, ptr @nvkm_object_fini._entry.14, ptr @nvkm_object_fini._entry.5, ptr @nvkm_object_fini._entry.8, ptr @nvkm_object_fini._entry_ptr, ptr @nvkm_object_fini._entry_ptr.10, ptr @nvkm_object_fini._entry_ptr.13, ptr @nvkm_object_fini._entry_ptr.16, ptr @nvkm_object_fini._entry_ptr.7, ptr @nvkm_object_init._entry, ptr @nvkm_object_init._entry.19, ptr @nvkm_object_init._entry.22, ptr @nvkm_object_init._entry.25, ptr @nvkm_object_init._entry_ptr, ptr @nvkm_object_init._entry_ptr.21, ptr @nvkm_object_init._entry_ptr.24, ptr @nvkm_object_init._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @nvkm_object_func], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_fini._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_fini._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_fini._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_fini._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_dtor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_dtor._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_dtor._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_object_func to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_object_search(ptr noundef readonly %client, i64 noundef %handle, ptr noundef readnone %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %handle)
  %tobool.not = icmp eq i64 %handle, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.then

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then:                                          ; preds = %entry
  %objroot = getelementptr inbounds %struct.nvkm_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %objroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.032 = load ptr, ptr %objroot, align 4
  %tobool1.not33 = icmp eq ptr %node.032, null
  br i1 %tobool1.not33, label %if.then.cleanup20_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %if.then.while.body_crit_edge
  %node.034 = phi ptr [ %node.0, %if.end8.while.body_crit_edge ], [ %node.032, %if.then.while.body_crit_edge ]
  %object2 = getelementptr i8, ptr %node.034, i32 -8
  %1 = ptrtoint ptr %object2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %object2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %handle)
  %cmp = icmp ugt i64 %2, %handle
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.034, i32 0, i32 2
  br label %if.end8

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %handle)
  %cmp5 = icmp ult i64 %2, %handle
  br i1 %cmp5, label %if.then6, label %done.loopexit

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.034, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3
  %node.1.in = phi ptr [ %rb_left, %if.then3 ], [ %rb_right, %if.then6 ]
  %3 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool1.not = icmp eq ptr %node.0, null
  br i1 %tobool1.not, label %if.end8.cleanup20_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end8.cleanup20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

done.loopexit:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.le = getelementptr i8, ptr %node.034, i32 -56
  br label %done

done:                                             ; preds = %done.loopexit, %entry.done_crit_edge
  %object.2 = phi ptr [ %client, %entry.done_crit_edge ], [ %add.ptr.le, %done.loopexit ]
  %tobool12.not = icmp eq ptr %func, null
  br i1 %tobool12.not, label %done.cleanup20_crit_edge, label %land.rhs

done.cleanup20_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

land.rhs:                                         ; preds = %done
  %4 = ptrtoint ptr %object.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object.2, align 8
  %cmp14.not = icmp eq ptr %5, %func
  br i1 %cmp14.not, label %land.rhs.cleanup20_crit_edge, label %if.then17, !prof !67

land.rhs.cleanup20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.then17, %land.rhs.cleanup20_crit_edge, %done.cleanup20_crit_edge, %if.end8.cleanup20_crit_edge, %if.then.cleanup20_crit_edge
  %retval.1 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then17 ], [ %object.2, %done.cleanup20_crit_edge ], [ %object.2, %land.rhs.cleanup20_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then.cleanup20_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end8.cleanup20_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_object_remove(ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 10
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 8
  %2 = ptrtoint ptr %node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %objroot = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %node, ptr noundef %objroot) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_object_insert(ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %objroot = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %objroot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objroot, align 4
  %tobool.not32 = icmp eq ptr %3, null
  br i1 %tobool.not32, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %object1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 9
  %4 = ptrtoint ptr %object1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %object1, align 8
  br label %while.body

while.cond:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %10)
  %cmp = icmp ult i64 %5, %10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %10)
  %cmp5 = icmp ugt i64 %5, %10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  %spec.select = select i1 %cmp5, ptr %rb_right, ptr %ptr.033
  %ptr.2 = select i1 %cmp, ptr %rb_left, ptr %spec.select
  %6 = ptrtoint ptr %ptr.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %3, %while.body.lr.ph ], [ %7, %while.cond.while.body_crit_edge ]
  %ptr.033 = phi ptr [ %objroot, %while.body.lr.ph ], [ %ptr.2, %while.cond.while.body_crit_edge ]
  %object2 = getelementptr i8, ptr %8, i32 -8
  %9 = ptrtoint ptr %object2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %object2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %10)
  %.not = icmp eq i64 %5, %10
  br i1 %.not, label %while.body.cleanup12_crit_edge, label %while.cond

while.body.cleanup12_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %8, %while.cond.while.end_crit_edge ]
  %ptr.0.lcssa = phi ptr [ %objroot, %entry.while.end_crit_edge ], [ %ptr.2, %while.cond.while.end_crit_edge ]
  %node = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 10
  %11 = ptrtoint ptr %parent.0.lcssa to i32
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %node, align 4
  %rb_right.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.i, align 4
  %15 = ptrtoint ptr %ptr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %ptr.0.lcssa, align 4
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %objroot11 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 5
  tail call void @rb_insert_color(ptr noundef %node, ptr noundef %objroot11) #6
  br label %cleanup12

cleanup12:                                        ; preds = %while.end, %while.body.cleanup12_crit_edge
  %tobool.not29 = phi i1 [ true, %while.end ], [ false, %while.body.cleanup12_crit_edge ]
  ret i1 %tobool.not29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_mthd(ptr noundef %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %mthd1 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mthd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mthd1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_ntfy(ptr noundef %object, i32 noundef %mthd, ptr noundef %pevent) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %ntfy = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntfy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i32 noundef %mthd, ptr noundef %pevent) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_map(ptr noundef %object, ptr noundef %argv, i32 noundef %argc, ptr noundef %type, ptr noundef %addr, ptr noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %map = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, ptr noundef %argv, i32 noundef %argc, ptr noundef %type, ptr noundef %addr, ptr noundef %size) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_unmap(ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %unmap = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd08(ptr noundef %object, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %rd08 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rd08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd08, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, ptr noundef %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd16(ptr noundef %object, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %rd16 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rd16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd16, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, ptr noundef %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_rd32(ptr noundef %object, i64 noundef %addr, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd32, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, ptr noundef %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr08(ptr noundef %object, i64 noundef %addr, i8 noundef zeroext %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %wr08 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wr08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr08, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, i8 noundef zeroext %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr16(ptr noundef %object, i64 noundef %addr, i16 noundef zeroext %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %wr16 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %wr16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr16, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, i16 noundef zeroext %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_wr32(ptr noundef %object, i64 noundef %addr, i32 noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then, !prof !68

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, i64 noundef %addr, i32 noundef %data) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_bind(ptr noundef %object, ptr noundef %gpuobj, i32 noundef %align, ptr noundef %pgpuobj) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %bind = getelementptr inbounds %struct.nvkm_object_func, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bind, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %object, ptr noundef %gpuobj, i32 noundef %align, ptr noundef %pgpuobj) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_fini(ptr noundef %object, i1 noundef zeroext %suspend) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %suspend, ptr @.str, ptr @.str.1
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %cond) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %cmp8.i.i = icmp slt i64 %call4, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %call4, i1 false) #6
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #10, !srcloc !69
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !70
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %11 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %tree = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %tree, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, %tree
  br i1 %cmp8.not, label %do.body20, label %for.body

for.body:                                         ; preds = %for.cond
  %child.0 = getelementptr i8, ptr %.pn, i32 -20
  %call10 = tail call i32 @nvkm_object_fini(ptr noundef %child.0, i1 noundef zeroext %suspend)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp ne i32 %call10, 0
  %13 = and i1 %tobool11.not, %suspend
  br i1 %13, label %for.body.fail_child_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.fail_child_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_child

do.body20:                                        ; preds = %for.cond
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %debug24 = getelementptr inbounds %struct.nvkm_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %debug24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp25 = icmp ugt i32 %17, 3
  br i1 %cmp25, label %do.end29, label %do.body20.if.end36_crit_edge

do.body20.if.end36_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end29:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %name31 = getelementptr inbounds %struct.nvkm_client, ptr %15, i32 0, i32 1
  %handle33 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %18 = ptrtoint ptr %handle33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle33, align 8
  %oclass34 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %20 = ptrtoint ptr %oclass34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oclass34, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name31, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %cond) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end29, %do.body20.if.end36_crit_edge
  %22 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %object, align 8
  %fini = getelementptr inbounds %struct.nvkm_object_func, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fini, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %if.end36.if.end70_crit_edge, label %if.then40

if.end36.if.end70_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then40:                                        ; preds = %if.end36
  %call44 = tail call i32 %25(ptr noundef %object, i1 noundef zeroext %suspend) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then40.if.end70_crit_edge, label %do.body47

if.then40.if.end70_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body47:                                        ; preds = %if.then40
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 4
  %debug51 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %debug51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp52.not = icmp eq i32 %29, 0
  br i1 %cmp52.not, label %do.body47.if.end63_crit_edge, label %do.end56

do.body47.if.end63_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end56:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %name58 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 1
  %handle60 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %30 = ptrtoint ptr %handle60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handle60, align 8
  %oclass61 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %32 = ptrtoint ptr %oclass61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oclass61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name58, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %cond, i32 noundef %call44) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end56, %do.body47.if.end63_crit_edge
  br i1 %suspend, label %fail, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end70:                                         ; preds = %if.end63.if.end70_crit_edge, %if.then40.if.end70_crit_edge, %if.end36.if.end70_crit_edge
  %call71 = tail call i64 @ktime_get() #6
  %34 = tail call i64 @llvm.abs.i64(i64 %call71, i1 false) #6
  %35 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %34, i32 0) #10, !srcloc !69
  %asmresult.i.i.i191 = extractvalue { i64, i32 } %35, 0
  %asmresult4.i.i.i192 = extractvalue { i64, i32 } %35, 1
  %36 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %34, i64 %asmresult.i.i.i191, i32 %asmresult4.i.i.i192) #10, !srcloc !70
  %37 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client, align 4
  %debug77 = getelementptr inbounds %struct.nvkm_client, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %debug77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp78 = icmp ugt i32 %40, 3
  br i1 %cmp78, label %do.end82, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call71)
  %cmp8.i.i190 = icmp slt i64 %call71, 0
  %asmresult10.i.i.i193 = extractvalue { i64, i32 } %36, 0
  %div1811.i.i194 = lshr i64 %asmresult10.i.i.i193, 9
  %sub210.i.i195 = sub nsw i64 0, %div1811.i.i194
  %cond213.i.i196 = select i1 %cmp8.i.i190, i64 %sub210.i.i195, i64 %div1811.i.i194
  %sub = add nsw i64 %cond213.i.i196, %11
  %name84 = getelementptr inbounds %struct.nvkm_client, ptr %38, i32 0, i32 1
  %handle86 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %41 = ptrtoint ptr %handle86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle86, align 8
  %oclass87 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %43 = ptrtoint ptr %oclass87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oclass87, align 4
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name84, i32 noundef %42, i32 noundef %44, ptr noundef nonnull %cond, i64 noundef %sub) #9
  br label %cleanup

fail:                                             ; preds = %if.end63
  %45 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %object, align 8
  %init = getelementptr inbounds %struct.nvkm_object_func, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init, align 4
  %tobool93.not = icmp eq ptr %48, null
  br i1 %tobool93.not, label %fail.fail_child_crit_edge, label %if.then94

fail.fail_child_crit_edge:                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_child

if.then94:                                        ; preds = %fail
  %call97 = tail call i32 %48(ptr noundef %object) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then94.fail_child_crit_edge, label %do.end109

if.then94.fail_child_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_child

do.end109:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client, align 4
  %name111 = getelementptr inbounds %struct.nvkm_client, ptr %50, i32 0, i32 1
  %handle113 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %51 = ptrtoint ptr %handle113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle113, align 8
  %oclass114 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %53 = ptrtoint ptr %oclass114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %oclass114, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name111, i32 noundef %52, i32 noundef %54, i32 noundef %call97) #9
  br label %fail_child

fail_child:                                       ; preds = %do.end109, %if.then94.fail_child_crit_edge, %fail.fail_child_crit_edge, %for.body.fail_child_crit_edge
  %.pn204 = phi ptr [ %tree, %fail.fail_child_crit_edge ], [ %tree, %do.end109 ], [ %tree, %if.then94.fail_child_crit_edge ], [ %.pn, %for.body.fail_child_crit_edge ]
  %ret.0 = phi i32 [ %call44, %fail.fail_child_crit_edge ], [ %call44, %do.end109 ], [ %call44, %if.then94.fail_child_crit_edge ], [ %call10, %for.body.fail_child_crit_edge ]
  %.pn189.in199 = getelementptr inbounds %struct.list_head, ptr %.pn204, i32 0, i32 1
  %55 = ptrtoint ptr %.pn189.in199 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn189200 = load ptr, ptr %.pn189.in199, align 4
  %cmp128.not201 = icmp eq ptr %.pn189200, %tree
  br i1 %cmp128.not201, label %fail_child.cleanup_crit_edge, label %fail_child.for.body130_crit_edge

fail_child.for.body130_crit_edge:                 ; preds = %fail_child
  br label %for.body130

fail_child.cleanup_crit_edge:                     ; preds = %fail_child
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %fail_child.for.body130_crit_edge
  %.pn189202 = phi ptr [ %.pn189, %for.body130.for.body130_crit_edge ], [ %.pn189200, %fail_child.for.body130_crit_edge ]
  %child.1 = getelementptr i8, ptr %.pn189202, i32 -20
  %call131 = tail call i32 @nvkm_object_init(ptr noundef %child.1)
  %.pn189.in = getelementptr inbounds %struct.list_head, ptr %.pn189202, i32 0, i32 1
  %56 = ptrtoint ptr %.pn189.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn189 = load ptr, ptr %.pn189.in, align 4
  %cmp128.not = icmp eq ptr %.pn189, %tree
  br i1 %cmp128.not, label %for.body130.cleanup_crit_edge, label %for.body130.for.body130_crit_edge

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body130

for.body130.cleanup_crit_edge:                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body130.cleanup_crit_edge, %fail_child.cleanup_crit_edge, %do.end82, %if.end70.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end82 ], [ 0, %if.end70.cleanup_crit_edge ], [ %ret.0, %fail_child.cleanup_crit_edge ], [ %ret.0, %for.body130.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_init(ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %5, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %cmp8.i.i = icmp slt i64 %call4, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %call4, i1 false) #6
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #10, !srcloc !69
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !70
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %11 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %12 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %object, align 8
  %init = getelementptr inbounds %struct.nvkm_object_func, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.do.body14_crit_edge, label %if.then6

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then6:                                         ; preds = %if.end
  %call9 = tail call i32 %15(ptr noundef %object) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then6.do.body14_crit_edge, label %if.then6.do.body84_crit_edge

if.then6.do.body84_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

if.then6.do.body14_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

do.body14:                                        ; preds = %if.then6.do.body14_crit_edge, %if.end.do.body14_crit_edge
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %debug18 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %debug18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp19 = icmp ugt i32 %19, 3
  br i1 %cmp19, label %do.end23, label %do.body14.if.end30_crit_edge

do.body14.if.end30_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end23:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %name25 = getelementptr inbounds %struct.nvkm_client, ptr %17, i32 0, i32 1
  %handle27 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %20 = ptrtoint ptr %handle27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle27, align 8
  %oclass28 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %22 = ptrtoint ptr %oclass28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oclass28, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name25, i32 noundef %21, i32 noundef %23) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end23, %do.body14.if.end30_crit_edge
  %tree = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end30
  %.pn.in = phi ptr [ %tree, %if.end30 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %24 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp35.not = icmp eq ptr %.pn, %tree
  br i1 %cmp35.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %child.0 = getelementptr i8, ptr %.pn, i32 -20
  %call36 = tail call i32 @nvkm_object_init(ptr noundef %child.0)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.body.for.cond_crit_edge, label %for.cond70.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.cond70.preheader:                             ; preds = %for.body
  %.pn147.in156 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %25 = ptrtoint ptr %.pn147.in156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn147157 = load ptr, ptr %.pn147.in156, align 4
  %cmp73.not158 = icmp eq ptr %.pn147157, %tree
  br i1 %cmp73.not158, label %for.cond70.preheader.do.body84_crit_edge, label %for.cond70.preheader.for.body75_crit_edge

for.cond70.preheader.for.body75_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body75

for.cond70.preheader.do.body84_crit_edge:         ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

for.end:                                          ; preds = %for.cond
  %call45 = tail call i64 @ktime_get() #6
  %26 = tail call i64 @llvm.abs.i64(i64 %call45, i1 false) #6
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #10, !srcloc !69
  %asmresult.i.i.i149 = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i150 = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %asmresult.i.i.i149, i32 %asmresult4.i.i.i150) #10, !srcloc !70
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %debug51 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %debug51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp52 = icmp ugt i32 %32, 3
  br i1 %cmp52, label %do.end56, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end56:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call45)
  %cmp8.i.i148 = icmp slt i64 %call45, 0
  %asmresult10.i.i.i151 = extractvalue { i64, i32 } %28, 0
  %div1811.i.i152 = lshr i64 %asmresult10.i.i.i151, 9
  %sub210.i.i153 = sub nsw i64 0, %div1811.i.i152
  %cond213.i.i154 = select i1 %cmp8.i.i148, i64 %sub210.i.i153, i64 %div1811.i.i152
  %sub = add nsw i64 %cond213.i.i154, %11
  %name58 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 1
  %handle60 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %33 = ptrtoint ptr %handle60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle60, align 8
  %oclass61 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %35 = ptrtoint ptr %oclass61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oclass61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name58, i32 noundef %34, i32 noundef %36, i64 noundef %sub) #9
  br label %cleanup

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond70.preheader.for.body75_crit_edge
  %.pn147159 = phi ptr [ %.pn147, %for.body75.for.body75_crit_edge ], [ %.pn147157, %for.cond70.preheader.for.body75_crit_edge ]
  %child.1 = getelementptr i8, ptr %.pn147159, i32 -20
  %call76 = tail call i32 @nvkm_object_fini(ptr noundef %child.1, i1 noundef zeroext false)
  %.pn147.in = getelementptr inbounds %struct.list_head, ptr %.pn147159, i32 0, i32 1
  %37 = ptrtoint ptr %.pn147.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn147 = load ptr, ptr %.pn147.in, align 4
  %cmp73.not = icmp eq ptr %.pn147, %tree
  br i1 %cmp73.not, label %for.body75.do.body84_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body75

for.body75.do.body84_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body84

do.body84:                                        ; preds = %for.body75.do.body84_crit_edge, %for.cond70.preheader.do.body84_crit_edge, %if.then6.do.body84_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then6.do.body84_crit_edge ], [ %call36, %for.cond70.preheader.do.body84_crit_edge ], [ %call36, %for.body75.do.body84_crit_edge ]
  %38 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client, align 4
  %debug88 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %debug88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp89.not = icmp eq i32 %41, 0
  br i1 %cmp89.not, label %do.body84.if.end100_crit_edge, label %do.end93

do.body84.if.end100_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

do.end93:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %name95 = getelementptr inbounds %struct.nvkm_client, ptr %39, i32 0, i32 1
  %handle97 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %42 = ptrtoint ptr %handle97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %handle97, align 8
  %oclass98 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %44 = ptrtoint ptr %oclass98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oclass98, align 4
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name95, i32 noundef %43, i32 noundef %45, i32 noundef %ret.0) #9
  br label %if.end100

if.end100:                                        ; preds = %do.end93, %do.body84.if.end100_crit_edge
  %46 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %object, align 8
  %fini = getelementptr inbounds %struct.nvkm_object_func, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fini, align 4
  %tobool104.not = icmp eq ptr %49, null
  br i1 %tobool104.not, label %if.end100.cleanup_crit_edge, label %if.then105

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 %49(ptr noundef %object, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end100.cleanup_crit_edge, %do.end56, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end56 ], [ 0, %for.end.cleanup_crit_edge ], [ %ret.0, %if.then105 ], [ %ret.0, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_object_dtor(ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %5, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %cmp8.i.i = icmp slt i64 %call4, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %call4, i1 false) #6
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #10, !srcloc !69
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !70
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %11 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %tree = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 6
  %12 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tree, align 4
  %cmp13.not98 = icmp eq ptr %13, %tree
  br i1 %cmp13.not98, label %if.end.do.body19_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

for.body:                                         ; preds = %nvkm_object_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.pn99 = phi ptr [ %.pn, %nvkm_object_del.exit.for.body_crit_edge ], [ %13, %if.end.for.body_crit_edge ]
  %storemerge101 = getelementptr i8, ptr %.pn.pn99, i32 -20
  %14 = ptrtoint ptr %.pn.pn99 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.pn99, align 4
  %tobool.not.i = icmp eq ptr %storemerge101, null
  br i1 %tobool.not.i, label %for.body.nvkm_object_del.exit_crit_edge, label %land.lhs.true.i

for.body.nvkm_object_del.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_del.exit

land.lhs.true.i:                                  ; preds = %for.body
  %15 = ptrtoint ptr %storemerge101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %storemerge101, align 8
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.then23.critedge.i, !prof !68

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 284, i32 noundef 9, ptr noundef null) #6
  br label %nvkm_object_del.exit

if.then23.critedge.i:                             ; preds = %land.lhs.true.i
  %call.i = tail call ptr @nvkm_object_dtor(ptr noundef nonnull %storemerge101) #6
  %node.i = getelementptr i8, ptr %.pn.pn99, i32 36
  %17 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node.i, align 8
  %19 = ptrtoint ptr %node.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp.i = icmp eq i32 %18, %19
  br i1 %cmp.i, label %if.then23.critedge.i.nvkm_object_remove.exit_crit_edge, label %if.then.i95

if.then23.critedge.i.nvkm_object_remove.exit_crit_edge: ; preds = %if.then23.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_remove.exit

if.then.i95:                                      ; preds = %if.then23.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr i8, ptr %.pn.pn99, i32 -16
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %objroot.i = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %node.i, ptr noundef %objroot.i) #6
  br label %nvkm_object_remove.exit

nvkm_object_remove.exit:                          ; preds = %if.then.i95, %if.then23.critedge.i.nvkm_object_remove.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.pn99) #6
  br i1 %call.i.i, label %if.end.i.i, label %nvkm_object_remove.exit.list_del.exit_crit_edge

nvkm_object_remove.exit.list_del.exit_crit_edge:  ; preds = %nvkm_object_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %nvkm_object_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.pn99, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn.pn99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.pn99, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %nvkm_object_remove.exit.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn.pn99 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.pn99, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.pn99, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %call.i) #6
  br label %nvkm_object_del.exit

nvkm_object_del.exit:                             ; preds = %list_del.exit, %do.end.i, %for.body.nvkm_object_del.exit_crit_edge
  %cmp13.not = icmp eq ptr %.pn, %tree
  br i1 %cmp13.not, label %nvkm_object_del.exit.do.body19_crit_edge, label %nvkm_object_del.exit.for.body_crit_edge

nvkm_object_del.exit.for.body_crit_edge:          ; preds = %nvkm_object_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

nvkm_object_del.exit.do.body19_crit_edge:         ; preds = %nvkm_object_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

do.body19:                                        ; preds = %nvkm_object_del.exit.do.body19_crit_edge, %if.end.do.body19_crit_edge
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %debug23 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %debug23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp24 = icmp ugt i32 %33, 3
  br i1 %cmp24, label %do.end28, label %do.body19.if.end35_crit_edge

do.body19.if.end35_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end28:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %name30 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 1
  %handle32 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %34 = ptrtoint ptr %handle32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle32, align 8
  %oclass33 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %36 = ptrtoint ptr %oclass33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oclass33, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name30, i32 noundef %35, i32 noundef %37) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end28, %do.body19.if.end35_crit_edge
  %38 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %object, align 8
  %unmap.i = getelementptr inbounds %struct.nvkm_object_func, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i86 = icmp eq ptr %41, null
  br i1 %tobool.not.i86, label %if.end35.nvkm_object_unmap.exit_crit_edge, label %if.then.i, !prof !68

if.end35.nvkm_object_unmap.exit_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_unmap.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call.i87 = tail call i32 %41(ptr noundef %object) #6
  br label %nvkm_object_unmap.exit

nvkm_object_unmap.exit:                           ; preds = %if.then.i, %if.end35.nvkm_object_unmap.exit_crit_edge
  %42 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %object, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %nvkm_object_unmap.exit.if.end43_crit_edge, label %if.then39

nvkm_object_unmap.exit.if.end43_crit_edge:        ; preds = %nvkm_object_unmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %nvkm_object_unmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call ptr %45(ptr noundef %object) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %nvkm_object_unmap.exit.if.end43_crit_edge
  %data.0 = phi ptr [ %call42, %if.then39 ], [ %object, %nvkm_object_unmap.exit.if.end43_crit_edge ]
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  tail call void @nvkm_engine_unref(ptr noundef %engine) #6
  %call44 = tail call i64 @ktime_get() #6
  %46 = tail call i64 @llvm.abs.i64(i64 %call44, i1 false) #6
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %46, i32 0) #10, !srcloc !69
  %asmresult.i.i.i89 = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i90 = extractvalue { i64, i32 } %47, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %46, i64 %asmresult.i.i.i89, i32 %asmresult4.i.i.i90) #10, !srcloc !70
  %49 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client, align 4
  %debug50 = getelementptr inbounds %struct.nvkm_client, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %debug50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp51 = icmp ugt i32 %52, 3
  br i1 %cmp51, label %do.end55, label %if.end43.if.end62_crit_edge

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call44)
  %cmp8.i.i88 = icmp slt i64 %call44, 0
  %asmresult10.i.i.i91 = extractvalue { i64, i32 } %48, 0
  %div1811.i.i92 = lshr i64 %asmresult10.i.i.i91, 9
  %sub210.i.i93 = sub nsw i64 0, %div1811.i.i92
  %cond213.i.i94 = select i1 %cmp8.i.i88, i64 %sub210.i.i93, i64 %div1811.i.i92
  %sub = add nsw i64 %cond213.i.i94, %11
  %name57 = getelementptr inbounds %struct.nvkm_client, ptr %50, i32 0, i32 1
  %handle59 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %53 = ptrtoint ptr %handle59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %handle59, align 8
  %oclass60 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %55 = ptrtoint ptr %oclass60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oclass60, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name57, i32 noundef %54, i32 noundef %56, i64 noundef %sub) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end55, %if.end43.if.end62_crit_edge
  ret ptr %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_object_del(ptr nocapture noundef %pobject) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pobject to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pobject, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %land.lhs.true

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.then23.critedge, !prof !68

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 284, i32 noundef 9, ptr noundef null) #6
  br label %if.end24

if.then23.critedge:                               ; preds = %land.lhs.true
  %call = tail call ptr @nvkm_object_dtor(ptr noundef nonnull %1)
  %4 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %pobject, align 4
  %node.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node.i, align 8
  %7 = ptrtoint ptr %node.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp.i = icmp eq i32 %6, %7
  br i1 %cmp.i, label %if.then23.critedge.nvkm_object_remove.exit_crit_edge, label %if.then.i

if.then23.critedge.nvkm_object_remove.exit_crit_edge: ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_remove.exit

if.then.i:                                        ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %objroot.i = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %node.i, ptr noundef %objroot.i) #6
  br label %nvkm_object_remove.exit

nvkm_object_remove.exit:                          ; preds = %if.then.i, %if.then23.critedge.nvkm_object_remove.exit_crit_edge
  %head = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i, label %if.end.i.i, label %nvkm_object_remove.exit.list_del.exit_crit_edge

nvkm_object_remove.exit.list_del.exit_crit_edge:  ; preds = %nvkm_object_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %nvkm_object_remove.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %nvkm_object_remove.exit.list_del.exit_crit_edge
  %16 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %pobject to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pobject, align 4
  tail call void @kfree(ptr noundef %19) #6
  %20 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pobject, align 4
  br label %if.end24

if.end24:                                         ; preds = %list_del.exit, %do.end, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_object_ctor(ptr noundef %func, ptr nocapture noundef readonly %oclass, ptr noundef %object) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %object, align 8
  %client = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 8
  %client2 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %3 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %client2, align 4
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %4 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine, align 8
  %call = tail call ptr @nvkm_engine_ref(ptr noundef %5) #6
  %engine3 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %6 = ptrtoint ptr %engine3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %engine3, align 8
  %oclass4 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %oclass4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass4, align 4
  %oclass5 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %9 = ptrtoint ptr %oclass5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %oclass5, align 4
  %handle = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 8
  %handle6 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %12 = ptrtoint ptr %handle6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %handle6, align 8
  %route = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 5
  %13 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %route, align 4
  %route7 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 7
  %15 = ptrtoint ptr %route7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %route7, align 4
  %token = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %16 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %token, align 8
  %token8 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 8
  %18 = ptrtoint ptr %token8 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %token8, align 8
  %object9 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %19 = ptrtoint ptr %object9 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %object9, align 8
  %object10 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 9
  %21 = ptrtoint ptr %object10 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %object10, align 8
  %head = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 5
  %22 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head, ptr %prev.i, align 4
  %tree = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 6
  %24 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tree, ptr %tree, align 4
  %prev.i51 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tree, ptr %prev.i51, align 4
  %node = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 10
  %26 = ptrtoint ptr %node to i32
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %node, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge, !prof !68

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_engine_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_new_(ptr noundef %func, ptr nocapture noundef readonly %oclass, ptr nocapture readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #11
  %1 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pobject, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %client.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 8
  %client2.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %client2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %client2.i, align 4
  %engine.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %6 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %engine.i, align 8
  %call.i = tail call ptr @nvkm_engine_ref(ptr noundef %7) #6
  %engine3.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %engine3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %engine3.i, align 8
  %oclass4.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %oclass4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oclass4.i, align 4
  %oclass5.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %oclass5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %oclass5.i, align 4
  %handle.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %12 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle.i, align 8
  %handle6.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %handle6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %handle6.i, align 8
  %route.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 5
  %15 = ptrtoint ptr %route.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %route.i, align 4
  %route7.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %route7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %route7.i, align 4
  %token.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %18 = ptrtoint ptr %token.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %token.i, align 8
  %token8.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %token8.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %token8.i, align 8
  %object9.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %21 = ptrtoint ptr %object9.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %object9.i, align 8
  %object10.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %object10.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %object10.i, align 8
  %head.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head.i, ptr %prev.i.i, align 8
  %tree.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %tree.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %tree.i, ptr %tree.i, align 4
  %prev.i51.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev.i51.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tree.i, ptr %prev.i51.i, align 8
  %node.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %node.i to i32
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %node.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.return_crit_edge, !prof !68

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end.i, %if.end.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.return_crit_edge ], [ -38, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_object_new(ptr nocapture noundef readonly %oclass, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @nvkm_object_func, ptr %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.i = icmp eq i32 %size, 0
  br i1 %cmp.i, label %if.then.i, label %entry.nvkm_object_new_.exit_crit_edge

entry.nvkm_object_new_.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_new_.exit

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #11
  %3 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %pobject, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i.nvkm_object_new_.exit_crit_edge, label %if.end.i

if.then.i.nvkm_object_new_.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_new_.exit

if.end.i:                                         ; preds = %if.then.i
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %call7.i.i.i, align 8
  %client.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 8
  %client2.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %client2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %client2.i.i, align 4
  %engine.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %8 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine.i.i, align 8
  %call.i.i = tail call ptr @nvkm_engine_ref(ptr noundef %9) #6
  %engine3.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %engine3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %engine3.i.i, align 8
  %oclass4.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %oclass4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass4.i.i, align 4
  %oclass5.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %oclass5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %oclass5.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %14 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle.i.i, align 8
  %handle6.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %handle6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %handle6.i.i, align 8
  %route.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 5
  %17 = ptrtoint ptr %route.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %route.i.i, align 4
  %route7.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %route7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %route7.i.i, align 4
  %token.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %20 = ptrtoint ptr %token.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %token.i.i, align 8
  %token8.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %token8.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %token8.i.i, align 8
  %object9.i.i = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %23 = ptrtoint ptr %object9.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %object9.i.i, align 8
  %object10.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %object10.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %object10.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %head.i.i, ptr %head.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %head.i.i, ptr %prev.i.i.i, align 8
  %tree.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %tree.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %tree.i.i, ptr %tree.i.i, align 4
  %prev.i51.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tree.i.i, ptr %prev.i51.i.i, align 8
  %node.i.i = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %node.i.i to i32
  %31 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %node.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.nvkm_object_new_.exit_crit_edge, !prof !68

if.end.i.nvkm_object_new_.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_object_new_.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %nvkm_object_new_.exit

nvkm_object_new_.exit:                            ; preds = %do.end.i.i, %if.end.i.nvkm_object_new_.exit_crit_edge, %if.then.i.nvkm_object_new_.exit_crit_edge, %entry.nvkm_object_new_.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then.i.nvkm_object_new_.exit_crit_edge ], [ -38, %entry.nvkm_object_new_.exit_crit_edge ], [ 0, %if.end.i.nvkm_object_new_.exit_crit_edge ], [ 0, %do.end.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 181, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 181, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 186, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_object_fini._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_object_fini._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 194, i32 2}
!12 = !{ptr @nvkm_object_fini._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_object_fini._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 198, i32 4}
!16 = !{ptr @nvkm_object_fini._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_object_fini._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 205, i32 2}
!20 = !{ptr @nvkm_object_fini._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_object_fini._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 212, i32 4}
!24 = !{ptr @nvkm_object_fini._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvkm_object_fini._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 228, i32 2}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvkm_object_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_object_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 236, i32 2}
!33 = !{ptr @nvkm_object_init._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvkm_object_init._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 244, i32 2}
!37 = !{ptr @nvkm_object_init._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_object_init._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 251, i32 2}
!41 = !{ptr @nvkm_object_init._entry.25, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_object_init._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 264, i32 2}
!45 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nvkm_object_dtor._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nvkm_object_dtor._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 270, i32 2}
!50 = !{ptr @nvkm_object_dtor._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nvkm_object_dtor._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 276, i32 2}
!54 = !{ptr @nvkm_object_dtor._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nvkm_object_dtor._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @nvkm_object_func, !57, !"nvkm_object_func", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/object.c", i32 326, i32 1}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 956661, i64 956688, i64 956710, i64 956738}
!70 = !{i64 957069, i64 957096, i64 957129, i64 957150, i64 957177, i64 957203}
