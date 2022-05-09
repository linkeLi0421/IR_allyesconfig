; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/dma-heap.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-heap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_heap = type { ptr, ptr, ptr, i32, %struct.list_head, %struct.cdev }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dma_heap_export_info = type { ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dma_heap_allocation_data = type { i64, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.94 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@dma_heap_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dma_heap: Cannot add heap without a name\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_heap_add\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma-buf/dma-heap.c\00", [37 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr = internal global ptr @dma_heap_add._entry, section ".printk_index", align 4
@dma_heap_add._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dma_heap: Cannot add heap with invalid ops struct\0A\00", [43 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr.6 = internal global ptr @dma_heap_add._entry.4, section ".printk_index", align 4
@heap_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @heap_list_lock, i64 52), ptr getelementptr (i8, ptr @heap_list_lock, i64 52) }, ptr @heap_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@heap_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @heap_list, ptr @heap_list }, [24 x i8] zeroinitializer }, align 32
@dma_heap_add._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dma_heap: Already registered heap named %s\0A\00", [50 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr.9 = internal global ptr @dma_heap_add._entry.7, section ".printk_index", align 4
@dma_heap_minors = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@dma_heap_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dma_heap: Unable to get minor number for heap\0A\00", [47 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr.12 = internal global ptr @dma_heap_add._entry.10, section ".printk_index", align 4
@dma_heap_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dma_heap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma_heap_ioctl, ptr null, ptr null, i32 0, ptr @dma_heap_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dma_heap_add._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dma_heap: Unable to add char device\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr.15 = internal global ptr @dma_heap_add._entry.13, section ".printk_index", align 4
@dma_heap_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dma_heap_add._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dma_heap: Unable to create device\0A\00", [59 x i8] zeroinitializer }, align 32
@dma_heap_add._entry_ptr.18 = internal global ptr @dma_heap_add._entry.16, section ".printk_index", align 4
@__initcall__kmod_dma_heap__265_324_dma_heap_init4 = internal global ptr @dma_heap_init, section ".initcall4.init", align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"heap_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"heap_list_lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_heap_minors.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dma_heap_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dma_heap: minor %d unknown.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_heap_open\00", [18 x i8] zeroinitializer }, align 32
@dma_heap_open._entry_ptr = internal global ptr @dma_heap_open._entry, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_heap\00", [23 x i8] zeroinitializer }, align 32
@dma_heap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma_heap/%s\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 227, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 232, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"heap_list_lock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"heap_list\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 46, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 241, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"dma_heap_minors\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 260, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"dma_heap_devt\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 48, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"dma_heap_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 186, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 271, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"dma_heap_class\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 49, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 282, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 47, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 50, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 230, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 214, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 156, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 85, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 311, i32 64 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 315, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [30 x i8] c"../drivers/dma-buf/dma-heap.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 304, i32 31 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__initcall__kmod_dma_heap__265_324_dma_heap_init4, ptr @dma_heap_add._entry, ptr @dma_heap_add._entry.10, ptr @dma_heap_add._entry.13, ptr @dma_heap_add._entry.16, ptr @dma_heap_add._entry.4, ptr @dma_heap_add._entry.7, ptr @dma_heap_add._entry_ptr, ptr @dma_heap_add._entry_ptr.12, ptr @dma_heap_add._entry_ptr.15, ptr @dma_heap_add._entry_ptr.18, ptr @dma_heap_add._entry_ptr.6, ptr @dma_heap_add._entry_ptr.9, ptr @dma_heap_open._entry, ptr @dma_heap_open._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @heap_list_lock, ptr @heap_list, ptr @.str.8, ptr @dma_heap_minors, ptr @.str.11, ptr @dma_heap_devt, ptr @dma_heap_fops, ptr @.str.14, ptr @dma_heap_class, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @dma_heap_init.__key, ptr @.str.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heap_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heap_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_minors to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_add._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dma_heap_get_drvdata(ptr nocapture noundef readonly %heap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_heap, ptr %heap, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dma_heap_get_name(ptr nocapture noundef readonly %heap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %heap, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_heap_add(ptr nocapture noundef readonly %exp_info) local_unnamed_addr #1 align 64 {
entry:
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #10
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %minor, align 4, !annotation !75
  %1 = ptrtoint ptr %exp_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %exp_info, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %strcmpload = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %tobool2.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.do.end12_crit_edge, label %lor.lhs.false6

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

lor.lhs.false6:                                   ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false6.do.end12_crit_edge, label %if.end16

lor.lhs.false6.do.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false6.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6
  tail call void @mutex_lock_nested(ptr noundef nonnull @heap_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end16
  %.pn.in = phi ptr [ @heap_list, %if.end16 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @heap_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %h.0 = getelementptr i8, ptr %.pn, i32 -16
  %9 = ptrtoint ptr %h.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %h.0, align 4
  %11 = ptrtoint ptr %exp_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exp_info, align 4
  %call20 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %12) #14
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @heap_list_lock) #10
  %13 = ptrtoint ptr %exp_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exp_info, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %14) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @mutex_unlock(ptr noundef nonnull @heap_list_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 184) #15
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %for.end.cleanup_crit_edge, label %if.end39

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %16 = ptrtoint ptr %exp_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exp_info, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call7.i.i, align 8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %ops43 = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ops43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ops43, align 4
  %priv = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info, i32 0, i32 2
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %priv44 = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %priv44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %priv44, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @dma_heap_minors) #10
  %call.i = call i32 @__xa_alloc(ptr noundef nonnull @dma_heap_minors, ptr noundef nonnull %minor, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 127, i32 0], i32 noundef 3264) #10
  call void @_raw_spin_unlock(ptr noundef nonnull @dma_heap_minors) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp slt i32 %call.i, 0
  br i1 %cmp46, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  %25 = inttoptr i32 %call.i to ptr
  br label %err0

if.end54:                                         ; preds = %if.end39
  %26 = load i32, ptr @dma_heap_devt, align 4
  %shr = and i32 %26, -1048576
  %27 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minor, align 4
  %or = or i32 %shr, %28
  %heap_devt = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %heap_devt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %heap_devt, align 4
  %heap_cdev = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 5
  call void @cdev_init(ptr noundef %heap_cdev, ptr noundef nonnull @dma_heap_fops) #10
  %30 = ptrtoint ptr %heap_devt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %heap_devt, align 4
  %call57 = call i32 @cdev_add(ptr noundef %heap_cdev, i32 noundef %31, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %32 = inttoptr i32 %call57 to ptr
  br label %err1

if.end66:                                         ; preds = %if.end54
  %33 = load ptr, ptr @dma_heap_class, align 4
  %34 = ptrtoint ptr %heap_devt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %heap_devt, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call69 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %33, ptr noundef null, i32 noundef %35, ptr noundef null, ptr noundef %37) #10
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end74, label %if.end78

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  call void @cdev_del(ptr noundef %heap_cdev) #10
  br label %err1

if.end78:                                         ; preds = %if.end66
  call void @mutex_lock_nested(ptr noundef nonnull @heap_list_lock, i32 noundef 0) #10
  %list79 = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 4
  %38 = load ptr, ptr @heap_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list79, ptr noundef nonnull @heap_list, ptr noundef %38) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end78.list_add.exit_crit_edge

if.end78.list_add.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list79, ptr %prev1.i.i, align 4
  %40 = ptrtoint ptr %list79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %list79, align 8
  %prev3.i.i = getelementptr inbounds %struct.dma_heap, ptr %call7.i.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @heap_list, ptr %prev3.i.i, align 4
  store volatile ptr %list79, ptr @heap_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end78.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @heap_list_lock) #10
  br label %cleanup

err1:                                             ; preds = %do.end74, %do.end62
  %err_ret.0 = phi ptr [ %32, %do.end62 ], [ %call69, %do.end74 ]
  %42 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minor, align 4
  %call81 = call ptr @xa_erase(ptr noundef nonnull @dma_heap_minors, i32 noundef %43) #10
  br label %err0

err0:                                             ; preds = %err1, %do.end50
  %err_ret.1 = phi ptr [ %25, %do.end50 ], [ %err_ret.0, %err1 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err0, %list_add.exit, %for.end.cleanup_crit_edge, %if.then22, %do.end12, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then22 ], [ %err_ret.1, %err0 ], [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -22 to ptr), %do.end12 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #10
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_heap_init() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dma_heap_devt, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @.str.27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @dma_heap_init.__key) #10
  store ptr %call1, ptr @dma_heap_class, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @dma_heap_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 128) #10
  %1 = load ptr, ptr @dma_heap_class, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %devnode = getelementptr inbounds %struct.class, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dma_heap_devnode, ptr %devnode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_heap_ioctl(ptr nocapture noundef readonly %file, i32 noundef %ucmd, i32 noundef %arg) #1 align 64 {
entry:
  %stack_kdata = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack_kdata) #10
  %0 = call ptr @memset(ptr %stack_kdata, i32 255, i32 128)
  %and = and i32 %ucmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 0, i32 1) #10, !srcloc !76
  %shr7 = lshr i32 %ucmd, 16
  %and8 = and i32 %shr7, 16383
  %and10 = and i32 %ucmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  %spec.store.select = select i1 %cmp11, i32 0, i32 %and8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ucmd)
  %cmp16.inv = icmp slt i32 %ucmd, 0
  %spec.select = select i1 %cmp16.inv, i32 %and8, i32 0
  %2 = tail call i32 @llvm.umax.i32(i32 %spec.store.select, i32 %spec.select)
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp27 = icmp ugt i32 %3, 128
  br i1 %cmp27, label %if.end8.i, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end32_crit_edge

if.end8.i.if.end32_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end8.i.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %kdata.0 = phi ptr [ %call9.i, %if.end8.i.if.end32_crit_edge ], [ %stack_kdata, %if.end.if.end32_crit_edge ]
  %4 = inttoptr i32 %arg to ptr
  call void @__check_object_size(ptr noundef nonnull %kdata.0, i32 noundef %spec.store.select, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end32.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end32.if.end.i.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end32
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %spec.store.select, i32 -1226833920) #17, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !78

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kdata.0, i32 noundef %spec.store.select) #10
  %6 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !79
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !81
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kdata.0, ptr noundef %4, i32 noundef %spec.store.select) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !81
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end32.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %spec.store.select, %if.end32.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %spec.store.select, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end36, label %if.then11.i.i, !prof !78

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %spec.store.select, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kdata.0, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err

if.end36:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %spec.store.select)
  %cmp37 = icmp ugt i32 %3, %spec.store.select
  br i1 %cmp37, label %if.then38, label %if.end36.sw.bb_crit_edge

if.end36.sw.bb_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %kdata.0, i32 %spec.store.select
  %sub = sub nsw i32 %3, %spec.store.select
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %sw.bb

sw.bb:                                            ; preds = %if.then38, %if.end36.sw.bb_crit_edge
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 4
  %fd1.i = getelementptr inbounds %struct.dma_heap_allocation_data, ptr %kdata.0, i32 0, i32 1
  %13 = ptrtoint ptr %fd1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fd1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i107, label %sw.bb.if.then.i.i.i98_crit_edge

sw.bb.if.then.i.i.i98_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i98

if.end.i107:                                      ; preds = %sw.bb
  %fd_flags.i = getelementptr inbounds %struct.dma_heap_allocation_data, ptr %kdata.0, i32 0, i32 2
  %15 = ptrtoint ptr %fd_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fd_flags.i, align 4
  %and.i = and i32 %16, -524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i107.if.then.i.i.i98_crit_edge

if.end.i107.if.then.i.i.i98_crit_edge:            ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i98

if.end4.i:                                        ; preds = %if.end.i107
  %heap_flags.i = getelementptr inbounds %struct.dma_heap_allocation_data, ptr %kdata.0, i32 0, i32 3
  %17 = ptrtoint ptr %heap_flags.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %heap_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool6.not.i = icmp eq i64 %18, 0
  br i1 %tobool6.not.i, label %if.end8.i108, label %if.end4.i.if.then.i.i.i98_crit_edge

if.end4.i.if.then.i.i.i98_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i98

if.end8.i108:                                     ; preds = %if.end4.i
  %19 = ptrtoint ptr %kdata.0 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %kdata.0, align 8
  %conv.i = trunc i64 %20 to i32
  %add.i.i = add i32 %conv.i, 4095
  %and.i.i = and i32 %add.i.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i108.if.then.i.i.i98_crit_edge, label %if.end.i.i110

if.end8.i108.if.then.i.i.i98_crit_edge:           ; preds = %if.end8.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i98

if.end.i.i110:                                    ; preds = %if.end8.i108
  %ops.i.i = getelementptr inbounds %struct.dma_heap, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i.i109 = call ptr %24(ptr noundef %12, i32 noundef %and.i.i, i32 noundef %16, i32 noundef 0) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %dma_heap_buffer_alloc.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i110
  %call5.i.i = call i32 @dma_buf_fd(ptr noundef %call.i.i109, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i111 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i111, label %if.then6.i.i, label %if.end4.i.i.if.end14.i_crit_edge

if.end4.i.i.if.end14.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_buf_put(ptr noundef %call.i.i109) #10
  br label %if.then.i.i.i98

dma_heap_buffer_alloc.exit.i:                     ; preds = %if.end.i.i110
  %25 = ptrtoint ptr %call.i.i109 to i32
  %cmp.i112 = icmp slt ptr %call.i.i109, null
  br i1 %cmp.i112, label %dma_heap_buffer_alloc.exit.i.if.then.i.i.i98_crit_edge, label %dma_heap_buffer_alloc.exit.i.if.end14.i_crit_edge

dma_heap_buffer_alloc.exit.i.if.end14.i_crit_edge: ; preds = %dma_heap_buffer_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

dma_heap_buffer_alloc.exit.i.if.then.i.i.i98_crit_edge: ; preds = %dma_heap_buffer_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i98

if.end14.i:                                       ; preds = %dma_heap_buffer_alloc.exit.i.if.end14.i_crit_edge, %if.end4.i.i.if.end14.i_crit_edge
  %retval.0.i31.i = phi i32 [ %25, %dma_heap_buffer_alloc.exit.i.if.end14.i_crit_edge ], [ %call5.i.i, %if.end4.i.i.if.end14.i_crit_edge ]
  %26 = ptrtoint ptr %fd1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i31.i, ptr %fd1.i, align 8
  br label %if.then.i.i.i98

if.then.i.i.i98:                                  ; preds = %if.end14.i, %dma_heap_buffer_alloc.exit.i.if.then.i.i.i98_crit_edge, %if.then6.i.i, %if.end8.i108.if.then.i.i.i98_crit_edge, %if.end4.i.if.then.i.i.i98_crit_edge, %if.end.i107.if.then.i.i.i98_crit_edge, %sw.bb.if.then.i.i.i98_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ -22, %sw.bb.if.then.i.i.i98_crit_edge ], [ -22, %if.end.i107.if.then.i.i.i98_crit_edge ], [ -22, %if.end4.i.if.then.i.i.i98_crit_edge ], [ %25, %dma_heap_buffer_alloc.exit.i.if.then.i.i.i98_crit_edge ], [ %call5.i.i, %if.then6.i.i ], [ -22, %if.end8.i108.if.then.i.i.i98_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %kdata.0, i32 noundef %spec.select, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #10
  %call.i.i99 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i99, label %if.then.i.i.i98.copy_to_user.exit_crit_edge, label %if.end.i.i103

if.then.i.i.i98.copy_to_user.exit_crit_edge:      ; preds = %if.then.i.i.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i103:                                    ; preds = %if.then.i.i.i98
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %spec.select, i32 -1226833920) #17, !srcloc !82
  %asmresult.i.i101 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i101)
  %cmp.i6.i102 = icmp eq i32 %asmresult.i.i101, 0
  br i1 %cmp.i6.i102, label %if.then2.i.i, label %if.end.i.i103.copy_to_user.exit_crit_edge

if.end.i.i103.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kdata.0, i32 noundef %spec.select) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %kdata.0, i32 noundef %spec.select) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i103.copy_to_user.exit_crit_edge, %if.then.i.i.i98.copy_to_user.exit_crit_edge
  %n.addr.0.i105 = phi i32 [ %spec.select, %if.then.i.i.i98.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %spec.select, %if.end.i.i103.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i105)
  %cmp42.not = icmp eq i32 %n.addr.0.i105, 0
  %spec.select87 = select i1 %cmp42.not, i32 %retval.0.i, i32 -14
  br label %err

err:                                              ; preds = %copy_to_user.exit, %if.then11.i.i
  %ret.0 = phi i32 [ %spec.select87, %copy_to_user.exit ], [ -14, %if.then11.i.i ]
  %cmp46.not = icmp eq ptr %kdata.0, %stack_kdata
  br i1 %cmp46.not, label %err.cleanup_crit_edge, label %if.then47

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %kdata.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %err.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %ret.0, %if.then47 ], [ %ret.0, %err.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack_kdata) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_heap_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @xa_load(ptr noundef nonnull @dma_heap_minors, i32 noundef %and.i) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and.i10 = and i32 %3, 1048575
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %and.i10) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %private_data, align 4
  %call4 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dma_heap_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i) #10
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !45, !47, !49, !50, !52, !54, !56, !57, !58, !59, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/dma-heap.c", i32 226, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/dma-heap.c", i32 227, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dma_heap_add._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dma_heap_add._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/dma-heap.c", i32 232, i32 3}
!10 = !{ptr @dma_heap_add._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dma_heap_add._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/dma-heap.c", i32 241, i32 4}
!14 = !{ptr @dma_heap_add._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dma_heap_add._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/dma-heap.c", i32 260, i32 3}
!18 = !{ptr @dma_heap_add._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dma_heap_add._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/dma-heap.c", i32 271, i32 3}
!22 = !{ptr @dma_heap_add._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dma_heap_add._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/dma-heap.c", i32 282, i32 3}
!26 = !{ptr @dma_heap_add._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dma_heap_add._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_dma_heap__265_324_dma_heap_init4, !29, !"__initcall__kmod_dma_heap__265_324_dma_heap_init4", i1 false, i1 false}
!29 = !{!"../drivers/dma-buf/dma-heap.c", i32 324, i32 1}
!30 = !{ptr @dma_heap_devt, !31, !"dma_heap_devt", i1 false, i1 false}
!31 = !{!"../drivers/dma-buf/dma-heap.c", i32 48, i32 14}
!32 = !{ptr @dma_heap_class, !33, !"dma_heap_class", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/dma-heap.c", i32 49, i32 22}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/dma-heap.c", i32 47, i32 8}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @heap_list_lock, !35, !"heap_list_lock", i1 false, i1 false}
!38 = !{ptr @heap_list, !39, !"heap_list", i1 false, i1 false}
!39 = !{!"../drivers/dma-buf/dma-heap.c", i32 46, i32 8}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma-buf/dma-heap.c", i32 50, i32 8}
!42 = !{ptr @dma_heap_minors, !41, !"dma_heap_minors", i1 false, i1 false}
!43 = !{ptr @dma_heap_fops, !44, !"dma_heap_fops", i1 false, i1 false}
!44 = !{!"../drivers/dma-buf/dma-heap.c", i32 186, i32 37}
!45 = distinct !{null, !46, !"dma_heap_ioctl_cmds", i1 false, i1 false}
!46 = !{!"../drivers/dma-buf/dma-heap.c", i32 122, i32 21}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma-buf/dma-heap.c", i32 85, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dma_heap_open._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @dma_heap_open._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma-buf/dma-heap.c", i32 311, i32 64}
!61 = !{ptr @dma_heap_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/dma-buf/dma-heap.c", i32 315, i32 19}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma-buf/dma-heap.c", i32 304, i32 31}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 589411, i64 589428}
!77 = !{i64 2152661185, i64 2152661210}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 5156740}
!80 = !{i64 5156937}
!81 = !{i64 2152642170}
!82 = !{i64 2152661866, i64 2152661891}
