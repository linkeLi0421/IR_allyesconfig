; ModuleID = '/llk/IR_all_yes/drivers/dax/super.c_pt.bc'
source_filename = "../drivers/dax/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dax_read_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_read_lock\09\09\09\09"
module asm "\09.long\09__crc_dax_read_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dax_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_read_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_read_unlock\09\09\09\09"
module asm "\09.long\09__crc_dax_read_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_dax_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_direct_access\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_direct_access\09\09\09\09"
module asm "\09.long\09__crc_dax_direct_access\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_direct_access:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_direct_access\22\09\09\09\09\09"
module asm "__kstrtabns_dax_direct_access:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_zero_page_range\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_zero_page_range\09\09\09\09"
module asm "\09.long\09__crc_dax_zero_page_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_zero_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_zero_page_range\22\09\09\09\09\09"
module asm "__kstrtabns_dax_zero_page_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_flush\09\09\09\09"
module asm "\09.long\09__crc_dax_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_flush\22\09\09\09\09\09"
module asm "__kstrtabns_dax_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_write_cache\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_write_cache\09\09\09\09"
module asm "\09.long\09__crc_dax_write_cache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_write_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_write_cache\22\09\09\09\09\09"
module asm "__kstrtabns_dax_write_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_write_cache_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_write_cache_enabled\09\09\09\09"
module asm "\09.long\09__crc_dax_write_cache_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_write_cache_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_write_cache_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_dax_write_cache_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_synchronous\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_synchronous\09\09\09\09"
module asm "\09.long\09__crc_dax_synchronous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_synchronous:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_synchronous\22\09\09\09\09\09"
module asm "__kstrtabns_dax_synchronous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+set_dax_synchronous\22, \22a\22\09"
module asm "\09.weak\09__crc_set_dax_synchronous\09\09\09\09"
module asm "\09.long\09__crc_set_dax_synchronous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_dax_synchronous:\09\09\09\09\09"
module asm "\09.asciz \09\22set_dax_synchronous\22\09\09\09\09\09"
module asm "__kstrtabns_set_dax_synchronous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+set_dax_nocache\22, \22a\22\09"
module asm "\09.weak\09__crc_set_dax_nocache\09\09\09\09"
module asm "\09.long\09__crc_set_dax_nocache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_dax_nocache:\09\09\09\09\09"
module asm "\09.asciz \09\22set_dax_nocache\22\09\09\09\09\09"
module asm "__kstrtabns_set_dax_nocache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+set_dax_nomc\22, \22a\22\09"
module asm "\09.weak\09__crc_set_dax_nomc\09\09\09\09"
module asm "\09.long\09__crc_set_dax_nomc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_dax_nomc:\09\09\09\09\09"
module asm "\09.asciz \09\22set_dax_nomc\22\09\09\09\09\09"
module asm "__kstrtabns_set_dax_nomc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_alive\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_alive\09\09\09\09"
module asm "\09.long\09__crc_dax_alive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_alive:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_alive\22\09\09\09\09\09"
module asm "__kstrtabns_dax_alive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kill_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_dax\09\09\09\09"
module asm "\09.long\09__crc_kill_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_dax\22\09\09\09\09\09"
module asm "__kstrtabns_kill_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+run_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_run_dax\09\09\09\09"
module asm "\09.long\09__crc_run_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_run_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22run_dax\22\09\09\09\09\09"
module asm "__kstrtabns_run_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_dax\09\09\09\09"
module asm "\09.long\09__crc_alloc_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_dax\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_put_dax\09\09\09\09"
module asm "\09.long\09__crc_put_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22put_dax\22\09\09\09\09\09"
module asm "__kstrtabns_put_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inode_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_dax\09\09\09\09"
module asm "\09.long\09__crc_inode_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_dax\22\09\09\09\09\09"
module asm "__kstrtabns_inode_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_inode\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_inode\09\09\09\09"
module asm "\09.long\09__crc_dax_inode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_inode\22\09\09\09\09\09"
module asm "__kstrtabns_dax_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_get_private\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_get_private\09\09\09\09"
module asm "\09.long\09__crc_dax_get_private\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_get_private:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_get_private\22\09\09\09\09\09"
module asm "__kstrtabns_dax_get_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dax_device = type { %struct.inode, %struct.cdev, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dax_operations = type { ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@dax_srcu = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @dax_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @dax_srcu, i64 700), ptr getelementptr (i8, ptr @dax_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @dax_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.3, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@__kstrtab_dax_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_read_lock to i32), ptr @__kstrtab_dax_read_lock, ptr @__kstrtabns_dax_read_lock }, section "___ksymtab_gpl+dax_read_lock", align 4
@__kstrtab_dax_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_read_unlock to i32), ptr @__kstrtab_dax_read_unlock, ptr @__kstrtabns_dax_read_unlock }, section "___ksymtab_gpl+dax_read_unlock", align 4
@__kstrtab_dax_direct_access = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_direct_access = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_direct_access = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_direct_access to i32), ptr @__kstrtab_dax_direct_access, ptr @__kstrtabns_dax_direct_access }, section "___ksymtab_gpl+dax_direct_access", align 4
@__kstrtab_dax_zero_page_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_zero_page_range = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_zero_page_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_zero_page_range to i32), ptr @__kstrtab_dax_zero_page_range, ptr @__kstrtabns_dax_zero_page_range }, section "___ksymtab_gpl+dax_zero_page_range", align 4
@__kstrtab_dax_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_flush to i32), ptr @__kstrtab_dax_flush, ptr @__kstrtabns_dax_flush }, section "___ksymtab_gpl+dax_flush", align 4
@__kstrtab_dax_write_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_write_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_write_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_write_cache to i32), ptr @__kstrtab_dax_write_cache, ptr @__kstrtabns_dax_write_cache }, section "___ksymtab_gpl+dax_write_cache", align 4
@__kstrtab_dax_write_cache_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_write_cache_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_write_cache_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_write_cache_enabled to i32), ptr @__kstrtab_dax_write_cache_enabled, ptr @__kstrtabns_dax_write_cache_enabled }, section "___ksymtab_gpl+dax_write_cache_enabled", align 4
@__kstrtab_dax_synchronous = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_synchronous = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_synchronous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_synchronous to i32), ptr @__kstrtab_dax_synchronous, ptr @__kstrtabns_dax_synchronous }, section "___ksymtab_gpl+dax_synchronous", align 4
@__kstrtab_set_dax_synchronous = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_dax_synchronous = external dso_local constant [0 x i8], align 1
@__ksymtab_set_dax_synchronous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_dax_synchronous to i32), ptr @__kstrtab_set_dax_synchronous, ptr @__kstrtabns_set_dax_synchronous }, section "___ksymtab_gpl+set_dax_synchronous", align 4
@__kstrtab_set_dax_nocache = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_dax_nocache = external dso_local constant [0 x i8], align 1
@__ksymtab_set_dax_nocache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_dax_nocache to i32), ptr @__kstrtab_set_dax_nocache, ptr @__kstrtabns_set_dax_nocache }, section "___ksymtab_gpl+set_dax_nocache", align 4
@__kstrtab_set_dax_nomc = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_dax_nomc = external dso_local constant [0 x i8], align 1
@__ksymtab_set_dax_nomc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_dax_nomc to i32), ptr @__kstrtab_set_dax_nomc, ptr @__kstrtabns_set_dax_nomc }, section "___ksymtab_gpl+set_dax_nomc", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/dax/super.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_dax_alive = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_alive = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_alive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_alive to i32), ptr @__kstrtab_dax_alive, ptr @__kstrtabns_dax_alive }, section "___ksymtab_gpl+dax_alive", align 4
@__kstrtab_kill_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_dax to i32), ptr @__kstrtab_kill_dax, ptr @__kstrtabns_kill_dax }, section "___ksymtab_gpl+kill_dax", align 4
@__kstrtab_run_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_run_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_run_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @run_dax to i32), ptr @__kstrtab_run_dax, ptr @__kstrtabns_run_dax }, section "___ksymtab_gpl+run_dax", align 4
@alloc_dax.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dax_minor_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@dax_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_alloc_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_dax to i32), ptr @__kstrtab_alloc_dax, ptr @__kstrtabns_alloc_dax }, section "___ksymtab_gpl+alloc_dax", align 4
@__kstrtab_put_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_put_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_dax to i32), ptr @__kstrtab_put_dax, ptr @__kstrtabns_put_dax }, section "___ksymtab_gpl+put_dax", align 4
@__kstrtab_inode_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_dax to i32), ptr @__kstrtab_inode_dax, ptr @__kstrtabns_inode_dax }, section "___ksymtab_gpl+inode_dax", align 4
@__kstrtab_dax_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_inode to i32), ptr @__kstrtab_dax_inode, ptr @__kstrtabns_dax_inode }, section "___ksymtab_gpl+dax_inode", align 4
@__kstrtab_dax_get_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_get_private = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_get_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_get_private to i32), ptr @__kstrtab_dax_get_private, ptr @__kstrtabns_dax_get_private }, section "___ksymtab_gpl+dax_get_private", align 4
@__UNIQUE_ID_author246 = internal constant [29 x i8] c"dax.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [25 x i8] c"dax.file=drivers/dax/dax\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [19 x i8] c"dax.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_dax__249_516_dax_core_init4 = internal global ptr @dax_core_init, section ".initcall4.init", align 4
@__exitcall_dax_core_exit = internal global ptr @dax_core_exit, section ".exitcall.exit", align 4
@__pcpu_unique_dax_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dax_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dax_srcu.lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(dax_srcu.work).work\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dax/super.c:34\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dax_srcu\00", [23 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dax_minor_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@dax_superblock = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dax_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dax_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dax_cache\00", [22 x i8] zeroinitializer }, align 32
@dax_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 0, ptr @dax_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@dax_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @dax_alloc_inode, ptr @dax_destroy_inode, ptr @dax_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dax_destroy_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"kill_dax() must be called before final iput()\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"dax_srcu\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 253, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"dax_minor_ida\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"dax_devt\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 33, i32 14 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 189, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 36, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"dax_mnt\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 35, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 490, i32 54 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 454, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"dax_fs_type\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 331, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"dax_sops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 314, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [23 x i8] c"../drivers/dax/super.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 310, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_dax_core_exit, ptr @__initcall__kmod_dax__249_516_dax_core_init4, ptr @__ksymtab_alloc_dax, ptr @__ksymtab_dax_alive, ptr @__ksymtab_dax_direct_access, ptr @__ksymtab_dax_flush, ptr @__ksymtab_dax_get_private, ptr @__ksymtab_dax_inode, ptr @__ksymtab_dax_read_lock, ptr @__ksymtab_dax_read_unlock, ptr @__ksymtab_dax_synchronous, ptr @__ksymtab_dax_write_cache, ptr @__ksymtab_dax_write_cache_enabled, ptr @__ksymtab_dax_zero_page_range, ptr @__ksymtab_inode_dax, ptr @__ksymtab_kill_dax, ptr @__ksymtab_put_dax, ptr @__ksymtab_run_dax, ptr @__ksymtab_set_dax_nocache, ptr @__ksymtab_set_dax_nomc, ptr @__ksymtab_set_dax_synchronous, ptr @dax_core_exit, ptr @dax_srcu, ptr @.str, ptr @dax_minor_ida, ptr @dax_devt, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dax_mnt, ptr @.str.7, ptr @.str.8, ptr @dax_fs_type, ptr @dax_sops, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_minor_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_read_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @dax_srcu) #10
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16)) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dax_read_unlock(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %tobool.not.i = icmp ult i32 %id, 2
  br i1 %tobool.not.i, label %entry.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

entry.srcu_read_unlock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !93

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %entry.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16)) #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @dax_srcu, i32 noundef %id) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_direct_access(ptr noundef %dax_dev, i32 noundef %pgoff, i32 noundef %nr_pages, ptr noundef %kaddr, ptr noundef %pfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dax_dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.dax_alive.exit_crit_edge, label %land.rhs.i

if.end.dax_alive.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dax_alive.exit_crit_edge, !prof !94

land.rhs.i.dax_alive.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #10
  br label %dax_alive.exit

dax_alive.exit:                                   ; preds = %do.end.i, %land.rhs.i.dax_alive.exit_crit_edge, %if.end.dax_alive.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool25.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool25.i.not, label %dax_alive.exit.cleanup_crit_edge, label %if.end2

dax_alive.exit.cleanup_crit_edge:                 ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp = icmp slt i32 %nr_pages, 0
  br i1 %cmp, label %if.end2.cleanup_crit_edge, label %if.end4

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call5 = tail call i32 %6(ptr noundef nonnull %dax_dev, i32 noundef %pgoff, i32 noundef %nr_pages, ptr noundef %kaddr, ptr noundef %pfn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %7 = tail call i32 @llvm.smin.i32(i32 %call5, i32 %nr_pages)
  %spec.select = select i1 %tobool6.not, i32 -34, i32 %7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end2.cleanup_crit_edge, %dax_alive.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -6, %dax_alive.exit.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dax_alive(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !94

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool25 = icmp ne i32 %and1.i, 0
  ret i1 %tobool25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_copy_from_iter(ptr noundef %dax_dev, i32 noundef %pgoff, ptr noundef %addr, i32 noundef %bytes, ptr noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.dax_alive.exit_crit_edge, label %land.rhs.i

entry.dax_alive.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dax_alive.exit_crit_edge, !prof !94

land.rhs.i.dax_alive.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #10
  br label %dax_alive.exit

dax_alive.exit:                                   ; preds = %do.end.i, %land.rhs.i.dax_alive.exit_crit_edge, %entry.dax_alive.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool25.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool25.i.not, label %dax_alive.exit.return_crit_edge, label %if.end

dax_alive.exit.return_crit_edge:                  ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %dax_alive.exit
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @_copy_from_iter_nocache(ptr noundef %addr, i32 noundef %bytes, ptr noundef %i) #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @_copy_from_iter(ptr noundef %addr, i32 noundef %bytes, ptr noundef %i) #10
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %dax_alive.exit.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.end4 ], [ 0, %dax_alive.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter_nocache(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_copy_to_iter(ptr noundef %dax_dev, i32 noundef %pgoff, ptr noundef %addr, i32 noundef %bytes, ptr noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.dax_alive.exit_crit_edge, label %land.rhs.i

entry.dax_alive.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dax_alive.exit_crit_edge, !prof !94

land.rhs.i.dax_alive.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #10
  br label %dax_alive.exit

dax_alive.exit:                                   ; preds = %do.end.i, %land.rhs.i.dax_alive.exit_crit_edge, %entry.dax_alive.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool25.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool25.i.not, label %dax_alive.exit.return_crit_edge, label %if.end

dax_alive.exit.return_crit_edge:                  ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %call5 = tail call i32 @_copy_to_iter(ptr noundef %addr, i32 noundef %bytes, ptr noundef %i) #10
  br label %return

return:                                           ; preds = %if.end, %dax_alive.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %dax_alive.exit.return_crit_edge ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_zero_page_range(ptr noundef %dax_dev, i32 noundef %pgoff, i32 noundef %nr_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.dax_alive.exit_crit_edge, label %land.rhs.i

entry.dax_alive.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dax_alive.exit_crit_edge, !prof !94

land.rhs.i.dax_alive.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dax_alive.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #10
  br label %dax_alive.exit

dax_alive.exit:                                   ; preds = %do.end.i, %land.rhs.i.dax_alive.exit_crit_edge, %entry.dax_alive.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool25.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool25.i.not, label %dax_alive.exit.return_crit_edge, label %if.end

dax_alive.exit.return_crit_edge:                  ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %dax_alive.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_pages)
  %cmp.not = icmp eq i32 %nr_pages, 1
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %zero_page_range = getelementptr inbounds %struct.dax_operations, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %zero_page_range to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %zero_page_range, align 4
  %call3 = tail call i32 %6(ptr noundef %dax_dev, i32 noundef %pgoff, i32 noundef 1) #10
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %dax_alive.exit.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -6, %dax_alive.exit.return_crit_edge ], [ -5, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dax_flush(ptr nocapture %dax_dev, ptr nocapture %addr, i32 %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dax_write_cache(ptr noundef %dax_dev, i1 noundef zeroext %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  br i1 %wc, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dax_write_cache_enabled(ptr noundef %dax_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dax_synchronous(ptr noundef %dax_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_dax_synchronous(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_dax_nocache(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_dax_nomc(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_dax(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dax_dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  tail call void @synchronize_srcu(ptr noundef nonnull @dax_srcu) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @run_dax(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_dax(ptr noundef %private, ptr noundef %ops) #0 align 64 {
entry:
  %devt.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %land.rhs

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.rhs:                                         ; preds = %entry
  %zero_page_range = getelementptr inbounds %struct.dax_operations, ptr %ops, i32 0, i32 2
  %0 = ptrtoint ptr %zero_page_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zero_page_range, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.rhs5, label %land.rhs.if.end42_crit_edge

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.rhs5:                                        ; preds = %land.rhs
  %.b65 = load i1, ptr @alloc_dax.__already_done, align 1
  br i1 %.b65, label %land.rhs5.cleanup_crit_edge, label %if.then, !prof !93

land.rhs5.cleanup_crit_edge:                      ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @alloc_dax.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end42:                                         ; preds = %land.rhs.if.end42_crit_edge, %entry.if.end42_crit_edge
  %call43 = tail call i32 @ida_alloc_range(ptr noundef nonnull @dax_minor_ida, i32 noundef 0, i32 noundef 1048575, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %2 = load i32, ptr @dax_devt, align 4
  %shr = and i32 %2, -1048576
  %or = or i32 %shr, %call43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devt.addr.i)
  %3 = ptrtoint ptr %devt.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %devt.addr.i, align 4
  %4 = load ptr, ptr @dax_superblock, align 4
  %5 = mul i32 %or, 1640531527
  %mul.i.i.i = add i32 %5, 10213448
  %shr.i.i = lshr i32 %mul.i.i.i, 1
  %call1.i = call ptr @iget5_locked(ptr noundef %4, i32 noundef %shr.i.i, ptr noundef nonnull @dax_test, ptr noundef nonnull @dax_set, ptr noundef nonnull %devt.addr.i) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %err_dev, label %if.end.i

if.end.i:                                         ; preds = %if.end46
  %i_state.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 24
  %6 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end50_crit_edge, label %if.then4.i

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.dax_device, ptr %call1.i, i32 0, i32 3
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  %cdev.i = getelementptr inbounds %struct.dax_device, ptr %call1.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 48
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cdev.i, ptr %8, align 4
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8192, ptr %call1.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %i_flags.i, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 46, i32 3
  %12 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1051840, ptr %gfp_mask.i.i, align 4
  call void @unlock_new_inode(ptr noundef nonnull %call1.i) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then4.i, %if.end.i.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.addr.i)
  %ops51 = getelementptr inbounds %struct.dax_device, ptr %call1.i, i32 0, i32 4
  %13 = ptrtoint ptr %ops51 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ops, ptr %ops51, align 8
  %private52 = getelementptr inbounds %struct.dax_device, ptr %call1.i, i32 0, i32 2
  %14 = ptrtoint ptr %private52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %private, ptr %private52, align 8
  br label %cleanup

err_dev:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.addr.i)
  call void @ida_free(ptr noundef nonnull @dax_minor_ida, i32 noundef %call43) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dev, %if.end50, %if.end42.cleanup_crit_edge, %if.then, %land.rhs5.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i, %if.end50 ], [ inttoptr (i32 -12 to ptr), %err_dev ], [ inttoptr (i32 -22 to ptr), %land.rhs5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end42.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_dax(ptr noundef %dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dax_dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iput(ptr noundef nonnull %dax_dev) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @inode_dax(ptr nocapture noundef readonly %inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -784
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dax_inode(ptr noundef readnone returned %dax_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %dax_dev
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dax_get_private(ptr noundef %dax_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.dax_device, ptr %dax_dev, i32 0, i32 2
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dax_core_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dax_bus_exit() #10
  %0 = load i32, ptr @dax_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  tail call void @ida_destroy(ptr noundef nonnull @dax_minor_ida) #10
  %1 = load ptr, ptr @dax_mnt, align 4
  tail call void @kern_unmount(ptr noundef %1) #10
  %2 = load ptr, ptr @dax_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dax_bus_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dax_core_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 960, i32 noundef 0, i32 noundef 68296704, ptr noundef nonnull @init_once) #10
  store ptr %call.i, ptr @dax_cache, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @kern_mount(ptr noundef nonnull @dax_fs_type) #10
  store ptr %call1.i, ptr @dax_mnt, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dax_fs_init.exit, label %dax_fs_init.exit.thread

dax_fs_init.exit.thread:                          ; preds = %if.end.i
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %call1.i, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_sb.i, align 4
  store ptr %1, ptr @dax_superblock, align 4
  %call1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dax_devt, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %dax_fs_init.exit.thread.err_chrdev_crit_edge

dax_fs_init.exit.thread.err_chrdev_crit_edge:     ; preds = %dax_fs_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_chrdev

dax_fs_init.exit:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1.i to i32
  br label %cleanup.sink.split

if.end4:                                          ; preds = %dax_fs_init.exit.thread
  %call5 = tail call i32 @dax_bus_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_bus

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_bus:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @dax_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 1048576) #10
  br label %err_chrdev

err_chrdev:                                       ; preds = %err_bus, %dax_fs_init.exit.thread.err_chrdev_crit_edge
  %4 = load ptr, ptr @dax_mnt, align 4
  tail call void @kern_unmount(ptr noundef %4) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_chrdev, %dax_fs_init.exit
  %retval.0.ph = phi i32 [ %2, %dax_fs_init.exit ], [ 0, %err_chrdev ]
  %5 = load ptr, ptr @dax_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @dax_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dax_test(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp eq i32 %3, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dax_set(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_rdev, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dax_bus_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %_dax_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %_dax_dev, i32 0, i32 960)
  tail call void @inode_init_once(ptr noundef %_dax_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dax_init_fs_context(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 1684300152) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dax_sops, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dax_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dax_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %i_rdev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dax_destroy_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dax_device, ptr %inode, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @dax_destroy_inode.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !93

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dax_destroy_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef nonnull @.str.9) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dax_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %1, 1048575
  tail call void @ida_free(ptr noundef nonnull @dax_minor_ida, i32 noundef %and.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @dax_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__ksymtab_dax_read_lock, !1, !"__ksymtab_dax_read_lock", i1 false, i1 false}
!1 = !{!"../drivers/dax/super.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_dax_read_unlock, !3, !"__ksymtab_dax_read_unlock", i1 false, i1 false}
!3 = !{!"../drivers/dax/super.c", i32 50, i32 1}
!4 = !{ptr @__ksymtab_dax_direct_access, !5, !"__ksymtab_dax_direct_access", i1 false, i1 false}
!5 = !{!"../drivers/dax/super.c", i32 145, i32 1}
!6 = !{ptr @__ksymtab_dax_zero_page_range, !7, !"__ksymtab_dax_zero_page_range", i1 false, i1 false}
!7 = !{!"../drivers/dax/super.c", i32 194, i32 1}
!8 = !{ptr @__ksymtab_dax_flush, !9, !"__ksymtab_dax_flush", i1 false, i1 false}
!9 = !{!"../drivers/dax/super.c", i32 210, i32 1}
!10 = !{ptr @__ksymtab_dax_write_cache, !11, !"__ksymtab_dax_write_cache", i1 false, i1 false}
!11 = !{!"../drivers/dax/super.c", i32 219, i32 1}
!12 = !{ptr @__ksymtab_dax_write_cache_enabled, !13, !"__ksymtab_dax_write_cache_enabled", i1 false, i1 false}
!13 = !{!"../drivers/dax/super.c", i32 225, i32 1}
!14 = !{ptr @__ksymtab_dax_synchronous, !15, !"__ksymtab_dax_synchronous", i1 false, i1 false}
!15 = !{!"../drivers/dax/super.c", i32 231, i32 1}
!16 = !{ptr @__ksymtab_set_dax_synchronous, !17, !"__ksymtab_set_dax_synchronous", i1 false, i1 false}
!17 = !{!"../drivers/dax/super.c", i32 237, i32 1}
!18 = !{ptr @__ksymtab_set_dax_nocache, !19, !"__ksymtab_set_dax_nocache", i1 false, i1 false}
!19 = !{!"../drivers/dax/super.c", i32 243, i32 1}
!20 = !{ptr @__ksymtab_set_dax_nomc, !21, !"__ksymtab_set_dax_nomc", i1 false, i1 false}
!21 = !{!"../drivers/dax/super.c", i32 249, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dax/super.c", i32 253, i32 2}
!24 = !{ptr @__ksymtab_dax_alive, !25, !"__ksymtab_dax_alive", i1 false, i1 false}
!25 = !{!"../drivers/dax/super.c", i32 256, i32 1}
!26 = !{ptr @__ksymtab_kill_dax, !27, !"__ksymtab_kill_dax", i1 false, i1 false}
!27 = !{!"../drivers/dax/super.c", i32 272, i32 1}
!28 = !{ptr @__ksymtab_run_dax, !29, !"__ksymtab_run_dax", i1 false, i1 false}
!29 = !{!"../drivers/dax/super.c", i32 278, i32 1}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/dax/super.c", i32 382, i32 6}
!32 = !{ptr @__ksymtab_alloc_dax, !33, !"__ksymtab_alloc_dax", i1 false, i1 false}
!33 = !{!"../drivers/dax/super.c", i32 402, i32 1}
!34 = !{ptr @__ksymtab_put_dax, !35, !"__ksymtab_put_dax", i1 false, i1 false}
!35 = !{!"../drivers/dax/super.c", i32 410, i32 1}
!36 = !{ptr @__ksymtab_inode_dax, !37, !"__ksymtab_inode_dax", i1 false, i1 false}
!37 = !{!"../drivers/dax/super.c", i32 425, i32 1}
!38 = !{ptr @__ksymtab_dax_inode, !39, !"__ksymtab_dax_inode", i1 false, i1 false}
!39 = !{!"../drivers/dax/super.c", i32 431, i32 1}
!40 = !{ptr @__ksymtab_dax_get_private, !41, !"__ksymtab_dax_get_private", i1 false, i1 false}
!41 = !{!"../drivers/dax/super.c", i32 439, i32 1}
!42 = !{ptr @__UNIQUE_ID_author246, !43, !"__UNIQUE_ID_author246", i1 false, i1 false}
!43 = !{!"../drivers/dax/super.c", i32 514, i32 1}
!44 = !{ptr @__UNIQUE_ID_file247, !45, !"__UNIQUE_ID_file247", i1 false, i1 false}
!45 = !{!"../drivers/dax/super.c", i32 515, i32 1}
!46 = !{ptr @__UNIQUE_ID_license248, !45, !"__UNIQUE_ID_license248", i1 false, i1 false}
!47 = !{ptr @__initcall__kmod_dax__249_516_dax_core_init4, !48, !"__initcall__kmod_dax__249_516_dax_core_init4", i1 false, i1 false}
!48 = !{!"../drivers/dax/super.c", i32 516, i32 1}
!49 = !{ptr @__exitcall_dax_core_exit, !50, !"__exitcall_dax_core_exit", i1 false, i1 false}
!50 = !{!"../drivers/dax/super.c", i32 517, i32 1}
!51 = !{ptr @dax_devt, !52, !"dax_devt", i1 false, i1 false}
!52 = !{!"../drivers/dax/super.c", i32 33, i32 14}
!53 = !{ptr @__pcpu_unique_dax_srcu_srcu_data, !54, !"__pcpu_unique_dax_srcu_srcu_data", i1 false, i1 false}
!54 = !{!"../drivers/dax/super.c", i32 34, i32 1}
!55 = !{ptr @dax_srcu_srcu_data, !54, !"dax_srcu_srcu_data", i1 false, i1 false}
!56 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dax_srcu, !54, !"dax_srcu", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!63 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.6, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dax/super.c", i32 36, i32 8}
!66 = !{ptr @dax_minor_ida, !65, !"dax_minor_ida", i1 false, i1 false}
!67 = !{ptr @dax_superblock, !68, !"dax_superblock", i1 false, i1 false}
!68 = !{!"../drivers/dax/super.c", i32 38, i32 28}
!69 = !{ptr @dax_mnt, !70, !"dax_mnt", i1 false, i1 false}
!70 = !{!"../drivers/dax/super.c", i32 35, i32 25}
!71 = !{ptr @dax_cache, !72, !"dax_cache", i1 false, i1 false}
!72 = !{!"../drivers/dax/super.c", i32 37, i32 27}
!73 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dax/super.c", i32 490, i32 54}
!75 = !{ptr @.str.8, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dax/super.c", i32 454, i32 32}
!77 = !{ptr @dax_fs_type, !78, !"dax_fs_type", i1 false, i1 false}
!78 = !{!"../drivers/dax/super.c", i32 331, i32 32}
!79 = !{ptr @dax_sops, !80, !"dax_sops", i1 false, i1 false}
!80 = !{!"../drivers/dax/super.c", i32 314, i32 38}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/dax/super.c", i32 310, i32 2}
!83 = !{ptr @.str.9, !82, !"<string literal>", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{!"branch_weights", i32 1, i32 2000}
