; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.153, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.153 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.109, %struct.anon.110, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.109 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.110 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.98, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32, [11 x i32], %union.anon.106 }>
%union.anon.98 = type { %struct.anon.101 }
%struct.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i8 }
%union.anon.106 = type <{ %struct.anon.108, [12 x i8] }>
%struct.anon.108 = type { i48 }
%struct.nvkm_vram = type { %struct.nvkm_memory, ptr, i8, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@nvkm_vram = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nvkm_vram_dtor, ptr @nvkm_vram_target, ptr @nvkm_vram_page, ptr null, ptr @nvkm_vram_addr, ptr @nvkm_vram_size, ptr null, ptr null, ptr null, ptr @nvkm_vram_map }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c\00", [51 x i8] zeroinitializer }, align 32
@nvkm_ram_ctor.name = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of unknown memory type\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stolen system memory\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR1\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR2\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR3\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR3\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR4\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR5\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GDDR5X\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GDDR6\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HBM2\00", [27 x i8] zeroinitializer }, align 32
@nvkm_ram_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 195, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %d MiB %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_ram_ctor\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_ram_ctor._entry_ptr = internal global ptr @nvkm_ram_ctor._entry, section ".printk_index", align 4
@nvkm_ram_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ram->mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"nvkm_vram\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 94, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 176, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 177, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 178, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 179, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 180, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 181, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 182, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 183, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 184, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 185, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 186, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 187, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 188, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 189, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 190, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 195, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [48 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 200, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @nvkm_ram_ctor._entry, ptr @nvkm_ram_ctor._entry_ptr, ptr @nvkm_vram, ptr @.str, ptr @nvkm_ram_ctor.name, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nvkm_ram_ctor.__key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_vram to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ram_ctor.name to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ram_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ram_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_get(ptr nocapture noundef readonly %device, i8 noundef zeroext %heap, i8 noundef zeroext %type, i8 noundef zeroext %rpage, i64 noundef %size, i1 noundef zeroext %contig, i1 noundef zeroext %back, ptr noundef %pmemory) local_unnamed_addr #0 align 64 {
entry:
  %r = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #9
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %r, align 4, !annotation !55
  %1 = tail call i8 @llvm.umax.i8(i8 %rpage, i8 12)
  %conv7 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv7
  %shr = ashr i32 %shl, 12
  %conv10 = sext i32 %shl to i64
  %sub = add i64 %size, 17592186044415
  %add = add i64 %sub, %conv10
  %neg = sub nsw i64 0, %conv10
  %and = and i64 %add, %neg
  %shr15 = lshr i64 %and, 12
  %conv16 = trunc i64 %shr15 to i32
  %cond21 = select i1 %contig, i32 %conv16, i32 %shr
  %fb = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 33
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 8
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ram24 = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ram24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram24, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vram28 = getelementptr inbounds %struct.nvkm_ram, ptr %5, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #12
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_vram, ptr noundef nonnull %call7.i.i) #9
  %ram32 = getelementptr inbounds %struct.nvkm_vram, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ram32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %ram32, align 8
  %page33 = getelementptr inbounds %struct.nvkm_vram, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %page33 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %page33, align 4
  %9 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %pmemory, align 4
  %mutex = getelementptr inbounds %struct.nvkm_ram, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %mn = getelementptr inbounds %struct.nvkm_vram, ptr %call7.i.i, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end43.do.body_crit_edge, %if.end31
  %node.0 = phi ptr [ %mn, %if.end31 ], [ %next, %if.end43.do.body_crit_edge ]
  %max.0 = phi i32 [ %conv16, %if.end31 ], [ %sub44, %if.end43.do.body_crit_edge ]
  br i1 %back, label %if.then36, label %if.else

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call i32 @nvkm_mm_tail(ptr noundef %vram28, i8 noundef zeroext %heap, i8 noundef zeroext %type, i32 noundef %max.0, i32 noundef %cond21, i32 noundef %shr, ptr noundef nonnull %r) #9
  br label %if.end39

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 @nvkm_mm_head(ptr noundef %vram28, i8 noundef zeroext %heap, i8 noundef zeroext %type, i32 noundef %max.0, i32 noundef %cond21, i32 noundef %shr, ptr noundef nonnull %r) #9
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then36
  %ret.0 = phi i32 [ %call37, %if.then36 ], [ %call38, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool40.not = icmp eq i32 %ret.0, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @nvkm_memory_unref(ptr noundef %pmemory) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r, align 4
  %12 = ptrtoint ptr %node.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %node.0, align 4
  %next = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 2
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %sub44 = sub i32 %max.0, %14
  %tobool45.not = icmp eq i32 %sub44, 0
  br i1 %tobool45.not, label %do.end, label %if.end43.do.body_crit_edge

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then41, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then41 ], [ 0, %do.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_tail(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_init(ptr noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 8
  %init = getelementptr inbounds %struct.nvkm_ram_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %ram) #9
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ram_del(ptr nocapture noundef %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pram, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %land.lhs.true

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.then23.critedge, !prof !56

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #9
  br label %if.end31

if.then23.critedge:                               ; preds = %land.lhs.true
  %dtor = getelementptr inbounds %struct.nvkm_ram_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dtor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dtor, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.then23.critedge.if.end29_crit_edge, label %if.then26

if.then23.critedge.if.end29_crit_edge:            ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr %5(ptr noundef nonnull %1) #9
  %6 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %pram, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.critedge.if.end29_crit_edge
  %vram = getelementptr inbounds %struct.nvkm_ram, ptr %1, i32 0, i32 4
  %call30 = tail call i32 @nvkm_mm_fini(ptr noundef %vram) #9
  %mutex = getelementptr inbounds %struct.nvkm_ram, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  %7 = ptrtoint ptr %pram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pram, align 4
  tail call void @kfree(ptr noundef %8) #9
  %9 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pram, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %do.end, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_ctor(ptr noundef %func, ptr noundef %fb, i32 noundef %type, i64 noundef %size, ptr noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  %shr = lshr i64 %size, 20
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr [14 x ptr], ptr @nvkm_ram_ctor.name, i32 0, i32 %type
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv, ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ram to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %func, ptr %ram, align 8
  %fb6 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 1
  %9 = ptrtoint ptr %fb6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fb, ptr %fb6, align 4
  %type7 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 2
  %10 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type7, align 8
  %size8 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 3
  %11 = ptrtoint ptr %size8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %size, ptr %size8, align 8
  %mutex = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @nvkm_ram_ctor.__key) #9
  %heap_nodes.i = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %heap_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.then12, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %if.end
  %vram = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 4
  %shr14 = lshr i64 %size, 12
  %conv15 = trunc i64 %shr14 to i32
  %call16 = tail call i32 @nvkm_mm_init(ptr noundef %vram, i8 noundef zeroext 1, i32 noundef 0, i32 noundef %conv15, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then12.if.end19_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end.if.end19_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call16, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ram_new_(ptr noundef %func, ptr noundef %fb, i32 noundef %type, i64 noundef %size, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 672) #12
  %1 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pram, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp ugt i32 %3, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 4
  %shr.i = lshr i64 %size, 20
  %conv.i = trunc i64 %shr.i to i32
  %arrayidx.i = getelementptr [14 x ptr], ptr @nvkm_ram_ctor.name, i32 0, i32 %type
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %conv.i, ptr noundef %9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %func, ptr %call7.i.i, align 8
  %fb6.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %fb6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fb, ptr %fb6.i, align 4
  %type7.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %type, ptr %type7.i, align 8
  %size8.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %size8.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %size, ptr %size8.i, align 8
  %mutex.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @nvkm_ram_ctor.__key) #9
  %heap_nodes.i.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %heap_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %heap_nodes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.then12.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end.i
  %vram.i = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 4
  %shr14.i = lshr i64 %size, 12
  %conv15.i = trunc i64 %shr14.i to i32
  %call16.i = tail call i32 @nvkm_mm_init(ptr noundef %vram.i, i8 noundef zeroext 1, i32 noundef 0, i32 noundef %conv15.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.then12.i.if.end19.i_crit_edge, label %if.then12.i.return_crit_edge

if.then12.i.return_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then12.i.if.end19.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  br label %return

return:                                           ; preds = %if.end19.i, %if.then12.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %if.end19.i ], [ %call16.i, %if.then12.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_vram_dtor(ptr noundef readonly returned %memory) #0 align 64 {
entry:
  %node = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mn = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node) #9
  %ram = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 1
  %2 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram, align 4
  %mutex = getelementptr inbounds %struct.nvkm_ram, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %node, align 4
  %tobool.not10 = icmp eq ptr %1, null
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %next.011 = phi ptr [ %6, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %next1 = getelementptr inbounds %struct.nvkm_mm_node, ptr %next.011, i32 0, i32 2
  %5 = ptrtoint ptr %next1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next1, align 4
  %7 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ram, align 4
  %vram3 = getelementptr inbounds %struct.nvkm_ram, ptr %8, i32 0, i32 4
  call void @nvkm_mm_free(ptr noundef %vram3, ptr noundef nonnull %node) #9
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %node, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %10 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram, align 4
  %mutex5 = getelementptr inbounds %struct.nvkm_ram, ptr %11, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %mutex5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node) #9
  ret ptr %memory
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_vram_target(ptr nocapture noundef readnone %memory) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @nvkm_vram_page(ptr nocapture noundef readonly %memory) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page, align 4
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nvkm_vram_addr(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mn = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mn, align 4
  %next.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %nvkm_mm_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nvkm_mm_addr.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %offset.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  br label %cleanup

cleanup:                                          ; preds = %nvkm_mm_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %shl, %nvkm_mm_addr.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @nvkm_vram_size(ptr nocapture noundef readonly %memory) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mn = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mn, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %node.addr.0.i = phi ptr [ %1, %entry ], [ %5, %do.body.i.do.body.i_crit_edge ]
  %size.0.i = phi i32 [ 0, %entry ], [ %add.i, %do.body.i.do.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.addr.0.i, i32 0, i32 6
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %add.i = add i32 %3, %size.0.i
  %next.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.addr.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %nvkm_mm_size.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

nvkm_mm_size.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %add.i to i64
  %shl = shl nuw nsw i64 %conv, 12
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_vram_map(ptr noundef %memory, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %map = alloca %struct.nvkm_vmm_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %map) #9
  %0 = call ptr @memset(ptr %map, i32 0, i32 72)
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %memory, ptr %map, align 8
  %offset3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %offset3, align 8
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %mn = getelementptr inbounds %struct.nvkm_vram, ptr %memory, i32 0, i32 3
  %3 = ptrtoint ptr %mn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mn, align 4
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mem, align 8
  %call = call i32 @nvkm_vmm_map(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef nonnull %map) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %map) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 162, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 177, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 178, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 179, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 180, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 181, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 182, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 183, i32 29}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 184, i32 29}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 185, i32 29}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 186, i32 29}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 187, i32 29}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 188, i32 29}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 189, i32 29}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 190, i32 29}
!30 = !{ptr @nvkm_ram_ctor.name, !31, !"name", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 176, i32 21}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 195, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nvkm_ram_ctor._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_ram_ctor._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @nvkm_ram_ctor.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 200, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nvkm_vram, !43, !"nvkm_vram", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ram.c", i32 94, i32 1}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/mm.h", i32 64, i32 6}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{!"branch_weights", i32 1, i32 2000}
