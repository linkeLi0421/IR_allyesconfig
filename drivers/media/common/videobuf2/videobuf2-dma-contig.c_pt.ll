; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/videobuf2-dma-contig.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-dma-contig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vb2_dma_contig_memops\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dma_contig_memops\09\09\09\09"
module asm "\09.long\09__crc_vb2_dma_contig_memops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_contig_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_contig_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_contig_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vb2_dma_contig_set_max_seg_size\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dma_contig_set_max_seg_size\09\09\09\09"
module asm "\09.long\09__crc_vb2_dma_contig_set_max_seg_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_contig_set_max_seg_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_contig_set_max_seg_size\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_contig_set_max_seg_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vb2_dc_buf = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, %struct.vb2_vmarea_handler, %struct.refcount_struct, ptr, ptr, ptr, i8 }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.69, i32 }
%union.anon.69 = type { i32 }
%struct.dma_buf_map = type { %union.anon.67, i8 }
%union.anon.67 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.vb2_dc_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@vb2_dma_contig_memops = dso_local constant { %struct.vb2_mem_ops, [36 x i8] } { %struct.vb2_mem_ops { ptr @vb2_dc_alloc, ptr @vb2_dc_put, ptr @vb2_dc_get_dmabuf, ptr @vb2_dc_get_userptr, ptr @vb2_dc_put_userptr, ptr @vb2_dc_prepare, ptr @vb2_dc_finish, ptr @vb2_dc_attach_dmabuf, ptr @vb2_dc_detach_dmabuf, ptr @vb2_dc_map_dmabuf, ptr @vb2_dc_unmap_dmabuf, ptr @vb2_dc_vaddr, ptr @vb2_dc_cookie, ptr @vb2_dc_num_users, ptr @vb2_dc_mmap }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vb2_dma_contig_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_contig_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_contig_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_contig_memops to i32), ptr @__kstrtab_vb2_dma_contig_memops, ptr @__kstrtabns_vb2_dma_contig_memops }, section "___ksymtab_gpl+vb2_dma_contig_memops", align 4
@vb2_dma_contig_set_max_seg_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 859, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to set max_seg_size: dma_parms is NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vb2_dma_contig_set_max_seg_size\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-contig.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vb2_dma_contig_set_max_seg_size._entry_ptr = internal global ptr @vb2_dma_contig_set_max_seg_size._entry, section ".printk_index", align 4
@__kstrtab_vb2_dma_contig_set_max_seg_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_contig_set_max_seg_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_contig_set_max_seg_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_contig_set_max_seg_size to i32), ptr @__kstrtab_vb2_dma_contig_set_max_seg_size, ptr @__kstrtabns_vb2_dma_contig_set_max_seg_size }, section "___ksymtab_gpl+vb2_dma_contig_set_max_seg_size", align 4
@__UNIQUE_ID_description251 = internal constant [83 x i8] c"videobuf2_dma_contig.description=DMA-contig memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [60 x i8] c"videobuf2_dma_contig.author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [78 x i8] c"videobuf2_dma_contig.file=drivers/media/common/videobuf2/videobuf2-dma-contig\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [33 x i8] c"videobuf2_dma_contig.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns255 = internal constant [39 x i8] c"videobuf2_dma_contig.import_ns=DMA_BUF\00", section ".modinfo", align 1
@vb2_dc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma alloc of size %lu failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vb2_dc_alloc\00", [19 x i8] zeroinitializer }, align 32
@vb2_dc_alloc._entry_ptr = internal global ptr @vb2_dc_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"videobuf2_dma_contig\00", [43 x i8] zeroinitializer }, align 32
@__const.vb2_dc_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.7, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_dc_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @vb2_dc_dmabuf_ops_attach, ptr @vb2_dc_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_dc_dmabuf_ops_map, ptr @vb2_dc_dmabuf_ops_unmap, ptr @vb2_dc_dmabuf_ops_release, ptr @vb2_dc_dmabuf_ops_begin_cpu_access, ptr @vb2_dc_dmabuf_ops_end_cpu_access, ptr @vb2_dc_dmabuf_ops_mmap, ptr @vb2_dc_dmabuf_ops_vmap, ptr null }, [44 x i8] zeroinitializer }, align 32
@vb2_dc_dmabuf_ops_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to map scatterlist\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vb2_dc_dmabuf_ops_map\00", [42 x i8] zeroinitializer }, align 32
@vb2_dc_dmabuf_ops_map._entry_ptr = internal global ptr @vb2_dc_dmabuf_ops_map._entry, section ".printk_index", align 4
@vb2_dc_get_base_sgt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 492, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to alloc sg table\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vb2_dc_get_base_sgt\00", [44 x i8] zeroinitializer }, align 32
@vb2_dc_get_base_sgt._entry_ptr = internal global ptr @vb2_dc_get_base_sgt._entry, section ".printk_index", align 4
@vb2_dc_get_base_sgt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get scatterlist from DMA API\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_dc_get_base_sgt._entry_ptr.14 = internal global ptr @vb2_dc_get_base_sgt._entry.12, section ".printk_index", align 4
@vb2_dc_get_userptr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vb2_dc_get_userptr\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"user data must be aligned to %lu bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"size is zero\0A\00", [18 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to allocate sg table\0A\00", [33 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr._entry_ptr = internal global ptr @vb2_dc_get_userptr._entry, section ".printk_index", align 4
@vb2_dc_get_userptr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to initialize sg table\0A\00", [63 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr._entry_ptr.21 = internal global ptr @vb2_dc_get_userptr._entry.19, section ".printk_index", align 4
@vb2_dc_get_userptr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.15, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr._entry_ptr.23 = internal global ptr @vb2_dc_get_userptr._entry.22, section ".printk_index", align 4
@vb2_dc_get_userptr._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013contiguous mapping is too small %lu/%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@vb2_dc_get_userptr._entry_ptr.26 = internal global ptr @vb2_dc_get_userptr._entry.24, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@vb2_dc_attach_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013failed to attach dmabuf\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vb2_dc_attach_dmabuf\00", [43 x i8] zeroinitializer }, align 32
@vb2_dc_attach_dmabuf._entry_ptr = internal global ptr @vb2_dc_attach_dmabuf._entry, section ".printk_index", align 4
@vb2_dc_map_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013trying to pin a non attached buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vb2_dc_map_dmabuf\00", [46 x i8] zeroinitializer }, align 32
@vb2_dc_map_dmabuf._entry_ptr = internal global ptr @vb2_dc_map_dmabuf._entry, section ".printk_index", align 4
@vb2_dc_map_dmabuf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", [61 x i8] zeroinitializer }, align 32
@vb2_dc_map_dmabuf._entry_ptr.33 = internal global ptr @vb2_dc_map_dmabuf._entry.31, section ".printk_index", align 4
@vb2_dc_map_dmabuf._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", [60 x i8] zeroinitializer }, align 32
@vb2_dc_map_dmabuf._entry_ptr.36 = internal global ptr @vb2_dc_map_dmabuf._entry.34, section ".printk_index", align 4
@vb2_dc_map_dmabuf._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013contiguous chunk is too small %lu/%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@vb2_dc_map_dmabuf._entry_ptr.39 = internal global ptr @vb2_dc_map_dmabuf._entry.37, section ".printk_index", align 4
@vb2_dc_unmap_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vb2_dc_unmap_dmabuf\00", [44 x i8] zeroinitializer }, align 32
@vb2_dc_unmap_dmabuf._entry_ptr = internal global ptr @vb2_dc_unmap_dmabuf._entry, section ".printk_index", align 4
@vb2_dc_unmap_dmabuf._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", [59 x i8] zeroinitializer }, align 32
@vb2_dc_unmap_dmabuf._entry_ptr.44 = internal global ptr @vb2_dc_unmap_dmabuf._entry.42, section ".printk_index", align 4
@vb2_dc_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013No buffer to map\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vb2_dc_mmap\00", [20 x i8] zeroinitializer }, align 32
@vb2_dc_mmap._entry_ptr = internal global ptr @vb2_dc_mmap._entry, section ".printk_index", align 4
@vb2_dc_mmap._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Remapping memory failed, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vb2_dc_mmap._entry_ptr.49 = internal global ptr @vb2_dc_mmap._entry.47, section ".printk_index", align 4
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@vb2_dc_mmap.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: mapped dma addr 0x%08lx at 0x%08lx, size %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"vb2_dma_contig_memops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 813, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 859, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 260, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 513, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"vb2_dc_dmabuf_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 470, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 411, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 492, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 499, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 585, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 590, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 635, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 643, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 653, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 660, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 797, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 704, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 709, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 716, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 723, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 743, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 748, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 280, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 291, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [57 x i8] c"../drivers/media/common/videobuf2/videobuf2-dma-contig.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 301, i32 2 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_import_ns255, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_vb2_dma_contig_memops, ptr @__ksymtab_vb2_dma_contig_set_max_seg_size, ptr @vb2_dc_alloc._entry, ptr @vb2_dc_alloc._entry_ptr, ptr @vb2_dc_attach_dmabuf._entry, ptr @vb2_dc_attach_dmabuf._entry_ptr, ptr @vb2_dc_dmabuf_ops_map._entry, ptr @vb2_dc_dmabuf_ops_map._entry_ptr, ptr @vb2_dc_get_base_sgt._entry, ptr @vb2_dc_get_base_sgt._entry.12, ptr @vb2_dc_get_base_sgt._entry_ptr, ptr @vb2_dc_get_base_sgt._entry_ptr.14, ptr @vb2_dc_get_userptr._entry, ptr @vb2_dc_get_userptr._entry.19, ptr @vb2_dc_get_userptr._entry.22, ptr @vb2_dc_get_userptr._entry.24, ptr @vb2_dc_get_userptr._entry_ptr, ptr @vb2_dc_get_userptr._entry_ptr.21, ptr @vb2_dc_get_userptr._entry_ptr.23, ptr @vb2_dc_get_userptr._entry_ptr.26, ptr @vb2_dc_map_dmabuf._entry, ptr @vb2_dc_map_dmabuf._entry.31, ptr @vb2_dc_map_dmabuf._entry.34, ptr @vb2_dc_map_dmabuf._entry.37, ptr @vb2_dc_map_dmabuf._entry_ptr, ptr @vb2_dc_map_dmabuf._entry_ptr.33, ptr @vb2_dc_map_dmabuf._entry_ptr.36, ptr @vb2_dc_map_dmabuf._entry_ptr.39, ptr @vb2_dc_mmap._entry, ptr @vb2_dc_mmap._entry.47, ptr @vb2_dc_mmap._entry_ptr, ptr @vb2_dc_mmap._entry_ptr.49, ptr @vb2_dc_unmap_dmabuf._entry, ptr @vb2_dc_unmap_dmabuf._entry.42, ptr @vb2_dc_unmap_dmabuf._entry_ptr, ptr @vb2_dc_unmap_dmabuf._entry_ptr.44, ptr @vb2_dma_contig_set_max_seg_size._entry, ptr @vb2_dma_contig_set_max_seg_size._entry_ptr, ptr @vb2_dma_contig_memops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vb2_dc_dmabuf_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_contig_memops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dma_contig_set_max_seg_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_dmabuf_ops_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_base_sgt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_base_sgt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_userptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_userptr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_userptr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_get_userptr._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_attach_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_map_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_map_dmabuf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_map_dmabuf._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_map_dmabuf._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_unmap_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_unmap_dmabuf._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dc_mmap._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_alloc(ptr noundef %vb, ptr noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !120

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #10
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %1 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vb, align 8
  %dma_attrs = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_attrs, align 4
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %attrs, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 19
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_dir, align 4
  %dma_dir30 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %dma_dir30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_dir30, align 8
  %vb31 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %vb31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vb, ptr %vb31, align 4
  %non_coherent_mem = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %non_coherent_mem, align 4
  %non_coherent_mem34 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 14
  %11 = trunc i16 %bf.load to i8
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %non_coherent_mem34 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %non_coherent_mem34, align 8
  %size35 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size, ptr %size35, align 8
  %call36 = tail call ptr @get_device(ptr noundef nonnull %dev) #7
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call36, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool39.not = icmp eq i8 %13, 0
  %17 = ptrtoint ptr %vb31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vb31, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = ptrtoint ptr %size35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size35, align 8
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end28
  %23 = ptrtoint ptr %dma_dir30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_dir30, align 8
  %gfp_flags.i = getelementptr inbounds %struct.vb2_queue, ptr %20, i32 0, i32 14
  %25 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gfp_flags.i, align 4
  %or.i = or i32 %26, 3264
  %27 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attrs, align 4
  %call.i = tail call ptr @dma_alloc_noncontiguous(ptr noundef %call36, i32 noundef %22, i32 noundef %24, i32 noundef %or.i, i32 noundef %28) #7
  %dma_sgt.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %dma_sgt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %dma_sgt.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then40.do.end48_crit_edge, label %if.end.i

if.then40.do.end48_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_address.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dma_addr.i, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end28
  %dma_addr.i82 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 4
  %gfp_flags.i83 = getelementptr inbounds %struct.vb2_queue, ptr %20, i32 0, i32 14
  %35 = ptrtoint ptr %gfp_flags.i83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gfp_flags.i83, align 4
  %or.i84 = or i32 %36, 3264
  %37 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %attrs, align 4
  %call.i86 = tail call ptr @dma_alloc_attrs(ptr noundef %call36, i32 noundef %22, ptr noundef %dma_addr.i82, i32 noundef %or.i84, i32 noundef %38) #7
  %cookie.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i86, ptr %cookie.i, align 4
  %tobool.not.i87 = icmp eq ptr %call.i86, null
  br i1 %tobool.not.i87, label %if.else.do.end48_crit_edge, label %if.end.i88

if.else.do.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.i88:                                       ; preds = %if.else
  %dma_attrs.i = getelementptr inbounds %struct.vb2_queue, ptr %20, i32 0, i32 3
  %40 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_attrs.i, align 4
  %and.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i88.if.end50_crit_edge

if.end.i88.if.end50_crit_edge:                    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end4.i:                                        ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  %vaddr.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i86, ptr %vaddr.i, align 4
  br label %if.end50

do.end48:                                         ; preds = %if.else.do.end48_crit_edge, %if.then40.do.end48_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.5, i32 noundef %size) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end4.i, %if.end.i88.if.end50_crit_edge, %if.end.i
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 10
  %handler = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %refcount, ptr %handler, align 4
  %put = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vb2_dc_put, ptr %put, align 8
  %arg = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %arg, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  %46 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %refcount, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %do.end48 ], [ %call7.i.i, %if.end50 ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_put(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !122
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !123

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !124
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %1 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %non_coherent_mem, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vaddr, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then1.if.end5_crit_edge, label %if.then3

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_priv, align 4
  tail call void @dma_vunmap_noncontiguous(ptr noundef %6, ptr noundef nonnull %4) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then1.if.end5_crit_edge
  %7 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_priv, align 4
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %11 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_sgt, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 6
  %13 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_dir, align 4
  tail call void @dma_free_noncontiguous(ptr noundef %8, i32 noundef %10, ptr noundef %12, i32 noundef %14) #7
  br label %if.end14

if.else:                                          ; preds = %if.end
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 11
  %15 = ptrtoint ptr %sgt_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt_base, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sg_free_table(ptr noundef nonnull %16) #7
  %17 = ptrtoint ptr %sgt_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt_base, align 4
  tail call void @kfree(ptr noundef %18) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge
  %19 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf_priv, align 4
  %size13 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %21 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size13, align 4
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 3
  %23 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cookie, align 4
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  %25 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr, align 4
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 5
  %27 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attrs, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef %28) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end5
  %29 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf_priv, align 4
  tail call void @put_device(ptr noundef %30) #7
  tail call void @kfree(ptr noundef %buf_priv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_get_dmabuf(ptr nocapture noundef readnone %vb, ptr noundef %buf_priv, i32 noundef %flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #7
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.vb2_dc_get_dmabuf.exp_info, i32 24)
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vb2_dc_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
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
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 11
  %7 = ptrtoint ptr %sgt_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt_base, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %entry
  %non_coherent_mem.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %9 = ptrtoint ptr %non_coherent_mem.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %non_coherent_mem.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 12) #10
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  %12 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_priv, align 4
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #11
  br label %if.end.thread47

if.end3.i:                                        ; preds = %if.end.i
  %cookie.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 3
  %14 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cookie.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %attrs.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 5
  %20 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attrs.i, align 4
  %call5.i = tail call i32 @dma_get_sgtable_attrs(ptr noundef %13, ptr noundef nonnull %call7.i.i, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end.thread50

if.end.thread50:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %sgt_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %sgt_base, align 4
  br label %if.end30

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf_priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end.thread47

if.end.thread47:                                  ; preds = %do.end9.i, %do.end.i
  %25 = ptrtoint ptr %sgt_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sgt_base, align 4
  br label %do.end

if.end:                                           ; preds = %if.then
  %dma_sgt.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %26 = ptrtoint ptr %dma_sgt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_sgt.i, align 4
  %28 = ptrtoint ptr %sgt_base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %sgt_base, align 4
  %tobool5.not = icmp eq ptr %27, null
  br i1 %tobool5.not, label %if.end.do.end_crit_edge, label %if.end.if.end30_crit_edge, !prof !120

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.thread47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 523, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %if.end.thread50, %entry.if.end30_crit_edge
  %call31 = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #7
  %cmp.i45 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end34.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !120

if.end34.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end34
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !123

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end34.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end34.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end30.cleanup_crit_edge ], [ %call31, %if.else.i.i.i.cleanup_crit_edge ], [ %call31, %if.end15.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_get_userptr(ptr noundef %vb, ptr noundef %dev, i32 noundef %vaddr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %size, %vaddr
  %and = and i32 %or, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_dc_get_userptr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_dc_get_userptr, %if.then4)) #7
          to label %cleanup145 [label %if.then4], !srcloc !127

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_dc_get_userptr.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.16, i32 noundef 128) #7
  br label %cleanup145

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool7.not = icmp eq i32 %size, 0
  br i1 %tobool7.not, label %do.body9, label %if.end26

do.body9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_dc_get_userptr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_dc_get_userptr, %if.then21)) #7
          to label %cleanup145 [label %if.then21], !srcloc !127

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_dc_get_userptr.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.17) #7
  br label %cleanup145

if.end26:                                         ; preds = %if.end6
  %tobool27.not = icmp eq ptr %dev, null
  br i1 %tobool27.not, label %do.end45, label %if.end62, !prof !120

do.end45:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 594, i32 noundef 9, ptr noundef null) #7
  br label %cleanup145

if.end62:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #10
  %tobool64.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool64.not, label %if.end62.cleanup145_crit_edge, label %if.end67

if.end62.cleanup145_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup145

if.end67:                                         ; preds = %if.end62
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  %dma_dir69 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %dma_dir69 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma_dir69, align 8
  %vb70 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %vb70 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vb, ptr %vb70, align 4
  %and71 = and i32 %vaddr, 4095
  %call73 = tail call ptr @vb2_create_framevec(i32 noundef %vaddr, i32 noundef %size) #7
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call73 to i32
  br label %fail_buf

if.end77:                                         ; preds = %if.end67
  %vec78 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %vec78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call73, ptr %vec78, align 8
  %nr_frames.i = getelementptr inbounds %struct.frame_vector, ptr %call73, i32 0, i32 1
  %10 = ptrtoint ptr %nr_frames.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_frames.i, align 4
  %call80 = tail call i32 @frame_vector_to_pages(ptr noundef %call73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end100

if.then82:                                        ; preds = %if.end77
  %is_pfns.i = getelementptr inbounds %struct.frame_vector, ptr %call73, i32 0, i32 3
  %12 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_pfns.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then82.frame_vector_pfns.exit_crit_edge

if.then82.frame_vector_pfns.exit_crit_edge:       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %frame_vector_pfns.exit

if.then.i:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @frame_vector_to_pfns(ptr noundef %call73) #7
  br label %frame_vector_pfns.exit

frame_vector_pfns.exit:                           ; preds = %if.then.i, %if.then82.frame_vector_pfns.exit_crit_edge
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %call73, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp84229 = icmp sgt i32 %11, 1
  br i1 %cmp84229, label %frame_vector_pfns.exit.for.body_crit_edge, label %frame_vector_pfns.exit.cleanup_crit_edge

frame_vector_pfns.exit.cleanup_crit_edge:         ; preds = %frame_vector_pfns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

frame_vector_pfns.exit.for.body_crit_edge:        ; preds = %frame_vector_pfns.exit
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %frame_vector_pfns.exit.for.body_crit_edge
  %i.0230 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %frame_vector_pfns.exit.for.body_crit_edge ]
  %sub85 = add nsw i32 %i.0230, -1
  %arrayidx = getelementptr i32, ptr %ptrs.i, i32 %sub85
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, 1
  %arrayidx86 = getelementptr i32, ptr %ptrs.i, i32 %i.0230
  %16 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp87.not = icmp eq i32 %add, %17
  br i1 %cmp87.not, label %for.cond, label %for.body.fail_pfnvec_crit_edge

for.body.fail_pfnvec_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_pfnvec

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %frame_vector_pfns.exit.cleanup_crit_edge
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %20 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptrs.i, align 4
  %shl = shl i32 %21, 12
  %22 = ptrtoint ptr %dma_dir69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_dir69, align 8
  %call93 = tail call i32 @dma_map_resource(ptr noundef %19, i32 noundef %shl, i32 noundef %size, i32 noundef %23, i32 noundef 0) #7
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call93, ptr %dma_addr, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %call93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call93)
  %cmp.i214.not = icmp eq i32 %call93, -1
  br i1 %cmp.i214.not, label %cleanup.fail_pfnvec_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.fail_pfnvec_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_pfnvec

if.end100:                                        ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i215 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 12) #10
  %tobool102.not = icmp eq ptr %call7.i.i215, null
  br i1 %tobool102.not, label %do.end106, label %if.end109

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %fail_pfnvec

if.end109:                                        ; preds = %if.end100
  %is_pfns.i216 = getelementptr inbounds %struct.frame_vector, ptr %call73, i32 0, i32 3
  %26 = ptrtoint ptr %is_pfns.i216 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_pfns.i216, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i217 = icmp eq i8 %27, 0
  br i1 %tobool.not.i217, label %if.end109.if.end4.i_crit_edge, label %if.then.i218

if.end109.if.end4.i_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i218:                                     ; preds = %if.end109
  %call.i = tail call i32 @frame_vector_to_pages(ptr noundef %call73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i218.if.end4.i_crit_edge, label %cleanup.i

if.then.i218.if.end4.i_crit_edge:                 ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

cleanup.i:                                        ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #9
  %28 = inttoptr i32 %call.i to ptr
  br label %frame_vector_pages.exit

if.end4.i:                                        ; preds = %if.then.i218.if.end4.i_crit_edge, %if.end109.if.end4.i_crit_edge
  %ptrs.i219 = getelementptr inbounds %struct.frame_vector, ptr %call73, i32 0, i32 4
  br label %frame_vector_pages.exit

frame_vector_pages.exit:                          ; preds = %if.end4.i, %cleanup.i
  %retval.1.i = phi ptr [ %28, %cleanup.i ], [ %ptrs.i219, %if.end4.i ]
  %call.i220 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i.i215, ptr noundef %retval.1.i, i32 noundef %11, i32 noundef %and71, i32 noundef %size, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool112.not = icmp eq i32 %call.i220, 0
  br i1 %tobool112.not, label %if.end119, label %do.end116

do.end116:                                        ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %fail_sgt

if.end119:                                        ; preds = %frame_vector_pages.exit
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %dma_dir69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_dir69, align 8
  %call122 = tail call i32 @dma_map_sgtable(ptr noundef %30, ptr noundef nonnull %call7.i.i215, i32 noundef %32, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end130, label %do.end127

do.end127:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %fail_sgt_init

if.end130:                                        ; preds = %if.end119
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %call7.i.i215, i32 0, i32 1
  %33 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14.not.i = icmp eq i32 %34, 0
  br i1 %cmp14.not.i, label %if.end130.vb2_dc_get_contiguous_size.exit_crit_edge, label %for.body.preheader.i

if.end130.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

for.body.preheader.i:                             ; preds = %if.end130
  %35 = ptrtoint ptr %call7.i.i215 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i215, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.018.i = phi i32 [ %add5.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.017.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %expected.016.i = phi i32 [ %add.i, %if.end.i.for.body.i_crit_edge ], [ %38, %for.body.preheader.i ]
  %s.015.i = phi ptr [ %call.i221, %if.end.i.for.body.i_crit_edge ], [ %36, %for.body.preheader.i ]
  %dma_address2.i = getelementptr inbounds %struct.scatterlist, ptr %s.015.i, i32 0, i32 3
  %39 = ptrtoint ptr %dma_address2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_address2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %expected.016.i)
  %cmp3.not.i = icmp eq i32 %40, %expected.016.i
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge

for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

if.end.i:                                         ; preds = %for.body.i
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.015.i, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %42, %expected.016.i
  %add5.i = add i32 %42, %size.018.i
  %inc.i = add nuw i32 %i.017.i, 1
  %call.i221 = tail call ptr @sg_next(ptr noundef %s.015.i) #7
  %43 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nents.i, align 4
  %cmp.i222 = icmp ult i32 %inc.i, %44
  br i1 %cmp.i222, label %if.end.i.for.body.i_crit_edge, label %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge

if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

vb2_dc_get_contiguous_size.exit:                  ; preds = %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge, %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge, %if.end130.vb2_dc_get_contiguous_size.exit_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %if.end130.vb2_dc_get_contiguous_size.exit_crit_edge ], [ %add5.i, %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge ], [ %size.018.i, %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa.i, i32 %size)
  %cmp132 = icmp ult i32 %size.0.lcssa.i, %size
  br i1 %cmp132, label %do.end136, label %if.end139

do.end136:                                        ; preds = %vb2_dc_get_contiguous_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %size.0.lcssa.i, i32 noundef %size) #11
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %47 = ptrtoint ptr %dma_dir69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_dir69, align 8
  %49 = ptrtoint ptr %call7.i.i215 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i215, align 8
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %call7.i.i215, i32 0, i32 2
  %51 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %orig_nents.i, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %46, ptr noundef %50, i32 noundef %52, i32 noundef %48, i32 noundef 32) #7
  br label %fail_sgt_init

if.end139:                                        ; preds = %vb2_dc_get_contiguous_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call7.i.i215 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i215, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_address, align 4
  %dma_addr140 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %dma_addr140 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dma_addr140, align 8
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i215, ptr %dma_sgt, align 4
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 14
  %59 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %non_coherent_mem, align 8
  br label %out

out:                                              ; preds = %if.end139, %cleanup.out_crit_edge
  %size141 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %size141 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %size, ptr %size141, align 8
  br label %cleanup145

fail_sgt_init:                                    ; preds = %do.end136, %do.end127
  %ret.1 = phi i32 [ -5, %do.end127 ], [ -14, %do.end136 ]
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i215) #7
  br label %fail_sgt

fail_sgt:                                         ; preds = %fail_sgt_init, %do.end116
  %ret.2 = phi i32 [ %call.i220, %do.end116 ], [ %ret.1, %fail_sgt_init ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i215) #7
  br label %fail_pfnvec

fail_pfnvec:                                      ; preds = %fail_sgt, %do.end106, %cleanup.fail_pfnvec_crit_edge, %for.body.fail_pfnvec_crit_edge
  %ret.3 = phi i32 [ -12, %cleanup.fail_pfnvec_crit_edge ], [ %ret.2, %fail_sgt ], [ -12, %do.end106 ], [ %call80, %for.body.fail_pfnvec_crit_edge ]
  tail call void @vb2_destroy_framevec(ptr noundef %call73) #7
  br label %fail_buf

fail_buf:                                         ; preds = %fail_pfnvec, %if.then75
  %ret.4 = phi i32 [ %8, %if.then75 ], [ %ret.3, %fail_pfnvec ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %61 = inttoptr i32 %ret.4 to ptr
  br label %cleanup145

cleanup145:                                       ; preds = %fail_buf, %out, %if.end62.cleanup145_crit_edge, %do.end45, %if.then21, %do.body9, %if.then4, %do.body
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end45 ], [ %61, %fail_buf ], [ %call7.i.i, %out ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then4 ], [ inttoptr (i32 -22 to ptr), %do.body9 ], [ inttoptr (i32 -22 to ptr), %if.then21 ], [ inttoptr (i32 -12 to ptr), %if.end62.cleanup145_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_put_userptr(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_priv, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 6
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %7, i32 noundef %9, i32 noundef %5, i32 noundef 32) #7
  %vec = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 8
  %10 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vec, align 4
  %is_pfns.i = getelementptr inbounds %struct.frame_vector, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_pfns.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end4.i_crit_edge, label %if.then.i

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @frame_vector_to_pages(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end4.i_crit_edge, label %cleanup.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = inttoptr i32 %call.i to ptr
  br label %frame_vector_pages.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %11, i32 0, i32 4
  br label %frame_vector_pages.exit

frame_vector_pages.exit:                          ; preds = %if.end4.i, %cleanup.i
  %retval.1.i = phi ptr [ %14, %cleanup.i ], [ %ptrs.i, %if.end4.i ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body5, label %do.end10, !prof !120

do.body5:                                         ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/videobuf2/videobuf2-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.end10:                                         ; preds = %frame_vector_pages.exit
  %15 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_dir, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end10.if.end19_crit_edge [
    i32 2, label %do.end10.if.then14_crit_edge
    i32 0, label %do.end10.if.then14_crit_edge46
  ]

do.end10.if.then14_crit_edge46:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

do.end10.if.then14_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

do.end10.if.end19_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %do.end10.if.then14_crit_edge, %do.end10.if.then14_crit_edge46
  %18 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vec, align 4
  %nr_frames.i43 = getelementptr inbounds %struct.frame_vector, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nr_frames.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_frames.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1744.not = icmp eq i32 %21, 0
  br i1 %cmp1744.not, label %if.then14.if.end19_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then14.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %retval.1.i, i32 %i.045
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @set_page_dirty_lock(ptr noundef %23) #7
  %inc = add nuw i32 %i.045, 1
  %24 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vec, align 4
  %nr_frames.i = getelementptr inbounds %struct.frame_vector, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %nr_frames.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_frames.i, align 4
  %cmp17 = icmp ult i32 %inc, %27
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end19:                                         ; preds = %for.body.if.end19_crit_edge, %if.then14.if.end19_crit_edge, %do.end10.if.end19_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr, align 4
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %dma_dir21 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 6
  %32 = ptrtoint ptr %dma_dir21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_dir21, align 4
  tail call void @dma_unmap_resource(ptr noundef %3, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 0) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end19
  %vec23 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 8
  %34 = ptrtoint ptr %vec23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vec23, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %35) #7
  tail call void @kfree(ptr noundef %buf_priv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_prepare(ptr nocapture noundef readonly %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  %vb = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 13
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 4
  %skip_cache_sync_on_prepare = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skip_cache_sync_on_prepare to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %skip_cache_sync_on_prepare, align 4
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %6 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %non_coherent_mem, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 6
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %9, ptr noundef %13, i32 noundef %15, i32 noundef %11) #7
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 1
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %18 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then5.cleanup_crit_edge, label %if.then.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %21(ptr noundef nonnull %17, i32 noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_finish(ptr nocapture noundef readonly %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  %vb = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 13
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 4
  %skip_cache_sync_on_finish = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skip_cache_sync_on_finish to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %skip_cache_sync_on_finish, align 4
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %6 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %non_coherent_mem, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_priv, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 6
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %9, ptr noundef %13, i32 noundef %15, i32 noundef %11) #7
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 1
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %18 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then5.cleanup_crit_edge, label %if.then.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %21(ptr noundef nonnull %17, i32 noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_attach_dmabuf(ptr noundef %vb, ptr noundef %dev, ptr noundef %dbuf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !120

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 784, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #10
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call7.i.i, align 8
  %vb34 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %vb34 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vb, ptr %vb34, align 4
  %call36 = tail call ptr @dma_buf_attach(ptr noundef %dbuf, ptr noundef nonnull %dev) #7
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_dir, align 4
  %dma_dir45 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %dma_dir45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dma_dir45, align 8
  %size46 = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %size46 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %size46, align 8
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %db_attach to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %db_attach, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41, %if.end27.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call36, %do.end41 ], [ %call7.i.i, %if.end44 ], [ inttoptr (i32 -14 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_detach_dmabuf(ptr noundef %mem_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 4
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %do.end, !prof !123

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 767, i32 noundef 9, ptr noundef null) #7
  tail call void @vb2_dc_unmap_dmabuf(ptr noundef %mem_priv)
  br label %if.end22

if.end22:                                         ; preds = %do.end, %entry.if.end22_crit_edge
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 12
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @dma_buf_detach(ptr noundef %5, ptr noundef %3) #7
  tail call void @kfree(ptr noundef %mem_priv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_map_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 12
  %0 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_attach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !120

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 703, i32 noundef 9, ptr noundef null) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end27:                                         ; preds = %entry
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 7
  %2 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_sgt, align 4
  %tobool29.not = icmp eq ptr %3, null
  br i1 %tobool29.not, label %if.end66, label %do.end45, !prof !123

do.end45:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 708, i32 noundef 9, ptr noundef null) #7
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end66:                                         ; preds = %if.end27
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 6
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  %call68 = tail call ptr @dma_buf_map_attachment(ptr noundef nonnull %1, i32 noundef %5) #7
  %cmp.i = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %call68, i32 0, i32 1
  %6 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.not.i = icmp eq i32 %7, 0
  br i1 %cmp14.not.i, label %if.end76.vb2_dc_get_contiguous_size.exit_crit_edge, label %for.body.preheader.i

if.end76.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

for.body.preheader.i:                             ; preds = %if.end76
  %8 = ptrtoint ptr %call68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call68, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.018.i = phi i32 [ %add5.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.017.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %expected.016.i = phi i32 [ %add.i, %if.end.i.for.body.i_crit_edge ], [ %11, %for.body.preheader.i ]
  %s.015.i = phi ptr [ %call.i, %if.end.i.for.body.i_crit_edge ], [ %9, %for.body.preheader.i ]
  %dma_address2.i = getelementptr inbounds %struct.scatterlist, ptr %s.015.i, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_address2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %expected.016.i)
  %cmp3.not.i = icmp eq i32 %13, %expected.016.i
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge

for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

if.end.i:                                         ; preds = %for.body.i
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.015.i, i32 0, i32 4
  %14 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length.i, align 4
  %add.i = add i32 %15, %expected.016.i
  %add5.i = add i32 %15, %size.018.i
  %inc.i = add nuw i32 %i.017.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %s.015.i) #7
  %16 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nents.i, align 4
  %cmp.i108 = icmp ult i32 %inc.i, %17
  br i1 %cmp.i108, label %if.end.i.for.body.i_crit_edge, label %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge

if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_dc_get_contiguous_size.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

vb2_dc_get_contiguous_size.exit:                  ; preds = %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge, %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge, %if.end76.vb2_dc_get_contiguous_size.exit_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %if.end76.vb2_dc_get_contiguous_size.exit_crit_edge ], [ %add5.i, %if.end.i.vb2_dc_get_contiguous_size.exit_crit_edge ], [ %size.018.i, %for.body.i.vb2_dc_get_contiguous_size.exit_crit_edge ]
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa.i, i32 %19)
  %cmp = icmp ult i32 %size.0.lcssa.i, %19
  br i1 %cmp, label %do.end81, label %if.end87

do.end81:                                         ; preds = %vb2_dc_get_contiguous_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %size.0.lcssa.i, i32 noundef %19) #11
  %20 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %db_attach, align 4
  %22 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_dir, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef %21, ptr noundef %call68, i32 noundef %23) #7
  br label %cleanup

if.end87:                                         ; preds = %vb2_dc_get_contiguous_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call68, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_address, align 4
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 4
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dma_addr, align 4
  %29 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call68, ptr %dma_sgt, align 4
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 1
  %30 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end81, %do.end73, %do.end45, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end45 ], [ -22, %do.end73 ], [ -14, %do.end81 ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_unmap_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 7
  %0 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_sgt, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #7
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -4278190081, ptr %map, align 8, !annotation !129
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vaddr, align 4
  store ptr %4, ptr %map, align 8
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 12
  %5 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db_attach, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !120

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 742, i32 noundef 9, ptr noundef null) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end27:                                         ; preds = %entry
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %do.end47, label %if.end68, !prof !120

do.end47:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 747, i32 noundef 9, ptr noundef null) #7
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end27
  %tobool70.not = icmp eq ptr %4, null
  br i1 %tobool70.not, label %if.end68.if.end74_crit_edge, label %if.then71

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @dma_buf_vunmap(ptr noundef %8, ptr noundef nonnull %map) #7
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vaddr, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge
  %10 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_attach, align 4
  %dma_dir = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 6
  %12 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_dir, align 4
  call void @dma_buf_unmap_attachment(ptr noundef %11, ptr noundef nonnull %1, i32 noundef %13) #7
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %mem_priv, i32 0, i32 4
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dma_addr, align 4
  %15 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dma_sgt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end47, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_vaddr(ptr nocapture noundef readnone %vb, ptr nocapture noundef %buf_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 1
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %db_attach = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 12
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #7
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %map, align 8, !annotation !129
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call = call i32 @dma_buf_vmap(ptr noundef %6, ptr noundef nonnull %map) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %vaddr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %12 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %non_coherent_mem, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_priv, align 4
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %18 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_sgt, align 4
  %call13 = tail call ptr @dma_vmap_noncontiguous(ptr noundef %15, i32 noundef %17, ptr noundef %19) #7
  %20 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call13, ptr %vaddr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %21 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.end8 ], [ %22, %if.end15 ], [ %1, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vb2_dc_cookie(ptr nocapture noundef readnone %vb, ptr noundef readnone %buf_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  ret ptr %dma_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_num_users(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #7
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_mmap(ptr noundef %buf_priv, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_priv, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_coherent_mem = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 14
  %0 = ptrtoint ptr %non_coherent_mem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_coherent_mem, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_priv, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %dma_sgt = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 7
  %6 = ptrtoint ptr %dma_sgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_sgt, align 4
  %call3 = tail call i32 @dma_mmap_noncontiguous(ptr noundef %3, ptr noundef %vma, i32 noundef %5, ptr noundef %7) #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cookie = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 3
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cookie, align 4
  %dma_addr = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %size5 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 4
  %attrs = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 5
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attrs, align 4
  %call6 = tail call i32 @dma_mmap_attrs(ptr noundef %3, ptr noundef %vma, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %ret.0) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %16 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags, align 4
  %or = or i32 %17, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %handler = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 9
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %18 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %handler, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %19 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_common_vm_ops, ptr %vm_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vb2_common_vm_ops to i32))
  %20 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %20(ptr noundef %vma) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_dc_mmap.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_dc_mmap, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !127

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dma_addr24 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 4
  %21 = ptrtoint ptr %dma_addr24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr24, align 4
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  %size25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %buf_priv, i32 0, i32 2
  %25 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_dc_mmap.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.46, i32 noundef %22, i32 noundef %24, i32 noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end15, %do.end12, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end12 ], [ -22, %do.end ], [ 0, %if.then23 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_parms = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %dma_parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_parms, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %land.lhs.true.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool2.not.i, i32 65536, i32 %3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %size)
  %cmp = icmp ult i32 %spec.select, %size
  br i1 %cmp, label %dma_set_max_seg_size.exit, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

dma_set_max_seg_size.exit:                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %1, align 4
  br label %return

return:                                           ; preds = %dma_set_max_seg_size.exit, %land.lhs.true.i.return_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %dma_set_max_seg_size.exit ], [ -19, %do.end ], [ 0, %land.lhs.true.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_noncontiguous(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_vunmap_noncontiguous(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_noncontiguous(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_attach(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %dbuf_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sgt_base = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %sgt_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sgt_base, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig_nents, align 4
  %call2 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %6, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %sgt_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt_base, align 4
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
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !123

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !130
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %17 = ptrtoint ptr %wr.035 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wr.035, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !123

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !131
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
  %call10 = tail call ptr @sg_next(ptr noundef %rd.034) #7
  %call11 = tail call ptr @sg_next(ptr noundef %wr.035) #7
  %inc = add nuw i32 %i.033, 1
  %26 = ptrtoint ptr %orig_nents8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %orig_nents8, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %sg_set_page.exit.for.body_crit_edge, label %sg_set_page.exit.for.end_crit_edge

sg_set_page.exit.for.end_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %sg_set_page.exit.for.end_crit_edge, %if.end5.for.end_crit_edge
  %dma_dir = getelementptr inbounds %struct.vb2_dc_attachment, ptr %call7.i.i, i32 0, i32 1
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
define internal void @vb2_dc_dmabuf_ops_detach(ptr nocapture noundef readnone %dbuf, ptr nocapture noundef %db_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.vb2_dc_attachment, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %3, i32 noundef 32) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_dc_dmabuf_ops_map(ptr nocapture noundef readonly %db_attach, i32 noundef %dma_dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %lock1 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock1, i32 noundef 0) #7
  %dma_dir3 = getelementptr inbounds %struct.vb2_dc_attachment, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dma_dir)
  %cmp = icmp eq i32 %5, %dma_dir
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5.not = icmp eq i32 %5, 3
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %5, i32 noundef 32) #7
  %12 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %dma_dir3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 1
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %14, ptr noundef %1, i32 noundef %dma_dir, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dma_dir, ptr %dma_dir3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ %1, %if.end14 ], [ %1, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock1) #7
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vb2_dc_dmabuf_ops_unmap(ptr nocapture noundef %db_attach, ptr nocapture noundef %sgt, i32 noundef %dma_dir) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_dc_dmabuf_ops_release(ptr nocapture noundef readonly %dbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @vb2_dc_put(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_begin_cpu_access(ptr nocapture noundef readnone %dbuf, i32 noundef %direction) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_end_cpu_access(ptr nocapture noundef readnone %dbuf, i32 noundef %direction) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_mmap(ptr nocapture noundef readonly %dbuf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @vb2_dc_mmap(ptr noundef %1, ptr noundef %vma)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_vmap(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  %map.i = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vaddr.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %db_attach.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %db_attach.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_attach.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end10.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map.i) #7
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %map.i, align 8, !annotation !129
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i = call i32 @dma_buf_vmap(ptr noundef %8, ptr noundef nonnull %map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i, align 8
  %11 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %vaddr.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end8.i_crit_edge
  %12 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vaddr.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map.i) #7
  br label %vb2_dc_vaddr.exit

if.end10.i:                                       ; preds = %if.end.i
  %non_coherent_mem.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %non_coherent_mem.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %non_coherent_mem.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then12.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %size.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %dma_sgt.i = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %dma_sgt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_sgt.i, align 4
  %call13.i = tail call ptr @dma_vmap_noncontiguous(ptr noundef %17, i32 noundef %19, ptr noundef %21) #7
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13.i, ptr %vaddr.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end15.i_crit_edge
  %23 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vaddr.i, align 4
  br label %vb2_dc_vaddr.exit

vb2_dc_vaddr.exit:                                ; preds = %if.end15.i, %if.end8.i
  %retval.0.i = phi ptr [ %13, %if.end8.i ], [ %24, %if.end15.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %vb2_dc_vaddr.exit.cleanup_crit_edge, label %vb2_dc_vaddr.exit.if.end_crit_edge

vb2_dc_vaddr.exit.if.end_crit_edge:               ; preds = %vb2_dc_vaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

vb2_dc_vaddr.exit.cleanup_crit_edge:              ; preds = %vb2_dc_vaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vb2_dc_vaddr.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i6 = phi ptr [ %retval.0.i, %vb2_dc_vaddr.exit.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i6, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %26 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_iomem.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vb2_dc_vaddr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %vb2_dc_vaddr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_to_pfns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_vmap_noncontiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_noncontiguous(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @vb2_dma_contig_memops, !1, !"vb2_dma_contig_memops", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 813, i32 26}
!2 = !{ptr @__ksymtab_vb2_dma_contig_memops, !3, !"__ksymtab_vb2_dma_contig_memops", i1 false, i1 false}
!3 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 830, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 859, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vb2_dma_contig_set_max_seg_size._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vb2_dma_contig_set_max_seg_size._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_vb2_dma_contig_set_max_seg_size, !13, !"__ksymtab_vb2_dma_contig_set_max_seg_size", i1 false, i1 false}
!13 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 867, i32 1}
!14 = !{ptr @__UNIQUE_ID_description251, !15, !"__UNIQUE_ID_description251", i1 false, i1 false}
!15 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 869, i32 1}
!16 = !{ptr @__UNIQUE_ID_author252, !17, !"__UNIQUE_ID_author252", i1 false, i1 false}
!17 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 870, i32 1}
!18 = !{ptr @__UNIQUE_ID_file253, !19, !"__UNIQUE_ID_file253", i1 false, i1 false}
!19 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 871, i32 1}
!20 = !{ptr @__UNIQUE_ID_license254, !19, !"__UNIQUE_ID_license254", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_import_ns255, !22, !"__UNIQUE_ID_import_ns255", i1 false, i1 false}
!22 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 872, i32 1}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 260, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vb2_dc_alloc._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @vb2_dc_alloc._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 513, i32 2}
!30 = !{ptr @vb2_dc_dmabuf_ops, !31, !"vb2_dc_dmabuf_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 470, i32 33}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 411, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vb2_dc_dmabuf_ops_map._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vb2_dc_dmabuf_ops_map._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 492, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vb2_dc_get_base_sgt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vb2_dc_get_base_sgt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 499, i32 3}
!44 = !{ptr @vb2_dc_get_base_sgt._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vb2_dc_get_base_sgt._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 585, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vb2_dc_get_userptr.__UNIQUE_ID_ddebug249, !47, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 590, i32 3}
!52 = !{ptr @vb2_dc_get_userptr.__UNIQUE_ID_ddebug250, !51, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 635, i32 3}
!55 = !{ptr @vb2_dc_get_userptr._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vb2_dc_get_userptr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 643, i32 3}
!59 = !{ptr @vb2_dc_get_userptr._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vb2_dc_get_userptr._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @vb2_dc_get_userptr._entry.22, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 653, i32 3}
!63 = !{ptr @vb2_dc_get_userptr._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 660, i32 3}
!66 = !{ptr @vb2_dc_get_userptr._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vb2_dc_get_userptr._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 797, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vb2_dc_attach_dmabuf._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @vb2_dc_attach_dmabuf._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 704, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vb2_dc_map_dmabuf._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @vb2_dc_map_dmabuf._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 709, i32 3}
!80 = !{ptr @vb2_dc_map_dmabuf._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vb2_dc_map_dmabuf._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 716, i32 3}
!84 = !{ptr @vb2_dc_map_dmabuf._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @vb2_dc_map_dmabuf._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 723, i32 3}
!88 = !{ptr @vb2_dc_map_dmabuf._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vb2_dc_map_dmabuf._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 743, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @vb2_dc_unmap_dmabuf._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @vb2_dc_unmap_dmabuf._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 748, i32 3}
!97 = !{ptr @vb2_dc_unmap_dmabuf._entry.42, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @vb2_dc_unmap_dmabuf._entry_ptr.44, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 280, i32 3}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @vb2_dc_mmap._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @vb2_dc_mmap._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 291, i32 3}
!106 = !{ptr @vb2_dc_mmap._entry.47, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @vb2_dc_mmap._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/common/videobuf2/videobuf2-dma-contig.c", i32 301, i32 2}
!110 = !{ptr @vb2_dc_mmap.__UNIQUE_ID_ddebug248, !109, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2148559695}
!122 = !{i64 2148474159, i64 2148474191, i64 2148474220, i64 2148474254, i64 2148474285, i64 2148474308}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2150185709}
!125 = !{i8 0, i8 2}
!126 = !{i64 2148471694, i64 2148471726, i64 2148471755, i64 2148471789, i64 2148471820, i64 2148471843}
!127 = !{i64 2148201243, i64 2148201248, i64 2148201261, i64 2148201305, i64 2148201339, i64 2148201360}
!128 = !{i64 2154564306, i64 2154564824, i64 2154564343, i64 2154564399, i64 2154564433, i64 2154564457, i64 2154564498, i64 2154564519, i64 2154564547, i64 2154564581}
!129 = !{!"auto-init"}
!130 = !{i64 2153411328, i64 2153411820, i64 2153411365, i64 2153411421, i64 2153411455, i64 2153411479, i64 2153411520, i64 2153411541, i64 2153411569, i64 2153411603}
!131 = !{i64 2153405319, i64 2153405811, i64 2153405356, i64 2153405412, i64 2153405446, i64 2153405470, i64 2153405511, i64 2153405532, i64 2153405560, i64 2153405594}
