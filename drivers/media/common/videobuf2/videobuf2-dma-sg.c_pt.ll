; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/videobuf2-dma-sg.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-dma-sg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vb2_dma_sg_memops\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dma_sg_memops\09\09\09\09"
module asm "\09.long\09__crc_vb2_dma_sg_memops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_sg_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_sg_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_sg_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dma_sg_buf = type { ptr, ptr, ptr, ptr, i32, i32, %struct.sg_table, ptr, i32, i32, %struct.refcount_struct, %struct.vb2_vmarea_handler, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vb2_dma_sg_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@__param_str_debug = internal constant [23 x i8] c"videobuf2_dma_sg.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [36 x i8] c"videobuf2_dma_sg.parmtype=debug:int\00", section ".modinfo", align 1
@vb2_dma_sg_memops = dso_local constant { %struct.vb2_mem_ops, [36 x i8] } { %struct.vb2_mem_ops { ptr @vb2_dma_sg_alloc, ptr @vb2_dma_sg_put, ptr @vb2_dma_sg_get_dmabuf, ptr @vb2_dma_sg_get_userptr, ptr @vb2_dma_sg_put_userptr, ptr @vb2_dma_sg_prepare, ptr @vb2_dma_sg_finish, ptr @vb2_dma_sg_attach_dmabuf, ptr @vb2_dma_sg_detach_dmabuf, ptr @vb2_dma_sg_map_dmabuf, ptr @vb2_dma_sg_unmap_dmabuf, ptr @vb2_dma_sg_vaddr, ptr @vb2_dma_sg_cookie, ptr @vb2_dma_sg_num_users, ptr @vb2_dma_sg_mmap }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vb2_dma_sg_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_sg_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_sg_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_sg_memops to i32), ptr @__kstrtab_vb2_dma_sg_memops, ptr @__kstrtabns_vb2_dma_sg_memops }, section "___ksymtab_gpl+vb2_dma_sg_memops", align 4
@__UNIQUE_ID_description237 = internal constant [87 x i8] c"videobuf2_dma_sg.description=dma scatter/gather memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [46 x i8] c"videobuf2_dma_sg.author=Andrzej Pietrasiewicz\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [70 x i8] c"videobuf2_dma_sg.file=drivers/media/common/videobuf2/videobuf2-dma-sg\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [29 x i8] c"videobuf2_dma_sg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns241 = internal constant [35 x i8] c"videobuf2_dma_sg.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-sg.c\00", [46 x i8] zeroinitializer }, align 32
@vb2_dma_sg_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017vb2-dma-sg: %s: Allocated buffer of %d pages\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vb2_dma_sg_alloc\00", [47 x i8] zeroinitializer }, align 32
@vb2_dma_sg_alloc._entry_ptr = internal global ptr @vb2_dma_sg_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vb2_dma_sg_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017vb2-dma-sg: %s: Freeing buffer of %d pages\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vb2_dma_sg_put\00", [17 x i8] zeroinitializer }, align 32
@vb2_dma_sg_put._entry_ptr = internal global ptr @vb2_dma_sg_put._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf2_dma_sg\00", [47 x i8] zeroinitializer }, align 32
@__const.vb2_dma_sg_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.6, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_dma_sg_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @vb2_dma_sg_dmabuf_ops_attach, ptr @vb2_dma_sg_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_dma_sg_dmabuf_ops_map, ptr @vb2_dma_sg_dmabuf_ops_unmap, ptr @vb2_dma_sg_dmabuf_ops_release, ptr @vb2_dma_sg_dmabuf_ops_begin_cpu_access, ptr @vb2_dma_sg_dmabuf_ops_end_cpu_access, ptr @vb2_dma_sg_dmabuf_ops_mmap, ptr @vb2_dma_sg_dmabuf_ops_vmap, ptr null }, [44 x i8] zeroinitializer }, align 32
@vb2_dma_sg_dmabuf_ops_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to map scatterlist\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vb2_dma_sg_dmabuf_ops_map\00", [38 x i8] zeroinitializer }, align 32
@vb2_dma_sg_dmabuf_ops_map._entry_ptr = internal global ptr @vb2_dma_sg_dmabuf_ops_map._entry, section ".printk_index", align 4
@vb2_dma_sg_put_userptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017vb2-dma-sg: %s: Releasing userspace buffer of %d pages\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vb2_dma_sg_put_userptr\00", [41 x i8] zeroinitializer }, align 32
@vb2_dma_sg_put_userptr._entry_ptr = internal global ptr @vb2_dma_sg_put_userptr._entry, section ".printk_index", align 4
@vb2_dma_sg_attach_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013failed to attach dmabuf\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vb2_dma_sg_attach_dmabuf\00", [39 x i8] zeroinitializer }, align 32
@vb2_dma_sg_attach_dmabuf._entry_ptr = internal global ptr @vb2_dma_sg_attach_dmabuf._entry, section ".printk_index", align 4
@vb2_dma_sg_map_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013trying to pin a non attached buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vb2_dma_sg_map_dmabuf\00", [42 x i8] zeroinitializer }, align 32
@vb2_dma_sg_map_dmabuf._entry_ptr = internal global ptr @vb2_dma_sg_map_dmabuf._entry, section ".printk_index", align 4
@vb2_dma_sg_map_dmabuf._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", [61 x i8] zeroinitializer }, align 32
@vb2_dma_sg_map_dmabuf._entry_ptr.17 = internal global ptr @vb2_dma_sg_map_dmabuf._entry.15, section ".printk_index", align 4
@vb2_dma_sg_map_dmabuf._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", [60 x i8] zeroinitializer }, align 32
@vb2_dma_sg_map_dmabuf._entry_ptr.20 = internal global ptr @vb2_dma_sg_map_dmabuf._entry.18, section ".printk_index", align 4
@vb2_dma_sg_unmap_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vb2_dma_sg_unmap_dmabuf\00", [40 x i8] zeroinitializer }, align 32
@vb2_dma_sg_unmap_dmabuf._entry_ptr = internal global ptr @vb2_dma_sg_unmap_dmabuf._entry, section ".printk_index", align 4
@vb2_dma_sg_unmap_dmabuf._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", [59 x i8] zeroinitializer }, align 32
@vb2_dma_sg_unmap_dmabuf._entry_ptr.25 = internal global ptr @vb2_dma_sg_unmap_dmabuf._entry.23, section ".printk_index", align 4
@vb2_dma_sg_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013No memory to map\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vb2_dma_sg_mmap\00", [16 x i8] zeroinitializer }, align 32
@vb2_dma_sg_mmap._entry_ptr = internal global ptr @vb2_dma_sg_mmap._entry, section ".printk_index", align 4
@vb2_dma_sg_mmap._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Remapping memory, error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vb2_dma_sg_mmap._entry_ptr.30 = internal global ptr @vb2_dma_sg_mmap._entry.28, section ".printk_index", align 4
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 25, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"vb2_dma_sg_memops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 658, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 109, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 162, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 187, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 528, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"vb2_dma_sg_dmabuf_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 510, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 449, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 289, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 638, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 558, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 563, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 570, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 587, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 592, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 337, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [53 x i8] c"../drivers/media/common/videobuf2/videobuf2-dma-sg.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 343, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_import_ns241, ptr @__UNIQUE_ID_license240, ptr @__ksymtab_vb2_dma_sg_memops, ptr @__param_debug, ptr @vb2_dma_sg_alloc._entry, ptr @vb2_dma_sg_alloc._entry_ptr, ptr @vb2_dma_sg_attach_dmabuf._entry, ptr @vb2_dma_sg_attach_dmabuf._entry_ptr, ptr @vb2_dma_sg_dmabuf_ops_map._entry, ptr @vb2_dma_sg_dmabuf_ops_map._entry_ptr, ptr @vb2_dma_sg_map_dmabuf._entry, ptr @vb2_dma_sg_map_dmabuf._entry.15, ptr @vb2_dma_sg_map_dmabuf._entry.18, ptr @vb2_dma_sg_map_dmabuf._entry_ptr, ptr @vb2_dma_sg_map_dmabuf._entry_ptr.17, ptr @vb2_dma_sg_map_dmabuf._entry_ptr.20, ptr @vb2_dma_sg_mmap._entry, ptr @vb2_dma_sg_mmap._entry.28, ptr @vb2_dma_sg_mmap._entry_ptr, ptr @vb2_dma_sg_mmap._entry_ptr.30, ptr @vb2_dma_sg_put._entry, ptr @vb2_dma_sg_put._entry_ptr, ptr @vb2_dma_sg_put_userptr._entry, ptr @vb2_dma_sg_put_userptr._entry_ptr, ptr @vb2_dma_sg_unmap_dmabuf._entry, ptr @vb2_dma_sg_unmap_dmabuf._entry.23, ptr @vb2_dma_sg_unmap_dmabuf._entry_ptr, ptr @vb2_dma_sg_unmap_dmabuf._entry_ptr.25, ptr @debug, ptr @vb2_dma_sg_memops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vb2_dma_sg_dmabuf_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_memops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_dmabuf_ops_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_put_userptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_attach_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_map_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_map_dmabuf._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_map_dmabuf._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_unmap_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_unmap_dmabuf._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_sg_mmap._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_alloc(ptr noundef %vb, ptr noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool23.not = icmp eq i32 %size, 0
  br i1 %tobool23.not, label %do.end41, label %if.end57, !prof !93

do.end41:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %vaddr, align 4
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  %dma_dir63 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %dma_dir63 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma_dir63, align 4
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset, align 8
  %size64 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %size64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %size64, align 8
  %shr = lshr i32 %size, 12
  %num_pages65 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %num_pages65 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %num_pages65, align 4
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 6
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sg_table, ptr %dma_sgt, align 4
  %11 = shl nuw nsw i32 %shr, 2
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3520, i32 noundef -1) #15
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %pages, align 8
  %tobool69.not = icmp eq ptr %call.i.i, null
  br i1 %tobool69.not, label %if.end62.fail_pages_array_alloc_crit_edge, label %if.end71

if.end62.fail_pages_array_alloc_crit_edge:        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_pages_array_alloc

if.end71:                                         ; preds = %if.end62
  %13 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vb, align 8
  %gfp_flags = getelementptr inbounds %struct.vb2_queue, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfp_flags, align 4
  %17 = ptrtoint ptr %size64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size64, align 8
  %or.i = or i32 %16, 11712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i170 = icmp eq i32 %18, 0
  br i1 %cmp.not.i170, label %if.end71.if.end76_crit_edge, label %if.end71.get_order.exit.i_crit_edge

if.end71.get_order.exit.i_crit_edge:              ; preds = %if.end71
  br label %get_order.exit.i

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

get_order.exit.i:                                 ; preds = %cleanup.i.get_order.exit.i_crit_edge, %if.end71.get_order.exit.i_crit_edge
  %size.0.i173 = phi i32 [ %sub.i, %cleanup.i.get_order.exit.i_crit_edge ], [ %18, %if.end71.get_order.exit.i_crit_edge ]
  %last_page.0.i171 = phi i32 [ %last_page.2.lcssa.i, %cleanup.i.get_order.exit.i_crit_edge ], [ 0, %if.end71.get_order.exit.i_crit_edge ]
  %dec.i.i = add i32 %size.0.i173, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %19 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #11, !range !94
  %sub.i.i.i = sub nuw nsw i32 32, %19
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %shl.i = shl i32 4096, %cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %size.0.i173)
  %cmp2.i = icmp ugt i32 %shl.i, %size.0.i173
  %dec.i = sext i1 %cmp2.i to i32
  %spec.select.i = add nsw i32 %cond.i.i.i, %dec.i
  %call38.i.i.i54.i = tail call ptr @__alloc_pages(i32 noundef %or.i, i32 noundef %spec.select.i, i32 noundef 0, ptr noundef null) #11
  %tobool6.not55.i = icmp eq ptr %call38.i.i.i54.i, null
  br i1 %tobool6.not55.i, label %get_order.exit.i.if.end8.i_crit_edge, label %get_order.exit.i.while.end18.i_crit_edge

get_order.exit.i.while.end18.i_crit_edge:         ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end18.i

get_order.exit.i.if.end8.i_crit_edge:             ; preds = %get_order.exit.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end16.i.if.end8.i_crit_edge, %get_order.exit.i.if.end8.i_crit_edge
  %order.156.i = phi i32 [ %dec17.i, %if.end16.i.if.end8.i_crit_edge ], [ %spec.select.i, %get_order.exit.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.156.i)
  %cmp9.i = icmp eq i32 %order.156.i, 0
  br i1 %cmp9.i, label %while.cond11.preheader.i, label %if.end16.i

while.cond11.preheader.i:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_page.0.i171)
  %tobool13.not64.i = icmp eq i32 %last_page.0.i171, 0
  br i1 %tobool13.not64.i, label %while.cond11.preheader.i.fail_pages_alloc_crit_edge, label %while.cond11.preheader.i.while.body14.i_crit_edge

while.cond11.preheader.i.while.body14.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body14.i

while.cond11.preheader.i.fail_pages_alloc_crit_edge: ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_pages_alloc

while.body14.i:                                   ; preds = %while.body14.i.while.body14.i_crit_edge, %while.cond11.preheader.i.while.body14.i_crit_edge
  %last_page.165.i = phi i32 [ %dec12.i, %while.body14.i.while.body14.i_crit_edge ], [ %last_page.0.i171, %while.cond11.preheader.i.while.body14.i_crit_edge ]
  %dec12.i = add i32 %last_page.165.i, -1
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 8
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %dec12.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef 0) #11
  %tobool13.not.i = icmp eq i32 %dec12.i, 0
  br i1 %tobool13.not.i, label %while.body14.i.fail_pages_alloc_crit_edge, label %while.body14.i.while.body14.i_crit_edge

while.body14.i.while.body14.i_crit_edge:          ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body14.i

while.body14.i.fail_pages_alloc_crit_edge:        ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_pages_alloc

if.end16.i:                                       ; preds = %if.end8.i
  %dec17.i = add i32 %order.156.i, -1
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i, i32 noundef %dec17.i, i32 noundef 0, ptr noundef null) #11
  %tobool6.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.end16.i.if.end8.i_crit_edge, label %if.end16.i.while.end18.i_crit_edge

if.end16.i.while.end18.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end18.i

if.end16.i.if.end8.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

while.end18.i:                                    ; preds = %if.end16.i.while.end18.i_crit_edge, %get_order.exit.i.while.end18.i_crit_edge
  %order.1.lcssa.i = phi i32 [ %spec.select.i, %get_order.exit.i.while.end18.i_crit_edge ], [ %dec17.i, %if.end16.i.while.end18.i_crit_edge ]
  %call38.i.i.i.lcssa.i = phi ptr [ %call38.i.i.i54.i, %get_order.exit.i.while.end18.i_crit_edge ], [ %call38.i.i.i.i, %if.end16.i.while.end18.i_crit_edge ]
  tail call void @split_page(ptr noundef nonnull %call38.i.i.i.lcssa.i, i32 noundef %order.1.lcssa.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %order.1.lcssa.i)
  %cmp2060.not.i = icmp eq i32 %order.1.lcssa.i, 31
  br i1 %cmp2060.not.i, label %while.end18.i.cleanup.i_crit_edge, label %for.body.preheader.i

while.end18.i.cleanup.i_crit_edge:                ; preds = %while.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.body.preheader.i:                             ; preds = %while.end18.i
  %shl19.i = shl nuw nsw i32 1, %order.1.lcssa.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %shl19.i, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.062.i = phi i32 [ %inc24.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %last_page.261.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %last_page.0.i171, %for.body.preheader.i ]
  %arrayidx21.i = getelementptr %struct.page, ptr %call38.i.i.i.lcssa.i, i32 %i.062.i
  %24 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages, align 8
  %inc.i = add i32 %last_page.261.i, 1
  %arrayidx23.i = getelementptr ptr, ptr %25, i32 %last_page.261.i
  %26 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx21.i, ptr %arrayidx23.i, align 4
  %inc24.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.cleanup.i_crit_edge, %while.end18.i.cleanup.i_crit_edge
  %last_page.2.lcssa.i = phi i32 [ %last_page.0.i171, %while.end18.i.cleanup.i_crit_edge ], [ %inc.i, %for.body.i.cleanup.i_crit_edge ]
  %shl25.neg.i = shl i32 -4096, %order.1.lcssa.i
  %sub.i = add i32 %shl25.neg.i, %size.0.i173
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %cleanup.i.if.end76_crit_edge, label %cleanup.i.get_order.exit.i_crit_edge

cleanup.i.get_order.exit.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_order.exit.i

cleanup.i.if.end76_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end76:                                         ; preds = %cleanup.i.if.end76_crit_edge, %if.end71.if.end76_crit_edge
  %27 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_sgt, align 4
  %29 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages, align 8
  %31 = ptrtoint ptr %num_pages65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_pages65, align 4
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %28, ptr noundef %30, i32 noundef %32, i32 noundef 0, i32 noundef %size, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool81.not = icmp eq i32 %call.i, 0
  br i1 %tobool81.not, label %if.end83, label %if.end76.fail_table_alloc_crit_edge

if.end76.fail_table_alloc_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_table_alloc

if.end83:                                         ; preds = %if.end76
  %call84 = tail call ptr @get_device(ptr noundef nonnull %dev) #11
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call84, ptr %call7.i.i, align 8
  %34 = ptrtoint ptr %dma_dir63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_dir63, align 4
  %call89 = tail call i32 @dma_map_sgtable(ptr noundef %call84, ptr noundef %sg_table, i32 noundef %35, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %fail_map

if.end92:                                         ; preds = %if.end83
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 10
  %handler = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %refcount, ptr %handler, align 4
  %put = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vb2_dma_sg_put, ptr %put, align 8
  %arg = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %arg, align 4
  %vb96 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 13
  %39 = ptrtoint ptr %vb96 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vb, ptr %vb96, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %40 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %refcount, align 8
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp = icmp sgt i32 %41, 0
  br i1 %cmp, label %do.end102, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end102:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %num_pages65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_pages65, align 4
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %43) #16
  br label %cleanup

fail_map:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  tail call void @put_device(ptr noundef %45) #11
  %46 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_sgt, align 4
  tail call void @sg_free_table(ptr noundef %47) #11
  br label %fail_table_alloc

fail_table_alloc:                                 ; preds = %fail_map, %if.end76.fail_table_alloc_crit_edge
  %48 = ptrtoint ptr %num_pages65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_pages65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool112.not175 = icmp eq i32 %49, 0
  br i1 %tobool112.not175, label %fail_table_alloc.fail_pages_alloc_crit_edge, label %fail_table_alloc.while.body_crit_edge

fail_table_alloc.while.body_crit_edge:            ; preds = %fail_table_alloc
  br label %while.body

fail_table_alloc.fail_pages_alloc_crit_edge:      ; preds = %fail_table_alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_pages_alloc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fail_table_alloc.while.body_crit_edge
  %num_pages.0176 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %49, %fail_table_alloc.while.body_crit_edge ]
  %dec = add i32 %num_pages.0176, -1
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %51, i32 %dec
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  tail call void @__free_pages(ptr noundef %53, i32 noundef 0) #11
  %tobool112.not = icmp eq i32 %dec, 0
  br i1 %tobool112.not, label %while.body.fail_pages_alloc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.fail_pages_alloc_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_pages_alloc

fail_pages_alloc:                                 ; preds = %while.body.fail_pages_alloc_crit_edge, %fail_table_alloc.fail_pages_alloc_crit_edge, %while.body14.i.fail_pages_alloc_crit_edge, %while.cond11.preheader.i.fail_pages_alloc_crit_edge
  %54 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages, align 8
  tail call void @kvfree(ptr noundef %55) #11
  br label %fail_pages_array_alloc

fail_pages_array_alloc:                           ; preds = %fail_pages_alloc, %if.end62.fail_pages_array_alloc_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_pages_array_alloc, %do.end102, %if.end92.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end41, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %fail_pages_array_alloc ], [ %call7.i.i, %do.end102 ], [ %call7.i.i, %if.end92.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end41 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_put(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 6
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 9
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i, !prof !97

if.end5.i.i.i.if.end14_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end14

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %do.body.do.end6_crit_edge

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %5) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %6 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 5
  %8 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_dir, align 4
  %10 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg_table, align 4
  %orig_nents.i = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef %9, i32 noundef 32) #11
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 1
  %14 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end6.if.end10_crit_edge, label %if.then7

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pages, align 4
  tail call void @vm_unmap_ram(ptr noundef nonnull %15, i32 noundef %17) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end6.if.end10_crit_edge
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %18 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_sgt, align 4
  tail call void @sg_free_table(ptr noundef %19) #11
  %dec29 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec29)
  %cmp1130 = icmp sgt i32 %dec29, -1
  br i1 %cmp1130, label %while.body.lr.ph, label %if.end10.while.end_crit_edge

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end10
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec31 = phi i32 [ %dec29, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %dec31
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  tail call void @__free_pages(ptr noundef %23, i32 noundef 0) #11
  %dec = add nsw i32 %dec31, -1
  %cmp11 = icmp sgt i32 %dec31, 0
  br i1 %cmp11, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end10.while.end_crit_edge
  %pages12 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 2
  %24 = ptrtoint ptr %pages12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages12, align 4
  tail call void @kvfree(ptr noundef %25) #11
  %26 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf_priv, align 4
  tail call void @put_device(ptr noundef %27) #11
  tail call void @kfree(ptr noundef %buf_priv) #11
  br label %if.end14

if.end14:                                         ; preds = %while.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_get_dmabuf(ptr nocapture noundef readnone %vb, ptr noundef %buf_priv, i32 noundef %flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #11
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.vb2_dma_sg_get_dmabuf.exp_info, i32 24)
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vb2_dma_sg_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %size1 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size1, align 4
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags2, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf_priv, ptr %priv, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %7 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_sgt, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 535, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end28.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !93

if.end28.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end28
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !97

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end25.cleanup_crit_edge ], [ %call, %if.else.i.i.i.cleanup_crit_edge ], [ %call, %if.end15.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_get_userptr(ptr noundef %vb, ptr noundef %dev, i32 noundef %vaddr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %vaddr29 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %vaddr29 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %vaddr29, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_dir, align 4
  %dma_dir31 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %dma_dir31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dma_dir31, align 4
  %and = and i32 %vaddr, 4095
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset, align 8
  %size32 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %size32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size32, align 8
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 6
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sg_table, ptr %dma_sgt, align 4
  %vb33 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %vb33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vb, ptr %vb33, align 4
  %call34 = tail call ptr @vb2_create_framevec(i32 noundef %vaddr, i32 noundef %size) #11
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.userptr_fail_pfnvec_crit_edge, label %if.end37

if.end28.userptr_fail_pfnvec_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %userptr_fail_pfnvec

if.end37:                                         ; preds = %if.end28
  %vec38 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %vec38 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call34, ptr %vec38, align 4
  %is_pfns.i = getelementptr inbounds %struct.frame_vector, ptr %call34, i32 0, i32 3
  %13 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_pfns.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end37.if.end4.i_crit_edge, label %if.then.i

if.end37.if.end4.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end37
  %call.i = tail call i32 @frame_vector_to_pages(ptr noundef %call34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end4.i_crit_edge, label %cleanup.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = inttoptr i32 %call.i to ptr
  br label %frame_vector_pages.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end37.if.end4.i_crit_edge
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %call34, i32 0, i32 4
  br label %frame_vector_pages.exit

frame_vector_pages.exit:                          ; preds = %if.end4.i, %cleanup.i
  %retval.1.i = phi ptr [ %15, %cleanup.i ], [ %ptrs.i, %if.end4.i ]
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.1.i, ptr %pages, align 8
  %cmp.i96 = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %frame_vector_pages.exit.userptr_fail_sgtable_crit_edge, label %if.end43

frame_vector_pages.exit.userptr_fail_sgtable_crit_edge: ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %userptr_fail_sgtable

if.end43:                                         ; preds = %frame_vector_pages.exit
  %nr_frames.i = getelementptr inbounds %struct.frame_vector, ptr %call34, i32 0, i32 1
  %17 = ptrtoint ptr %nr_frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_frames.i, align 4
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_pages, align 4
  %20 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_sgt, align 4
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 8
  %call.i97 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %21, ptr noundef %retval.1.i, i32 noundef %18, i32 noundef %23, i32 noundef %size, i32 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool50.not = icmp eq i32 %call.i97, 0
  br i1 %tobool50.not, label %if.end52, label %if.end43.userptr_fail_sgtable_crit_edge

if.end43.userptr_fail_sgtable_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %userptr_fail_sgtable

if.end52:                                         ; preds = %if.end43
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %26 = ptrtoint ptr %dma_dir31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_dir31, align 4
  %call56 = tail call i32 @dma_map_sgtable(ptr noundef %25, ptr noundef %sg_table, i32 noundef %27, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end52.cleanup_crit_edge, label %userptr_fail_map

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

userptr_fail_map:                                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sg_free_table(ptr noundef %sg_table) #11
  br label %userptr_fail_sgtable

userptr_fail_sgtable:                             ; preds = %userptr_fail_map, %if.end43.userptr_fail_sgtable_crit_edge, %frame_vector_pages.exit.userptr_fail_sgtable_crit_edge
  tail call void @vb2_destroy_framevec(ptr noundef %call34) #11
  br label %userptr_fail_pfnvec

userptr_fail_pfnvec:                              ; preds = %userptr_fail_sgtable, %if.end28.userptr_fail_pfnvec_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %userptr_fail_pfnvec, %if.end52.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %userptr_fail_pfnvec ], [ %call7.i.i, %if.end52.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_put_userptr(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_table = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 6
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 9
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %1) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 5
  %5 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_dir, align 4
  %7 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg_table, align 4
  %orig_nents.i = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %4, ptr noundef %8, i32 noundef %10, i32 noundef %6, i32 noundef 32) #11
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 1
  %11 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %do.end4.if.end8_crit_edge, label %if.then5

do.end4.if.end8_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages, align 4
  tail call void @vm_unmap_ram(ptr noundef nonnull %12, i32 noundef %14) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end4.if.end8_crit_edge
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %15 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_sgt, align 4
  tail call void @sg_free_table(ptr noundef %16) #11
  %17 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_dir, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end8.if.end16_crit_edge [
    i32 2, label %if.end8.if.then13_crit_edge
    i32 0, label %if.end8.if.then13_crit_edge35
  ]

if.end8.if.then13_crit_edge35:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end8.if.then13_crit_edge, %if.end8.if.then13_crit_edge35
  %dec32 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec32)
  %cmp1433 = icmp sgt i32 %dec32, -1
  br i1 %cmp1433, label %while.body.lr.ph, label %if.then13.if.end16_crit_edge

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

while.body.lr.ph:                                 ; preds = %if.then13
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec34 = phi i32 [ %dec32, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %dec34
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @set_page_dirty_lock(ptr noundef %23) #11
  %dec = add nsw i32 %dec34, -1
  %cmp14 = icmp sgt i32 %dec34, 0
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end16:                                         ; preds = %while.body.if.end16_crit_edge, %if.then13.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %vec = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 3
  %24 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vec, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %25) #11
  tail call void @kfree(ptr noundef %buf_priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_prepare(ptr nocapture noundef readonly %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vb = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 13
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 4
  %skip_cache_sync_on_prepare = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skip_cache_sync_on_prepare to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skip_cache_sync_on_prepare, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %4 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_sgt, align 4
  %6 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 5
  %8 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_dir, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_finish(ptr nocapture noundef readonly %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vb = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 13
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 4
  %skip_cache_sync_on_finish = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skip_cache_sync_on_finish to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skip_cache_sync_on_finish, align 4
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %4 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_sgt, align 4
  %6 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 5
  %8 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_dir, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %7, ptr noundef %11, i32 noundef %13, i32 noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_attach_dmabuf(ptr noundef %vb, ptr noundef %dev, ptr noundef %dbuf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 624, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #14
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  %call35 = tail call ptr @dma_buf_attach(ptr noundef %dbuf, ptr noundef nonnull %dev) #11
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_dir, align 4
  %dma_dir44 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %dma_dir44 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_dir44, align 4
  %size45 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %size45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size45, align 8
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %db_attach to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %db_attach, align 8
  %vb46 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %vb46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vb, ptr %vb46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end40, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call35, %do.end40 ], [ %call7.i.i, %if.end43 ], [ inttoptr (i32 -14 to ptr), %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_detach_dmabuf(ptr noundef %mem_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %do.end, !prof !97

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 610, i32 noundef 9, ptr noundef null) #11
  tail call void @vb2_dma_sg_unmap_dmabuf(ptr noundef %mem_priv)
  br label %if.end22

if.end22:                                         ; preds = %do.end, %entry.if.end22_crit_edge
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 12
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @dma_buf_detach(ptr noundef %5, ptr noundef %3) #11
  tail call void @kfree(ptr noundef %mem_priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_map_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 12
  %0 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_attach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end27:                                         ; preds = %entry
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 7
  %2 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_sgt, align 4
  %tobool29.not = icmp eq ptr %3, null
  br i1 %tobool29.not, label %if.end66, label %do.end45, !prof !97

do.end45:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 562, i32 noundef 9, ptr noundef null) #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end66:                                         ; preds = %if.end27
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 5
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  %call68 = tail call ptr @dma_buf_map_attachment(ptr noundef nonnull %1, i32 noundef %5) #11
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call68, ptr %dma_sgt, align 4
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 1
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end73, %do.end45, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end45 ], [ -22, %do.end73 ], [ 0, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_unmap_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #11
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -4278190081, ptr %map, align 8, !annotation !101
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vaddr, align 4
  store ptr %4, ptr %map, align 8
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 12
  %5 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db_attach, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 586, i32 noundef 9, ptr noundef null) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %cleanup

if.end27:                                         ; preds = %entry
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %do.end47, label %if.end68, !prof !93

do.end47:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %cleanup

if.end68:                                         ; preds = %if.end27
  %tobool70.not = icmp eq ptr %4, null
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @dma_buf_vunmap(ptr noundef %8, ptr noundef nonnull %map) #11
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vaddr, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge
  %10 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_attach, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %mem_priv, i32 0, i32 5
  %12 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_dir, align 4
  call void @dma_buf_unmap_attachment(ptr noundef %11, ptr noundef nonnull %1, i32 noundef %13) #11
  %14 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_sgt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end47, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_vaddr(ptr nocapture noundef readnone %vb, ptr noundef %buf_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #11
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %map, align 8, !annotation !101
  %tobool.not = icmp eq ptr %buf_priv, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !93

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/videobuf2/videobuf2-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

do.end9:                                          ; preds = %entry
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 1
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vaddr, align 4
  %tobool10.not = icmp eq ptr %2, null
  br i1 %tobool10.not, label %if.then11, label %do.end9.cond.true23_crit_edge

do.end9.cond.true23_crit_edge:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true23

if.then11:                                        ; preds = %do.end9
  %db_attach = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 12
  %3 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %db_attach, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call i32 @dma_buf_vmap(ptr noundef %6, ptr noundef nonnull %map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %cond.false, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vaddr, align 4
  br label %cond.end26

cond.false:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  br label %if.end20

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 2
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 9
  %12 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pages, align 4
  %call17 = tail call ptr @vm_map_ram(ptr noundef %11, i32 noundef %13, i32 noundef -1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %cond.false
  %14 = phi ptr [ %call17, %if.else ], [ %9, %cond.false ]
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %vaddr, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %if.end20.cond.end26_crit_edge, label %if.end20.cond.true23_crit_edge

if.end20.cond.true23_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true23

if.end20.cond.end26_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end26

cond.true23:                                      ; preds = %if.end20.cond.true23_crit_edge, %do.end9.cond.true23_crit_edge
  %16 = phi ptr [ %14, %if.end20.cond.true23_crit_edge ], [ %2, %do.end9.cond.true23_crit_edge ]
  %offset = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %18
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true23, %if.end20.cond.end26_crit_edge, %if.end20.thread
  %cond27 = phi ptr [ %add.ptr, %cond.true23 ], [ null, %if.end20.cond.end26_crit_edge ], [ null, %if.end20.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #11
  ret ptr %cond27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vb2_dma_sg_cookie(ptr nocapture noundef readnone %vb, ptr nocapture noundef readonly %buf_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_num_users(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_mmap(ptr noundef %buf_priv, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_priv, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %num_pages = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 9
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 4
  %call1 = tail call i32 @vm_map_pages(ptr noundef %vma, ptr noundef %1, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call1) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %handler = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %buf_priv, i32 0, i32 11
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %handler, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %5 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_common_vm_ops, ptr %vm_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vb2_common_vm_ops to i32))
  %6 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %6(ptr noundef %vma) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end6 ], [ 0, %if.end9 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_attach(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %dbuf_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_sgt, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig_nents, align 4
  %call2 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %6, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %orig_nents8 = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %orig_nents8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_nents8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp32.not = icmp eq i32 %8, 0
  br i1 %cmp32.not, label %if.end5.for.end_crit_edge, label %for.body.preheader

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_sgt, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %for.body

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %for.body.preheader
  %wr.035 = phi ptr [ %call11, %sg_set_page.exit.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %rd.034 = phi ptr [ %call10, %sg_set_page.exit.for.body_crit_edge ], [ %14, %for.body.preheader ]
  %i.033 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %15 = ptrtoint ptr %rd.034 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd.034, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !97

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !103
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %17 = ptrtoint ptr %wr.035 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr.035, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !97

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %rd.034, i32 0, i32 1
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %rd.034, i32 0, i32 2
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  %and.i = and i32 %16, -4
  %and.i.i31 = and i32 %18, 3
  %or.i.i = or i32 %and.i.i31, %and.i
  %23 = ptrtoint ptr %wr.035 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %wr.035, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %wr.035, i32 0, i32 1
  %24 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %wr.035, i32 0, i32 2
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %length.i, align 4
  %call10 = tail call ptr @sg_next(ptr noundef %rd.034) #11
  %call11 = tail call ptr @sg_next(ptr noundef %wr.035) #11
  %inc = add nuw i32 %i.033, 1
  %26 = ptrtoint ptr %orig_nents8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %orig_nents8, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %sg_set_page.exit.for.body_crit_edge, label %sg_set_page.exit.for.end_crit_edge

sg_set_page.exit.for.end_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %sg_set_page.exit.for.end_crit_edge, %if.end5.for.end_crit_edge
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %dma_dir, align 4
  %priv12 = getelementptr inbounds %struct.dma_buf_attachment, ptr %dbuf_attach, i32 0, i32 8
  %29 = ptrtoint ptr %priv12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %priv12, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_detach(ptr nocapture noundef readnone %dbuf, ptr nocapture noundef %db_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %3, i32 noundef 0) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %1) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_dmabuf_ops_map(ptr nocapture noundef readonly %db_attach, i32 noundef %dma_dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %lock1 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock1, i32 noundef 0) #11
  %dma_dir3 = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dma_dir)
  %cmp = icmp eq i32 %5, %dma_dir
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5.not = icmp eq i32 %5, 3
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %5, i32 noundef 0) #11
  %12 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %dma_dir3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 1
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %14, ptr noundef %1, i32 noundef %dma_dir, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dma_dir, ptr %dma_dir3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ %1, %if.end14 ], [ %1, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock1) #11
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_unmap(ptr nocapture noundef %db_attach, ptr nocapture noundef %sgt, i32 noundef %dma_dir) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_release(ptr nocapture noundef readonly %dbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @vb2_dma_sg_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_begin_cpu_access(ptr nocapture noundef readonly %dbuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_sgt, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_end_cpu_access(ptr nocapture noundef readonly %dbuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_sgt, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_mmap(ptr nocapture noundef readonly %dbuf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %vb2_dma_sg_mmap.exit

if.end.i:                                         ; preds = %entry
  %pages.i = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %num_pages.i = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages.i, align 4
  %call1.i = tail call i32 @vm_map_pages(ptr noundef %vma, ptr noundef %3, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call1.i) #16
  br label %vb2_dma_sg_mmap.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %handler.i = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 11
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %6 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %handler.i, ptr %vm_private_data.i, align 4
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %7 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_common_vm_ops, ptr %vm_ops.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vb2_common_vm_ops to i32))
  %8 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %8(ptr noundef %vma) #11
  br label %vb2_dma_sg_mmap.exit

vb2_dma_sg_mmap.exit:                             ; preds = %if.end9.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end6.i ], [ 0, %if.end9.i ], [ -22, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_vmap(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vaddr = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_iomem.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype236, !1, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!3 = !{ptr @vb2_dma_sg_memops, !4, !"vb2_dma_sg_memops", i1 false, i1 false}
!4 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 658, i32 26}
!5 = !{ptr @__ksymtab_vb2_dma_sg_memops, !6, !"__ksymtab_vb2_dma_sg_memops", i1 false, i1 false}
!6 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 675, i32 1}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 677, i32 1}
!9 = !{ptr @__UNIQUE_ID_author238, !10, !"__UNIQUE_ID_author238", i1 false, i1 false}
!10 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 678, i32 1}
!11 = !{ptr @__UNIQUE_ID_file239, !12, !"__UNIQUE_ID_file239", i1 false, i1 false}
!12 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 679, i32 1}
!13 = !{ptr @__UNIQUE_ID_license240, !12, !"__UNIQUE_ID_license240", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_import_ns241, !15, !"__UNIQUE_ID_import_ns241", i1 false, i1 false}
!15 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 680, i32 1}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 25, i32 12}
!18 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 109, i32 6}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 162, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vb2_dma_sg_alloc._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @vb2_dma_sg_alloc._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 187, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vb2_dma_sg_put._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @vb2_dma_sg_put._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 528, i32 2}
!35 = !{ptr @vb2_dma_sg_dmabuf_ops, !36, !"vb2_dma_sg_dmabuf_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 510, i32 33}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 449, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vb2_dma_sg_dmabuf_ops_map._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vb2_dma_sg_dmabuf_ops_map._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 289, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vb2_dma_sg_put_userptr._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vb2_dma_sg_put_userptr._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 638, i32 3}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vb2_dma_sg_attach_dmabuf._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vb2_dma_sg_attach_dmabuf._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 558, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vb2_dma_sg_map_dmabuf._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @vb2_dma_sg_map_dmabuf._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 563, i32 3}
!59 = !{ptr @vb2_dma_sg_map_dmabuf._entry.15, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vb2_dma_sg_map_dmabuf._entry_ptr.17, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 570, i32 3}
!63 = !{ptr @vb2_dma_sg_map_dmabuf._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vb2_dma_sg_map_dmabuf._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 587, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vb2_dma_sg_unmap_dmabuf._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @vb2_dma_sg_unmap_dmabuf._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 592, i32 3}
!72 = !{ptr @vb2_dma_sg_unmap_dmabuf._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vb2_dma_sg_unmap_dmabuf._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 337, i32 3}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @vb2_dma_sg_mmap._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @vb2_dma_sg_mmap._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-sg.c", i32 343, i32 3}
!81 = !{ptr @vb2_dma_sg_mmap._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @vb2_dma_sg_mmap._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i32 0, i32 33}
!95 = !{i64 2148444008}
!96 = !{i64 2148358448, i64 2148358480, i64 2148358509, i64 2148358543, i64 2148358574, i64 2148358597}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149320122}
!99 = !{i64 2148355983, i64 2148356015, i64 2148356044, i64 2148356078, i64 2148356109, i64 2148356132}
!100 = !{i8 0, i8 2}
!101 = !{!"auto-init"}
!102 = !{i64 2154334120, i64 2154334634, i64 2154334157, i64 2154334213, i64 2154334247, i64 2154334271, i64 2154334312, i64 2154334333, i64 2154334361, i64 2154334395}
!103 = !{i64 2153566045, i64 2153566537, i64 2153566082, i64 2153566138, i64 2153566172, i64 2153566196, i64 2153566237, i64 2153566258, i64 2153566286, i64 2153566320}
!104 = !{i64 2153564097, i64 2153564589, i64 2153564134, i64 2153564190, i64 2153564224, i64 2153564248, i64 2153564289, i64 2153564310, i64 2153564338, i64 2153564372}
