; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.136], i32, [16 x %struct.anon.137], ptr, %struct.anon.138, %struct.anon.138, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { i8, i64 }
%struct.anon.137 = type { i8, i8 }
%struct.anon.138 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.154, %struct.anon.155, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.154 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.155 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nv50_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.143, i32, i32, i32, i32, i32, i32, %union.anon.147, i32, i32, [11 x i32], %union.anon.151 }>
%union.anon.143 = type { %struct.anon.146 }
%struct.anon.146 = type { i64 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32, i8 }
%union.anon.151 = type <{ %struct.anon.153, [12 x i8] }>
%struct.anon.153 = type { i48 }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_vmm_join = type { ptr, %struct.list_head }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mmu_pt = type { %union.anon.142, ptr, i8, i16, i64, %struct.list_head }
%union.anon.142 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv50_vmm_pgt = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr @nv50_vmm_pgt_unmap, ptr null, ptr null, ptr @nv50_vmm_pgt_mem, ptr @nv50_vmm_pgt_dma, ptr @nv50_vmm_pgt_sgl, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv50_vmm_pgd = internal constant { %struct.nvkm_vmm_desc_func, [56 x i8] } { %struct.nvkm_vmm_desc_func { ptr null, ptr null, ptr null, ptr @nv50_vmm_pgd_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv50_vmm_desc_12 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 8, i32 4096, ptr @nv50_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 11, i8 0, i32 0, ptr @nv50_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nv50_vmm_desc_16 = dso_local constant { [3 x %struct.nvkm_vmm_desc], [48 x i8] } { [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 13, i8 8, i32 4096, ptr @nv50_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 11, i8 0, i32 0, ptr @nv50_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_vmm_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s mmu invalidate timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv50_vmm_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_vmm_flush._entry_ptr = internal global ptr @nv50_vmm_flush._entry, section ".printk_index", align 4
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@nv50_vmm_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 256, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %s: args\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv50_vmm_valid\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nv50_vmm_valid._entry_ptr = internal global ptr @nv50_vmm_valid._entry, section ".printk_index", align 4
@nv50_vmm_valid._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 282, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s: kind %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@nv50_vmm_valid._entry_ptr.11 = internal global ptr @nv50_vmm_valid._entry.9, section ".printk_index", align 4
@nv50_vmm_valid._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str, i32 288, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %s: kind %02x bankswz: %d %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nv50_vmm_valid._entry_ptr.14 = internal global ptr @nv50_vmm_valid._entry.12, section ".printk_index", align 4
@nv50_vmm_valid._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str, i32 295, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: comp %d %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@nv50_vmm_valid._entry_ptr.17 = internal global ptr @nv50_vmm_valid._entry.15, section ".printk_index", align 4
@nv50_vmm_valid._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str, i32 302, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s: comp %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nv50_vmm_valid._entry_ptr.20 = internal global ptr @nv50_vmm_valid._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_vmm = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @nv50_vmm_join, ptr @nv50_vmm_part, ptr null, ptr @nv50_vmm_valid, ptr @nv50_vmm_flush, ptr null, ptr null, [4 x i8] undef, i64 536870912, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @nv50_vmm_desc_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @nv50_vmm_desc_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 16, i64 27, i64 28, i64 29, i64 33, i64 36, i64 38, i64 39, i64 40, i64 46, i64 50]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 64, i64 65536, i64 131072, i64 262144, i64 1048576]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"nv50_vmm_pgt\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 98, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"nv50_vmm_pgd\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 162, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"nv50_vmm_desc_12\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 167, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"nv50_vmm_desc_16\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 174, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 216, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 220, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 256, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 282, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 287, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 295, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 302, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"nv50_vmm\00", align 1
@___asan_gen_.96 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 364, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @nv50_vmm_flush._entry, ptr @nv50_vmm_flush._entry_ptr, ptr @nv50_vmm_valid._entry, ptr @nv50_vmm_valid._entry.12, ptr @nv50_vmm_valid._entry.15, ptr @nv50_vmm_valid._entry.18, ptr @nv50_vmm_valid._entry.9, ptr @nv50_vmm_valid._entry_ptr, ptr @nv50_vmm_valid._entry_ptr.11, ptr @nv50_vmm_valid._entry_ptr.14, ptr @nv50_vmm_valid._entry_ptr.17, ptr @nv50_vmm_valid._entry_ptr.20, ptr @nv50_vmm_pgt, ptr @nv50_vmm_pgd, ptr @nv50_vmm_desc_12, ptr @nv50_vmm_desc_16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @nv50_vmm], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_pgt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_pgd to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_desc_12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_desc_16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_valid._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_valid._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_valid._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm_valid._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_vmm to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_vmm_flush(ptr noundef %vmm, i32 %level) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %device2 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %mutex = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %gr = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 53
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %debug = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0104 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %vmm, i32 0, i32 14, i32 %i.0104
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = zext i32 %i.0104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0104, label %if.end.for.inc_crit_edge [
    i32 33, label %land.lhs.true
    i32 50, label %if.end.do.body_crit_edge
    i32 38, label %if.end.do.body_crit_edge106
    i32 16, label %sw.bb14
    i32 39, label %if.end.sw.bb15_crit_edge
    i32 36, label %if.end.sw.bb15_crit_edge107
    i32 27, label %if.end.sw.bb16_crit_edge
    i32 40, label %if.end.sw.bb16_crit_edge108
    i32 29, label %if.end.sw.bb17_crit_edge
    i32 46, label %if.end.sw.bb17_crit_edge109
    i32 28, label %sw.bb18
  ]

if.end.sw.bb17_crit_edge109:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17

if.end.sw.bb16_crit_edge108:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

if.end.sw.bb15_crit_edge107:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end.do.body_crit_edge106:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gr, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true.do.body_crit_edge, label %if.then6

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then6:                                         ; preds = %land.lhs.true
  %call8 = call i32 @nvkm_gr_tlb_flush(ptr noundef nonnull %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, -19
  br i1 %cmp9.not, label %if.then6.do.body_crit_edge, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6.do.body_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge107
  br label %do.body

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge108
  br label %do.body

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge109
  br label %do.body

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %if.then6.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge, %if.end.do.body_crit_edge106
  %id.0 = phi i32 [ 851969, %sw.bb18 ], [ 655361, %sw.bb17 ], [ 589825, %sw.bb16 ], [ 524289, %sw.bb15 ], [ 393217, %sw.bb14 ], [ 1, %if.then6.do.body_crit_edge ], [ 1, %land.lhs.true.do.body_crit_edge ], [ 65537, %if.end.do.body_crit_edge ], [ 65537, %if.end.do.body_crit_edge106 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1051776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %id.0) #6, !srcloc !52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %11 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  br label %do.body19

do.body19:                                        ; preds = %do.cond26.do.body19_crit_edge, %do.body
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 1051776
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end63.thread, label %do.cond26

if.end63.thread:                                  ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %for.inc

do.cond26:                                        ; preds = %do.body19
  %call27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp28 = icmp sgt i64 %call27, -1
  br i1 %cmp28, label %do.cond26.do.body19_crit_edge, label %do.end41

do.cond26.do.body19_crit_edge:                    ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

do.end41:                                         ; preds = %do.cond26
  %15 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_wait, align 8
  %device43 = getelementptr inbounds %struct.nvkm_timer, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device43, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %call44 = call ptr @dev_driver_string(ptr noundef %20) #6
  %21 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_wait, align 8
  %device47 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %device47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device47, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev48, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end41.do.body67_crit_edge

do.end41.do.body67_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.end.i:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %do.body67

do.body67:                                        ; preds = %if.end.i, %do.end41.do.body67_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end41.do.body67_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call44, ptr noundef %retval.0.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %31 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp68.not = icmp eq i32 %32, 0
  br i1 %cmp68.not, label %do.body67.for.inc_crit_edge, label %do.end72

do.body67.for.inc_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end72:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device2, align 4
  %dev74 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev74, align 8
  %arrayidx75 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %i.0104
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %38) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end72, %do.body67.for.inc_crit_edge, %if.end63.thread, %if.then6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 51
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmu, align 4
  %mutex81 = getelementptr inbounds %struct.nvkm_mmu, ptr %40, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex81) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_tlb_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_valid(ptr nocapture noundef readonly %vmm, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %map) #0 align 64 {
entry:
  %kind_inv = alloca i8, align 1
  %kindn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 7
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 8
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 4
  %device2 = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %fb = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 8
  %ram3 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ram3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ram3, align 4
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind_inv) #6
  %12 = ptrtoint ptr %kind_inv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %kind_inv, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kindn) #6
  %13 = ptrtoint ptr %kindn to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %kindn, align 4, !annotation !55
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %14 = call ptr @memset(ptr %type, i32 0, i32 16)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 4
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %conv5 = sext i32 %shl to i64
  %next = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  %17 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv5, ptr %next, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp7 = icmp ugt i32 %argc, 4
  br i1 %cmp7, label %land.lhs.true13, label %land.lhs.true45

land.lhs.true13:                                  ; preds = %entry
  %18 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp16 = icmp eq i8 %19, 0
  br i1 %cmp16, label %if.then, label %land.lhs.true13.do.body_crit_edge

land.lhs.true13.do.body_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 5
  br i1 %tobool.not, label %if.then21, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ro22 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %argv, i32 0, i32 1
  %20 = ptrtoint ptr %ro22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ro22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  %priv26 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %argv, i32 0, i32 2
  %22 = ptrtoint ptr %priv26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %priv26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not = icmp eq i8 %23, 0
  %kind33 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %argv, i32 0, i32 3
  %24 = ptrtoint ptr %kind33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %kind33, align 1
  %26 = and i8 %25, 127
  %comp36 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %argv, i32 0, i32 4
  %27 = ptrtoint ptr %comp36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %comp36, align 1
  %29 = and i8 %28, 3
  %phi.bo = select i1 %tobool23.not, i8 0, i8 8
  %phi.bo433 = select i1 %tobool27.not, i8 0, i8 64
  br label %if.end74

land.lhs.true45:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp46 = icmp eq i32 %argc, 0
  br i1 %cmp46, label %land.lhs.true45.if.end74_crit_edge, label %land.lhs.true45.do.body_crit_edge

land.lhs.true45.do.body_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true45.if.end74_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.body:                                          ; preds = %land.lhs.true45.do.body_crit_edge, %if.then.do.body_crit_edge, %land.lhs.true13.do.body_crit_edge
  %_ret42.0.ph = phi i32 [ -38, %land.lhs.true45.do.body_crit_edge ], [ -38, %land.lhs.true13.do.body_crit_edge ], [ -7, %if.then.do.body_crit_edge ]
  %debug = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp54 = icmp ugt i32 %31, 3
  br i1 %cmp54, label %do.end, label %do.body.cleanup322_crit_edge

do.body.cleanup322_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup322

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmu, align 4
  %device65 = getelementptr inbounds %struct.nvkm_mmu, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device65, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mmu, ptr %33, i32 0, i32 1, i32 4
  %name66 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %38 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name66, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %39) #9
  br label %cleanup322

if.end74:                                         ; preds = %land.lhs.true45.if.end74_crit_edge, %if.then21
  %kind.0 = phi i8 [ %26, %if.then21 ], [ 0, %land.lhs.true45.if.end74_crit_edge ]
  %comp.0 = phi i8 [ %29, %if.then21 ], [ 0, %land.lhs.true45.if.end74_crit_edge ]
  %priv.0 = phi i8 [ %phi.bo433, %if.then21 ], [ 0, %land.lhs.true45.if.end74_crit_edge ]
  %ro.0 = phi i8 [ %phi.bo, %if.then21 ], [ 0, %land.lhs.true45.if.end74_crit_edge ]
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %11, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %target, align 4
  %call = tail call i32 %43(ptr noundef %11) #6
  %44 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call, label %do.end93 [
    i32 1, label %sw.bb
    i32 2, label %if.end74.sw.epilog_crit_edge
    i32 3, label %sw.bb82
  ]

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end74
  %stolen = getelementptr inbounds %struct.nvkm_ram, ptr %9, i32 0, i32 5
  %45 = ptrtoint ptr %stolen to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %stolen, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool75.not = icmp eq i64 %46, 0
  br i1 %tobool75.not, label %sw.bb.sw.epilog_crit_edge, label %if.then76

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then76:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %type, align 8
  %or = or i64 %48, %46
  store i64 %or, ptr %type, align 8
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end93:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #6
  br label %cleanup322

sw.epilog:                                        ; preds = %sw.bb82, %if.then76, %sw.bb.sw.epilog_crit_edge, %if.end74.sw.epilog_crit_edge
  %cmp204.not = phi i1 [ false, %if.then76 ], [ false, %sw.bb82 ], [ true, %sw.bb.sw.epilog_crit_edge ], [ false, %if.end74.sw.epilog_crit_edge ]
  %aper.0 = phi i8 [ 3, %if.then76 ], [ 3, %sw.bb82 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 2, %if.end74.sw.epilog_crit_edge ]
  %49 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmu, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %kind109 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %kind109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kind109, align 4
  %call111 = call ptr %54(ptr noundef %50, ptr noundef nonnull %kindn, ptr noundef nonnull %kind_inv) #6
  %conv112 = zext i8 %kind.0 to i32
  %55 = ptrtoint ptr %kindn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %kindn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv112)
  %cmp113.not = icmp sgt i32 %56, %conv112
  br i1 %cmp113.not, label %lor.lhs.false, label %sw.epilog.do.body120_crit_edge

sw.epilog.do.body120_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body120

lor.lhs.false:                                    ; preds = %sw.epilog
  %arrayidx = getelementptr i8, ptr %call111, i32 %conv112
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  %conv115 = zext i8 %58 to i32
  %59 = ptrtoint ptr %kind_inv to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %kind_inv, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp117 = icmp eq i8 %58, %60
  br i1 %cmp117, label %lor.lhs.false.do.body120_crit_edge, label %if.end149

lor.lhs.false.do.body120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body120

do.body120:                                       ; preds = %lor.lhs.false.do.body120_crit_edge, %sw.epilog.do.body120_crit_edge
  %debug122 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %61 = ptrtoint ptr %debug122 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp123 = icmp ugt i32 %62, 3
  br i1 %cmp123, label %do.end136, label %do.body120.cleanup322_crit_edge

do.body120.cleanup322_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup322

do.end136:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmu, align 4
  %device137 = getelementptr inbounds %struct.nvkm_mmu, ptr %64, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %device137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device137, align 4
  %dev138 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev138, align 8
  %name139 = getelementptr inbounds %struct.nvkm_mmu, ptr %64, i32 0, i32 1, i32 4
  %name141 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %69 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name141, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.10, ptr noundef %name139, ptr noundef %70, i32 noundef %conv112) #9
  br label %cleanup322

if.end149:                                        ; preds = %lor.lhs.false
  %mem = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 2
  %71 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mem, align 8
  %tobool150.not = icmp eq ptr %72, null
  br i1 %tobool150.not, label %if.end149.if.end196_crit_edge, label %land.lhs.true151

if.end149.if.end196_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

land.lhs.true151:                                 ; preds = %if.end149
  %type153 = getelementptr inbounds %struct.nvkm_mm_node, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %type153 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %type153, align 1
  %conv154 = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %58)
  %cmp158.not = icmp eq i8 %74, %58
  br i1 %cmp158.not, label %land.lhs.true151.if.end196_crit_edge, label %do.body161

land.lhs.true151.if.end196_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

do.body161:                                       ; preds = %land.lhs.true151
  %debug163 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %75 = ptrtoint ptr %debug163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %debug163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp164 = icmp ugt i32 %76, 3
  br i1 %cmp164, label %do.end177, label %do.body161.cleanup322_crit_edge

do.body161.cleanup322_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup322

do.end177:                                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmu, align 4
  %device178 = getelementptr inbounds %struct.nvkm_mmu, ptr %78, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %device178 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device178, align 4
  %dev179 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev179, align 8
  %name180 = getelementptr inbounds %struct.nvkm_mmu, ptr %78, i32 0, i32 1, i32 4
  %name182 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %83 = ptrtoint ptr %name182 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name182, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.13, ptr noundef %name180, ptr noundef %84, i32 noundef %conv112, i32 noundef %conv115, i32 noundef %conv154) #9
  br label %cleanup322

if.end196:                                        ; preds = %land.lhs.true151.if.end196_crit_edge, %if.end149.if.end196_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %comp.0)
  %tobool197.not = icmp eq i8 %comp.0, 0
  br i1 %tobool197.not, label %if.end196.if.end303_crit_edge, label %if.then198

if.end196.if.end303_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end303

if.then198:                                       ; preds = %if.end196
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %11, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %size, align 4
  %call200 = call i64 %88(ptr noundef %11) #6
  %shr = lshr i64 %call200, 16
  %conv201 = zext i8 %comp.0 to i64
  %mul = mul nuw nsw i64 %shr, %conv201
  %conv202 = trunc i64 %mul to i32
  %conv203 = zext i8 %aper.0 to i32
  br i1 %cmp204.not, label %lor.lhs.false206, label %if.then198.do.body212_crit_edge

if.then198.do.body212_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body212

lor.lhs.false206:                                 ; preds = %if.then198
  %type207 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %type207 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type207, align 4
  %91 = and i8 %90, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool210.not = icmp eq i8 %91, 0
  br i1 %tobool210.not, label %lor.lhs.false206.do.body212_crit_edge, label %if.end243

lor.lhs.false206.do.body212_crit_edge:            ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body212

do.body212:                                       ; preds = %lor.lhs.false206.do.body212_crit_edge, %if.then198.do.body212_crit_edge
  %debug214 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %92 = ptrtoint ptr %debug214 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp215 = icmp ugt i32 %93, 3
  br i1 %cmp215, label %do.end228, label %do.body212.cleanup322_crit_edge

do.body212.cleanup322_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup322

do.end228:                                        ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmu, align 4
  %device229 = getelementptr inbounds %struct.nvkm_mmu, ptr %95, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %device229 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device229, align 4
  %dev230 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dev230 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev230, align 8
  %name231 = getelementptr inbounds %struct.nvkm_mmu, ptr %95, i32 0, i32 1, i32 4
  %name233 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %100 = ptrtoint ptr %name233 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name233, align 8
  %type235 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %type235 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %type235, align 4
  %conv236 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.16, ptr noundef %name231, ptr noundef %101, i32 noundef %conv203, i32 noundef %conv236) #9
  br label %cleanup322

if.end243:                                        ; preds = %lor.lhs.false206
  %tags244 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 8
  %call245 = call i32 @nvkm_memory_tags_get(ptr noundef %11, ptr noundef %5, i32 noundef %conv202, ptr noundef null, ptr noundef %tags244) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end276, label %do.body248

do.body248:                                       ; preds = %if.end243
  %debug250 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 3
  %104 = ptrtoint ptr %debug250 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp251 = icmp ugt i32 %105, 3
  br i1 %cmp251, label %do.end264, label %do.body248.cleanup322_crit_edge

do.body248.cleanup322_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup322

do.end264:                                        ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmu, align 4
  %device265 = getelementptr inbounds %struct.nvkm_mmu, ptr %107, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %device265 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device265, align 4
  %dev266 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %dev266 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev266, align 8
  %name267 = getelementptr inbounds %struct.nvkm_mmu, ptr %107, i32 0, i32 1, i32 4
  %name269 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 2
  %112 = ptrtoint ptr %name269 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name269, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.19, ptr noundef %name267, ptr noundef %113, i32 noundef %call245) #9
  br label %cleanup322

if.end276:                                        ; preds = %if.end243
  %114 = ptrtoint ptr %tags244 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tags244, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %tobool278.not = icmp eq ptr %117, null
  br i1 %tobool278.not, label %if.end276.if.end303_crit_edge, label %if.then279

if.end276.if.end303_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end303

if.then279:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset, align 4
  %offset284 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %120 = ptrtoint ptr %offset284 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %offset284, align 8
  %122 = trunc i64 %121 to i32
  %123 = lshr i32 %122, 16
  %conv286 = add i32 %123, %119
  %shl288 = shl nuw nsw i64 %conv201, 49
  %124 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %ctag, align 8
  %or290 = or i64 %125, %shl288
  store i64 %or290, ptr %ctag, align 8
  %shl292 = shl nuw nsw i64 %conv201, 47
  %126 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %type, align 8
  %or294 = or i64 %127, %shl292
  %conv295 = zext i32 %conv286 to i64
  %shl296 = shl i64 %conv295, 49
  %or298 = or i64 %or294, %shl296
  store i64 %or298, ptr %type, align 8
  %128 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %next, align 8
  %or301 = or i64 %129, %or290
  store i64 %or301, ptr %next, align 8
  br label %if.end303

if.end303:                                        ; preds = %if.then279, %if.end276.if.end303_crit_edge, %if.end196.if.end303_crit_edge
  %130 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %type, align 8
  %shl307 = zext i8 %ro.0 to i64
  %132 = shl nuw nsw i8 %aper.0, 4
  %shl311 = zext i8 %132 to i64
  %shl315 = zext i8 %priv.0 to i64
  %conv318 = zext i8 %kind.0 to i64
  %shl319 = shl nuw nsw i64 %conv318, 40
  %or305 = or i64 %shl319, %shl315
  %or309 = or i64 %or305, %shl307
  %or313 = or i64 %or309, %shl311
  %or317 = or i64 %or313, %131
  %or321 = or i64 %or317, 1
  store i64 %or321, ptr %type, align 8
  br label %cleanup322

cleanup322:                                       ; preds = %if.end303, %do.end264, %do.body248.cleanup322_crit_edge, %do.end228, %do.body212.cleanup322_crit_edge, %do.end177, %do.body161.cleanup322_crit_edge, %do.end136, %do.body120.cleanup322_crit_edge, %do.end93, %do.end, %do.body.cleanup322_crit_edge
  %retval.1 = phi i32 [ -22, %do.end93 ], [ 0, %if.end303 ], [ %_ret42.0.ph, %do.end ], [ %_ret42.0.ph, %do.body.cleanup322_crit_edge ], [ -22, %do.end136 ], [ -22, %do.body120.cleanup322_crit_edge ], [ -22, %do.end177 ], [ -22, %do.body161.cleanup322_crit_edge ], [ %call245, %do.body248.cleanup322_crit_edge ], [ %call245, %do.end264 ], [ -22, %do.body212.cleanup322_crit_edge ], [ -22, %do.end228 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kindn) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind_inv) #6
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_vmm_part(ptr noundef readonly %vmm, ptr noundef readnone %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %join1 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %join1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %join1
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %join.0 = getelementptr i8, ptr %.pn, i32 -4
  %1 = ptrtoint ptr %join.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %join.0, align 4
  %cmp4 = icmp eq ptr %2, %inst
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then:                                          ; preds = %for.body
  %join.0.le = getelementptr i8, ptr %.pn, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %join.0.le) #6
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_join(ptr noundef %vmm, ptr noundef %inst) #0 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pd_offset2 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %pd_offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pd_offset2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %data, align 8, !annotation !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %inst, ptr %call7.i, align 8
  %head = getelementptr inbounds %struct.nvkm_vmm_join, ptr %call7.i, i32 0, i32 1
  %join4 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %10, ptr noundef %join4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %prev.i, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %join4, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_vmm_join, ptr %call7.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %head, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acquire, align 4
  %call8 = tail call ptr %20(ptr noundef %16) #6
  %start = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 6
  %21 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start, align 8
  %shr = lshr i64 %22, 29
  %limit = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 7
  %conv954 = and i64 %shr, 4294967295
  %23 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %limit, align 8
  %sub55 = add i64 %24, -1
  %shr1056 = lshr i64 %sub55, 29
  call void @__sanitizer_cov_trace_cmp8(i64 %shr1056, i64 %conv954)
  %cmp.not57 = icmp ult i64 %shr1056, %conv954
  br i1 %cmp.not57, label %list_add_tail.exit.for.end_crit_edge, label %for.body.lr.ph

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %conv = trunc i64 %shr to i32
  %pd = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %pdei.058 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd, align 8
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pde, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %pdei.058
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %call12 = call fastcc zeroext i1 @nv50_vmm_pde(ptr noundef %30, ptr noundef nonnull %data)
  br i1 %call12, label %do.body, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body:                                          ; preds = %for.body
  %mul = shl i32 %pdei.058, 3
  %add = add i32 %mul, %5
  %conv15 = zext i32 %add to i64
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data, align 8
  %33 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr32, align 4
  %conv19 = trunc i64 %32 to i32
  tail call void %38(ptr noundef %34, i64 noundef %conv15, i32 noundef %conv19) #6
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i, align 8
  %ptrs21 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %ptrs21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptrs21, align 4
  %wr3222 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wr3222 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr3222, align 4
  %add24 = add nuw nsw i64 %conv15, 4
  %shr25 = lshr i64 %32, 32
  %conv27 = trunc i64 %shr25 to i32
  tail call void %44(ptr noundef %40, i64 noundef %add24, i32 noundef %conv27) #6
  %inc = add i32 %pdei.058, 1
  %conv9 = zext i32 %inc to i64
  %45 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %limit, align 8
  %sub = add i64 %46, -1
  %shr10 = lshr i64 %sub, 29
  %cmp.not = icmp ult i64 %shr10, %conv9
  br i1 %cmp.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_tail.exit.for.end_crit_edge ], [ -22, %for.body.for.end_crit_edge ], [ 0, %do.body.for.end_crit_edge ]
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %release, align 4
  tail call void %52(ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nv50_vmm_pde(ptr noundef readonly %pgt, ptr nocapture noundef writeonly %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pgt, null
  br i1 %tobool.not, label %entry.if.end95_crit_edge, label %land.lhs.true

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %pgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgt, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true.if.end95_crit_edge, label %if.then

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then:                                          ; preds = %land.lhs.true
  %page = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgt, i32 0, i32 2
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %3, label %do.end41 [
    i8 16, label %if.then.sw.epilog55_crit_edge
    i8 12, label %sw.bb3
  ]

if.then.sw.epilog55_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog55

sw.bb3:                                           ; preds = %if.then
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memory, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %size, align 4
  %call = tail call i64 %10(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_switch(i64 %call, ptr @__sancov_gen_cov_switch_values.24)
  switch i64 %call, label %do.end [
    i64 1048576, label %sw.bb3.sw.epilog55_crit_edge
    i64 262144, label %sw.bb6
    i64 131072, label %sw.bb8
    i64 65536, label %sw.bb10
  ]

sw.bb3.sw.epilog55_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog55

sw.bb6:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog55

sw.bb8:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog55

sw.bb10:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog55

do.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.end41:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog55:                                      ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb3.sw.epilog55_crit_edge, %if.then.sw.epilog55_crit_edge
  %data.0 = phi i64 [ 99, %sw.bb10 ], [ 67, %sw.bb8 ], [ 35, %sw.bb6 ], [ 1, %if.then.sw.epilog55_crit_edge ], [ 3, %sw.bb3.sw.epilog55_crit_edge ]
  %memory56 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %memory56 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %memory56, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target, align 4
  %call59 = tail call i32 %16(ptr noundef %12) #6
  %17 = zext i32 %call59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call59, label %do.end79 [
    i32 1, label %sw.epilog55.sw.epilog93_crit_edge
    i32 2, label %sw.bb62
    i32 3, label %sw.bb64
  ]

sw.epilog55.sw.epilog93_crit_edge:                ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog93

sw.bb62:                                          ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #8
  %or63 = or i64 %data.0, 8
  br label %sw.epilog93

sw.bb64:                                          ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #8
  %or65 = or i64 %data.0, 12
  br label %sw.epilog93

do.end79:                                         ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog93:                                      ; preds = %sw.bb64, %sw.bb62, %sw.epilog55.sw.epilog93_crit_edge
  %data.1 = phi i64 [ %or65, %sw.bb64 ], [ %or63, %sw.bb62 ], [ %data.0, %sw.epilog55.sw.epilog93_crit_edge ]
  %addr = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %addr, align 8
  %or94 = or i64 %19, %data.1
  br label %if.end95

if.end95:                                         ; preds = %sw.epilog93, %land.lhs.true.if.end95_crit_edge, %entry.if.end95_crit_edge
  %data.2 = phi i64 [ %or94, %sw.epilog93 ], [ -2401039834048102400, %land.lhs.true.if.end95_crit_edge ], [ -2401039834048102400, %entry.if.end95_crit_edge ]
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %data.2, ptr %pdata, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end79, %do.end41, %do.end
  %retval.0 = phi i1 [ false, %do.end41 ], [ false, %do.end ], [ false, %do.end79 ], [ true, %if.end95 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @nv50_vmm, ptr noundef %mmu, i32 noundef 0, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_unmap(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes) #0 align 64 {
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
  br i1 %tobool.not, label %for.cond.preheader, label %if.else, !prof !56

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_mem(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
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
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.060, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add)
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
define internal void @nv50_vmm_pgt_dma(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
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
  %conv3 = zext i32 %13 to i64
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %type, align 8
  %add = add i64 %15, %conv3
  %inc = add i32 %ptei.addr.0130, 1
  %mul = shl i32 %ptei.addr.0130, 3
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base, align 2
  %conv9 = zext i16 %17 to i32
  %add10 = add i32 %mul, %conv9
  %conv11 = zext i32 %add10 to i64
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
  %conv15 = trunc i64 %add to i32
  tail call void %23(ptr noundef %19, i64 noundef %conv11, i32 noundef %conv15) #6
  %24 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memory, align 4
  %ptrs17 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ptrs17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptrs17, align 4
  %wr3218 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr3218 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr3218, align 4
  %add20 = add nuw nsw i64 %conv11, 4
  %shr = lshr i64 %add, 32
  %conv22 = trunc i64 %shr to i32
  tail call void %29(ptr noundef %25, i64 noundef %add20, i32 noundef %conv22) #6
  %30 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ctag, align 8
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %type, align 8
  %add28 = add i64 %33, %31
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
  %34 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %off, align 8
  %sub = sub i64 4096, %35
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  %sh_prom = zext i8 %39 to i64
  %shr44 = lshr i64 %sub, %sh_prom
  %40 = ptrtoint ptr %dma45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma45, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %conv46 = zext i32 %43 to i64
  %add48 = add i64 %35, %conv46
  %conv49 = zext i32 %ptes.addr.1125 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr44, i64 %conv49)
  %cmp50 = icmp ugt i64 %shr44, %conv49
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = zext i8 %39 to i32
  %shl = shl i32 %ptes.addr.1125, %conv43
  %conv56 = zext i32 %shl to i64
  %add58 = add i64 %35, %conv56
  %44 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add58, ptr %off, align 8
  br label %do.body64

if.else:                                          ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %off, align 8
  %incdec.ptr62 = getelementptr i32, ptr %41, i32 1
  %46 = ptrtoint ptr %dma45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr62, ptr %dma45, align 8
  %extract.t123 = trunc i64 %shr44 to i32
  br label %do.body64

do.body64:                                        ; preds = %if.else, %if.then52
  %_ptes.0.off0 = phi i32 [ %ptes.addr.1125, %if.then52 ], [ %extract.t123, %if.else ]
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.1127, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add48)
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
  %47 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %memory, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %release, align 4
  tail call void %52(ptr noundef %48) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_sgl(ptr nocapture noundef readnone %vmm, ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map) #0 align 64 {
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
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %pt, i32 noundef %ptei.addr.059, i32 noundef %_ptes.0.off0, ptr noundef %map, i64 noundef %add)
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_vmm_pgt_pte(ptr nocapture noundef readonly %pt, i32 noundef %ptei, i32 noundef %ptes, ptr nocapture noundef %map, i64 noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %type, align 8
  %conv = zext i32 %ptes to i64
  %ctag = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 11
  %2 = ptrtoint ptr %ctag to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctag, align 8
  %mul = mul i64 %3, %conv
  %add2 = add i64 %mul, %1
  store i64 %add2, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptes)
  %tobool.not5 = icmp eq i32 %ptes, 0
  br i1 %tobool.not5, label %entry.while.end40_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end40_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end40

for.cond.preheader.lr.ph:                         ; preds = %entry
  %add = add i64 %1, %addr
  %next11 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 9
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 3
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %pt, i32 0, i32 1
  br label %for.cond.preheader

while.cond.loopexit:                              ; preds = %do.body
  %sub14 = sub i32 %ptes.addr.07, %shl.lcssa
  %tobool.not = icmp eq i32 %sub14, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end40_crit_edge, label %while.cond.loopexit.for.cond.preheader_crit_edge

while.cond.loopexit.for.cond.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

while.cond.loopexit.while.end40_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end40

for.cond.preheader:                               ; preds = %while.cond.loopexit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %ptei.addr.09 = phi i32 [ %ptei, %for.cond.preheader.lr.ph ], [ %inc, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  %ptes.addr.07 = phi i32 [ %ptes, %for.cond.preheader.lr.ph ], [ %sub14, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  %next.06 = phi i64 [ %add, %for.cond.preheader.lr.ph ], [ %add13, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %ptes.addr.07)
  %cmp4.not = icmp ult i32 %ptes.addr.07, 128
  br i1 %cmp4.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.preheader
  %and = and i32 %ptei.addr.09, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.land.lhs.true.1_crit_edge

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %ptes.addr.07)
  %cmp4.not.1 = icmp ult i32 %ptes.addr.07, 64
  br i1 %cmp4.not.1, label %for.inc.1, label %for.inc.land.lhs.true.1_crit_edge

for.inc.land.lhs.true.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %for.inc.land.lhs.true.1_crit_edge, %land.lhs.true.land.lhs.true.1_crit_edge
  %and.1 = and i32 %ptei.addr.09, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp6.1 = icmp eq i32 %and.1, 0
  br i1 %cmp6.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.land.lhs.true.2_crit_edge

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %ptes.addr.07)
  %cmp4.not.2 = icmp ult i32 %ptes.addr.07, 32
  br i1 %cmp4.not.2, label %for.inc.2, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %and.2 = and i32 %ptei.addr.09, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp6.2 = icmp eq i32 %and.2, 0
  br i1 %cmp6.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.land.lhs.true.3_crit_edge

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ptes.addr.07)
  %cmp4.not.3 = icmp ult i32 %ptes.addr.07, 16
  br i1 %cmp4.not.3, label %for.inc.3, label %for.inc.2.land.lhs.true.3_crit_edge

for.inc.2.land.lhs.true.3_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %for.inc.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %and.3 = and i32 %ptei.addr.09, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp6.3 = icmp eq i32 %and.3, 0
  br i1 %cmp6.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.land.lhs.true.4_crit_edge

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.4

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ptes.addr.07)
  %cmp4.not.4 = icmp ult i32 %ptes.addr.07, 8
  br i1 %cmp4.not.4, label %for.inc.4, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %and.4 = and i32 %ptei.addr.09, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp6.4 = icmp eq i32 %and.4, 0
  br i1 %cmp6.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.land.lhs.true.5_crit_edge

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.5

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ptes.addr.07)
  %cmp4.not.5 = icmp ult i32 %ptes.addr.07, 4
  br i1 %cmp4.not.5, label %for.inc.5, label %for.inc.4.land.lhs.true.5_crit_edge

for.inc.4.land.lhs.true.5_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %for.inc.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %and.5 = and i32 %ptei.addr.09, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp6.5 = icmp eq i32 %and.5, 0
  br i1 %cmp6.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.6

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ptes.addr.07)
  %cmp4.not.6 = icmp ugt i32 %ptes.addr.07, 1
  %and.6 = and i32 %ptei.addr.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp6.6 = icmp eq i32 %and.6, 0
  %or.cond = select i1 %cmp4.not.6, i1 %cmp6.6, i1 false
  br i1 %or.cond, label %for.inc.5.for.end_crit_edge, label %for.inc.5.land.lhs.true.7_crit_edge

for.inc.5.land.lhs.true.7_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.7

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  %and.6.old = and i32 %ptei.addr.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.old)
  %cmp6.6.old = icmp eq i32 %and.6.old, 0
  br i1 %cmp6.6.old, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.land.lhs.true.7_crit_edge

land.lhs.true.6.land.lhs.true.7_crit_edge:        ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.7

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.6.land.lhs.true.7_crit_edge, %for.inc.5.land.lhs.true.7_crit_edge
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.7, %land.lhs.true.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %shl.lcssa = phi i32 [ 128, %land.lhs.true.for.end_crit_edge ], [ 64, %land.lhs.true.1.for.end_crit_edge ], [ 32, %land.lhs.true.2.for.end_crit_edge ], [ 16, %land.lhs.true.3.for.end_crit_edge ], [ 8, %land.lhs.true.4.for.end_crit_edge ], [ 4, %land.lhs.true.5.for.end_crit_edge ], [ 2, %land.lhs.true.6.for.end_crit_edge ], [ 1, %land.lhs.true.7 ], [ 2, %for.inc.5.for.end_crit_edge ]
  %log2blk.0.lcssa = phi i32 [ 896, %land.lhs.true.for.end_crit_edge ], [ 768, %land.lhs.true.1.for.end_crit_edge ], [ 640, %land.lhs.true.2.for.end_crit_edge ], [ 512, %land.lhs.true.3.for.end_crit_edge ], [ 384, %land.lhs.true.4.for.end_crit_edge ], [ 256, %land.lhs.true.5.for.end_crit_edge ], [ 128, %land.lhs.true.6.for.end_crit_edge ], [ 0, %land.lhs.true.7 ], [ 128, %for.inc.5.for.end_crit_edge ]
  %conv10 = zext i32 %shl.lcssa to i64
  %4 = ptrtoint ptr %next11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %next11, align 8
  %mul12 = mul i64 %5, %conv10
  %add13 = add i64 %mul12, %next.06
  %6 = trunc i64 %next.06 to i32
  %conv28 = or i32 %log2blk.0.lcssa, %6
  %shr = lshr i64 %next.06, 32
  %conv35 = trunc i64 %shr to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.end
  %ptei.addr.14 = phi i32 [ %ptei.addr.09, %for.end ], [ %inc, %do.body.do.body_crit_edge ]
  %pten.33 = phi i32 [ %shl.lcssa, %for.end ], [ %dec16, %do.body.do.body_crit_edge ]
  %dec16 = add nsw i32 %pten.33, -1
  %inc = add i32 %ptei.addr.14, 1
  %mul19 = shl i32 %ptei.addr.14, 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %base, align 2
  %conv22 = zext i16 %8 to i32
  %add23 = add i32 %mul19, %conv22
  %conv24 = zext i32 %add23 to i64
  %9 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wr32, align 4
  tail call void %14(ptr noundef %10, i64 noundef %conv24, i32 noundef %conv28) #6
  %15 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memory, align 4
  %ptrs30 = getelementptr inbounds %struct.nvkm_memory, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ptrs30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptrs30, align 4
  %wr3231 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wr3231 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr3231, align 4
  %add33 = add nuw nsw i64 %conv24, 4
  tail call void %20(ptr noundef %16, i64 noundef %add33, i32 noundef %conv35) #6
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %while.cond.loopexit, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.end40:                                      ; preds = %while.cond.loopexit.while.end40_crit_edge, %entry.while.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_vmm_pgd_pde(ptr noundef readonly %vmm, ptr nocapture noundef readonly %pgd, i32 noundef %pdei) #0 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 1
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pd_offset = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %pd_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pd_offset, align 4
  %mul = shl i32 %pdei, 3
  %add = add i32 %5, %mul
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %data, align 8, !annotation !55
  %pde = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %pgd, i32 0, i32 4
  %7 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pde, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %pdei
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call = call fastcc zeroext i1 @nv50_vmm_pde(ptr noundef %10, ptr noundef nonnull %data)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %join2 = getelementptr inbounds %struct.nvkm_vmm, ptr %vmm, i32 0, i32 9
  %11 = ptrtoint ptr %join2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn43 = load ptr, ptr %join2, align 4
  %cmp.not44 = icmp eq ptr %.pn43, %join2
  br i1 %cmp.not44, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i32 %add to i64
  %add15 = add nuw nsw i64 %conv, 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn45 = phi ptr [ %.pn43, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %join.0 = getelementptr i8, ptr %.pn45, i32 -4
  %12 = ptrtoint ptr %join.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %join.0, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %acquire, align 4
  %call6 = tail call ptr %17(ptr noundef %13) #6
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data, align 8
  %20 = ptrtoint ptr %join.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %join.0, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr32, align 4
  %conv10 = trunc i64 %19 to i32
  tail call void %25(ptr noundef %21, i64 noundef %conv, i32 noundef %conv10) #6
  %26 = ptrtoint ptr %join.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %join.0, align 4
  %ptrs12 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ptrs12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs12, align 4
  %wr3213 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr3213 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr3213, align 4
  %shr = lshr i64 %19, 32
  %conv17 = trunc i64 %shr to i32
  tail call void %31(ptr noundef %27, i64 noundef %add15, i32 noundef %conv17) #6
  %32 = ptrtoint ptr %join.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %join.0, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release, align 4
  tail call void %37(ptr noundef %33) #6
  %38 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %join2
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @nv50_vmm_desc_12, !1, !"nv50_vmm_desc_12", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 167, i32 1}
!2 = !{ptr @nv50_vmm_desc_16, !3, !"nv50_vmm_desc_16", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 174, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 216, i32 7}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 220, i32 4}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nv50_vmm_flush._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv50_vmm_flush._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 256, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv50_vmm_valid._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv50_vmm_valid._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 282, i32 3}
!22 = !{ptr @nv50_vmm_valid._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nv50_vmm_valid._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 287, i32 3}
!26 = !{ptr @nv50_vmm_valid._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nv50_vmm_valid._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 295, i32 4}
!30 = !{ptr @nv50_vmm_valid._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @nv50_vmm_valid._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 302, i32 4}
!34 = !{ptr @nv50_vmm_valid._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nv50_vmm_valid._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @nv50_vmm_pgt, !37, !"nv50_vmm_pgt", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 98, i32 1}
!38 = !{ptr @nv50_vmm_pgd, !39, !"nv50_vmm_pgd", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 162, i32 1}
!40 = !{ptr @nv50_vmm, !41, !"nv50_vmm", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c", i32 364, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2156328102}
!52 = !{i64 5411920}
!53 = !{i64 5412338}
!54 = !{i64 2156329991}
!55 = !{!"auto-init"}
!56 = !{!"branch_weights", i32 1, i32 2000}
