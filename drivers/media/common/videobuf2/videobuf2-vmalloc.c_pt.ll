; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/videobuf2-vmalloc.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-vmalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vb2_vmalloc_memops\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_vmalloc_memops\09\09\09\09"
module asm "\09.long\09__crc_vb2_vmalloc_memops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_vmalloc_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_vmalloc_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_vmalloc_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.vb2_vmalloc_buf = type { ptr, ptr, i32, i32, %struct.refcount_struct, %struct.vb2_vmarea_handler, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.dma_buf_map = type { %union.anon.67, i8 }
%union.anon.67 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vb2_vmalloc_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@vb2_vmalloc_memops = dso_local constant { %struct.vb2_mem_ops, [36 x i8] } { %struct.vb2_mem_ops { ptr @vb2_vmalloc_alloc, ptr @vb2_vmalloc_put, ptr @vb2_vmalloc_get_dmabuf, ptr @vb2_vmalloc_get_userptr, ptr @vb2_vmalloc_put_userptr, ptr null, ptr null, ptr @vb2_vmalloc_attach_dmabuf, ptr @vb2_vmalloc_detach_dmabuf, ptr @vb2_vmalloc_map_dmabuf, ptr @vb2_vmalloc_unmap_dmabuf, ptr @vb2_vmalloc_vaddr, ptr null, ptr @vb2_vmalloc_num_users, ptr @vb2_vmalloc_mmap }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vb2_vmalloc_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_vmalloc_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_vmalloc_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_vmalloc_memops to i32), ptr @__kstrtab_vb2_vmalloc_memops, ptr @__kstrtabns_vb2_vmalloc_memops }, section "___ksymtab_gpl+vb2_vmalloc_memops", align 4
@__UNIQUE_ID_description237 = internal constant [77 x i8] c"videobuf2_vmalloc.description=vmalloc memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [57 x i8] c"videobuf2_vmalloc.author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [72 x i8] c"videobuf2_vmalloc.file=drivers/media/common/videobuf2/videobuf2-vmalloc\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [30 x i8] c"videobuf2_vmalloc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns241 = internal constant [36 x i8] c"videobuf2_vmalloc.import_ns=DMA_BUF\00", section ".modinfo", align 1
@vb2_vmalloc_alloc.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf2_vmalloc\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vb2_vmalloc_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/common/videobuf2/videobuf2-vmalloc.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vmalloc of size %ld failed\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.vb2_vmalloc_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_vmalloc_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @vb2_vmalloc_dmabuf_ops_attach, ptr @vb2_vmalloc_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_vmalloc_dmabuf_ops_map, ptr @vb2_vmalloc_dmabuf_ops_unmap, ptr @vb2_vmalloc_dmabuf_ops_release, ptr null, ptr null, ptr @vb2_vmalloc_dmabuf_ops_mmap, ptr @vb2_vmalloc_dmabuf_ops_vmap, ptr null }, [44 x i8] zeroinitializer }, align 32
@vb2_vmalloc_dmabuf_ops_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to map scatterlist\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vb2_vmalloc_dmabuf_ops_map\00", [37 x i8] zeroinitializer }, align 32
@vb2_vmalloc_dmabuf_ops_map._entry_ptr = internal global ptr @vb2_vmalloc_dmabuf_ops_map._entry, section ".printk_index", align 4
@vb2_vmalloc_vaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Address of an unallocated plane requested or cannot map user pointer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vb2_vmalloc_vaddr\00", [46 x i8] zeroinitializer }, align 32
@vb2_vmalloc_vaddr._entry_ptr = internal global ptr @vb2_vmalloc_vaddr._entry, section ".printk_index", align 4
@vb2_vmalloc_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013No memory to map\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vb2_vmalloc_mmap\00", [47 x i8] zeroinitializer }, align 32
@vb2_vmalloc_mmap._entry_ptr = internal global ptr @vb2_vmalloc_mmap._entry, section ".printk_index", align 4
@vb2_vmalloc_mmap._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Remapping vmalloc memory, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vb2_vmalloc_mmap._entry_ptr.12 = internal global ptr @vb2_vmalloc_mmap._entry.10, section ".printk_index", align 4
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"vb2_vmalloc_memops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 428, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 49, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"vb2_vmalloc_dmabuf_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 330, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 291, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 153, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 172, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [54 x i8] c"../drivers/media/common/videobuf2/videobuf2-vmalloc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 178, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_import_ns241, ptr @__UNIQUE_ID_license240, ptr @__ksymtab_vb2_vmalloc_memops, ptr @vb2_vmalloc_dmabuf_ops_map._entry, ptr @vb2_vmalloc_dmabuf_ops_map._entry_ptr, ptr @vb2_vmalloc_mmap._entry, ptr @vb2_vmalloc_mmap._entry.10, ptr @vb2_vmalloc_mmap._entry_ptr, ptr @vb2_vmalloc_mmap._entry_ptr.12, ptr @vb2_vmalloc_vaddr._entry, ptr @vb2_vmalloc_vaddr._entry_ptr, ptr @vb2_vmalloc_memops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vb2_vmalloc_dmabuf_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_memops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_dmabuf_ops_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_vaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_vmalloc_mmap._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_alloc(ptr nocapture noundef readonly %vb, ptr nocapture noundef readnone %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %gfp_flags = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_flags, align 4
  %or.i = or i32 %3, 3520
  %and.i.i.i = and i32 %3, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !49

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %size2 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %size2, align 4
  %call4 = tail call noalias ptr @vmalloc_user(i32 noundef %size) #13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %call7.i.i, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_vmalloc_alloc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_vmalloc_alloc, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !50

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_vmalloc_alloc.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.3, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_dir, align 4
  %dma_dir18 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %dma_dir18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma_dir18, align 8
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 4
  %handler = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %refcount, ptr %handler, align 4
  %put = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vb2_vmalloc_put, ptr %put, align 8
  %arg = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %arg, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %refcount, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_put(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !49

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %1 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf_priv, align 4
  tail call void @vfree(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %buf_priv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_get_dmabuf(ptr nocapture noundef readnone %vb, ptr noundef %buf_priv, i32 noundef %flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #9
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.vb2_vmalloc_get_dmabuf.exp_info, i32 24)
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vb2_vmalloc_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 3
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
  %7 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_priv, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 353, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end28.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

if.end28.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end28
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !49

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end28.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end28.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end25.cleanup_crit_edge ], [ %call, %if.else.i.i.i.cleanup_crit_edge ], [ %call, %if.end15.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_get_userptr(ptr nocapture noundef readonly %vb, ptr nocapture noundef readnone %dev, i32 noundef %vaddr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_dir, align 4
  %dma_dir2 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dma_dir2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dma_dir2, align 8
  %and = and i32 %vaddr, 4095
  %size3 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %size3, align 4
  %call4 = tail call ptr @vb2_create_framevec(i32 noundef %vaddr, i32 noundef %size) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.fail_pfnvec_create_crit_edge, label %if.end8

if.end.fail_pfnvec_create_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_pfnvec_create

if.end8:                                          ; preds = %if.end
  %vec9 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %vec9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %vec9, align 4
  %nr_frames.i = getelementptr inbounds %struct.frame_vector, ptr %call4, i32 0, i32 1
  %8 = ptrtoint ptr %nr_frames.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_frames.i, align 4
  %call11 = tail call i32 @frame_vector_to_pages(ptr noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  %is_pfns.i = getelementptr inbounds %struct.frame_vector, ptr %call4, i32 0, i32 3
  %10 = ptrtoint ptr %is_pfns.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_pfns.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  br i1 %tobool.not.i, label %if.then.i, label %if.then12.frame_vector_pfns.exit_crit_edge

if.then12.frame_vector_pfns.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %frame_vector_pfns.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @frame_vector_to_pfns(ptr noundef %call4) #9
  br label %frame_vector_pfns.exit

frame_vector_pfns.exit:                           ; preds = %if.then.i, %if.then12.frame_vector_pfns.exit_crit_edge
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %call4, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp1470 = icmp sgt i32 %9, 1
  br i1 %cmp1470, label %frame_vector_pfns.exit.for.body_crit_edge, label %frame_vector_pfns.exit.cleanup.thread_crit_edge

frame_vector_pfns.exit.cleanup.thread_crit_edge:  ; preds = %frame_vector_pfns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

frame_vector_pfns.exit.for.body_crit_edge:        ; preds = %frame_vector_pfns.exit
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup.thread_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %frame_vector_pfns.exit.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %frame_vector_pfns.exit.for.body_crit_edge ]
  %sub = add nsw i32 %i.071, -1
  %arrayidx = getelementptr i32, ptr %ptrs.i, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, 1
  %arrayidx15 = getelementptr i32, ptr %ptrs.i, i32 %i.071
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp16.not = icmp eq i32 %add, %15
  br i1 %cmp16.not, label %for.cond, label %for.body.fail_map_crit_edge

for.body.fail_map_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_map

cleanup.thread:                                   ; preds = %for.cond.cleanup.thread_crit_edge, %frame_vector_pfns.exit.cleanup.thread_crit_edge
  %16 = ptrtoint ptr %ptrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptrs.i, align 4
  %shl = shl i32 %17, 12
  %add20 = add i32 %and, %size
  %call21 = tail call ptr @ioremap(i32 noundef %shl, i32 noundef %add20) #9
  br label %if.end26

if.else:                                          ; preds = %if.end8
  br i1 %tobool.not.i, label %if.else.if.end4.i_crit_edge, label %if.then.i67

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i67:                                      ; preds = %if.else
  %call.i = tail call i32 @frame_vector_to_pages(ptr noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i67.if.end4.i_crit_edge, label %cleanup.i

if.then.i67.if.end4.i_crit_edge:                  ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

cleanup.i:                                        ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #11
  %18 = inttoptr i32 %call.i to ptr
  br label %frame_vector_pages.exit

if.end4.i:                                        ; preds = %if.then.i67.if.end4.i_crit_edge, %if.else.if.end4.i_crit_edge
  %ptrs.i68 = getelementptr inbounds %struct.frame_vector, ptr %call4, i32 0, i32 4
  br label %frame_vector_pages.exit

frame_vector_pages.exit:                          ; preds = %if.end4.i, %cleanup.i
  %retval.1.i = phi ptr [ %18, %cleanup.i ], [ %ptrs.i68, %if.end4.i ]
  %call24 = tail call ptr @vm_map_ram(ptr noundef %retval.1.i, i32 noundef %9, i32 noundef -1) #9
  br label %if.end26

if.end26:                                         ; preds = %frame_vector_pages.exit, %cleanup.thread
  %19 = phi ptr [ %call21, %cleanup.thread ], [ %call24, %frame_vector_pages.exit ]
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call7.i.i, align 8
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %if.end26.fail_map_crit_edge, label %if.end30

if.end26.fail_map_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_map

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %19, i32 %and
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  br label %cleanup33

fail_map:                                         ; preds = %if.end26.fail_map_crit_edge, %for.body.fail_map_crit_edge
  tail call void @vb2_destroy_framevec(ptr noundef %call4) #9
  br label %fail_pfnvec_create

fail_pfnvec_create:                               ; preds = %fail_map, %if.end.fail_pfnvec_create_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -12 to ptr), %fail_map ], [ %call4, %if.end.fail_pfnvec_create_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup33

cleanup33:                                        ; preds = %fail_pfnvec_create, %if.end30, %entry.cleanup33_crit_edge
  %retval.0 = phi ptr [ %ret.0, %fail_pfnvec_create ], [ %call7.i.i, %if.end30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup33_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_put_userptr(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4096
  %vec = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 1
  %3 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vec, align 4
  %is_pfns = getelementptr inbounds %struct.frame_vector, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %is_pfns to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_pfns, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %frame_vector_pages.exit, label %if.else

frame_vector_pages.exit:                          ; preds = %entry
  %nr_frames.i = getelementptr inbounds %struct.frame_vector, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %nr_frames.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_frames.i, align 4
  %ptrs.i = getelementptr inbounds %struct.frame_vector, ptr %4, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %frame_vector_pages.exit.if.end_crit_edge, label %if.then6

frame_vector_pages.exit.if.end_crit_edge:         ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %frame_vector_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = inttoptr i32 %and to ptr
  tail call void @vm_unmap_ram(ptr noundef nonnull %9, i32 noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then6, %frame_vector_pages.exit.if.end_crit_edge
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 2
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.if.end14_crit_edge [
    i32 2, label %if.end.if.then9_crit_edge
    i32 0, label %if.end.if.then9_crit_edge30
  ]

if.end.if.then9_crit_edge30:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1028.not = icmp eq i32 %8, 0
  br i1 %cmp1028.not, label %if.then9.if.end14_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ptrs.i, i32 %i.029
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @set_page_dirty_lock(ptr noundef %14) #9
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.body.if.end14_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef %1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.body.if.end14_crit_edge, %if.then9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %15 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vec, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %16) #9
  tail call void @kfree(ptr noundef %buf_priv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_attach_dmabuf(ptr nocapture noundef readonly %vb, ptr nocapture noundef readnone %dev, ptr noundef %dbuf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbuf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp ult i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dbuf6 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dbuf6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dbuf, ptr %dbuf6, align 8
  %4 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vb, align 8
  %dma_dir = getelementptr inbounds %struct.vb2_queue, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_dir, align 4
  %dma_dir7 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dma_dir7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_dir7, align 8
  %size8 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ inttoptr (i32 -14 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_detach_dmabuf(ptr noundef %mem_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #9
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %map, align 8, !annotation !57
  %1 = ptrtoint ptr %mem_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem_priv, align 4
  store ptr %2, ptr %map, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %mem_priv, i32 0, i32 6
  %3 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbuf, align 4
  call void @dma_buf_vunmap(ptr noundef %4, ptr noundef nonnull %map) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @kfree(ptr noundef %mem_priv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_map_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #9
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %map, align 8, !annotation !57
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %mem_priv, i32 0, i32 6
  %1 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbuf, align 4
  %call = call i32 @dma_buf_vmap(ptr noundef %2, ptr noundef nonnull %map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 8
  %5 = ptrtoint ptr %mem_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mem_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_unmap_dmabuf(ptr nocapture noundef %mem_priv) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #9
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %map, align 8, !annotation !57
  %1 = ptrtoint ptr %mem_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mem_priv, align 4
  store ptr %2, ptr %map, align 8
  %dbuf = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %mem_priv, i32 0, i32 6
  %3 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbuf, align 4
  call void @dma_buf_vunmap(ptr noundef %4, ptr noundef nonnull %map) #9
  %5 = ptrtoint ptr %mem_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mem_priv, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_vaddr(ptr nocapture noundef readnone %vb, ptr nocapture noundef readonly %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_num_users(ptr noundef %buf_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_mmap(ptr noundef %buf_priv, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf_priv, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_priv, align 4
  %call1 = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call1) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %or = or i32 %3, 262144
  store i32 %or, ptr %vm_flags, align 4
  %handler = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %buf_priv, i32 0, i32 5
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
  tail call void %6(ptr noundef %vma) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end6 ], [ 0, %if.end9 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_attach(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %dbuf_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %size = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

if.end:                                           ; preds = %entry
  %add = add i32 %3, 4095
  %div35 = lshr i32 %add, 12
  %call3 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %div35, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup13

if.end6:                                          ; preds = %if.end
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp37.not = icmp eq i32 %8, 0
  br i1 %cmp37.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %vaddr.039 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %sg.038 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %call7 = tail call ptr @vmalloc_to_page(ptr noundef %vaddr.039) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup13

if.end10:                                         ; preds = %for.body
  %11 = ptrtoint ptr %sg.038 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg.038, align 4
  %13 = ptrtoint ptr %call7 to i32
  %and2.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !49

do.body5.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.body11.i.i:                                    ; preds = %if.end10
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc, label %do.body19.i.i, !prof !49

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !59
  unreachable

for.inc:                                          ; preds = %do.body11.i.i
  %and.i.i = and i32 %12, 3
  %or.i.i = or i32 %and.i.i, %13
  %14 = ptrtoint ptr %sg.038 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i.i, ptr %sg.038, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038, i32 0, i32 1
  %15 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %length.i, align 4
  %add.ptr = getelementptr i8, ptr %vaddr.039, i32 4096
  %inc = add nuw i32 %i.040, 1
  %call11 = tail call ptr @sg_next(ptr noundef %sg.038) #9
  %17 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig_nents, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %dma_dir, align 4
  %priv12 = getelementptr inbounds %struct.dma_buf_attachment, ptr %dbuf_attach, i32 0, i32 8
  %20 = ptrtoint ptr %priv12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %priv12, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %for.end, %cleanup.thread, %if.then5, %entry.cleanup13_crit_edge
  %retval.2 = phi i32 [ %call3, %if.then5 ], [ 0, %for.end ], [ -12, %entry.cleanup13_crit_edge ], [ -12, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_dmabuf_ops_detach(ptr nocapture noundef readnone %dbuf, ptr nocapture noundef %db_attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %3, i32 noundef 0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %1) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_dmabuf_ops_map(ptr nocapture noundef readonly %db_attach, i32 noundef %dma_dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %db_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_attach, align 4
  %lock1 = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock1, i32 noundef 0) #9
  %dma_dir3 = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dma_dir)
  %cmp = icmp eq i32 %5, %dma_dir
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5.not = icmp eq i32 %5, 3
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %5, i32 noundef 0) #9
  %12 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %dma_dir3, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.dma_buf_attachment, ptr %db_attach, i32 0, i32 1
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %14, ptr noundef %1, i32 noundef %dma_dir, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dma_dir, ptr %dma_dir3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ %1, %if.end14 ], [ %1, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock1) #9
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vb2_vmalloc_dmabuf_ops_unmap(ptr nocapture noundef %db_attach, ptr nocapture noundef %sgt, i32 noundef %dma_dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_vmalloc_dmabuf_ops_release(ptr nocapture noundef readonly %dbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %refcount.i = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.vb2_vmalloc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.vb2_vmalloc_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_vmalloc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %vb2_vmalloc_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @vfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %vb2_vmalloc_put.exit

vb2_vmalloc_put.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.vb2_vmalloc_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_mmap(ptr nocapture noundef readonly %dbuf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %vb2_vmalloc_mmap.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call1.i) #14
  br label %vb2_vmalloc_mmap.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags.i, align 4
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %vm_flags.i, align 4
  %handler.i = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %1, i32 0, i32 5
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
  tail call void %8(ptr noundef %vma) #9
  br label %vb2_vmalloc_mmap.exit

vb2_vmalloc_mmap.exit:                            ; preds = %if.end9.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end6.i ], [ 0, %if.end9.i ], [ -22, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_vmap(ptr nocapture noundef readonly %dbuf, ptr nocapture noundef writeonly %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dbuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
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
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_to_pfns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @vb2_vmalloc_memops, !1, !"vb2_vmalloc_memops", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 428, i32 26}
!2 = !{ptr @__ksymtab_vb2_vmalloc_memops, !3, !"__ksymtab_vb2_vmalloc_memops", i1 false, i1 false}
!3 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 444, i32 1}
!4 = !{ptr @__UNIQUE_ID_description237, !5, !"__UNIQUE_ID_description237", i1 false, i1 false}
!5 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 446, i32 1}
!6 = !{ptr @__UNIQUE_ID_author238, !7, !"__UNIQUE_ID_author238", i1 false, i1 false}
!7 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 447, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 448, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_import_ns241, !12, !"__UNIQUE_ID_import_ns241", i1 false, i1 false}
!12 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 449, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 49, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vb2_vmalloc_alloc.__UNIQUE_ID_ddebug236, !14, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!19 = !{ptr @vb2_vmalloc_dmabuf_ops, !20, !"vb2_vmalloc_dmabuf_ops", i1 false, i1 false}
!20 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 330, i32 33}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 291, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vb2_vmalloc_dmabuf_ops_map._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @vb2_vmalloc_dmabuf_ops_map._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 153, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vb2_vmalloc_vaddr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @vb2_vmalloc_vaddr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 172, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vb2_vmalloc_mmap._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vb2_vmalloc_mmap._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/common/videobuf2/videobuf2-vmalloc.c", i32 178, i32 3}
!38 = !{ptr @vb2_vmalloc_mmap._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vb2_vmalloc_mmap._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148160917, i64 2148160922, i64 2148160935, i64 2148160979, i64 2148161013, i64 2148161034}
!51 = !{i64 2148519369}
!52 = !{i64 2148433833, i64 2148433865, i64 2148433894, i64 2148433928, i64 2148433959, i64 2148433982}
!53 = !{i64 2149476993}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2148431368, i64 2148431400, i64 2148431429, i64 2148431463, i64 2148431494, i64 2148431517}
!56 = !{i8 0, i8 2}
!57 = !{!"auto-init"}
!58 = !{i64 2153925981, i64 2153926473, i64 2153926018, i64 2153926074, i64 2153926108, i64 2153926132, i64 2153926173, i64 2153926194, i64 2153926222, i64 2153926256}
!59 = !{i64 2153927591, i64 2153928083, i64 2153927628, i64 2153927684, i64 2153927718, i64 2153927742, i64 2153927783, i64 2153927804, i64 2153927832, i64 2153927866}
