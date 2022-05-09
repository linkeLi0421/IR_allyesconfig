; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%struct.atomic_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.armada_private = type { %struct.drm_device, ptr, [2 x ptr], %struct.drm_mm, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.armada_gem_object = type { %struct.drm_gem_object, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_armada_gem_create = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_armada_gem_mmap = type { i32, i32, i64, i64, i64 }
%struct.drm_armada_gem_pwrite = type { i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.86, i8 }
%union.anon.86 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }

@__UNIQUE_ID_import_ns302 = internal constant [25 x i8] c"armada.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"release obj %p\0A\00", [16 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"obj %p phys %#llx dev %#llx\0A\00", [35 x i8] zeroinitializer }, align 32
@armada_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @armada_gem_free_object, ptr null, ptr null, ptr null, ptr @armada_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_gem_vm_ops }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"alloc private obj %p size %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"obj %p size %zu handle %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"handle %u off %u size %u ptr 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid size: object size %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armada\00", [25 x i8] zeroinitializer }, align 32
@__const.armada_gem_prime_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.6, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@armada_gem_prime_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr null, ptr null, ptr null, ptr null, ptr @armada_gem_prime_map_dma_buf, ptr @armada_gem_prime_unmap_dma_buf, ptr @drm_gem_dmabuf_release, ptr null, ptr null, ptr @armada_gem_dmabuf_mmap, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dma_buf_map_attachment() error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"dma_buf_map_attachment() returned an (unsupported) scattered list\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dma_buf_map_attachment() returned a small buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@armada_gem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @armada_gem_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc obj %p size %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 46, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 173, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"armada_gem_object_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 189, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 210, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 269, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 343, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 367, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 489, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"armada_gem_prime_dmabuf_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 479, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 547, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 551, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 555, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"armada_gem_vm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 30, i32 42 }
@___asan_gen_.56 = private constant [39 x i8] c"../drivers/gpu/drm/armada/armada_gem.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 237, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 230, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 214, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 717, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_import_ns302, ptr @.str, ptr @.str.1, ptr @armada_gem_object_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @armada_gem_prime_dmabuf_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @armada_gem_vm_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_gem_prime_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_gem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armada_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %obj) #8
  tail call void @drm_gem_free_mmap_offset(ptr noundef %obj) #8
  %linear_lock = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 4
  %dep_map = getelementptr inbounds %struct.armada_private, ptr %1, i32 0, i32 4, i32 5
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@armada_gem_free_object, %__here) to i32)) #8
  br label %__here9

__here9:                                          ; preds = %__here
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@armada_gem_free_object, %__here9) to i32)) #8
  %page = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 6
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %get_order.exit

get_order.exit:                                   ; preds = %__here9
  call void @__sanitizer_cov_trace_pc() #10
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %dec.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #8, !range !51
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @__free_pages(ptr noundef nonnull %3, i32 noundef %cond.i.i) #8
  br label %if.end23

if.else:                                          ; preds = %__here9
  %linear = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 5
  %7 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %linear, align 8
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.else.if.end23_crit_edge, label %if.then14

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef %linear_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %linear, align 8
  tail call void @drm_mm_remove_node(ptr noundef %10) #8
  tail call void @mutex_unlock(ptr noundef %linear_lock) #8
  %11 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %linear, align 8
  tail call void @kfree(ptr noundef %12) #8
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 8
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.then14.if.end23_crit_edge, label %if.then20

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %14) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then14.if.end23_crit_edge, %if.else.if.end23_crit_edge, %get_order.exit
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %15 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %import_attach, align 4
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %if.end23.if.end34_crit_edge, label %if.then26

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then26:                                        ; preds = %if.end23
  %sgt = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 7
  %17 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt, align 8
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %if.then26.if.end32_crit_edge, label %if.then28

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %16, ptr noundef nonnull %18, i32 noundef 1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then26.if.end32_crit_edge
  tail call void @drm_prime_gem_destroy(ptr noundef %obj, ptr noundef null) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end23.if.end34_crit_edge
  tail call void @drm_gem_object_release(ptr noundef %obj) #8
  tail call void @kfree(ptr noundef %obj) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_linear_back(ptr noundef %dev, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size2 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size2, align 8
  %page = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 6
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

lor.lhs.false:                                    ; preds = %entry
  %linear = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 5
  %4 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %linear, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup57_crit_edge

lor.lhs.false.cleanup57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %1)
  %cmp = icmp ult i32 %1, 8193
  br i1 %cmp, label %get_order.exit, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

get_order.exit:                                   ; preds = %if.end
  %dec.i = add nsw i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #8, !range !51
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool6.not, label %get_order.exit.if.end13_crit_edge, label %if.then7

get_order.exit.if.end13_crit_edge:                ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #8
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call38.i.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %9
  %shl = shl i32 %add, 12
  %phys_addr = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 2
  %10 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %phys_addr, align 4
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i, ptr %page, align 4
  %add11 = add nuw nsw i32 %1, 4095
  %and = and i32 %add11, -4096
  %12 = call ptr @memset(ptr %call8, i32 0, i32 %and)
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %get_order.exit.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end52_crit_edge

if.end13.if.end52_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then16:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 112) #11
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.then16.cleanup57_crit_edge, label %if.end22

if.then16.cleanup57_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end22:                                         ; preds = %if.then16
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 2097152)
  %linear_lock = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %linear_lock, i32 noundef 0) #8
  %linear23 = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 3
  %conv = zext i32 %1 to i64
  %conv24 = zext i32 %16 to i64
  %call.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %linear23, ptr noundef nonnull %call7.i.i, i64 noundef %conv, i64 noundef %conv24, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %linear_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup57

if.end29:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %linear to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %linear, align 8
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %conv32 = trunc i64 %19 to i32
  %call33 = tail call ptr @ioremap_wc(i32 noundef %conv32, i32 noundef %1) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %cleanup

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %linear_lock, i32 noundef 0) #8
  %20 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %linear, align 8
  tail call void @drm_mm_remove_node(ptr noundef %21) #8
  tail call void @mutex_unlock(ptr noundef %linear_lock) #8
  %22 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %linear, align 8
  tail call void @kfree(ptr noundef %23) #8
  %24 = ptrtoint ptr %linear to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %linear, align 8
  br label %cleanup57

cleanup:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmioset(ptr noundef nonnull %call33, i32 noundef 0, i32 noundef %1) #8
  tail call void @iounmap(ptr noundef nonnull %call33) #8
  %25 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %linear, align 8
  %start43 = getelementptr inbounds %struct.drm_mm_node, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %start43 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start43, align 8
  %conv44 = trunc i64 %28 to i32
  %phys_addr45 = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 2
  %29 = ptrtoint ptr %phys_addr45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv44, ptr %phys_addr45, align 4
  %30 = load i64, ptr %start43, align 8
  %conv48 = trunc i64 %30 to i32
  %dev_addr = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 3
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv48, ptr %dev_addr, align 8
  %mapped = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 4
  %32 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %mapped, align 4
  br label %if.end52

if.end52:                                         ; preds = %cleanup, %if.end13.if.end52_crit_edge
  %phys_addr53 = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 2
  %33 = ptrtoint ptr %phys_addr53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys_addr53, align 4
  %conv54 = zext i32 %34 to i64
  %dev_addr55 = getelementptr inbounds %struct.armada_gem_object, ptr %obj, i32 0, i32 3
  %35 = ptrtoint ptr %dev_addr55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_addr55, align 8
  %conv56 = zext i32 %36 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %obj, i64 noundef %conv54, i64 noundef %conv56) #8
  br label %cleanup57

cleanup57:                                        ; preds = %if.end52, %if.then35, %if.then28, %if.then16.cleanup57_crit_edge, %lor.lhs.false.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.1 = phi i32 [ 0, %if.end52 ], [ 0, %lor.lhs.false.cleanup57_crit_edge ], [ 0, %entry.cleanup57_crit_edge ], [ -28, %if.then16.cleanup57_crit_edge ], [ %call.i, %if.then28 ], [ -12, %if.then35 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_gem_map_object(ptr nocapture noundef readnone %dev, ptr nocapture noundef %dobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %linear = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 5
  %2 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %linear, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %phys_addr = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 2
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %dobj, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap_wc(i32 noundef %5, i32 noundef %7) #8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 8
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_gem_alloc_private_object(ptr noundef %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 392) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %size, 4095
  %div3.i = and i32 %add.i, -4096
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armada_gem_object_funcs, ptr %funcs, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %div3.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i, i32 noundef %div3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_dumb_create(ptr noundef %file, ptr noundef %dev, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #8
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %handle, align 4, !annotation !52
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bpp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 4
  %add.i = add i32 %4, 7
  %div6.i = lshr i32 %add.i, 3
  %mul.i = mul i32 %div6.i, %2
  %div15.i = lshr i32 %2, 1
  %cond.i = select i1 %cmp.not.i, i32 %div15.i, i32 %mul.i
  %add2.i = add i32 %cond.i, 127
  %and.i = and i32 %add2.i, -128
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %5 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %pitch, align 4
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 8
  %mul = mul i32 %and.i, %7
  %conv = zext i32 %mul to i64
  %size2 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %size2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 392) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i.i = add i32 %mul, 4095
  %div3.i.i = and i32 %add.i.i, -4096
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @armada_gem_object_funcs, ptr %funcs.i, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  %call5 = tail call i32 @armada_gem_linear_back(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle, align 4
  %handle12 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %13 = ptrtoint ptr %handle12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %handle12, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i.i, i32 noundef %mul, i32 noundef %12) #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end11, %if.end7.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.if.then.i_crit_edge ], [ %call8, %if.end7.if.then.i_crit_edge ], [ 0, %if.end11 ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !55

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_create_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #8
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %handle, align 4, !annotation !52
  %size1 = getelementptr inbounds %struct.drm_armada_gem_create, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i.i = add i32 %2, 4095
  %div3.i.i = and i32 %add.i.i, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 392) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @armada_gem_object_funcs, ptr %funcs.i, align 4
  %call4.i = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end5, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %filp.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %filp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %filp.i, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_mapping.i, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1051858, ptr %gfp_mask.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  %call6 = call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.if.then.i_crit_edge

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i.i, i32 noundef %2, i32 noundef %11) #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end8, %if.end5.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !55

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then6.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call6, %if.then10.i.i.i.i.i.i ], [ %call6, %if.then.i.i.i ], [ -12, %if.then6.i ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_mmap_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.i, label %if.then.i32

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !55

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.then.i32:                                      ; preds = %if.end
  %size = getelementptr inbounds %struct.drm_armada_gem_mmap, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  %conv = trunc i64 %6 to i32
  %offset = getelementptr inbounds %struct.drm_armada_gem_mmap, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  %conv6 = trunc i64 %8 to i32
  %call7 = tail call i32 @vm_mmap(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %conv, i32 noundef 3, i32 noundef 1, i32 noundef %conv6) #8
  %call.i.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i.i.i31, label %if.then.i.i.i36, label %if.end5.i.i.i.i.i.i34

if.end5.i.i.i.i.i.i34:                            ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i30)
  %.not.i.i.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i.i.i33, label %if.end5.i.i.i.i.i.i34.drm_gem_object_put.exit37_crit_edge, label %if.then10.i.i.i.i.i.i35, !prof !55

if.end5.i.i.i.i.i.i34.drm_gem_object_put.exit37_crit_edge: ; preds = %if.end5.i.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit37

if.then10.i.i.i.i.i.i35:                          ; preds = %if.end5.i.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #8
  br label %drm_gem_object_put.exit37

if.then.i.i.i36:                                  ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #8
  br label %drm_gem_object_put.exit37

drm_gem_object_put.exit37:                        ; preds = %if.then.i.i.i36, %if.then10.i.i.i.i.i.i35, %if.end5.i.i.i.i.i.i34.drm_gem_object_put.exit37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call7)
  %cmp9 = icmp ugt i32 %call7, -4096
  br i1 %cmp9, label %drm_gem_object_put.exit37.cleanup_crit_edge, label %if.end14, !prof !57

drm_gem_object_put.exit37.cleanup_crit_edge:      ; preds = %drm_gem_object_put.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %drm_gem_object_put.exit37
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = zext i32 %call7 to i64
  %addr16 = getelementptr inbounds %struct.drm_armada_gem_mmap, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %addr16 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv15, ptr %addr16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %drm_gem_object_put.exit37.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -2, %entry.cleanup_crit_edge ], [ %call7, %drm_gem_object_put.exit37.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i.i.i ], [ -22, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_pwrite_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.drm_armada_gem_pwrite, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 8
  %offset = getelementptr inbounds %struct.drm_armada_gem_pwrite, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %size = getelementptr inbounds %struct.drm_armada_gem_pwrite, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %3, i32 noundef %5, i64 noundef %7) #8
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data, align 8
  %conv = trunc i64 %11 to i32
  %12 = inttoptr i32 %conv to ptr
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %9, i32 -1226833920) #12, !srcloc !58
  %asmresult = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp6 = icmp eq i32 %asmresult, 0
  br i1 %cmp6, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = tail call i32 @fault_in_readable(ptr noundef %12, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle, align 8
  %call.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %15) #8
  %cmp15 = icmp eq ptr %call.i, null
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr, align 8
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %size23 = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp24 = icmp ult i32 %21, %19
  br i1 %cmp24, label %if.end21.if.then32_crit_edge, label %lor.lhs.false

if.end21.if.then32_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end21
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 8
  %sub = sub i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub)
  %cmp30 = icmp ugt i32 %23, %sub
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %if.end35

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end21.if.then32_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %21) #8
  br label %if.then.i80

if.end35:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %17, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i = icmp slt i32 %23, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end35
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then.i80_crit_edge, label %if.then27.i.i, !prof !55

land.rhs16.i.i.if.then.i80_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i80

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.then.i80

if.then.i.i.i:                                    ; preds = %if.end35
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %23, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %23, i32 -1226833920) #12, !srcloc !59
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !55

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %23) #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !60
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %12, i32 noundef %23) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %23, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %23, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.then11.i.i, !prof !55

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %23, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then.i80

if.else:                                          ; preds = %if.end.i.i
  %update = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update, align 4
  %tobool42.not = icmp eq ptr %30, null
  br i1 %tobool42.not, label %if.else.if.then.i80_crit_edge, label %if.then43

if.else.if.then.i80_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i80

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %update_data = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %update_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %update_data, align 8
  tail call void %30(ptr noundef %32) #8
  br label %if.then.i80

if.then.i80:                                      ; preds = %if.then43, %if.else.if.then.i80_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then.i80_crit_edge, %if.then32
  %ret.0 = phi i32 [ -22, %if.then32 ], [ 0, %if.then43 ], [ 0, %if.else.if.then.i80_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.then.i80_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #8, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i81, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !55

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i81:                                  ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i81, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end9.cleanup_crit_edge ], [ -2, %if.end12.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_gem_prime_export(ptr noundef %obj, i32 %flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #8
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.armada_gem_prime_export.exp_info, i32 24)
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @armada_gem_prime_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %size1 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size1, align 4
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags2, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %obj, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %call = call ptr @drm_gem_dmabuf_export(ptr noundef %8, ptr noundef nonnull %exp_info) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_dmabuf_export(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @armada_gem_prime_import(ptr noundef %dev, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @armada_gem_prime_dmabuf_ops
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %cmp2 = icmp eq ptr %5, %dev
  br i1 %cmp2, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #8, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !57

if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup16_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !55

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup16_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i.i) #8
  br label %cleanup16

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %call = tail call ptr @dma_buf_attach(ptr noundef %buf, ptr noundef %9) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup16_crit_edge, label %if.end9

if.end4.cleanup16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end9:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 392) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_buf_detach(ptr noundef %buf, ptr noundef %call) #8
  br label %cleanup16

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %11, 4095
  %div3.i.i = and i32 %add.i.i, -4096
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @armada_gem_object_funcs, ptr %funcs.i, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i.i, i32 noundef %div3.i.i) #8
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %import_attach to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %import_attach, align 4
  %file.i = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 1
  %15 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file.i, align 4
  %f_count.i.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %f_count.i.i, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i.i, ptr %f_count.i.i, i32 1, ptr elementtype(i32) %f_count.i.i) #8, !srcloc !64
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13, %if.then11, %if.end4.cleanup16_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup16_crit_edge
  %retval.1 = phi ptr [ %call7.i.i.i, %if.end13 ], [ inttoptr (i32 -12 to ptr), %if.then11 ], [ %3, %if.else.i.i.i.i.i.cleanup16_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ], [ %call, %if.end4.cleanup16_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_gem_map_import(ptr nocapture noundef %dobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %dobj, i32 0, i32 8
  %0 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %import_attach, align 4
  %call = tail call ptr @dma_buf_map_attachment(ptr noundef %1, i32 noundef 1) #8
  %sgt = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 7
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %sgt, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sgt, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nents = getelementptr inbounds %struct.sg_table, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_length, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %dobj, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp11 = icmp ult i32 %10, %12
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %dev_addr = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 3
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dev_addr, align 8
  %mapped = getelementptr inbounds %struct.armada_gem_object, ptr %dobj, i32 0, i32 4
  %16 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %mapped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -22, %if.then7 ], [ -22, %if.then12 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_gem_vm_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %phys_addr = getelementptr inbounds %struct.armada_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %shr = lshr i32 %5, 12
  %address = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sub = sub i32 %7, %9
  %shr2 = lshr i32 %sub, 12
  %add = add nuw nsw i32 %shr2, %shr
  %call = tail call i32 @vmf_insert_pfn(ptr noundef %1, i32 noundef %7, i32 noundef %add) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_pfn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @armada_gem_prime_map_dma_buf(ptr nocapture noundef readonly %attach, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup69_crit_edge, label %if.end

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %entry
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %filp, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 8
  %div110 = lshr i32 %8, 12
  %call5 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i, i32 noundef %div110, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.free_sgt_crit_edge

if.then3.free_sgt_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sgt

if.end8:                                          ; preds = %if.then3
  %9 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %orig_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp135.not = icmp eq i32 %14, 0
  br i1 %cmp135.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0136 = phi ptr [ %16, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %12, i32 noundef %i.0137, i32 noundef %18) #8
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.release_crit_edge, label %if.end14

for.body.release_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end14:                                         ; preds = %for.body
  %19 = ptrtoint ptr %sg.0136 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg.0136, align 4
  %21 = ptrtoint ptr %call1.i to i32
  %and2.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !55

do.body5.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.body11.i.i:                                    ; preds = %if.end14
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc, label %do.body19.i.i, !prof !55

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

for.inc:                                          ; preds = %do.body11.i.i
  %and.i.i = and i32 %20, 3
  %or.i.i = or i32 %and.i.i, %21
  %22 = ptrtoint ptr %sg.0136 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i, ptr %sg.0136, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0136, i32 0, i32 1
  %23 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0136, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %length.i, align 4
  %inc = add nuw i32 %i.0137, 1
  %call15 = tail call ptr @sg_next(ptr noundef %sg.0136) #8
  %25 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %orig_nents, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call16 = tail call i32 @dma_map_sgtable(ptr noundef %28, ptr noundef nonnull %call7.i, i32 noundef %dir, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.end.cleanup69_crit_edge, label %for.end.release_crit_edge

for.end.release_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

for.end.cleanup69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.else:                                          ; preds = %if.end
  %page24 = getelementptr inbounds %struct.armada_gem_object, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %page24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page24, align 4
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %if.else40, label %if.then26

if.then26:                                        ; preds = %if.else
  %call27 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.free_sgt_crit_edge

if.then26.free_sgt_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sgt

if.end30:                                         ; preds = %if.then26
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i, align 8
  %33 = ptrtoint ptr %page24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page24, align 4
  %size34 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size34, align 8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %32, align 4
  %39 = ptrtoint ptr %34 to i32
  %and2.i.i111 = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and2.i.i111, 0
  br i1 %tobool.not.i.i112, label %do.body11.i.i116, label %do.body5.i.i113, !prof !55

do.body5.i.i113:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

do.body11.i.i116:                                 ; preds = %if.end30
  %and.i.i.i114 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i114)
  %tobool.i.not.i.i115 = icmp eq i32 %and.i.i.i114, 0
  br i1 %tobool.i.not.i.i115, label %sg_set_page.exit122, label %do.body19.i.i117, !prof !55

do.body19.i.i117:                                 ; preds = %do.body11.i.i116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

sg_set_page.exit122:                              ; preds = %do.body11.i.i116
  %and.i.i118 = and i32 %38, 3
  %or.i.i119 = or i32 %and.i.i118, %39
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i.i119, ptr %32, align 4
  %offset1.i120 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %offset1.i120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offset1.i120, align 4
  %length.i121 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 2
  %42 = ptrtoint ptr %length.i121 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %36, ptr %length.i121, align 4
  %dev35 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %43 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev35, align 4
  %call36 = tail call i32 @dma_map_sgtable(ptr noundef %44, ptr noundef nonnull %call7.i, i32 noundef %dir, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %sg_set_page.exit122.cleanup69_crit_edge, label %sg_set_page.exit122.free_table_crit_edge

sg_set_page.exit122.free_table_crit_edge:         ; preds = %sg_set_page.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_table

sg_set_page.exit122.cleanup69_crit_edge:          ; preds = %sg_set_page.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.else40:                                        ; preds = %if.else
  %linear = getelementptr inbounds %struct.armada_gem_object, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %linear, align 8
  %tobool41.not = icmp eq ptr %46, null
  br i1 %tobool41.not, label %if.else40.free_sgt_crit_edge, label %if.then42

if.else40.free_sgt_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sgt

if.then42:                                        ; preds = %if.else40
  %call43 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then42.free_sgt_crit_edge

if.then42.free_sgt_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sgt

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.armada_gem_object, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dev_addr, align 8
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %dma_address, align 4
  %size49 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %size49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size49, align 8
  %54 = load ptr, ptr %call7.i, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %dma_length, align 4
  br label %cleanup69

release:                                          ; preds = %for.end.release_crit_edge, %for.body.release_crit_edge
  %56 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %orig_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp58138.not = icmp eq i32 %57, 0
  br i1 %cmp58138.not, label %release.free_table_crit_edge, label %for.body59.preheader

release.free_table_crit_edge:                     ; preds = %release
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_table

for.body59.preheader:                             ; preds = %release
  %58 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i, align 8
  br label %for.body59

for.body59:                                       ; preds = %for.inc65.for.body59_crit_edge, %for.body59.preheader
  %i.1140 = phi i32 [ %inc66, %for.inc65.for.body59_crit_edge ], [ 0, %for.body59.preheader ]
  %sg.1139 = phi ptr [ %call67, %for.inc65.for.body59_crit_edge ], [ %59, %for.body59.preheader ]
  %60 = ptrtoint ptr %sg.1139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sg.1139, align 4
  %and.i.i123 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool.i.not.i = icmp eq i32 %and.i.i123, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

sg_page.exit:                                     ; preds = %for.body59
  %and.i = and i32 %61, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool61.not = icmp eq i32 %and.i, 0
  br i1 %tobool61.not, label %sg_page.exit.for.inc65_crit_edge, label %sg_page.exit128

sg_page.exit.for.inc65_crit_edge:                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

sg_page.exit128:                                  ; preds = %sg_page.exit
  %62 = inttoptr i32 %and.i to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i129 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129)
  %tobool.not.i.i130 = icmp eq i32 %and.i.i129, 0
  br i1 %tobool.not.i.i130, label %sg_page.exit128._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit128._compound_head.exit.i_crit_edge:  ; preds = %sg_page.exit128
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit128
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %65, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit128._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %62, %sg_page.exit128._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %66 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@armada_gem_prime_map_dma_buf, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !72

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc65_crit_edge

folio_put_testzero.exit.i.i.for.inc65_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %.pre-phi) #8
  br label %for.inc65

for.inc65:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc65_crit_edge, %sg_page.exit.for.inc65_crit_edge
  %inc66 = add nuw i32 %i.1140, 1
  %call67 = tail call ptr @sg_next(ptr noundef %sg.1139) #8
  %69 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %orig_nents, align 8
  %cmp58 = icmp ult i32 %inc66, %70
  br i1 %cmp58, label %for.inc65.for.body59_crit_edge, label %for.inc65.free_table_crit_edge

for.inc65.free_table_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_table

for.inc65.for.body59_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59

free_table:                                       ; preds = %for.inc65.free_table_crit_edge, %release.free_table_crit_edge, %sg_set_page.exit122.free_table_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %call7.i) #8
  br label %free_sgt

free_sgt:                                         ; preds = %free_table, %if.then42.free_sgt_crit_edge, %if.else40.free_sgt_crit_edge, %if.then26.free_sgt_crit_edge, %if.then3.free_sgt_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup69

cleanup69:                                        ; preds = %free_sgt, %if.end46, %sg_set_page.exit122.cleanup69_crit_edge, %for.end.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi ptr [ null, %free_sgt ], [ null, %entry.cleanup69_crit_edge ], [ %call7.i, %if.end46 ], [ %call7.i, %sg_set_page.exit122.cleanup69_crit_edge ], [ %call7.i, %for.end.cleanup69_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_gem_prime_unmap_dma_buf(ptr nocapture noundef readonly %attach, ptr noundef %sgt, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %linear = getelementptr inbounds %struct.armada_gem_object, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %linear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %linear, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %dir, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filp, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not = icmp eq i32 %15, 0
  br i1 %cmp15.not, label %if.then3.if.end5_crit_edge, label %for.body.preheader

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.body.preheader:                               ; preds = %if.then3
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt, align 4
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.preheader
  %sg.017 = phi ptr [ %call4, %put_page.exit.for.body_crit_edge ], [ %17, %for.body.preheader ]
  %i.016 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %18 = ptrtoint ptr %sg.017 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg.017, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !55

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i14 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !55

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %23, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %20, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@armada_gem_prime_unmap_dma_buf, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !72

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %.pre-phi) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.016, 1
  %call4 = tail call ptr @sg_next(ptr noundef %sg.017) #8
  %27 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orig_nents, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.if.end5_crit_edge

put_page.exit.if.end5_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end5:                                          ; preds = %put_page.exit.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @sg_free_table(ptr noundef %sgt) #8
  tail call void @kfree(ptr noundef %sgt) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_gem_dmabuf_mmap(ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %vma) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_import_ns302, !1, !"__UNIQUE_ID_import_ns302", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 18, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 46, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 173, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 210, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 269, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 343, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 367, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 489, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 547, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 551, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 555, i32 3}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!24 = !{ptr @armada_gem_object_funcs, !25, !"armada_gem_object_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 189, i32 42}
!26 = !{ptr @armada_gem_vm_ops, !27, !"armada_gem_vm_ops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 30, i32 42}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 237, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!37 = !{ptr @armada_gem_prime_dmabuf_ops, !38, !"armada_gem_prime_dmabuf_ops", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/armada/armada_gem.c", i32 479, i32 33}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/mm.h", i32 717, i32 2}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i32 0, i32 33}
!52 = !{!"auto-init"}
!53 = !{i64 2148551768}
!54 = !{i64 2148466232, i64 2148466264, i64 2148466293, i64 2148466327, i64 2148466358, i64 2148466381}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2150177782}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2155407389, i64 2155407414}
!59 = !{i64 2152873458, i64 2152873483}
!60 = !{i64 5369013}
!61 = !{i64 5369210}
!62 = !{i64 2152854443}
!63 = !{i64 2148463767, i64 2148463799, i64 2148463828, i64 2148463862, i64 2148463893, i64 2148463916}
!64 = !{i64 2148462237, i64 2148462263, i64 2148462292, i64 2148462326, i64 2148462357, i64 2148462380}
!65 = !{i64 2153395782, i64 2153396274, i64 2153395819, i64 2153395875, i64 2153395909, i64 2153395933, i64 2153395974, i64 2153395995, i64 2153396023, i64 2153396057}
!66 = !{i64 2153397392, i64 2153397884, i64 2153397429, i64 2153397485, i64 2153397519, i64 2153397543, i64 2153397584, i64 2153397605, i64 2153397633, i64 2153397667}
!67 = !{i64 2153403401, i64 2153403893, i64 2153403438, i64 2153403494, i64 2153403528, i64 2153403552, i64 2153403593, i64 2153403614, i64 2153403642, i64 2153403676}
!68 = !{i64 2153259224, i64 2153259707, i64 2153259261, i64 2153259317, i64 2153259351, i64 2153259375, i64 2153259416, i64 2153259437, i64 2153259465, i64 2153259499}
!69 = !{i64 2148550689}
!70 = !{i64 2148465422, i64 2148465454, i64 2148465483, i64 2148465517, i64 2148465548, i64 2148465571}
!71 = !{i64 2148550918}
!72 = !{i64 2148193316, i64 2148193321, i64 2148193334, i64 2148193378, i64 2148193412, i64 2148193433}
