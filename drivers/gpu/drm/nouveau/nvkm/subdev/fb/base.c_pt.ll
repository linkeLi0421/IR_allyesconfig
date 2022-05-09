; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.152, %struct.anon.153, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.152 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.153 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.140, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.140 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.116 }
%struct.anon.116 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvbios_M0203E = type { i8, i8, i8 }

@nvkm_fb_bios_memtype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: M0203E type %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_fb_bios_memtype\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_fb_bios_memtype._entry_ptr = internal global ptr @nvkm_fb_bios_memtype._entry, section ".printk_index", align 4
@nvkm_fb_bios_memtype._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: M0203E not matched!\0A\00", [39 x i8] zeroinitializer }, align 32
@nvkm_fb_bios_memtype._entry_ptr.7 = internal global ptr @nvkm_fb_bios_memtype._entry.5, section ".printk_index", align 4
@nvkm_fb = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_fb_dtor, ptr null, ptr @nvkm_fb_oneinit, ptr null, ptr @nvkm_fb_init, ptr null, ptr @nvkm_fb_intr }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvFbBigPage\00", [20 x i8] zeroinitializer }, align 32
@nvkm_fb_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fb->tags.mutex\00", [16 x i8] zeroinitializer }, align 32
@nvkm_fb_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 105, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: vram setup failed, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_fb_oneinit\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_fb_oneinit._entry_ptr = internal global ptr @nvkm_fb_oneinit._entry, section ".printk_index", align 4
@nvkm_fb_oneinit._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 122, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %d comptags\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_fb_oneinit._entry_ptr.16 = internal global ptr @nvkm_fb_oneinit._entry.13, section ".printk_index", align 4
@nvkm_fb_init_scrub_vpr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 134, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: VPR locked, running scrubber binary\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvkm_fb_init_scrub_vpr\00", [41 x i8] zeroinitializer }, align 32
@nvkm_fb_init_scrub_vpr._entry_ptr = internal global ptr @nvkm_fb_init_scrub_vpr._entry, section ".printk_index", align 4
@nvkm_fb_init_scrub_vpr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: VPR locked, but no scrubber binary!\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_fb_init_scrub_vpr._entry_ptr.21 = internal global ptr @nvkm_fb_init_scrub_vpr._entry.19, section ".printk_index", align 4
@nvkm_fb_init_scrub_vpr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 143, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: VPR scrubber binary failed\0A\00", [32 x i8] zeroinitializer }, align 32
@nvkm_fb_init_scrub_vpr._entry_ptr.24 = internal global ptr @nvkm_fb_init_scrub_vpr._entry.22, section ".printk_index", align 4
@nvkm_fb_init_scrub_vpr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 148, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: VPR still locked after scrub!\0A\00", [61 x i8] zeroinitializer }, align 32
@nvkm_fb_init_scrub_vpr._entry_ptr.27 = internal global ptr @nvkm_fb_init_scrub_vpr._entry.25, section ".printk_index", align 4
@nvkm_fb_init_scrub_vpr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 152, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: VPR scrubber binary successful\0A\00", [60 x i8] zeroinitializer }, align 32
@nvkm_fb_init_scrub_vpr._entry_ptr.30 = internal global ptr @nvkm_fb_init_scrub_vpr._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.nvkm_fb_bios_memtype = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 5, i32 6, i32 8, i32 10, i32 5, i32 5, i32 13, i32 5, i32 11, i32 12], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 79, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 84, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [8 x i8] c"nvkm_fb\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 221, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 235, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 236, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 105, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 122, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 134, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 137, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 143, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 148, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 152, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [34 x i8] c"switch.table.nvkm_fb_bios_memtype\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @nvkm_fb_bios_memtype._entry, ptr @nvkm_fb_bios_memtype._entry.5, ptr @nvkm_fb_bios_memtype._entry_ptr, ptr @nvkm_fb_bios_memtype._entry_ptr.7, ptr @nvkm_fb_init_scrub_vpr._entry, ptr @nvkm_fb_init_scrub_vpr._entry.19, ptr @nvkm_fb_init_scrub_vpr._entry.22, ptr @nvkm_fb_init_scrub_vpr._entry.25, ptr @nvkm_fb_init_scrub_vpr._entry.28, ptr @nvkm_fb_init_scrub_vpr._entry_ptr, ptr @nvkm_fb_init_scrub_vpr._entry_ptr.21, ptr @nvkm_fb_init_scrub_vpr._entry_ptr.24, ptr @nvkm_fb_init_scrub_vpr._entry_ptr.27, ptr @nvkm_fb_init_scrub_vpr._entry_ptr.30, ptr @nvkm_fb_oneinit._entry, ptr @nvkm_fb_oneinit._entry.13, ptr @nvkm_fb_oneinit._entry_ptr, ptr @nvkm_fb_oneinit._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @nvkm_fb, ptr @.str.8, ptr @nvkm_fb_ctor.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @switch.table.nvkm_fb_bios_memtype], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_bios_memtype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_bios_memtype._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_oneinit._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_init_scrub_vpr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_init_scrub_vpr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_init_scrub_vpr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_init_scrub_vpr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fb_init_scrub_vpr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_fb_bios_memtype to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_fini(ptr noundef %fb, i32 noundef %region, ptr noundef %tile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %fini = getelementptr inbounds %struct.nvkm_fb_func, ptr %1, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  tail call void %3(ptr noundef %fb, i32 noundef %region, ptr noundef %tile) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_init(ptr noundef %fb, i32 noundef %region, i32 noundef %addr, i32 noundef %size, i32 noundef %pitch, i32 noundef %flags, ptr noundef %tile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %init = getelementptr inbounds %struct.nvkm_fb_func, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  tail call void %3(ptr noundef %fb, i32 noundef %region, i32 noundef %addr, i32 noundef %size, i32 noundef %pitch, i32 noundef %flags, ptr noundef %tile) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fb_tile_prog(ptr noundef %fb, i32 noundef %region, ptr noundef %tile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %prog = getelementptr inbounds %struct.nvkm_fb_func, ptr %3, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prog, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  tail call void %5(ptr noundef %fb, i32 noundef %region, ptr noundef %tile) #5
  %gr = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 53
  %6 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gr, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %engine = getelementptr inbounds %struct.nvkm_gr, ptr %7, i32 0, i32 1
  tail call void @nvkm_engine_tile(ptr noundef %engine, i32 noundef %region) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %mpeg = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mpeg, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_engine_tile(ptr noundef nonnull %9, i32 noundef %region) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_tile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fb_bios_memtype(ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  %M0203E = alloca %struct.nvbios_M0203E, align 1
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1052672
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 2
  %conv = and i8 %6, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %M0203E) #5
  %7 = ptrtoint ptr %M0203E to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %M0203E, align 1, !annotation !62
  %8 = getelementptr inbounds %struct.nvbios_M0203E, ptr %M0203E, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !62
  %10 = getelementptr inbounds %struct.nvbios_M0203E, ptr %M0203E, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #5
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %ver, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #5
  %13 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %hdr, align 1, !annotation !62
  %call3 = call i32 @nvbios_M0203Em(ptr noundef %bios, i8 noundef zeroext %conv, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %M0203E) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body20, label %if.then

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %M0203E to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %M0203E, align 1
  %conv4 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %switch.hole_check, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %if.then.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv4) #8
  br label %cleanup

do.body20:                                        ; preds = %entry
  %debug22 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %23 = ptrtoint ptr %debug22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp23 = icmp ugt i32 %24, 1
  br i1 %cmp23, label %do.end28, label %do.body20.cleanup_crit_edge

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device2, align 4
  %dev30 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 8
  %name31 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef %name31) #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = zext i8 %15 to i16
  %switch.shifted = lshr i16 847, %switch.maskindex
  %29 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %switch.lobit.not = icmp eq i16 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %30 = sext i8 %15 to i32
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.nvkm_fb_bios_memtype, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end28, %do.body20.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %do.body20.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %M0203E) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_M0203Em(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_fb_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #5
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %fb, align 4
  %tile = getelementptr inbounds %struct.nvkm_fb_func, ptr %func, i32 0, i32 9
  %1 = ptrtoint ptr %tile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tile, align 4
  %regions4 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %regions4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %regions4, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %default_bigpage = getelementptr inbounds %struct.nvkm_fb_func, ptr %func, i32 0, i32 11
  %6 = ptrtoint ptr %default_bigpage to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %default_bigpage, align 4
  %conv = zext i8 %7 to i32
  %call = tail call i32 @nvkm_longopt(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %conv) #5
  %conv6 = trunc i32 %call to i8
  %page = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 6
  %8 = ptrtoint ptr %page to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv6, ptr %page, align 4
  %tags = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %tags, ptr noundef nonnull @.str.9, ptr noundef nonnull @nvkm_fb_ctor.__key) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fb_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 520) #9
  %1 = ptrtoint ptr %pfb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pfb, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %subdev.i = getelementptr inbounds %struct.nvkm_fb, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev.i) #5
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %tile.i = getelementptr inbounds %struct.nvkm_fb_func, ptr %func, i32 0, i32 9
  %3 = ptrtoint ptr %tile.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tile.i, align 4
  %regions4.i = getelementptr inbounds %struct.nvkm_fb, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %regions4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %regions4.i, align 8
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %6 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfgopt.i, align 4
  %default_bigpage.i = getelementptr inbounds %struct.nvkm_fb_func, ptr %func, i32 0, i32 11
  %8 = ptrtoint ptr %default_bigpage.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %default_bigpage.i, align 4
  %conv.i = zext i8 %9 to i32
  %call.i = tail call i32 @nvkm_longopt(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #5
  %conv6.i = trunc i32 %call.i to i8
  %page.i = getelementptr inbounds %struct.nvkm_fb, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %page.i, align 4
  %tags.i = getelementptr inbounds %struct.nvkm_fb, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %tags.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nvkm_fb_ctor.__key) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_fb_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %mmu_wr = getelementptr i8, ptr %subdev, i32 512
  tail call void @nvkm_memory_unref(ptr noundef %mmu_wr) #5
  %mmu_rd = getelementptr i8, ptr %subdev, i32 508
  tail call void @nvkm_memory_unref(ptr noundef %mmu_rd) #5
  %regions = getelementptr i8, ptr %subdev, i32 500
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tile = getelementptr i8, ptr %subdev, i32 180
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_fb_func, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  %arrayidx = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile, i32 0, i32 %i.026
  tail call void %5(ptr noundef %add.ptr, i32 noundef %i.026, ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.026, 1
  %6 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regions, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tags = getelementptr i8, ptr %subdev, i32 64
  %mm = getelementptr i8, ptr %subdev, i32 156
  %call = tail call i32 @nvkm_mm_fini(ptr noundef %mm) #5
  tail call void @mutex_destroy(ptr noundef %tags) #5
  %ram = getelementptr i8, ptr %subdev, i32 60
  tail call void @nvkm_ram_del(ptr noundef %ram) #5
  %vpr_scrubber = getelementptr i8, ptr %subdev, i32 52
  %8 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpr_scrubber, align 4
  tail call void @kfree(ptr noundef %9) #5
  %10 = ptrtoint ptr %vpr_scrubber to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vpr_scrubber, align 4
  %size.i = getelementptr i8, ptr %subdev, i32 56
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %size.i, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr %15(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then ], [ %add.ptr, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fb_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ram_new = getelementptr inbounds %struct.nvkm_fb_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ram_new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_new, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %ram = getelementptr i8, ptr %subdev, i32 60
  %call = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %ram) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %if.then
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body.cleanup50_crit_edge, label %do.end

do.body.cleanup50_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup50

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_fb_func, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oneinit, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end10.if.end24_crit_edge, label %if.then13

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then13:                                        ; preds = %if.end10
  %call17 = tail call i32 %13(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end24_crit_edge, label %if.then13.cleanup50_crit_edge

if.then13.cleanup50_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.then13.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %tags26 = getelementptr inbounds %struct.nvkm_fb_func, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %tags26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tags26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %if.end24.if.end47_crit_edge, label %if.then28

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then28:                                        ; preds = %if.end24
  %call31 = tail call i32 %17(ptr noundef %add.ptr) #5
  %debug34 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %18 = ptrtoint ptr %debug34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp35 = icmp ugt i32 %19, 3
  br i1 %cmp35, label %do.end39, label %if.then28.if.end47_crit_edge

if.then28.if.end47_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end39:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %device40 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %20 = ptrtoint ptr %device40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device40, align 4
  %dev41 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev41, align 8
  %name42 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef %name42, i32 noundef %call31) #8
  br label %if.end47

if.end47:                                         ; preds = %do.end39, %if.then28.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %tags.0 = phi i32 [ 0, %if.end24.if.end47_crit_edge ], [ %call31, %do.end39 ], [ %call31, %if.then28.if.end47_crit_edge ]
  %mm = getelementptr i8, ptr %subdev, i32 156
  %call49 = tail call i32 @nvkm_mm_init(ptr noundef %mm, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %tags.0, i32 noundef 1) #5
  br label %cleanup50

cleanup50:                                        ; preds = %if.end47, %if.then13.cleanup50_crit_edge, %do.end, %do.body.cleanup50_crit_edge
  %retval.3 = phi i32 [ %call49, %if.end47 ], [ %call17, %if.then13.cleanup50_crit_edge ], [ %call, %do.end ], [ %call, %do.body.cleanup50_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fb_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %ram = getelementptr i8, ptr %subdev, i32 60
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @nvkm_ram_init(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %regions = getelementptr i8, ptr %subdev, i32 500
  %2 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp109 = icmp sgt i32 %3, 0
  br i1 %cmp109, label %for.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %tile = getelementptr i8, ptr %subdev, i32 180
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %prog = getelementptr inbounds %struct.nvkm_fb_func, ptr %5, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog, align 4
  %arrayidx = getelementptr [16 x %struct.nvkm_fb_tile], ptr %tile, i32 0, i32 %i.0110
  tail call void %7(ptr noundef %add.ptr, i32 noundef %i.0110, ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.0110, 1
  %8 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regions, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_fb_func, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %for.end.if.end12_crit_edge, label %if.then9

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %add.ptr) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %for.end.if.end12_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %init_remapper = getelementptr inbounds %struct.nvkm_fb_func, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %init_remapper to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_remapper, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %17(ptr noundef %add.ptr) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %init_page = getelementptr inbounds %struct.nvkm_fb_func, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %init_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_page, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.end18.if.end51_crit_edge, label %if.then21

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then21:                                        ; preds = %if.end18
  %call24 = tail call i32 %21(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then21.if.end51_crit_edge, label %do.end, !prof !63

if.then21.if.end51_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 179, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end51:                                         ; preds = %if.then21.if.end51_crit_edge, %if.end18.if.end51_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %init_unkn = getelementptr inbounds %struct.nvkm_fb_func, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %init_unkn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_unkn, align 4
  %tobool53.not = icmp eq ptr %25, null
  br i1 %tobool53.not, label %if.end51.if.end57_crit_edge, label %if.then54

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %25(ptr noundef %add.ptr) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51.if.end57_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %vpr = getelementptr inbounds %struct.nvkm_fb_func, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %vpr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vpr, align 4
  %tobool59.not = icmp eq ptr %29, null
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %land.lhs.true

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end57
  %call63 = tail call zeroext i1 %29(ptr noundef %add.ptr) #5
  br i1 %call63, label %if.then64, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then64:                                        ; preds = %land.lhs.true
  %debug.i = getelementptr i8, ptr %subdev, i32 32
  %30 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i = icmp ugt i32 %31, 3
  br i1 %cmp.i, label %do.end.i, label %if.then64.if.end.i_crit_edge

if.then64.if.end.i_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr i8, ptr %subdev, i32 4
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.17, ptr noundef %name.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then64.if.end.i_crit_edge
  %size.i = getelementptr i8, ptr %subdev, i32 56
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %do.body6.i, label %if.end21.i

do.body6.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp9.i = icmp ugt i32 %39, 1
  br i1 %cmp9.i, label %do.end13.i, label %do.body6.i.cleanup_crit_edge

do.body6.i.cleanup_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %device14.i = getelementptr i8, ptr %subdev, i32 4
  %40 = ptrtoint ptr %device14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device14.i, align 4
  %dev15.i = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev15.i, align 8
  %name16.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef %name16.i) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %scrub.i = getelementptr inbounds %struct.nvkm_fb_func, ptr %45, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %scrub.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scrub.i, align 4
  %call.i = tail call i32 %47(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool22.not.i, label %if.end39.i, label %do.body24.i

do.body24.i:                                      ; preds = %if.end21.i
  %48 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp27.not.i = icmp eq i32 %49, 0
  br i1 %cmp27.not.i, label %do.body24.i.cleanup_crit_edge, label %do.end31.i

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  %device32.i = getelementptr i8, ptr %subdev, i32 4
  %50 = ptrtoint ptr %device32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device32.i, align 4
  %dev33.i = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev33.i, align 8
  %name34.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.23, ptr noundef %name34.i) #8
  br label %cleanup

if.end39.i:                                       ; preds = %if.end21.i
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %vpr41.i = getelementptr inbounds %struct.nvkm_fb_func, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %vpr41.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vpr41.i, align 4
  %call42.i = tail call zeroext i1 %57(ptr noundef %add.ptr) #5
  %58 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug.i, align 4
  br i1 %call42.i, label %do.body44.i, label %do.body60.i

do.body44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp47.not.i = icmp eq i32 %59, 0
  br i1 %cmp47.not.i, label %do.body44.i.cleanup_crit_edge, label %do.end51.i

do.body44.i.cleanup_crit_edge:                    ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end51.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  %device52.i = getelementptr i8, ptr %subdev, i32 4
  %60 = ptrtoint ptr %device52.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device52.i, align 4
  %dev53.i = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev53.i, align 8
  %name54.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.26, ptr noundef %name54.i) #8
  br label %cleanup

do.body60.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp63.i = icmp ugt i32 %59, 3
  br i1 %cmp63.i, label %do.end67.i, label %do.body60.i.cleanup_crit_edge

do.body60.i.cleanup_crit_edge:                    ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #7
  %device68.i = getelementptr i8, ptr %subdev, i32 4
  %64 = ptrtoint ptr %device68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device68.i, align 4
  %dev69.i = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev69.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev69.i, align 8
  %name70.i = getelementptr i8, ptr %subdev, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.29, ptr noundef %name70.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end67.i, %do.body60.i.cleanup_crit_edge, %do.end51.i, %do.body44.i.cleanup_crit_edge, %do.end31.i, %do.body24.i.cleanup_crit_edge, %do.end13.i, %do.body6.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %do.end31.i ], [ %call.i, %do.body24.i.cleanup_crit_edge ], [ -5, %do.end51.i ], [ -5, %do.body44.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %do.end13.i ], [ 0, %do.body6.i.cleanup_crit_edge ], [ 0, %do.end67.i ], [ 0, %do.body60.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fb_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_fb_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ram_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 79, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_fb_bios_memtype._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_fb_bios_memtype._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 84, i32 2}
!10 = !{ptr @nvkm_fb_bios_memtype._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_fb_bios_memtype._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 235, i32 42}
!14 = !{ptr @nvkm_fb_ctor.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 236, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_fb, !18, !"nvkm_fb", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 221, i32 1}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 105, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nvkm_fb_oneinit._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_fb_oneinit._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 122, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvkm_fb_oneinit._entry.13, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_fb_oneinit._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 134, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nvkm_fb_init_scrub_vpr._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvkm_fb_init_scrub_vpr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 137, i32 3}
!37 = !{ptr @nvkm_fb_init_scrub_vpr._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_fb_init_scrub_vpr._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 143, i32 3}
!41 = !{ptr @nvkm_fb_init_scrub_vpr._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_fb_init_scrub_vpr._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 148, i32 3}
!45 = !{ptr @nvkm_fb_init_scrub_vpr._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nvkm_fb_init_scrub_vpr._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/base.c", i32 152, i32 2}
!49 = !{ptr @nvkm_fb_init_scrub_vpr._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nvkm_fb_init_scrub_vpr._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 5395495}
!61 = !{i64 2156267476}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 2000, i32 1}
