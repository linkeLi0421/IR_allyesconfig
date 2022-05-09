; ModuleID = '/llk/IR_all_yes/drivers/char/xillybus/xillybus_class.c_pt.bc'
source_filename = "../drivers/char/xillybus/xillybus_class.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xillybus_init_chrdev\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_init_chrdev\09\09\09\09"
module asm "\09.long\09__crc_xillybus_init_chrdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_init_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_init_chrdev\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_init_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xillybus_cleanup_chrdev\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_cleanup_chrdev\09\09\09\09"
module asm "\09.long\09__crc_xillybus_cleanup_chrdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_cleanup_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_cleanup_chrdev\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_cleanup_chrdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xillybus_find_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_find_inode\09\09\09\09"
module asm "\09.long\09__crc_xillybus_find_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_find_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_find_inode\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_find_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xilly_unit = type { %struct.list_head, ptr, ptr, [16 x i8], i32, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__UNIQUE_ID_description223 = internal constant [53 x i8] c"xillybus_class.description=Driver for Xillybus class\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [50 x i8] c"xillybus_class.author=Eli Billauer, Xillybus Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias225 = internal constant [36 x i8] c"xillybus_class.alias=xillybus_class\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [57 x i8] c"xillybus_class.file=drivers/char/xillybus/xillybus_class\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [30 x i8] c"xillybus_class.license=GPL v2\00", section ".modinfo", align 1
@unit_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @unit_mutex, i64 52), ptr getelementptr (i8, ptr @unit_mutex, i64 52) }, ptr @unit_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_%02d\00", [24 x i8] zeroinitializer }, align 32
@unit_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @unit_list, ptr @unit_list }, [24 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to obtain major/minors\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xillybus_init_chrdev\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/char/xillybus/xillybus_class.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr = internal global ptr @xillybus_init_chrdev._entry, section ".printk_index", align 4
@xillybus_init_chrdev._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 103, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to add cdev.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr.10 = internal global ptr @xillybus_init_chrdev._entry.7, section ".printk_index", align 4
@xillybus_init_chrdev._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 113, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"IDT's list of names is too short. This is exceptionally weird, because its CRC is OK\0A\00", [42 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr.13 = internal global ptr @xillybus_init_chrdev._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@xillybus_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xillybus_init_chrdev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create %s device. Aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr.17 = internal global ptr @xillybus_init_chrdev._entry.15, section ".printk_index", align 4
@xillybus_init_chrdev._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 140, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"IDT's list of names is too long. This is exceptionally weird, because its CRC is OK\0A\00", [43 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr.20 = internal global ptr @xillybus_init_chrdev._entry.18, section ".printk_index", align 4
@xillybus_init_chrdev._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 147, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Created %d device files.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xillybus_init_chrdev._entry_ptr.24 = internal global ptr @xillybus_init_chrdev._entry.21, section ".printk_index", align 4
@__kstrtab_xillybus_init_chrdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_init_chrdev = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_init_chrdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_init_chrdev to i32), ptr @__kstrtab_xillybus_init_chrdev, ptr @__kstrtabns_xillybus_init_chrdev }, section "___ksymtab+xillybus_init_chrdev", align 4
@xillybus_cleanup_chrdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 189, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Weird bug: Failed to find unit\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xillybus_cleanup_chrdev\00", [40 x i8] zeroinitializer }, align 32
@xillybus_cleanup_chrdev._entry_ptr = internal global ptr @xillybus_cleanup_chrdev._entry, section ".printk_index", align 4
@xillybus_cleanup_chrdev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 205, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Removed %d device files.\0A\00", [38 x i8] zeroinitializer }, align 32
@xillybus_cleanup_chrdev._entry_ptr.29 = internal global ptr @xillybus_cleanup_chrdev._entry.27, section ".printk_index", align 4
@__kstrtab_xillybus_cleanup_chrdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_cleanup_chrdev = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_cleanup_chrdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_cleanup_chrdev to i32), ptr @__kstrtab_xillybus_cleanup_chrdev, ptr @__kstrtabns_xillybus_cleanup_chrdev }, section "___ksymtab+xillybus_cleanup_chrdev", align 4
@__kstrtab_xillybus_find_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_find_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_find_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_find_inode to i32), ptr @__kstrtab_xillybus_find_inode, ptr @__kstrtabns_xillybus_find_inode }, section "___ksymtab+xillybus_find_inode", align 4
@__initcall__kmod_xillybus_class__228_261_xillybus_class_init6 = internal global ptr @xillybus_class_init, section ".initcall6.init", align 4
@__exitcall_xillybus_class_exit = internal global ptr @xillybus_class_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unit_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unit_mutex\00", [21 x i8] zeroinitializer }, align 32
@xillybus_class_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xillybus\00", [23 x i8] zeroinitializer }, align 32
@xillybus_class_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Failed to register xillybus class\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xillybus_class_init\00", [44 x i8] zeroinitializer }, align 32
@xillybus_class_init._entry_ptr = internal global ptr @xillybus_class_init._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"unit_mutex\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 66, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 69, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"unit_list\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 25, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 83, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 103, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 113, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 118, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"xillybus_class\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 26, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 132, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 140, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 147, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 189, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 204, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 24, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 246, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [42 x i8] c"../drivers/char/xillybus/xillybus_class.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 249, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias225, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_xillybus_class_exit, ptr @__initcall__kmod_xillybus_class__228_261_xillybus_class_init6, ptr @__ksymtab_xillybus_cleanup_chrdev, ptr @__ksymtab_xillybus_find_inode, ptr @__ksymtab_xillybus_init_chrdev, ptr @xillybus_class_exit, ptr @xillybus_class_init._entry, ptr @xillybus_class_init._entry_ptr, ptr @xillybus_cleanup_chrdev._entry, ptr @xillybus_cleanup_chrdev._entry.27, ptr @xillybus_cleanup_chrdev._entry_ptr, ptr @xillybus_cleanup_chrdev._entry_ptr.29, ptr @xillybus_init_chrdev._entry, ptr @xillybus_init_chrdev._entry.11, ptr @xillybus_init_chrdev._entry.15, ptr @xillybus_init_chrdev._entry.18, ptr @xillybus_init_chrdev._entry.21, ptr @xillybus_init_chrdev._entry.7, ptr @xillybus_init_chrdev._entry_ptr, ptr @xillybus_init_chrdev._entry_ptr.10, ptr @xillybus_init_chrdev._entry_ptr.13, ptr @xillybus_init_chrdev._entry_ptr.17, ptr @xillybus_init_chrdev._entry_ptr.20, ptr @xillybus_init_chrdev._entry_ptr.24, ptr @unit_mutex, ptr @.str, ptr @.str.1, ptr @unit_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @xillybus_class, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @xillybus_class_init.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unit_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unit_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_chrdev._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_cleanup_chrdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_cleanup_chrdev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_class_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_class_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xillybus_init_chrdev(ptr noundef %dev, ptr noundef %fops, ptr noundef %owner, ptr noundef %private_data, ptr noundef %idt, i32 noundef %len, i32 noundef %num_nodes, ptr noundef %prefix, i1 noundef zeroext %enumerate) #0 align 64 {
entry:
  %mdev = alloca i32, align 4
  %devname = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdev) #8
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mdev, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %devname) #8
  %1 = call ptr @memset(ptr %devname, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @unit_mutex, i32 noundef 0) #8
  %name6 = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 3
  br i1 %enumerate, label %if.end.for.body_crit_edge, label %if.then2

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef %prefix)
  br label %for.end24

for.body:                                         ; preds = %for.inc23, %if.end.for.body_crit_edge
  %i.0183 = phi i32 [ %inc, %for.inc23 ], [ 0, %if.end.for.body_crit_edge ]
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %prefix, i32 noundef %i.0183)
  br label %for.cond9

for.cond9:                                        ; preds = %for.body10.for.cond9_crit_edge, %for.body
  %u.0.in = phi ptr [ @unit_list, %for.body ], [ %u.0, %for.body10.for.cond9_crit_edge ]
  %3 = ptrtoint ptr %u.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %u.0 = load ptr, ptr %u.0.in, align 4
  %cmp.not = icmp eq ptr %u.0, @unit_list
  br i1 %cmp.not, label %for.cond9.for.end24_crit_edge, label %for.body10

for.cond9.for.end24_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.body10:                                       ; preds = %for.cond9
  %name13 = getelementptr inbounds %struct.xilly_unit, ptr %u.0, i32 0, i32 3
  %call15 = tail call i32 @strcmp(ptr noundef %name6, ptr noundef %name13) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.inc23, label %for.body10.for.cond9_crit_edge

for.body10.for.cond9_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9

for.inc23:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %i.0183, 1
  br label %for.body

for.end24:                                        ; preds = %for.cond9.for.end24_crit_edge, %if.then2
  %name25 = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 3
  %call27 = call i32 @alloc_chrdev_region(ptr noundef nonnull %mdev, i32 noundef 0, i32 noundef %num_nodes, ptr noundef %name25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end

do.end:                                           ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %fail_obtain

if.end30:                                         ; preds = %for.end24
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdev, align 4
  %shr = lshr i32 %5, 20
  %major = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %major, align 8
  %and = and i32 %5, 1048575
  %lowest_minor = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %lowest_minor, align 4
  %num_nodes31 = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %num_nodes31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num_nodes, ptr %num_nodes31, align 8
  %private_data32 = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %private_data32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %private_data, ptr %private_data32, align 8
  %call33 = call ptr @cdev_alloc() #8
  %cdev = getelementptr inbounds %struct.xilly_unit, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %cdev, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end30.unregister_chrdev_crit_edge, label %if.end37

if.end30.unregister_chrdev_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %unregister_chrdev

if.end37:                                         ; preds = %if.end30
  %ops = getelementptr inbounds %struct.cdev, ptr %call33, i32 0, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fops, ptr %ops, align 4
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdev, align 4
  %owner40 = getelementptr inbounds %struct.cdev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %owner40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %owner, ptr %owner40, align 4
  %15 = load ptr, ptr %cdev, align 4
  %16 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %major, align 8
  %shl = shl i32 %17, 20
  %18 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lowest_minor, align 4
  %or = or i32 %shl, %19
  %20 = ptrtoint ptr %num_nodes31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_nodes31, align 8
  %call45 = call i32 @cdev_add(ptr noundef %15, i32 noundef %or, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond53.preheader, label %do.end50

for.cond53.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_nodes)
  %cmp54184 = icmp sgt i32 %num_nodes, 0
  br i1 %cmp54184, label %for.cond53.preheader.for.body55_crit_edge, label %for.cond53.preheader.for.end85_crit_edge

for.cond53.preheader.for.end85_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.cond53.preheader.for.body55_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body55

do.end50:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  %22 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdev, align 4
  call void @kobject_put(ptr noundef %23) #8
  br label %unregister_chrdev

for.body55:                                       ; preds = %for.inc83.for.body55_crit_edge, %for.cond53.preheader.for.body55_crit_edge
  %idt.addr.0187 = phi ptr [ %add.ptr68, %for.inc83.for.body55_crit_edge ], [ %idt, %for.cond53.preheader.for.body55_crit_edge ]
  %len.addr.0186 = phi i32 [ %sub, %for.inc83.for.body55_crit_edge ], [ %len, %for.cond53.preheader.for.body55_crit_edge ]
  %i.1185 = phi i32 [ %inc84, %for.inc83.for.body55_crit_edge ], [ 0, %for.cond53.preheader.for.body55_crit_edge ]
  %call56 = call i32 @strnlen(ptr noundef %idt.addr.0187, i32 noundef %len.addr.0186) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call56, i32 %len.addr.0186)
  %cmp57 = icmp eq i32 %call56, %len.addr.0186
  br i1 %cmp57, label %do.end61, label %if.end62

do.end61:                                         ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %unroll_device_create

if.end62:                                         ; preds = %for.body55
  %call66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devname, i32 noundef 48, ptr noundef nonnull @.str.14, ptr noundef %name25, ptr noundef %idt.addr.0187)
  %24 = load ptr, ptr @xillybus_class, align 4
  %25 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %major, align 8
  %shl70 = shl i32 %26, 20
  %27 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lowest_minor, align 4
  %add72 = add i32 %28, %i.1185
  %or73 = or i32 %add72, %shl70
  %call75 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %24, ptr noundef null, i32 noundef %or73, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %devname) #8
  %cmp.i = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end80, label %for.inc83

do.end80:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %devname) #13
  br label %unroll_device_create

for.inc83:                                        ; preds = %if.end62
  %add = add i32 %call56, 1
  %add.ptr68 = getelementptr i8, ptr %idt.addr.0187, i32 %add
  %sub = sub i32 %len.addr.0186, %add
  %inc84 = add nuw nsw i32 %i.1185, 1
  %exitcond.not = icmp eq i32 %inc84, %num_nodes
  br i1 %exitcond.not, label %for.inc83.for.end85_crit_edge, label %for.inc83.for.body55_crit_edge

for.inc83.for.body55_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.end85:                                        ; preds = %for.inc83.for.end85_crit_edge, %for.cond53.preheader.for.end85_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond53.preheader.for.end85_crit_edge ], [ %num_nodes, %for.inc83.for.end85_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %for.cond53.preheader.for.end85_crit_edge ], [ %sub, %for.inc83.for.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool86.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %unroll_device_create

if.end91:                                         ; preds = %for.end85
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @unit_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %29, ptr noundef nonnull @unit_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end91.list_add_tail.exit_crit_edge

if.end91.list_add_tail.exit_crit_edge:            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @unit_list, i32 0, i32 1), align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @unit_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end91.list_add_tail.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %num_nodes) #13
  call void @mutex_unlock(ptr noundef nonnull @unit_mutex) #8
  br label %cleanup

unroll_device_create:                             ; preds = %do.end90, %do.end80, %do.end61
  %i.1182 = phi i32 [ %i.1.lcssa, %do.end90 ], [ %i.1185, %do.end80 ], [ %i.1185, %do.end61 ]
  %i.2189 = add i32 %i.1182, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2189)
  %cmp97190 = icmp sgt i32 %i.2189, -1
  br i1 %cmp97190, label %unroll_device_create.for.body98_crit_edge, label %unroll_device_create.for.end106_crit_edge

unroll_device_create.for.end106_crit_edge:        ; preds = %unroll_device_create
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

unroll_device_create.for.body98_crit_edge:        ; preds = %unroll_device_create
  br label %for.body98

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %unroll_device_create.for.body98_crit_edge
  %i.2191 = phi i32 [ %i.2, %for.body98.for.body98_crit_edge ], [ %i.2189, %unroll_device_create.for.body98_crit_edge ]
  %33 = load ptr, ptr @xillybus_class, align 4
  %34 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %major, align 8
  %shl100 = shl i32 %35, 20
  %36 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lowest_minor, align 4
  %add102 = add i32 %37, %i.2191
  %or103 = or i32 %add102, %shl100
  call void @device_destroy(ptr noundef %33, i32 noundef %or103) #8
  %i.2 = add nsw i32 %i.2191, -1
  %cmp97.not = icmp eq i32 %i.2191, 0
  br i1 %cmp97.not, label %for.body98.for.end106_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.body98.for.end106_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end106

for.end106:                                       ; preds = %for.body98.for.end106_crit_edge, %unroll_device_create.for.end106_crit_edge
  %38 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdev, align 4
  call void @cdev_del(ptr noundef %39) #8
  br label %unregister_chrdev

unregister_chrdev:                                ; preds = %for.end106, %do.end50, %if.end30.unregister_chrdev_crit_edge
  %rc.1 = phi i32 [ %call45, %do.end50 ], [ -19, %for.end106 ], [ -12, %if.end30.unregister_chrdev_crit_edge ]
  %40 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %major, align 8
  %shl109 = shl i32 %41, 20
  %42 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lowest_minor, align 4
  %or111 = or i32 %shl109, %43
  %44 = ptrtoint ptr %num_nodes31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_nodes31, align 8
  call void @unregister_chrdev_region(i32 noundef %or111, i32 noundef %45) #8
  br label %fail_obtain

fail_obtain:                                      ; preds = %unregister_chrdev, %do.end
  %rc.2 = phi i32 [ %call27, %do.end ], [ %rc.1, %unregister_chrdev ]
  call void @mutex_unlock(ptr noundef nonnull @unit_mutex) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_obtain, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %fail_obtain ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %devname) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdev) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xillybus_cleanup_chrdev(ptr noundef readnone %private_data, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @unit_mutex, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %unit.0.in = phi ptr [ @unit_list, %entry ], [ %unit.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %unit.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %unit.0 = load ptr, ptr %unit.0.in, align 4
  %cmp.not = icmp eq ptr %unit.0, @unit_list
  br i1 %cmp.not, label %do.end.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %private_data1 = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 1
  %1 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data1, align 4
  %cmp2 = icmp eq ptr %2, %private_data
  br i1 %cmp2, label %if.end8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end.critedge:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %lowest_minor = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 5
  %3 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lowest_minor, align 4
  %num_nodes = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 6
  %5 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_nodes, align 4
  %add45 = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add45)
  %cmp1146 = icmp slt i32 %4, %add45
  br i1 %cmp1146, label %for.body12.lr.ph, label %if.end8.for.end14_crit_edge

if.end8.for.end14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.body12.lr.ph:                                 ; preds = %if.end8
  %major = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 4
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %minor.047 = phi i32 [ %4, %for.body12.lr.ph ], [ %inc, %for.body12.for.body12_crit_edge ]
  %7 = load ptr, ptr @xillybus_class, align 4
  %8 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %major, align 4
  %shl = shl i32 %9, 20
  %or = or i32 %shl, %minor.047
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or) #8
  %inc = add nsw i32 %minor.047, 1
  %10 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lowest_minor, align 4
  %12 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_nodes, align 4
  %add = add i32 %13, %11
  %cmp11 = icmp slt i32 %inc, %add
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.end14_crit_edge

for.body12.for.end14_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end14

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.end14:                                        ; preds = %for.body12.for.end14_crit_edge, %if.end8.for.end14_crit_edge
  %cdev = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 2
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev, align 4
  tail call void @cdev_del(ptr noundef %15) #8
  %major15 = getelementptr inbounds %struct.xilly_unit, ptr %unit.0, i32 0, i32 4
  %16 = ptrtoint ptr %major15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %major15, align 4
  %shl16 = shl i32 %17, 20
  %18 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lowest_minor, align 4
  %or18 = or i32 %shl16, %19
  %20 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_nodes, align 4
  tail call void @unregister_chrdev_region(i32 noundef %or18, i32 noundef %21) #8
  %22 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_nodes, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %23) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %unit.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end14.list_del.exit_crit_edge

for.end14.list_del.exit_crit_edge:                ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %unit.0, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %unit.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unit.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end14.list_del.exit_crit_edge
  %30 = ptrtoint ptr %unit.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %unit.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %unit.0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %unit.0) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end.critedge
  tail call void @mutex_unlock(ptr noundef nonnull @unit_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xillybus_find_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %private_data, ptr nocapture noundef writeonly %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %shr.i = lshr i32 %1, 20
  tail call void @mutex_lock_nested(ptr noundef nonnull @unit_mutex, i32 noundef 0) #8
  %unit.031 = load ptr, ptr @unit_list, align 4
  %cmp.not32 = icmp eq ptr %unit.031, @unit_list
  br i1 %cmp.not32, label %entry.if.then12.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then12.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %unit.033 = phi ptr [ %unit.0, %for.inc.for.body_crit_edge ], [ %unit.031, %entry.for.body_crit_edge ]
  %major2 = getelementptr inbounds %struct.xilly_unit, ptr %unit.033, i32 0, i32 4
  %2 = ptrtoint ptr %major2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shr.i)
  %cmp3 = icmp eq i32 %3, %shr.i
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %lowest_minor = getelementptr inbounds %struct.xilly_unit, ptr %unit.033, i32 0, i32 5
  %4 = ptrtoint ptr %lowest_minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lowest_minor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp4.not = icmp slt i32 %and.i, %5
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %num_nodes = getelementptr inbounds %struct.xilly_unit, ptr %unit.033, i32 0, i32 6
  %6 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_nodes, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %add)
  %cmp7 = icmp slt i32 %and.i, %add
  br i1 %cmp7, label %if.end13.critedge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %unit.033 to i32
  call void @__asan_load4_noabort(i32 %8)
  %unit.0 = load ptr, ptr %unit.033, align 4
  %cmp.not = icmp eq ptr %unit.0, @unit_list
  br i1 %cmp.not, label %for.inc.if.then12.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then12.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.critedge

if.then12.critedge:                               ; preds = %for.inc.if.then12.critedge_crit_edge, %entry.if.then12.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @unit_mutex) #8
  br label %cleanup

if.end13.critedge:                                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %lowest_minor.le = getelementptr inbounds %struct.xilly_unit, ptr %unit.033, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef nonnull @unit_mutex) #8
  %private_data14 = getelementptr inbounds %struct.xilly_unit, ptr %unit.033, i32 0, i32 1
  %9 = ptrtoint ptr %private_data14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data14, align 4
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %private_data, align 4
  %12 = ptrtoint ptr %lowest_minor.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lowest_minor.le, align 4
  %sub = sub i32 %and.i, %13
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.critedge, %if.then12.critedge
  %retval.0 = phi i32 [ 0, %if.end13.critedge ], [ -19, %if.then12.critedge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xillybus_class_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @xillybus_class, align 4
  tail call void @class_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_class_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @xillybus_class_init.__key) #8
  store ptr %call, ptr @xillybus_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  %0 = load ptr, ptr @xillybus_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_description223, !1, !"__UNIQUE_ID_description223", i1 false, i1 false}
!1 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author224, !3, !"__UNIQUE_ID_author224", i1 false, i1 false}
!3 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias225, !5, !"__UNIQUE_ID_alias225", i1 false, i1 false}
!5 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_file226, !7, !"__UNIQUE_ID_file226", i1 false, i1 false}
!7 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 22, i32 1}
!8 = !{ptr @__UNIQUE_ID_license227, !7, !"__UNIQUE_ID_license227", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 66, i32 37}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 69, i32 37}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 83, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xillybus_init_chrdev._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @xillybus_init_chrdev._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 103, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xillybus_init_chrdev._entry.7, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @xillybus_init_chrdev._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 113, i32 4}
!28 = !{ptr @xillybus_init_chrdev._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xillybus_init_chrdev._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 118, i32 38}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 132, i32 4}
!34 = !{ptr @xillybus_init_chrdev._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xillybus_init_chrdev._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 140, i32 3}
!38 = !{ptr @xillybus_init_chrdev._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xillybus_init_chrdev._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 147, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xillybus_init_chrdev._entry.21, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @xillybus_init_chrdev._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_xillybus_init_chrdev, !46, !"__ksymtab_xillybus_init_chrdev", i1 false, i1 false}
!46 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 171, i32 1}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 189, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xillybus_cleanup_chrdev._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @xillybus_cleanup_chrdev._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 204, i32 2}
!54 = !{ptr @xillybus_cleanup_chrdev._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xillybus_cleanup_chrdev._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_xillybus_cleanup_chrdev, !57, !"__ksymtab_xillybus_cleanup_chrdev", i1 false, i1 false}
!57 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 212, i32 1}
!58 = !{ptr @__ksymtab_xillybus_find_inode, !59, !"__ksymtab_xillybus_find_inode", i1 false, i1 false}
!59 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 242, i32 1}
!60 = !{ptr @__initcall__kmod_xillybus_class__228_261_xillybus_class_init6, !61, !"__initcall__kmod_xillybus_class__228_261_xillybus_class_init6", i1 false, i1 false}
!61 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 261, i32 1}
!62 = !{ptr @__exitcall_xillybus_class_exit, !63, !"__exitcall_xillybus_class_exit", i1 false, i1 false}
!63 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 262, i32 1}
!64 = !{ptr @xillybus_class, !65, !"xillybus_class", i1 false, i1 false}
!65 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 26, i32 22}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 24, i32 8}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @unit_mutex, !67, !"unit_mutex", i1 false, i1 false}
!70 = !{ptr @unit_list, !71, !"unit_list", i1 false, i1 false}
!71 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 25, i32 8}
!72 = !{ptr @xillybus_class_init.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 246, i32 19}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/xillybus/xillybus_class.c", i32 249, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xillybus_class_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @xillybus_class_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
