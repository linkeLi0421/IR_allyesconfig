; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fb_defio.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_defio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fb_deferred_io_fsync\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_deferred_io_fsync\09\09\09\09"
module asm "\09.long\09__crc_fb_deferred_io_fsync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fb_deferred_io_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_deferred_io_init\09\09\09\09"
module asm "\09.long\09__crc_fb_deferred_io_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_init\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fb_deferred_io_open\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_deferred_io_open\09\09\09\09"
module asm "\09.long\09__crc_fb_deferred_io_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_open\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fb_deferred_io_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_deferred_io_cleanup\09\09\09\09"
module asm "\09.long\09__crc_fb_deferred_io_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.84 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.28, i32, ptr, ptr, %union.anon.29, ptr, ptr, ptr, ptr, ptr }
%union.anon.29 = type { i32 }

@__kstrtab_fb_deferred_io_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_fsync to i32), ptr @__kstrtab_fb_deferred_io_fsync, ptr @__kstrtabns_fb_deferred_io_fsync }, section "___ksymtab_gpl+fb_deferred_io_fsync", align 4
@fb_deferred_io_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_deferred_io_fault, ptr null, ptr null, ptr null, ptr @fb_deferred_io_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fb_deferred_io_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fbdefio->lock\00", [17 x i8] zeroinitializer }, align 32
@fb_deferred_io_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&info->deferred_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@fb_deferred_io_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&info->deferred_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_fb_deferred_io_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_init to i32), ptr @__kstrtab_fb_deferred_io_init, ptr @__kstrtabns_fb_deferred_io_init }, section "___ksymtab_gpl+fb_deferred_io_init", align 4
@fb_deferred_io_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @fb_deferred_io_set_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_fb_deferred_io_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_open to i32), ptr @__kstrtab_fb_deferred_io_open, ptr @__kstrtabns_fb_deferred_io_open }, section "___ksymtab_gpl+fb_deferred_io_open", align 4
@__kstrtab_fb_deferred_io_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_cleanup to i32), ptr @__kstrtab_fb_deferred_io_cleanup, ptr @__kstrtabns_fb_deferred_io_cleanup }, section "___ksymtab_gpl+fb_deferred_io_cleanup", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fb_deferred_io_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013no mapping available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fb_deferred_io_fault\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/core/fb_defio.c\00", [60 x i8] zeroinitializer }, align 32
@fb_deferred_io_fault._entry_ptr = internal global ptr @fb_deferred_io_fault._entry, section ".printk_index", align 4
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"fb_deferred_io_vm_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 149, i32 42 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 207, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 208, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"fb_deferred_io_aops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 161, i32 46 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private constant [39 x i8] c"../drivers/video/fbdev/core/fb_defio.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 59, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1160, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 788, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 260, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 420, i32 1 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_fb_deferred_io_cleanup, ptr @__ksymtab_fb_deferred_io_fsync, ptr @__ksymtab_fb_deferred_io_init, ptr @__ksymtab_fb_deferred_io_open, ptr @fb_deferred_io_fault._entry, ptr @fb_deferred_io_fault._entry_ptr, ptr @fb_deferred_io_vm_ops, ptr @fb_deferred_io_init.__key, ptr @.str, ptr @fb_deferred_io_init.__key.1, ptr @.str.2, ptr @fb_deferred_io_init.__key.3, ptr @.str.4, ptr @fb_deferred_io_aops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_deferred_io_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_deferred_io_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdefio, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #6
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 18
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %deferred_work) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %deferred_work, i32 noundef 0) #6
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_deferred_io_mmap(ptr noundef %info, ptr nocapture noundef %vma) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fb_deferred_io_vm_ops, ptr %vm_ops, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %1 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_flags, align 4
  %or = or i32 %2, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or2 = or i32 %2, 67387392
  %5 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or2, ptr %vm_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %6 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %info, ptr %vm_private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_deferred_io_init(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !45

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #6, !srcloc !46
  unreachable

do.body11:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @fb_deferred_io_init.__key) #6
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  tail call void @__init_work(ptr noundef %deferred_work, i32 noundef 0) #6
  %2 = ptrtoint ptr %deferred_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %deferred_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @fb_deferred_io_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18, i32 0, i32 1
  %3 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fb_deferred_io_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @fb_deferred_io_init.__key.3) #6
  %pagelist = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pagelist, ptr %pagelist, align 4
  %prev.i46 = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pagelist, ptr %prev.i46, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then33, label %do.body11.if.end35_crit_edge

do.body11.if.end35_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %1, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body11.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fb_deferred_io_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -960
  %fbdefio1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %lock = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pagelist = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn48 = load ptr, ptr %pagelist, align 4
  %cmp.not49 = icmp eq ptr %.pn48, %pagelist
  br i1 %cmp.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %page_mkclean.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %page_mkclean.exit.for.body_crit_edge ], [ %.pn48, %entry.for.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn50, i32 -4
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 788) #6
  %3 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %.pn50, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %cur.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !48
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #6
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !50
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #6
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %14 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %.pn50, align 4
  %and.i.i40 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i44, label %if.then.i.i43, !prof !47

if.then.i.i43:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i42 = add i32 %15, -1
  br label %page_mkclean.exit

if.end.i.i44:                                     ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %cur.0 to i32
  br label %page_mkclean.exit

page_mkclean.exit:                                ; preds = %if.end.i.i44, %if.then.i.i43
  %retval.0.i.i45 = phi i32 [ %sub.i.i42, %if.then.i.i43 ], [ %16, %if.end.i.i44 ]
  %17 = inttoptr i32 %retval.0.i.i45 to ptr
  %call1.i = tail call i32 @folio_mkclean(ptr noundef %17) #6
  tail call void @unlock_page(ptr noundef %cur.0) #6
  %18 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist
  br i1 %cmp.not, label %page_mkclean.exit.for.end_crit_edge, label %page_mkclean.exit.for.body_crit_edge

page_mkclean.exit.for.body_crit_edge:             ; preds = %page_mkclean.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

page_mkclean.exit.for.end_crit_edge:              ; preds = %page_mkclean.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %page_mkclean.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %deferred_io = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %deferred_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %deferred_io, align 4
  tail call void %20(ptr noundef %add.ptr, ptr noundef %pagelist) #6
  %21 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pagelist, align 4
  %cmp.i.not52 = icmp eq ptr %22, %pagelist
  br i1 %cmp.i.not52, label %for.end.for.end23_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

for.body20:                                       ; preds = %list_del.exit.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %node.053 = phi ptr [ %next.055, %list_del.exit.for.body20_crit_edge ], [ %22, %for.end.for.body20_crit_edge ]
  %23 = ptrtoint ptr %node.053 to i32
  call void @__asan_load4_noabort(i32 %23)
  %next.055 = load ptr, ptr %node.053, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.053) #6
  br i1 %call.i.i, label %if.end.i.i47, label %for.body20.list_del.exit_crit_edge

for.body20.list_del.exit_crit_edge:               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i47:                                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.053, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %node.053 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node.053, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i47, %for.body20.list_del.exit_crit_edge
  %30 = ptrtoint ptr %node.053 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %node.053, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.053, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %next.055, %pagelist
  br i1 %cmp.i.not, label %list_del.exit.for.end23_crit_edge, label %list_del.exit.for.body20_crit_edge

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

list_del.exit.for.end23_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

for.end23:                                        ; preds = %list_del.exit.for.end23_crit_edge, %for.end.for.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fb_deferred_io_open(ptr nocapture readnone %info, ptr nocapture readnone %inode, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fb_deferred_io_aops, ptr %a_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_deferred_io_cleanup(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !45

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

do.end10:                                         ; preds = %entry
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %deferred_work) #6
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %do.end10.for.end_crit_edge, label %for.body.lr.ph

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end10
  %4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %fb_deferred_io_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %fb_deferred_io_page.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %i.019
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #6
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #6
  br label %fb_deferred_io_page.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_start.i, align 4
  %add.i = add i32 %9, %i.019
  %shr.i = lshr i32 %add.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %10
  %add.ptr3.i = getelementptr %struct.page, ptr %7, i32 %sub.i
  br label %fb_deferred_io_page.exit

fb_deferred_io_page.exit:                         ; preds = %if.else.i, %if.then.i
  %page.0.i = phi ptr [ %call2.i, %if.then.i ], [ %add.ptr3.i, %if.else.i ]
  %mapping = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mapping, align 4
  %add = add i32 %i.019, 4096
  %12 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smem_len, align 4
  %cmp = icmp ult i32 %add, %13
  br i1 %cmp, label %fb_deferred_io_page.exit.for.body_crit_edge, label %fb_deferred_io_page.exit.for.end_crit_edge

fb_deferred_io_page.exit.for.end_crit_edge:       ; preds = %fb_deferred_io_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

fb_deferred_io_page.exit.for.body_crit_edge:      ; preds = %fb_deferred_io_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %fb_deferred_io_page.exit.for.end_crit_edge, %do.end10.for.end_crit_edge
  %lock = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pgoff = getelementptr inbounds %struct.anon.28, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %5, 12
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp.not = icmp ult i32 %shl, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %shl
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #6
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #6
  br label %fb_deferred_io_page.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smem_start.i, align 4
  %add.i = add i32 %13, %shl
  %shr.i = lshr i32 %add.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %14
  %add.ptr3.i = getelementptr %struct.page, ptr %11, i32 %sub.i
  br label %fb_deferred_io_page.exit

fb_deferred_io_page.exit:                         ; preds = %if.else.i, %if.then.i
  %page.0.i = phi ptr [ %call2.i, %if.then.i ], [ %add.ptr3.i, %if.else.i ]
  %tobool.not = icmp eq ptr %page.0.i, null
  br i1 %tobool.not, label %fb_deferred_io_page.exit.cleanup_crit_edge, label %if.end2

fb_deferred_io_page.exit.cleanup_crit_edge:       ; preds = %fb_deferred_io_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %fb_deferred_io_page.exit
  %15 = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %page.0.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !45

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.8) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #6, !srcloc !52
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #6, !srcloc !53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@fb_deferred_io_fault, %if.then.i.i.i.i)) #6
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !54

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__page_ref_mod(ptr noundef %19, i32 noundef 1) #6
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %23 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_file, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %do.end, label %if.then5

if.then5:                                         ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %f_mapping = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_mapping, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %mapping, align 4
  br label %do.body10

do.end:                                           ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %do.body10

do.body10:                                        ; preds = %do.end, %if.then5
  %mapping11 = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %mapping11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping11, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %do.body17, label %do.end25, !prof !45

do.body17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #6, !srcloc !55
  unreachable

do.end25:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgoff, align 4
  %index = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %index, align 4
  %page27 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %35 = ptrtoint ptr %page27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %page.0.i, ptr %page27, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %fb_deferred_io_page.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end25 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %fb_deferred_io_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_private_data, align 4
  %fbdefio2 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %fbdefio2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbdefio2, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_file, align 4
  %call = tail call i32 @file_update_time(ptr noundef %9) #6
  %lock = getelementptr inbounds %struct.fb_deferred_io, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %first_io = getelementptr inbounds %struct.fb_deferred_io, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %first_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %first_io, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pagelist = getelementptr inbounds %struct.fb_deferred_io, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pagelist, align 4
  %cmp.i.not = icmp eq ptr %13, %pagelist
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 788) #6
  %14 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !48
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #6
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and.i.i4.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #6, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !50
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %18) #6
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %pagelist7 = getelementptr inbounds %struct.fb_deferred_io, ptr %7, i32 0, i32 2
  %index14 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %lock_page.exit
  %.pn.in = phi ptr [ %pagelist7, %lock_page.exit ], [ %.pn, %if.else.for.cond_crit_edge ]
  %25 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist7
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cur.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp9 = icmp eq ptr %cur.0, %1
  br i1 %cmp9, label %for.body.page_already_added_crit_edge, label %if.else, !prof !45

for.body.page_already_added_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_already_added

if.else:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.anon.18, ptr %.pn, i32 0, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  %28 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index14, align 4
  %cmp15 = icmp ugt i32 %27, %29
  br i1 %cmp15, label %if.else.for.end_crit_edge, label %if.else.for.cond_crit_edge

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.else.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %if.else.for.end_crit_edge ], [ %pagelist7, %for.cond.for.end_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %31, ptr noundef %.pn.lcssa) #6
  br i1 %call.i.i, label %if.end.i.i46, label %for.end.page_already_added_crit_edge

for.end.page_already_added_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_already_added

if.end.i.i46:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %14, ptr %prev.i, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.pn.lcssa, ptr %14, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %14, ptr %31, align 4
  br label %page_already_added

page_already_added:                               ; preds = %if.end.i.i46, %for.end.page_already_added_crit_edge, %for.body.page_already_added_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %deferred_work = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 18
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i47 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %deferred_work, i32 noundef %37) #6
  ret i32 512
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_mkclean(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !45

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !47

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.12) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !47

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i22.i = add i32 %8, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then, label %PageDirty.exit.if.end_crit_edge

PageDirty.exit.if.end_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %PageDirty.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i2 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.not.i.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.not.i.i3, label %if.end.i.i6, label %if.then.i.i5, !prof !47

if.then.i.i5:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i4 = add i32 %17, -1
  br label %_compound_head.exit.i9

if.end.i.i6:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i9

_compound_head.exit.i9:                           ; preds = %if.end.i.i6, %if.then.i.i5
  %retval.0.i.i7 = phi i32 [ %sub.i.i4, %if.then.i.i5 ], [ %18, %if.end.i.i6 ]
  %19 = inttoptr i32 %retval.0.i.i7 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i8 = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i8, label %if.then.i10, label %do.end8.i11, !prof !45

if.then.i10:                                      ; preds = %_compound_head.exit.i9
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !47

if.then.i15.i:                                    ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i14.i = add i32 %23, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %24, %if.end.i16.i ]
  %25 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.12) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #6, !srcloc !57
  unreachable

do.end8.i11:                                      ; preds = %_compound_head.exit.i9
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !47

if.then.i22.i:                                    ; preds = %do.end8.i11
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i21.i = add i32 %23, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i11
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %page to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %26, %if.end.i23.i ]
  %27 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %27) #6
  br label %if.end

if.end:                                           ; preds = %SetPageDirty.exit, %PageDirty.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_fb_deferred_io_fsync, !1, !"__ksymtab_fb_deferred_io_fsync", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 90, i32 1}
!2 = !{ptr @fb_deferred_io_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 207, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fb_deferred_io_init.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 208, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fb_deferred_io_init.__key.3, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_fb_deferred_io_init, !11, !"__ksymtab_fb_deferred_io_init", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 213, i32 1}
!12 = !{ptr @__ksymtab_fb_deferred_io_open, !13, !"__ksymtab_fb_deferred_io_open", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 221, i32 1}
!14 = !{ptr @__ksymtab_fb_deferred_io_cleanup, !15, !"__ksymtab_fb_deferred_io_cleanup", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 240, i32 1}
!16 = !{ptr @fb_deferred_io_vm_ops, !17, !"fb_deferred_io_vm_ops", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 149, i32 42}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 59, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fb_deferred_io_fault._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @fb_deferred_io_fault._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!32 = !{ptr @fb_deferred_io_aops, !33, !"fb_deferred_io_aops", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/core/fb_defio.c", i32 161, i32 46}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2155859702, i64 2155860202, i64 2155859739, i64 2155859795, i64 2155859829, i64 2155859853, i64 2155859894, i64 2155859915, i64 2155859943, i64 2155859977}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2150166373, i64 2150166864, i64 2150166410, i64 2150166466, i64 2150166500, i64 2150166524, i64 2150166565, i64 2150166586, i64 2150166614, i64 2150166648}
!49 = !{i64 2148353276, i64 2148353308, i64 2148353337, i64 2148353371, i64 2148353402, i64 2148353425}
!50 = !{i64 2148442381}
!51 = !{i64 2155870024, i64 2155870524, i64 2155870061, i64 2155870117, i64 2155870151, i64 2155870175, i64 2155870216, i64 2155870237, i64 2155870265, i64 2155870299}
!52 = !{i64 2153341197, i64 2153341681, i64 2153341234, i64 2153341290, i64 2153341324, i64 2153341348, i64 2153341389, i64 2153341410, i64 2153341438, i64 2153341472}
!53 = !{i64 2148344418, i64 2148344444, i64 2148344473, i64 2148344507, i64 2148344538, i64 2148344561}
!54 = !{i64 2148957795, i64 2148957800, i64 2148957813, i64 2148957857, i64 2148957891, i64 2148957912}
!55 = !{i64 2155848426, i64 2155848925, i64 2155848463, i64 2155848519, i64 2155848553, i64 2155848577, i64 2155848618, i64 2155848639, i64 2155848667, i64 2155848701}
!56 = !{i64 2150280343, i64 2150280834, i64 2150280380, i64 2150280436, i64 2150280470, i64 2150280494, i64 2150280535, i64 2150280556, i64 2150280584, i64 2150280618}
!57 = !{i64 2150286271, i64 2150286444, i64 2150286459, i64 2150286511, i64 2150286570, i64 2150286594, i64 2150286635, i64 2150286656, i64 2150286684, i64 2150286716}
