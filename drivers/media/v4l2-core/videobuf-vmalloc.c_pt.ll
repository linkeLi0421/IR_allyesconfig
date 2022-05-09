; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/videobuf-vmalloc.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/videobuf-vmalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+videobuf_queue_vmalloc_init\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_queue_vmalloc_init\09\09\09\09"
module asm "\09.long\09__crc_videobuf_queue_vmalloc_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_queue_vmalloc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_queue_vmalloc_init\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_queue_vmalloc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_to_vmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_to_vmalloc\09\09\09\09"
module asm "\09.long\09__crc_videobuf_to_vmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_to_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_to_vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_to_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_vmalloc_free\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_vmalloc_free\09\09\09\09"
module asm "\09.long\09__crc_videobuf_vmalloc_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_vmalloc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_vmalloc_free\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_vmalloc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.videobuf_qtype_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.videobuf_vmalloc_memory = type { i32, ptr, ptr }
%struct.videobuf_mapping = type { i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__param_str_debug = internal constant [23 x i8] c"videobuf_vmalloc.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype250 = internal constant [36 x i8] c"videobuf_vmalloc.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [81 x i8] c"videobuf_vmalloc.description=helper module to manage video4linux vmalloc buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [67 x i8] c"videobuf_vmalloc.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [63 x i8] c"videobuf_vmalloc.file=drivers/media/v4l2-core/videobuf-vmalloc\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [29 x i8] c"videobuf_vmalloc.license=GPL\00", section ".modinfo", align 1
@qops = internal global { %struct.videobuf_qtype_ops, [40 x i8] } { %struct.videobuf_qtype_ops { i32 304484355, ptr @__videobuf_alloc_vb, ptr @videobuf_to_vmalloc, ptr @__videobuf_iolock, ptr null, ptr @__videobuf_mmap_mapper }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_videobuf_queue_vmalloc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_queue_vmalloc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_queue_vmalloc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_queue_vmalloc_init to i32), ptr @__kstrtab_videobuf_queue_vmalloc_init, ptr @__kstrtabns_videobuf_queue_vmalloc_init }, section "___ksymtab_gpl+videobuf_queue_vmalloc_init", align 4
@videobuf_to_vmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013magic mismatch: %x (expected %x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"videobuf_to_vmalloc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/v4l2-core/videobuf-vmalloc.c\00", [53 x i8] zeroinitializer }, align 32
@videobuf_to_vmalloc._entry_ptr = internal global ptr @videobuf_to_vmalloc._entry, section ".printk_index", align 4
@__kstrtab_videobuf_to_vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_to_vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_to_vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_to_vmalloc to i32), ptr @__kstrtab_videobuf_to_vmalloc, ptr @__kstrtabns_videobuf_to_vmalloc }, section "___ksymtab_gpl+videobuf_to_vmalloc", align 4
@videobuf_vmalloc_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"videobuf_vmalloc_free\00", [42 x i8] zeroinitializer }, align 32
@videobuf_vmalloc_free._entry_ptr = internal global ptr @videobuf_vmalloc_free._entry, section ".printk_index", align 4
@__kstrtab_videobuf_vmalloc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_vmalloc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_vmalloc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_vmalloc_free to i32), ptr @__kstrtab_videobuf_vmalloc_free, ptr @__kstrtabns_videobuf_vmalloc_free }, section "___ksymtab_gpl+videobuf_vmalloc_free", align 4
@__videobuf_alloc_vb._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 149, ptr null, ptr null }, align 1
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017vbuf-vmalloc: %s: allocated at %p(%ld+%ld) & %p(%ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__videobuf_alloc_vb\00", [44 x i8] zeroinitializer }, align 32
@__videobuf_alloc_vb._entry_ptr = internal global ptr @__videobuf_alloc_vb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__videobuf_iolock._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 163, ptr null, ptr null }, align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__videobuf_iolock\00", [46 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr = internal global ptr @__videobuf_iolock._entry, section ".printk_index", align 4
@__videobuf_iolock._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 167, ptr null, ptr null }, align 1
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017vbuf-vmalloc: %s memory method MMAP\0A\00", [57 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.9 = internal global ptr @__videobuf_iolock._entry.7, section ".printk_index", align 4
@__videobuf_iolock._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 171, ptr null, ptr null }, align 1
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013memory is not allocated/mmapped.\0A\00", [60 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.12 = internal global ptr @__videobuf_iolock._entry.10, section ".printk_index", align 4
@__videobuf_iolock._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 178, ptr null, ptr null }, align 1
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017vbuf-vmalloc: %s memory method USERPTR\0A\00", [54 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.15 = internal global ptr @__videobuf_iolock._entry.13, section ".printk_index", align 4
@__videobuf_iolock._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 181, ptr null, ptr null }, align 1
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013USERPTR is currently not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.18 = internal global ptr @__videobuf_iolock._entry.16, section ".printk_index", align 4
@__videobuf_iolock._entry.19 = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 191, ptr null, ptr null }, align 1
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013vmalloc (%d pages) failed\0A\00", [35 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.21 = internal global ptr @__videobuf_iolock._entry.19, section ".printk_index", align 4
@__videobuf_iolock._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 195, ptr null, ptr null }, align 1
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017vbuf-vmalloc: vmalloc is at addr %p (%d pages)\0A\00", [46 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.24 = internal global ptr @__videobuf_iolock._entry.22, section ".printk_index", align 4
@__videobuf_iolock._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 199, ptr null, ptr null }, align 1
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017vbuf-vmalloc: %s memory method OVERLAY/unknown\0A\00", [46 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.27 = internal global ptr @__videobuf_iolock._entry.25, section ".printk_index", align 4
@__videobuf_iolock._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.2, i32 202, ptr null, ptr null }, align 1
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Memory method currently unsupported.\0A\00", [56 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.30 = internal global ptr @__videobuf_iolock._entry.28, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 217, ptr null, ptr null }, align 1
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017vbuf-vmalloc: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__videobuf_mmap_mapper\00", [41 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr = internal global ptr @__videobuf_mmap_mapper._entry, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.33 = internal constant %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 231, ptr null, ptr null }, align 1
@__videobuf_mmap_mapper._entry_ptr.34 = internal global ptr @__videobuf_mmap_mapper._entry.33, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.35 = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.32, ptr @.str.2, i32 236, ptr null, ptr null }, align 1
@__videobuf_mmap_mapper._entry_ptr.36 = internal global ptr @__videobuf_mmap_mapper._entry.35, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.37 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.32, ptr @.str.2, i32 239, ptr null, ptr null }, align 1
@__videobuf_mmap_mapper._entry_ptr.38 = internal global ptr @__videobuf_mmap_mapper._entry.37, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 244, ptr null, ptr null }, align 1
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013mmap: remap failed with error %d. \00", [59 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr.41 = internal global ptr @__videobuf_mmap_mapper._entry.39, section ".printk_index", align 4
@videobuf_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @videobuf_vm_open, ptr @videobuf_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 256, ptr null, ptr null }, align 1
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017vbuf-vmalloc: mmap %p: q=%p %08lx-%08lx (%lx) pgoff %08lx buf %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr.44 = internal global ptr @__videobuf_mmap_mapper._entry.42, section ".printk_index", align 4
@videobuf_vm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017vbuf-vmalloc: vm_close %p [count=%u,vma=%08lx-%08lx]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf_vm_close\00", [46 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr = internal global ptr @videobuf_vm_close._entry, section ".printk_index", align 4
@videobuf_vm_close._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017vbuf-vmalloc: munmap %p q=%p\0A\00", [32 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr.49 = internal global ptr @videobuf_vm_close._entry.47, section ".printk_index", align 4
@videobuf_vm_close._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr.51 = internal global ptr @videobuf_vm_close._entry.50, section ".printk_index", align 4
@videobuf_vm_close._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017vbuf-vmalloc: %s: buf[%d] freeing (%p)\0A\00", [54 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr.54 = internal global ptr @videobuf_vm_close._entry.52, section ".printk_index", align 4
@videobuf_vm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017vbuf-vmalloc: vm_open %p [count=%u,vma=%08lx-%08lx]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf_vm_open\00", [47 x i8] zeroinitializer }, align 32
@videobuf_vm_open._entry_ptr = internal global ptr @videobuf_vm_open._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 37, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"qops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 268, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 296, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 318, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 147, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 163, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 167, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 171, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 178, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 181, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 191, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 194, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 199, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 202, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 217, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 244, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"videobuf_vm_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 120, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 253, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 67, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 74, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 96, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 101, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [46 x i8] c"../drivers/media/v4l2-core/videobuf-vmalloc.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 55, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debugtype250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_videobuf_queue_vmalloc_init, ptr @__ksymtab_videobuf_to_vmalloc, ptr @__ksymtab_videobuf_vmalloc_free, ptr @__param_debug, ptr @__videobuf_alloc_vb._entry, ptr @__videobuf_alloc_vb._entry_ptr, ptr @__videobuf_iolock._entry, ptr @__videobuf_iolock._entry.10, ptr @__videobuf_iolock._entry.13, ptr @__videobuf_iolock._entry.16, ptr @__videobuf_iolock._entry.19, ptr @__videobuf_iolock._entry.22, ptr @__videobuf_iolock._entry.25, ptr @__videobuf_iolock._entry.28, ptr @__videobuf_iolock._entry.7, ptr @__videobuf_iolock._entry_ptr, ptr @__videobuf_iolock._entry_ptr.12, ptr @__videobuf_iolock._entry_ptr.15, ptr @__videobuf_iolock._entry_ptr.18, ptr @__videobuf_iolock._entry_ptr.21, ptr @__videobuf_iolock._entry_ptr.24, ptr @__videobuf_iolock._entry_ptr.27, ptr @__videobuf_iolock._entry_ptr.30, ptr @__videobuf_iolock._entry_ptr.9, ptr @__videobuf_mmap_mapper._entry, ptr @__videobuf_mmap_mapper._entry.33, ptr @__videobuf_mmap_mapper._entry.35, ptr @__videobuf_mmap_mapper._entry.37, ptr @__videobuf_mmap_mapper._entry.39, ptr @__videobuf_mmap_mapper._entry.42, ptr @__videobuf_mmap_mapper._entry_ptr, ptr @__videobuf_mmap_mapper._entry_ptr.34, ptr @__videobuf_mmap_mapper._entry_ptr.36, ptr @__videobuf_mmap_mapper._entry_ptr.38, ptr @__videobuf_mmap_mapper._entry_ptr.41, ptr @__videobuf_mmap_mapper._entry_ptr.44, ptr @videobuf_to_vmalloc._entry, ptr @videobuf_to_vmalloc._entry_ptr, ptr @videobuf_vm_close._entry, ptr @videobuf_vm_close._entry.47, ptr @videobuf_vm_close._entry.50, ptr @videobuf_vm_close._entry.52, ptr @videobuf_vm_close._entry_ptr, ptr @videobuf_vm_close._entry_ptr.49, ptr @videobuf_vm_close._entry_ptr.51, ptr @videobuf_vm_close._entry_ptr.54, ptr @videobuf_vm_open._entry, ptr @videobuf_vm_open._entry_ptr, ptr @videobuf_vmalloc_free._entry, ptr @videobuf_vmalloc_free._entry_ptr, ptr @debug, ptr @qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.40, ptr @videobuf_vm_ops, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.53, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_to_vmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vmalloc_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @videobuf_queue_vmalloc_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef %ext_lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @videobuf_queue_core_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef nonnull @qops, ptr noundef %ext_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_core_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @videobuf_to_vmalloc(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !126

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 295, 0\0A.popsection", ""() #5, !srcloc !127
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 404886051, i32 %3)
  %cmp.not = icmp eq i32 %3, 404886051
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !128

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 404886051) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #5, !srcloc !129
  unreachable

if.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %vaddr = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  ret ptr %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @videobuf_vmalloc_free(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 13
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 16
  %4 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 404886051, i32 %7)
  %cmp4.not = icmp eq i32 %7, 404886051
  br i1 %cmp4.not, label %if.end15, label %do.end, !prof !128

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, i32 noundef 404886051) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #5, !srcloc !130
  unreachable

if.end15:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %vaddr = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr, align 4
  tail call void @vfree(ptr noundef %9) #5
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__videobuf_alloc_vb(i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %size
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %call9.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 404886051, ptr %add.ptr, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %size, -144
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %call9.i.i, i32 noundef 144, i32 noundef %sub, ptr noundef %add.ptr, i32 noundef 12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.1.i.i16 = phi ptr [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.1.i.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_iolock(ptr nocapture noundef readnone %q, ptr nocapture noundef readonly %vb, ptr nocapture noundef readnone %fbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !126

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #5, !srcloc !131
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 404886051, i32 %3)
  %cmp.not = icmp eq i32 %3, 404886051
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !128

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 404886051) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #5, !srcloc !132
  unreachable

if.end27:                                         ; preds = %do.end9
  %memory = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 13
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memory, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end27
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28 = icmp sgt i32 %7, 0
  br i1 %cmp28, label %do.end32, label %sw.bb.if.end35_crit_edge

sw.bb.if.end35_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end32:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %sw.bb.if.end35_crit_edge
  %vaddr = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr, align 4
  %tobool36.not = icmp eq ptr %9, null
  br i1 %tobool36.not, label %do.end40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %cleanup

sw.bb44:                                          ; preds = %if.end27
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add = add i32 %11, 4095
  %and = and i32 %add, -4096
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp45 = icmp sgt i32 %12, 0
  br i1 %cmp45, label %do.end49, label %sw.bb44.if.end52_crit_edge

sw.bb44.if.end52_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.end49:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6) #8
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %sw.bb44.if.end52_crit_edge
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %13 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool53.not = icmp eq i32 %14, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %call61 = tail call noalias ptr @vmalloc_user(i32 noundef %and) #9
  %vaddr62 = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vaddr62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call61, ptr %vaddr62, align 4
  %tobool64.not = icmp eq ptr %call61, null
  br i1 %tobool64.not, label %do.end68, label %if.end71

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and) #8
  br label %cleanup

if.end71:                                         ; preds = %if.end60
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp72 = icmp sgt i32 %16, 0
  br i1 %cmp72, label %do.end76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %call61, i32 noundef %and) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end27
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp82 = icmp sgt i32 %17, 0
  br i1 %cmp82, label %do.end86, label %sw.default.do.end92_crit_edge

sw.default.do.end92_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

do.end86:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6) #8
  br label %do.end92

do.end92:                                         ; preds = %do.end86, %sw.default.do.end92_crit_edge
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.end76, %if.end71.cleanup_crit_edge, %do.end68, %do.end57, %do.end40, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end92 ], [ -22, %do.end57 ], [ -12, %do.end68 ], [ -22, %do.end40 ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %do.end76 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_mmap_mapper(ptr noundef %q, ptr nocapture noundef %buf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #10
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %map6 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 17
  %2 = ptrtoint ptr %map6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %map6, align 8
  %q7 = getelementptr inbounds %struct.videobuf_mapping, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %q7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %q, ptr %q7, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 16
  %6 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %baddr, align 4
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.body13, label %do.end21, !prof !126

do.body13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #5, !srcloc !133
  unreachable

do.end21:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 404886051, i32 %10)
  %cmp22.not = icmp eq i32 %10, 404886051
  br i1 %cmp22.not, label %if.end42, label %do.end32, !prof !128

do.end32:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %10, i32 noundef 404886051) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #5, !srcloc !134
  unreachable

if.end42:                                         ; preds = %do.end21
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %11 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_end, align 4
  %13 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vma, align 4
  %sub = add i32 %12, 4095
  %add = sub i32 %sub, %14
  %and = and i32 %add, -4096
  %call44 = tail call noalias ptr @vmalloc_user(i32 noundef %and) #9
  %vaddr = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call44, ptr %vaddr, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and) #8
  br label %error

if.end53:                                         ; preds = %if.end42
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp54 = icmp sgt i32 %16, 0
  br i1 %cmp54, label %do.end58, label %if.end53.if.end62_crit_edge

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %call44, i32 noundef %and) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end58, %if.end53.if.end62_crit_edge
  %17 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr, align 4
  %call64 = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %18, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %do.end69, label %if.end73

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call64) #8
  %19 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr, align 4
  tail call void @vfree(ptr noundef %20) #5
  br label %error

if.end73:                                         ; preds = %if.end62
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %21 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @videobuf_vm_ops, ptr %vm_ops, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %22 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_flags, align 4
  %or = or i32 %23, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %24 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %vm_private_data, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp74 = icmp sgt i32 %25, 0
  br i1 %cmp74, label %if.end83, label %if.end83.thread

if.end83.thread:                                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vm_private_data, align 4
  br label %videobuf_vm_open.exit

if.end83:                                         ; preds = %if.end73
  %28 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vma, align 4
  %30 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_end, align 4
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 14
  %32 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bsize, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %34 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_pgoff, align 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf, align 8
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %call7.i.i, ptr noundef %q, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #8
  %.pr = load i32, ptr @debug, align 4
  %38 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm_private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 1
  br i1 %cmp.i, label %do.end.i, label %if.end83.videobuf_vm_open.exit_crit_edge

if.end83.videobuf_vm_open.exit_crit_edge:         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %videobuf_vm_open.exit

do.end.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vma, align 4
  %44 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vm_end, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #8
  br label %videobuf_vm_open.exit

videobuf_vm_open.exit:                            ; preds = %do.end.i, %if.end83.videobuf_vm_open.exit_crit_edge, %if.end83.thread
  %46 = phi ptr [ %27, %if.end83.thread ], [ %39, %if.end83.videobuf_vm_open.exit_crit_edge ], [ %39, %do.end.i ]
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %46, align 4
  br label %cleanup

error:                                            ; preds = %do.end69, %do.end50
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %videobuf_vm_open.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %videobuf_vm_open.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %5 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %q1 = getelementptr inbounds %struct.videobuf_mapping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %7 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %9 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %do.end10, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %1, ptr noundef %3) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.then5.if.end13_crit_edge
  %ext_lock.i = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.videobuf_queue_lock.exit_crit_edge

if.end13.videobuf_queue_lock.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %videobuf_queue_lock.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  br label %videobuf_queue_lock.exit

videobuf_queue_lock.exit:                         ; preds = %if.then.i, %if.end13.videobuf_queue_lock.exit_crit_edge
  %streaming = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %videobuf_queue_lock.exit.for.body.preheader_crit_edge, label %if.then14

videobuf_queue_lock.exit.for.body.preheader_crit_edge: ; preds = %videobuf_queue_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then14:                                        ; preds = %videobuf_queue_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @videobuf_queue_cancel(ptr noundef %3) #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then14, %videobuf_queue_lock.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.099 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.videobuf_queue, ptr %3, i32 0, i32 9, i32 %i.099
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %map22 = getelementptr inbounds %struct.videobuf_buffer, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %map22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map22, align 8
  %cmp23.not = icmp eq ptr %20, %1
  br i1 %cmp23.not, label %if.end25, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end25:                                         ; preds = %if.end19
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %18, i32 0, i32 19
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %tobool28.not = icmp eq ptr %22, null
  br i1 %tobool28.not, label %if.end25.if.end57_crit_edge, label %if.then29

if.end25.if.end57_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then29:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 404886051, i32 %24)
  %cmp30.not = icmp eq i32 %24, 404886051
  br i1 %cmp30.not, label %if.end46, label %do.end36, !prof !128

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %24, i32 noundef 404886051) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #5, !srcloc !135
  unreachable

if.end46:                                         ; preds = %if.then29
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp47 = icmp sgt i32 %25, 0
  br i1 %cmp47, label %do.end51, label %if.end46.if.end54_crit_edge

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %vaddr = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vaddr, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.46, i32 noundef %i.099, ptr noundef %27) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end46.if.end54_crit_edge
  %vaddr55 = getelementptr inbounds %struct.videobuf_vmalloc_memory, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %vaddr55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr55, align 4
  tail call void @vfree(ptr noundef %29) #5
  %30 = ptrtoint ptr %vaddr55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vaddr55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %if.end25.if.end57_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %map60 = getelementptr inbounds %struct.videobuf_buffer, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %map60 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %map60, align 8
  %34 = load ptr, ptr %arrayidx, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %baddr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end57, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @kfree(ptr noundef %1) #5
  %36 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i97 = icmp eq ptr %37, null
  br i1 %tobool.not.i97, label %if.then.i98, label %for.end.if.end63_crit_edge

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then.i98:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %3) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then.i98, %for.end.if.end63_crit_edge, %if.end.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype250, !1, !"__UNIQUE_ID_debugtype250", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 40, i32 1}
!5 = !{ptr @__UNIQUE_ID_author252, !6, !"__UNIQUE_ID_author252", i1 false, i1 false}
!6 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_file253, !8, !"__UNIQUE_ID_file253", i1 false, i1 false}
!8 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_license254, !8, !"__UNIQUE_ID_license254", i1 false, i1 false}
!10 = !{ptr @__ksymtab_videobuf_queue_vmalloc_init, !11, !"__ksymtab_videobuf_queue_vmalloc_init", i1 false, i1 false}
!11 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 290, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 296, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @videobuf_to_vmalloc._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @videobuf_to_vmalloc._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_videobuf_to_vmalloc, !19, !"__ksymtab_videobuf_to_vmalloc", i1 false, i1 false}
!19 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 300, i32 1}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 318, i32 2}
!22 = !{ptr @videobuf_vmalloc_free._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @videobuf_vmalloc_free._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_videobuf_vmalloc_free, !25, !"__ksymtab_videobuf_vmalloc_free", i1 false, i1 false}
!25 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 325, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 37, i32 12}
!28 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @qops, !30, !"qops", i1 false, i1 false}
!30 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 268, i32 34}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 147, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__videobuf_alloc_vb._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__videobuf_alloc_vb._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 163, i32 2}
!38 = !{ptr @__videobuf_iolock._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @__videobuf_iolock._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 167, i32 3}
!42 = !{ptr @__videobuf_iolock._entry.7, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @__videobuf_iolock._entry_ptr.9, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 171, i32 4}
!46 = !{ptr @__videobuf_iolock._entry.10, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__videobuf_iolock._entry_ptr.12, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 178, i32 3}
!50 = !{ptr @__videobuf_iolock._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @__videobuf_iolock._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 181, i32 4}
!54 = !{ptr @__videobuf_iolock._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @__videobuf_iolock._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 191, i32 4}
!58 = !{ptr @__videobuf_iolock._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__videobuf_iolock._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 194, i32 3}
!62 = !{ptr @__videobuf_iolock._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @__videobuf_iolock._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 199, i32 3}
!66 = !{ptr @__videobuf_iolock._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @__videobuf_iolock._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 202, i32 3}
!70 = !{ptr @__videobuf_iolock._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @__videobuf_iolock._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 217, i32 2}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__videobuf_mmap_mapper._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__videobuf_mmap_mapper._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__videobuf_mmap_mapper._entry.33, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 231, i32 2}
!79 = !{ptr @__videobuf_mmap_mapper._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @__videobuf_mmap_mapper._entry.35, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 236, i32 3}
!82 = !{ptr @__videobuf_mmap_mapper._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__videobuf_mmap_mapper._entry.37, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 239, i32 2}
!85 = !{ptr @__videobuf_mmap_mapper._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 244, i32 3}
!88 = !{ptr @__videobuf_mmap_mapper._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @__videobuf_mmap_mapper._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 253, i32 2}
!92 = !{ptr @__videobuf_mmap_mapper._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @__videobuf_mmap_mapper._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @videobuf_vm_ops, !95, !"videobuf_vm_ops", i1 false, i1 false}
!95 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 120, i32 42}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 67, i32 2}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @videobuf_vm_close._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @videobuf_vm_close._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 74, i32 3}
!103 = !{ptr @videobuf_vm_close._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @videobuf_vm_close._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @videobuf_vm_close._entry.50, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 96, i32 5}
!107 = !{ptr @videobuf_vm_close._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 101, i32 5}
!110 = !{ptr @videobuf_vm_close._entry.52, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @videobuf_vm_close._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/v4l2-core/videobuf-vmalloc.c", i32 55, i32 2}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @videobuf_vm_open._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @videobuf_vm_open._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2154892090, i64 2154892597, i64 2154892127, i64 2154892183, i64 2154892217, i64 2154892241, i64 2154892282, i64 2154892303, i64 2154892331, i64 2154892365}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2154895426, i64 2154895933, i64 2154895463, i64 2154895519, i64 2154895553, i64 2154895577, i64 2154895618, i64 2154895639, i64 2154895667, i64 2154895701}
!130 = !{i64 2154904368, i64 2154904875, i64 2154904405, i64 2154904461, i64 2154904495, i64 2154904519, i64 2154904560, i64 2154904581, i64 2154904609, i64 2154904643}
!131 = !{i64 2154858147, i64 2154858654, i64 2154858184, i64 2154858240, i64 2154858274, i64 2154858298, i64 2154858339, i64 2154858360, i64 2154858388, i64 2154858422}
!132 = !{i64 2154861483, i64 2154861990, i64 2154861520, i64 2154861576, i64 2154861610, i64 2154861634, i64 2154861675, i64 2154861696, i64 2154861724, i64 2154861758}
!133 = !{i64 2154878010, i64 2154878517, i64 2154878047, i64 2154878103, i64 2154878137, i64 2154878161, i64 2154878202, i64 2154878223, i64 2154878251, i64 2154878285}
!134 = !{i64 2154881346, i64 2154881853, i64 2154881383, i64 2154881439, i64 2154881473, i64 2154881497, i64 2154881538, i64 2154881559, i64 2154881587, i64 2154881621}
!135 = !{i64 2154852574, i64 2154853080, i64 2154852611, i64 2154852667, i64 2154852701, i64 2154852725, i64 2154852766, i64 2154852787, i64 2154852815, i64 2154852849}
