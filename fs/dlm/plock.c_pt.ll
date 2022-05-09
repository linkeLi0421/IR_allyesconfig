; ModuleID = '/llk/IR_all_yes/fs/dlm/plock.c_pt.bc'
source_filename = "../fs/dlm/plock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlm_posix_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_posix_lock\09\09\09\09"
module asm "\09.long\09__crc_dlm_posix_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_posix_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_posix_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_posix_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_posix_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_posix_unlock\09\09\09\09"
module asm "\09.long\09__crc_dlm_posix_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_posix_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_posix_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_posix_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_posix_get\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_posix_get\09\09\09\09"
module asm "\09.long\09__crc_dlm_posix_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_posix_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_posix_get\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_posix_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.plock_op = type { %struct.list_head, i32, %struct.dlm_plock_info }
%struct.dlm_plock_info = type { [3 x i32], i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.64 }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.71, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.71 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.72 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.72 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.73, i32, i16, i8, i8 }
%union.anon.73 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.plock_xop = type { %struct.plock_op, ptr, ptr, ptr, %struct.file_lock }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/dlm/plock.c\00", [17 x i8] zeroinitializer }, align 32
@recv_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_posix_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dlm: %s: dlm_posix_lock: wait killed %llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlm_posix_lock\00", [17 x i8] zeroinitializer }, align 32
@dlm_posix_lock._entry_ptr = internal global ptr @dlm_posix_lock._entry, section ".printk_index", align 4
@ops_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@dlm_posix_lock._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dlm: %s: dlm_posix_lock: op on list %llx\0A\00", [52 x i8] zeroinitializer }, align 32
@dlm_posix_lock._entry_ptr.5 = internal global ptr @dlm_posix_lock._entry.3, section ".printk_index", align 4
@dlm_posix_lock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: %s: dlm_posix_lock: vfs lock error %llx\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_posix_lock._entry_ptr.8 = internal global ptr @dlm_posix_lock._entry.6, section ".printk_index", align 4
@__kstrtab_dlm_posix_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_posix_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_posix_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_posix_lock to i32), ptr @__kstrtab_dlm_posix_lock, ptr @__kstrtabns_dlm_posix_lock }, section "___ksymtab_gpl+dlm_posix_lock", align 4
@dlm_posix_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dlm: %s: dlm_posix_unlock: vfs unlock error %d %llx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_posix_unlock\00", [47 x i8] zeroinitializer }, align 32
@dlm_posix_unlock._entry_ptr = internal global ptr @dlm_posix_unlock._entry, section ".printk_index", align 4
@dlm_posix_unlock._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dlm: %s: dlm_posix_unlock: op on list %llx\0A\00", [50 x i8] zeroinitializer }, align 32
@dlm_posix_unlock._entry_ptr.13 = internal global ptr @dlm_posix_unlock._entry.11, section ".printk_index", align 4
@__kstrtab_dlm_posix_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_posix_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_posix_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_posix_unlock to i32), ptr @__kstrtab_dlm_posix_unlock, ptr @__kstrtabns_dlm_posix_unlock }, section "___ksymtab_gpl+dlm_posix_unlock", align 4
@dlm_posix_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: %s: dlm_posix_get: op on list %llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlm_posix_get\00", [18 x i8] zeroinitializer }, align 32
@dlm_posix_get._entry_ptr = internal global ptr @dlm_posix_get._entry, section ".printk_index", align 4
@__kstrtab_dlm_posix_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_posix_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_posix_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_posix_get to i32), ptr @__kstrtab_dlm_posix_get, ptr @__kstrtabns_dlm_posix_get }, section "___ksymtab_gpl+dlm_posix_get", align 4
@dlm_plock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ops_lock\00", [22 x i8] zeroinitializer }, align 32
@send_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@recv_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@dlm_plock_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@send_wq = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&send_wq\00", [23 x i8] zeroinitializer }, align 32
@dlm_plock_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&recv_wq\00", [23 x i8] zeroinitializer }, align 32
@plock_dev_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.23, ptr @dev_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@dlm_plock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: dlm_plock_init: misc_register failed %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlm_plock_init\00", [17 x i8] zeroinitializer }, align 32
@dlm_plock_init._entry_ptr = internal global ptr @dlm_plock_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dlm_plock\00", [22 x i8] zeroinitializer }, align 32
@dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @dev_read, ptr @dev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dev_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dlm: dev_write no op %x %llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_write\00", [22 x i8] zeroinitializer }, align 32
@dev_write._entry_ptr = internal global ptr @dev_write._entry, section ".printk_index", align 4
@check_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013dlm: plock device version mismatch: kernel (%u.%u.%u), user (%u.%u.%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"check_version\00", [18 x i8] zeroinitializer }, align 32
@check_version._entry_ptr = internal global ptr @check_version._entry, section ".printk_index", align 4
@dlm_plock_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dlm: dlm_plock_callback: op on list %llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_plock_callback\00", [45 x i8] zeroinitializer }, align 32
@dlm_plock_callback._entry_ptr = internal global ptr @dlm_plock_callback._entry, section ".printk_index", align 4
@dlm_plock_callback._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dlm: dlm_plock_callback: vfs lock error %llx file %p fl %p\0A\00", [34 x i8] zeroinitializer }, align 32
@dlm_plock_callback._entry_ptr.35 = internal global ptr @dlm_plock_callback._entry.33, section ".printk_index", align 4
@dlm_plock_callback._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013dlm: dlm_plock_callback: lock granted after lock request failed; dangling lock!\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@dlm_plock_callback._entry_ptr.38 = internal global ptr @dlm_plock_callback._entry.36, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 145, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"recv_wq\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 20, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 147, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"ops_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 16, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 163, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 173, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 268, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 295, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 349, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 495, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [10 x i8] c"send_list\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 25 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"recv_list\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 18, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant [8 x i8] c"send_wq\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 19, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 498, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 499, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"plock_dev_misc\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 485, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 503, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 487, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"dev_fops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 477, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 174, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 458, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 48, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 196, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 224, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [18 x i8] c"../fs/dlm/plock.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 231, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__ksymtab_dlm_posix_get, ptr @__ksymtab_dlm_posix_lock, ptr @__ksymtab_dlm_posix_unlock, ptr @check_version._entry, ptr @check_version._entry_ptr, ptr @dev_write._entry, ptr @dev_write._entry_ptr, ptr @dlm_plock_callback._entry, ptr @dlm_plock_callback._entry.33, ptr @dlm_plock_callback._entry.36, ptr @dlm_plock_callback._entry_ptr, ptr @dlm_plock_callback._entry_ptr.35, ptr @dlm_plock_callback._entry_ptr.38, ptr @dlm_plock_init._entry, ptr @dlm_plock_init._entry_ptr, ptr @dlm_posix_get._entry, ptr @dlm_posix_get._entry_ptr, ptr @dlm_posix_lock._entry, ptr @dlm_posix_lock._entry.3, ptr @dlm_posix_lock._entry.6, ptr @dlm_posix_lock._entry_ptr, ptr @dlm_posix_lock._entry_ptr.5, ptr @dlm_posix_lock._entry_ptr.8, ptr @dlm_posix_unlock._entry, ptr @dlm_posix_unlock._entry.11, ptr @dlm_posix_unlock._entry_ptr, ptr @dlm_posix_unlock._entry_ptr.13, ptr @.str, ptr @recv_wq, ptr @.str.1, ptr @.str.2, ptr @ops_lock, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @dlm_plock_init.__key, ptr @.str.16, ptr @send_list, ptr @recv_list, ptr @dlm_plock_init.__key.17, ptr @send_wq, ptr @.str.18, ptr @dlm_plock_init.__key.19, ptr @.str.20, ptr @plock_dev_misc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dev_fops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_lock._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_lock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_unlock._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_posix_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plock_dev_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_callback._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_plock_callback._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_posix_lock(ptr noundef %lockspace, i64 noundef %number, ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %lockspace) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup107_crit_edge, label %if.end

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 264) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %optype = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %optype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %optype, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %2 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl_pid, align 8
  %pid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pid, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %5 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %conv8 = zext i1 %cmp to i8
  %ex = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %ex to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %ex, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %cmp10 = icmp eq i32 %cmd, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cmd)
  %cmp12 = icmp eq i32 %cmd, 14
  %spec.select = or i1 %cmp10, %cmp12
  %conv14 = zext i1 %spec.select to i8
  %wait = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %wait, align 2
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ls_global_id, align 4
  %fsid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fsid, align 4
  %number18 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %number18 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %number, ptr %number18, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %13 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_start, align 8
  %start = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %16 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fl_end, align 8
  %end = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 11
  %18 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %end, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 18
  %19 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fl_lmops, align 8
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.end4.if.else_crit_edge, label %land.lhs.true

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %lm_grant = getelementptr inbounds %struct.lock_manager_operations, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %lm_grant to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lm_grant, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %land.lhs.true.if.else_crit_edge, label %if.then24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv26 = zext i32 %3 to i64
  %owner = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 12
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv26, ptr %owner, align 8
  %24 = ptrtoint ptr %lm_grant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lm_grant, align 4
  %callback = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %callback, align 8
  %flc = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 4
  tail call void @locks_init_lock(ptr noundef %flc) #6
  tail call void @locks_copy_lock(ptr noundef %flc, ptr noundef %fl) #6
  %fl31 = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %fl31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fl, ptr %fl31, align 4
  %file32 = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %file32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %file, ptr %file32, align 8
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %29 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fl_owner, align 4
  %31 = ptrtoint ptr %30 to i32
  %conv33 = sext i32 %31 to i64
  %owner35 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %owner35 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv33, ptr %owner35, align 8
  %callback36 = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %callback36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %callback36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then24
  %info.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %info.i, align 8
  %arrayidx2.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx4.i.i, align 8
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %39 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %39, ptr noundef nonnull @send_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end37.send_op.exit_crit_edge

if.end37.send_op.exit_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_op.exit

if.end.i.i.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @send_list, ptr %call7.i.i, align 8
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i, ptr %39, align 4
  br label %send_op.exit

send_op.exit:                                     ; preds = %if.end.i.i.i, %if.end37.send_op.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  tail call void @__wake_up(ptr noundef nonnull @send_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %callback38 = getelementptr inbounds %struct.plock_xop, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %callback38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %callback38, align 8
  %cmp39 = icmp eq ptr %44, null
  br i1 %cmp39, label %if.then41, label %send_op.exit.out_crit_edge

send_op.exit.out_crit_edge:                       ; preds = %send_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then41:                                        ; preds = %send_op.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 145) #6
  %done = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp45.not = icmp eq i32 %46, 0
  br i1 %cmp45.not, label %if.then47, label %if.then41.if.end76_crit_edge

if.then41.if.end76_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then47:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call49186 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %48 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp51.not187 = icmp eq i32 %49, 0
  br i1 %cmp51.not187, label %if.then47.if.end54_crit_edge, label %if.then47.if.end58.thread182_crit_edge

if.then47.if.end58.thread182_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.thread182

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  br label %if.end54

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.then47.if.end54_crit_edge
  %call49188 = phi i32 [ %call49, %cleanup.if.end54_crit_edge ], [ %call49186, %if.then47.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49188)
  %tobool55.not = icmp eq i32 %call49188, 0
  br i1 %tobool55.not, label %cleanup, label %if.end58

cleanup:                                          ; preds = %if.end54
  call void @schedule() #6
  %call49 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %50 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %done, align 8
  %cmp51.not = icmp eq i32 %51, 0
  br i1 %cmp51.not, label %cleanup.if.end54_crit_edge, label %cleanup.if.end58.thread182_crit_edge

cleanup.if.end58.thread182_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.thread182

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end58.thread182:                               ; preds = %cleanup.if.end58.thread182_crit_edge, %if.then47.if.end58.thread182_crit_edge
  call void @finish_wait(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end76

if.end58:                                         ; preds = %if.end54
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call49188)
  %cmp60 = icmp eq i32 %call49188, -512
  br i1 %cmp60, label %do.body63, label %if.end58.if.end76_crit_edge

if.end58.if.end76_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body63:                                        ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %52 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool64.not = icmp eq i32 %52, 0
  br i1 %tobool64.not, label %do.body63.do.end73_crit_edge, label %do.end68

do.body63.do.end73_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end68:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %ls_name, i64 noundef %number) #10
  br label %do.end73

do.end73:                                         ; preds = %do.end68, %do.body63.do.end73_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end73.list_del.exit_crit_edge

do.end73.list_del.exit_crit_edge:                 ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end73.list_del.exit_crit_edge
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3392, i32 noundef 80) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %list_del.exit.out_crit_edge, label %if.end.i

list_del.exit.out_crit_edge:                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %list_del.exit
  %optype.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %optype.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %optype.i, align 4
  %63 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fl_pid, align 8
  %pid.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %65 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %pid.i, align 8
  %66 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ls_global_id, align 4
  %fsid.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %68 = ptrtoint ptr %fsid.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %fsid.i, align 4
  %number4.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 9
  %69 = ptrtoint ptr %number4.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %number, ptr %number4.i, align 8
  %start.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %70 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %start.i, align 8
  %end.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 11
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 9223372036854775807, ptr %end.i, align 8
  %72 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fl_lmops, align 8
  %tobool7.not.i = icmp eq ptr %73, null
  br i1 %tobool7.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %lm_grant.i = getelementptr inbounds %struct.lock_manager_operations, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %lm_grant.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lm_grant.i, align 4
  %tobool9.not.i = icmp eq ptr %75, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i32 %64 to i64
  br label %if.end16.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %fl_owner.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %76 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fl_owner.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %conv13.i = sext i32 %78 to i64
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then10.i
  %conv13.sink.i = phi i64 [ %conv13.i, %if.else.i ], [ %conv.i, %if.then10.i ]
  %owner15.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 12
  %79 = ptrtoint ptr %owner15.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv13.sink.i, ptr %owner15.i, align 8
  %flags.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flags.i, align 1
  %82 = or i8 %81, 1
  store i8 %82, ptr %flags.i, align 1
  %info.i.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %info.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %arrayidx2.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr %struct.plock_op, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %85 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx4.i.i.i, align 8
  %86 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %88 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %88, ptr noundef nonnull @send_list) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end16.i.send_op.exit.i_crit_edge

if.end16.i.send_op.exit.i_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_op.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %89 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @send_list, ptr %call7.i.i.i, align 8
  %90 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %prev.i.i.i, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %call7.i.i.i, ptr %88, align 4
  br label %send_op.exit.i

send_op.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.end16.i.send_op.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  call void @__wake_up(ptr noundef nonnull @send_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %out

if.end76:                                         ; preds = %if.end58.if.end76_crit_edge, %if.end58.thread182, %if.then41.if.end76_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %call7.i.i, align 8
  %cmp.i.not = icmp eq ptr %93, %call7.i.i
  br i1 %cmp.i.not, label %if.end76.if.end89_crit_edge, label %do.end83

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

do.end83:                                         ; preds = %if.end76
  %ls_name85 = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %ls_name85, i64 noundef %number) #10
  %call.i.i167 = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #6
  br i1 %call.i.i167, label %if.end.i.i170, label %do.end83.list_del.exit172_crit_edge

do.end83.list_del.exit172_crit_edge:              ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit172

if.end.i.i170:                                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i, align 4
  %96 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i169 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev1.i.i.i169, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %97, ptr %95, align 4
  br label %list_del.exit172

list_del.exit172:                                 ; preds = %if.end.i.i170, %do.end83.list_del.exit172_crit_edge
  %100 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end89

if.end89:                                         ; preds = %list_del.exit172, %if.end76.if.end89_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %rv91 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 7
  %102 = ptrtoint ptr %rv91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rv91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool92.not = icmp eq i32 %103, 0
  br i1 %tobool92.not, label %if.then93, label %if.end89.if.end106_crit_edge

if.end89.if.end106_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then93:                                        ; preds = %if.end89
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %104 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = call i32 @locks_lock_inode_wait(ptr noundef %105, ptr noundef %fl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp95 = icmp slt i32 %call1.i, 0
  br i1 %cmp95, label %do.end100, label %if.then93.if.end106_crit_edge

if.then93.if.end106_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

do.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name102 = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ls_name102, i64 noundef %number) #10
  br label %if.end106

if.end106:                                        ; preds = %do.end100, %if.then93.if.end106_crit_edge, %if.end89.if.end106_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

out:                                              ; preds = %if.end106, %send_op.exit.i, %list_del.exit.out_crit_edge, %send_op.exit.out_crit_edge, %if.end.out_crit_edge
  %rv.0 = phi i32 [ %103, %if.end106 ], [ -12, %if.end.out_crit_edge ], [ 1, %send_op.exit.out_crit_edge ], [ -512, %list_del.exit.out_crit_edge ], [ -512, %send_op.exit.i ]
  call void @dlm_put_lockspace(ptr noundef nonnull %call) #6
  br label %cleanup107

cleanup107:                                       ; preds = %out, %entry.cleanup107_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -22, %entry.cleanup107_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_find_lockspace_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_copy_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put_lockspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_posix_unlock(ptr noundef %lockspace, i64 noundef %number, ptr nocapture noundef readonly %file, ptr noundef %fl) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_flags1 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %0 = ptrtoint ptr %fl_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl_flags1, align 8
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %lockspace) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup81

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 80) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fl_flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fl_flags1, align 8
  %or = or i32 %4, 16
  store i32 %or, ptr %fl_flags1, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %6, ptr noundef %fl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -2
  br i1 %cmp, label %if.end5.out_free_crit_edge, label %if.end10

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp11 = icmp slt i32 %call1.i, 0
  br i1 %cmp11, label %do.end, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %ls_name, i32 noundef %call1.i, i64 noundef %number) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end10.if.end15_crit_edge
  %optype = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %optype to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %optype, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %8 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_pid, align 8
  %pid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pid, align 8
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ls_global_id, align 4
  %fsid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fsid, align 4
  %number19 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %number19 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %number, ptr %number19, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %15 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fl_start, align 8
  %start = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 10
  %17 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %18 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fl_end, align 8
  %end = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %end, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 18
  %21 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fl_lmops, align 8
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.end15.if.else_crit_edge, label %land.lhs.true

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %lm_grant = getelementptr inbounds %struct.lock_manager_operations, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %lm_grant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lm_grant, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %land.lhs.true.if.else_crit_edge, label %if.then25

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv27 = zext i32 %9 to i64
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end15.if.else_crit_edge
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %25 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fl_owner, align 4
  %27 = ptrtoint ptr %26 to i32
  %conv29 = sext i32 %27 to i64
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  %conv29.sink = phi i64 [ %conv29, %if.else ], [ %conv27, %if.then25 ]
  %owner31 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 12
  %28 = ptrtoint ptr %owner31 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv29.sink, ptr %owner31, align 8
  %29 = ptrtoint ptr %fl_flags1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fl_flags1, align 8
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end32
  %flags = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 1
  %33 = or i8 %32, 1
  store i8 %33, ptr %flags, align 1
  %info.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %info.i, align 8
  %arrayidx2.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx4.i.i, align 8
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %39 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %39, ptr noundef nonnull @send_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then35.send_op.exit_crit_edge

if.then35.send_op.exit_crit_edge:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_op.exit

if.end.i.i.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @send_list, ptr %call7.i.i, align 8
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i, ptr %39, align 4
  br label %send_op.exit

send_op.exit:                                     ; preds = %if.end.i.i.i, %if.then35.send_op.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  tail call void @__wake_up(ptr noundef nonnull @send_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %out

if.end40:                                         ; preds = %if.end32
  %info.i123 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %info.i123 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %info.i123, align 8
  %arrayidx2.i.i124 = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx2.i.i124 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %arrayidx2.i.i124, align 4
  %arrayidx4.i.i125 = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx4.i.i125 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx4.i.i125, align 8
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i126 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %prev.i.i126, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %48 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %call.i.i.i127 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %48, ptr noundef nonnull @send_list) #6
  br i1 %call.i.i.i127, label %if.end.i.i.i128, label %if.end40.send_op.exit129_crit_edge

if.end40.send_op.exit129_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_op.exit129

if.end.i.i.i128:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @send_list, ptr %call7.i.i, align 8
  %50 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %prev.i.i126, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i, ptr %48, align 4
  br label %send_op.exit129

send_op.exit129:                                  ; preds = %if.end.i.i.i128, %if.end40.send_op.exit129_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  tail call void @__wake_up(ptr noundef nonnull @send_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 291) #6
  %done = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp48.not = icmp eq i32 %53, 0
  br i1 %cmp48.not, label %if.end51, label %send_op.exit129.do.end60_crit_edge

send_op.exit129.do.end60_crit_edge:               ; preds = %send_op.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

if.end51:                                         ; preds = %send_op.exit129
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %54 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call52133 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %55 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp54.not134 = icmp eq i32 %56, 0
  br i1 %cmp54.not134, label %if.end51.cleanup_crit_edge, label %if.end51.for.end_crit_edge

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end51.cleanup_crit_edge
  call void @schedule() #6
  %call52 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %57 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %done, align 8
  %cmp54.not = icmp eq i32 %58, 0
  br i1 %cmp54.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end51.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end60

do.end60:                                         ; preds = %for.end, %send_op.exit129.do.end60_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %call7.i.i, align 8
  %cmp.i.not = icmp eq ptr %60, %call7.i.i
  br i1 %cmp.i.not, label %do.end60.if.end72_crit_edge, label %do.end66

do.end60.if.end72_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end66:                                         ; preds = %do.end60
  %ls_name68 = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %ls_name68, i64 noundef %number) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end66.list_del.exit_crit_edge

do.end66.list_del.exit_crit_edge:                 ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i126, align 4
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end66.list_del.exit_crit_edge
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %68 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i126, align 4
  br label %if.end72

if.end72:                                         ; preds = %list_del.exit, %do.end60.if.end72_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %rv74 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 7
  %69 = ptrtoint ptr %rv74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rv74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %70)
  %cmp75 = icmp eq i32 %70, -2
  %spec.store.select = select i1 %cmp75, i32 0, i32 %70
  br label %out_free

out_free:                                         ; preds = %if.end72, %if.end5.out_free_crit_edge
  %rv.0 = phi i32 [ %spec.store.select, %if.end72 ], [ 0, %if.end5.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

out:                                              ; preds = %out_free, %send_op.exit, %if.end.out_crit_edge
  %rv.1 = phi i32 [ %rv.0, %out_free ], [ 0, %send_op.exit ], [ -12, %if.end.out_crit_edge ]
  call void @dlm_put_lockspace(ptr noundef nonnull %call) #6
  %conv79 = and i32 %1, 255
  %71 = ptrtoint ptr %fl_flags1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv79, ptr %fl_flags1, align 8
  br label %cleanup81

cleanup81:                                        ; preds = %out, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ %rv.1, %out ], [ -22, %entry.cleanup81_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_posix_get(ptr noundef %lockspace, i64 noundef %number, ptr nocapture readnone %file, ptr noundef %fl) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %lockspace) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup78_crit_edge, label %if.end

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup78

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 80) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %optype = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %optype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %optype, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %2 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl_pid, align 8
  %pid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pid, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %5 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  %conv7 = zext i1 %cmp to i8
  %ex = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %ex to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %ex, align 1
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ls_global_id, align 4
  %fsid = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %fsid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fsid, align 4
  %number11 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %number11 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %number, ptr %number11, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %12 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fl_start, align 8
  %start = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 10
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %15 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fl_end, align 8
  %end = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 11
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %end, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 18
  %18 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fl_lmops, align 8
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end4.if.else_crit_edge, label %land.lhs.true

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %lm_grant = getelementptr inbounds %struct.lock_manager_operations, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %lm_grant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lm_grant, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %land.lhs.true.if.else_crit_edge, label %if.then17

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = zext i32 %3 to i64
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %fl_owner = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %22 = ptrtoint ptr %fl_owner to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fl_owner, align 4
  %24 = ptrtoint ptr %23 to i32
  %conv21 = sext i32 %24 to i64
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %conv21.sink = phi i64 [ %conv21, %if.else ], [ %conv19, %if.then17 ]
  %owner23 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 12
  %25 = ptrtoint ptr %owner23 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv21.sink, ptr %owner23, align 8
  %info.i = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %info.i, align 8
  %arrayidx2.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx4.i.i, align 8
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %31, ptr noundef nonnull @send_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.send_op.exit_crit_edge

if.end24.send_op.exit_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_op.exit

if.end.i.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @send_list, ptr %call7.i.i, align 8
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %31, align 4
  br label %send_op.exit

send_op.exit:                                     ; preds = %if.end.i.i.i, %if.end24.send_op.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  tail call void @__wake_up(ptr noundef nonnull @send_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 345) #6
  %done = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp29.not = icmp eq i32 %36, 0
  br i1 %cmp29.not, label %if.end32, label %send_op.exit.do.end40_crit_edge

send_op.exit.do.end40_crit_edge:                  ; preds = %send_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

if.end32:                                         ; preds = %send_op.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call33125 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %38 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp35.not126 = icmp eq i32 %39, 0
  br i1 %cmp35.not126, label %if.end32.cleanup_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  call void @schedule() #6
  %call33 = call i32 @prepare_to_wait_event(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %40 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %done, align 8
  %cmp35.not = icmp eq i32 %41, 0
  br i1 %cmp35.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end32.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @recv_wq, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end40

do.end40:                                         ; preds = %for.end, %send_op.exit.do.end40_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %call7.i.i, align 8
  %cmp.i.not = icmp eq ptr %43, %call7.i.i
  br i1 %cmp.i.not, label %do.end40.if.end50_crit_edge, label %do.end46

do.end40.if.end50_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end46:                                         ; preds = %do.end40
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %ls_name, i64 noundef %number) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end46.list_del.exit_crit_edge

do.end46.list_del.exit_crit_edge:                 ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end46.list_del.exit_crit_edge
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %list_del.exit, %do.end40.if.end50_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %rv52 = getelementptr inbounds %struct.plock_op, ptr %call7.i.i, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %rv52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rv52, align 8
  %54 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %53)
  %cmp54 = icmp eq i32 %53, -2
  br i1 %cmp54, label %if.end50.if.end77_crit_edge, label %if.else57

if.end50.if.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.else57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp58 = icmp sgt i32 %53, 0
  br i1 %cmp58, label %if.then60, label %if.else57.if.end77_crit_edge

if.else57.if.end77_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then60:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  call void @locks_init_lock(ptr noundef %fl) #6
  %55 = ptrtoint ptr %ex to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool64.not = icmp ne i8 %56, 0
  %conv65 = zext i1 %tobool64.not to i8
  %57 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv65, ptr %fl_type, align 4
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %58 = ptrtoint ptr %fl_flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %fl_flags, align 8
  %59 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid, align 8
  %sub = sub i32 0, %60
  %61 = ptrtoint ptr %fl_pid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub, ptr %fl_pid, align 8
  %62 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %start, align 8
  %64 = ptrtoint ptr %fl_start to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %fl_start, align 8
  %65 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %end, align 8
  %67 = ptrtoint ptr %fl_end to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %fl_end, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then60, %if.else57.if.end77_crit_edge, %if.end50.if.end77_crit_edge
  %rv.0 = phi i32 [ 0, %if.then60 ], [ %53, %if.else57.if.end77_crit_edge ], [ 0, %if.end50.if.end77_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out

out:                                              ; preds = %if.end77, %if.end.out_crit_edge
  %rv.1 = phi i32 [ %rv.0, %if.end77 ], [ -12, %if.end.out_crit_edge ]
  call void @dlm_put_lockspace(ptr noundef nonnull %call) #6
  br label %cleanup78

cleanup78:                                        ; preds = %out, %entry.cleanup78_crit_edge
  %retval.0 = phi i32 [ %rv.1, %out ], [ -22, %entry.cleanup78_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_plock_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @ops_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @dlm_plock_init.__key, i16 noundef signext 3) #6
  store volatile ptr @send_list, ptr @send_list, align 4
  store ptr @send_list, ptr getelementptr inbounds (%struct.list_head, ptr @send_list, i32 0, i32 1), align 4
  store volatile ptr @recv_list, ptr @recv_list, align 4
  store ptr @recv_list, ptr getelementptr inbounds (%struct.list_head, ptr @recv_list, i32 0, i32 1), align 4
  tail call void @__init_waitqueue_head(ptr noundef nonnull @send_wq, ptr noundef nonnull @.str.18, ptr noundef nonnull @dlm_plock_init.__key.17) #6
  tail call void @__init_waitqueue_head(ptr noundef nonnull @recv_wq, ptr noundef nonnull @.str.20, ptr noundef nonnull @dlm_plock_init.__key.19) #6
  %call7 = tail call i32 @misc_register(ptr noundef nonnull @plock_dev_misc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end10

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call7) #10
  br label %if.end

if.end:                                           ; preds = %do.end10, %entry.if.end_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_plock_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @plock_dev_misc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_read(ptr nocapture noundef readnone %file, ptr noundef %u, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %info = alloca %struct.dlm_plock_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp = icmp ult i32 %count, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %0 = load volatile ptr, ptr @send_list, align 4
  %cmp.i.not = icmp eq ptr %0, @send_list
  br i1 %cmp.i.not, label %if.end8.thread, label %if.then1

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %info2 = getelementptr inbounds %struct.plock_op, ptr %0, i32 0, i32 2
  %flags = getelementptr inbounds %struct.plock_op, ptr %0, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %call.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #6
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then1
  br i1 %call.i.i32, label %if.end.i.i31, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i31:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i31, %if.then4.list_del.exit_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then1
  br i1 %call.i.i32, label %if.end.i.i35, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i35:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i33 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i33, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %prev1.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i34, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i35, %if.else.__list_del_entry.exit.i_crit_edge
  %18 = load ptr, ptr @recv_list, align 4
  %call.i.i.i36 = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef nonnull @recv_list, ptr noundef %18) #6
  br i1 %call.i.i.i36, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end8_crit_edge

__list_del_entry.exit.i.if.end8_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i1.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %0, ptr %prev1.i.i1.i, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @recv_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %0, ptr @recv_list, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end8_crit_edge, %list_del.exit
  %22 = call ptr @memcpy(ptr %info, ptr %info2, i32 64)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %tobool9.not = icmp eq ptr %0, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.end11.if.then.i_crit_edge, label %if.then17

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %0) #6
  br label %if.then.i

if.then.i:                                        ; preds = %if.then17, %if.end11.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 64, i32 -1226833920) #11, !srcloc !105
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 64) #6
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %u, ptr noundef nonnull %info, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool20.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool20.not, i32 64, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end8.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end8.cleanup_crit_edge ], [ -11, %if.end8.thread ], [ -14, %if.then.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_write(ptr nocapture noundef readnone %file, ptr noundef %u, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %info = alloca %struct.dlm_plock_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info) #6
  %0 = call ptr @memset(ptr %info, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp.not = icmp eq i32 %count, 64
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 64, i32 -1226833920) #11, !srcloc !106
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !107

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 64) #6
  %2 = call i32 @llvm.read_register.i32(metadata !95) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !108
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %u, i32 noundef 64) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !107

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.then.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end2.check_version.exit_crit_edge

if.end2.check_version.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_version.exit

lor.lhs.false.i:                                  ; preds = %if.end2
  %arrayidx2.i = getelementptr inbounds [3 x i32], ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3.i = icmp ugt i32 %9, 2
  br i1 %cmp3.i, label %lor.lhs.false.i.check_version.exit_crit_edge, label %if.end6

lor.lhs.false.i.check_version.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_version.exit

check_version.exit:                               ; preds = %lor.lhs.false.i.check_version.exit_crit_edge, %if.end2.check_version.exit_crit_edge
  %arrayidx7.i = getelementptr inbounds [3 x i32], ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr inbounds [3 x i32], ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %7, i32 noundef %11, i32 noundef %13) #10
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.i
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %op.073 = load ptr, ptr @recv_list, align 4
  %cmp7.not74 = icmp eq ptr %op.073, @recv_list
  br i1 %cmp7.not74, label %if.end6.do.end_crit_edge, label %for.body.lr.ph

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end6
  %fsid9 = getelementptr inbounds %struct.dlm_plock_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %fsid9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsid9, align 4
  %number12 = getelementptr inbounds %struct.dlm_plock_info, ptr %info, i32 0, i32 9
  %owner16 = getelementptr inbounds %struct.dlm_plock_info, ptr %info, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %op.075 = phi ptr [ %op.073, %for.body.lr.ph ], [ %op.0, %for.inc.for.body_crit_edge ]
  %fsid = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp10 = icmp eq i32 %17, %15
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %number = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %number, align 8
  %20 = ptrtoint ptr %number12 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %number12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp13 = icmp eq i64 %19, %21
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %owner = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 2, i32 12
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %owner, align 8
  %24 = ptrtoint ptr %owner16 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %owner16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp17 = icmp eq i64 %23, %25
  br i1 %cmp17, label %if.then18, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true14
  %info8.le = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 2
  %call.i.i55 = call zeroext i1 @__list_del_entry_valid(ptr noundef %op.075) #6
  br i1 %call.i.i55, label %if.end.i.i56, label %if.then18.list_del_init.exit_crit_edge

if.then18.list_del_init.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i56:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %op.075, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %op.075 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op.075, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i56, %if.then18.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %op.075 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %op.075, ptr %op.075, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %op.075, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %op.075, ptr %prev.i3.i, align 4
  %34 = call ptr @memcpy(ptr %info8.le, ptr %info, i32 64)
  %callback = getelementptr inbounds %struct.plock_xop, ptr %op.075, i32 0, i32 1
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback, align 8
  %tobool21.not = icmp eq ptr %36, null
  br i1 %tobool21.not, label %if.else34, label %if.then32

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %op.075 to i32
  call void @__asan_load4_noabort(i32 %37)
  %op.0 = load ptr, ptr %op.075, align 4
  %cmp7.not = icmp eq ptr %op.0, @recv_list
  br i1 %cmp7.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then32:                                        ; preds = %list_del_init.exit
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %38 = ptrtoint ptr %op.075 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %op.075, align 4
  %cmp.i.not.i = icmp eq ptr %39, %op.075
  br i1 %cmp.i.not.i, label %if.then32.if.end.i_crit_edge, label %do.end.i58

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i58:                                       ; preds = %if.then32
  %40 = ptrtoint ptr %number to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %number, align 8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i64 noundef %41) #10
  %call.i.i.i57 = call zeroext i1 @__list_del_entry_valid(ptr noundef %op.075) #6
  br i1 %call.i.i.i57, label %if.end.i.i.i, label %do.end.i58.list_del.exit.i_crit_edge

do.end.i58.list_del.exit.i_crit_edge:             ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i3.i, align 4
  %44 = ptrtoint ptr %op.075 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %op.075, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i58.list_del.exit.i_crit_edge
  %48 = ptrtoint ptr %op.075 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %op.075, align 4
  %49 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %if.then32.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %file3.i = getelementptr inbounds %struct.plock_xop, ptr %op.075, i32 0, i32 3
  %50 = ptrtoint ptr %file3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %file3.i, align 8
  %fl5.i = getelementptr inbounds %struct.plock_xop, ptr %op.075, i32 0, i32 2
  %52 = ptrtoint ptr %fl5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fl5.i, align 4
  %54 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %callback, align 8
  %rv7.i = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 2, i32 7
  %56 = ptrtoint ptr %rv7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rv7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool8.not.i = icmp eq i32 %57, 0
  br i1 %tobool8.not.i, label %if.end13.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 %55(ptr noundef %53, i32 noundef %57) #6
  br label %dlm_plock_callback.exit

if.end13.i:                                       ; preds = %if.end.i
  %flc4.i = getelementptr inbounds %struct.plock_xop, ptr %op.075, i32 0, i32 4
  %fl_flags.i = getelementptr inbounds %struct.plock_xop, ptr %op.075, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fl_flags.i, align 8
  %and.i = and i32 %59, -129
  store i32 %and.i, ptr %fl_flags.i, align 8
  %call14.i = call i32 @posix_lock_file(ptr noundef %51, ptr noundef %flc4.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end24.i_crit_edge, label %do.end19.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %number to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %number, align 8
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %61, ptr noundef %51, ptr noundef %53) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end19.i, %if.end13.i.if.end24.i_crit_edge
  %call25.i = call i32 %55(ptr noundef %53, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.dlm_plock_callback.exit_crit_edge, label %do.end30.i

if.end24.i.dlm_plock_callback.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dlm_plock_callback.exit

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #10
  br label %dlm_plock_callback.exit

dlm_plock_callback.exit:                          ; preds = %do.end30.i, %if.end24.i.dlm_plock_callback.exit_crit_edge, %if.then9.i
  call void @kfree(ptr noundef %op.075) #6
  br label %cleanup

if.else34:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %done = getelementptr inbounds %struct.plock_op, ptr %op.075, i32 0, i32 1
  %62 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %done, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  call void @__wake_up(ptr noundef nonnull @recv_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end6.do.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  %fsid38 = getelementptr inbounds %struct.dlm_plock_info, ptr %info, i32 0, i32 8
  %63 = ptrtoint ptr %fsid38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fsid38, align 4
  %number39 = getelementptr inbounds %struct.dlm_plock_info, ptr %info, i32 0, i32 9
  %65 = ptrtoint ptr %number39 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %number39, align 8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %64, i64 noundef %66) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else34, %dlm_plock_callback.exit, %check_version.exit, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %check_version.exit ], [ 64, %dlm_plock_callback.exit ], [ 64, %if.else34 ], [ 64, %do.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %1(ptr noundef %file, ptr noundef nonnull @send_wq, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @ops_lock) #6
  %2 = load volatile ptr, ptr @send_list, align 4
  %cmp.i.not = icmp eq ptr %2, @send_list
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ops_lock) #6
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_lock_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/plock.c", i32 145, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/plock.c", i32 147, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dlm_posix_lock._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @dlm_posix_lock._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/dlm/plock.c", i32 163, i32 3}
!9 = !{ptr @dlm_posix_lock._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @dlm_posix_lock._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/dlm/plock.c", i32 173, i32 4}
!13 = !{ptr @dlm_posix_lock._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dlm_posix_lock._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_dlm_posix_lock, !16, !"__ksymtab_dlm_posix_lock", i1 false, i1 false}
!16 = !{!"../fs/dlm/plock.c", i32 182, i32 1}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/dlm/plock.c", i32 268, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dlm_posix_unlock._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @dlm_posix_unlock._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/dlm/plock.c", i32 295, i32 3}
!24 = !{ptr @dlm_posix_unlock._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dlm_posix_unlock._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_dlm_posix_unlock, !27, !"__ksymtab_dlm_posix_unlock", i1 false, i1 false}
!27 = !{!"../fs/dlm/plock.c", i32 313, i32 1}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/dlm/plock.c", i32 349, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dlm_posix_get._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @dlm_posix_get._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_dlm_posix_get, !34, !"__ksymtab_dlm_posix_get", i1 false, i1 false}
!34 = !{!"../fs/dlm/plock.c", i32 378, i32 1}
!35 = !{ptr @dlm_plock_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/dlm/plock.c", i32 495, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dlm_plock_init.__key.17, !39, !"__key", i1 false, i1 false}
!39 = !{!"../fs/dlm/plock.c", i32 498, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dlm_plock_init.__key.19, !42, !"__key", i1 false, i1 false}
!42 = !{!"../fs/dlm/plock.c", i32 499, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/dlm/plock.c", i32 503, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dlm_plock_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @dlm_plock_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ops_lock, !50, !"ops_lock", i1 false, i1 false}
!50 = !{!"../fs/dlm/plock.c", i32 16, i32 19}
!51 = !{ptr @send_list, !52, !"send_list", i1 false, i1 false}
!52 = !{!"../fs/dlm/plock.c", i32 17, i32 25}
!53 = !{ptr @recv_list, !54, !"recv_list", i1 false, i1 false}
!54 = !{!"../fs/dlm/plock.c", i32 18, i32 25}
!55 = !{ptr @send_wq, !56, !"send_wq", i1 false, i1 false}
!56 = !{!"../fs/dlm/plock.c", i32 19, i32 26}
!57 = !{ptr @recv_wq, !58, !"recv_wq", i1 false, i1 false}
!58 = !{!"../fs/dlm/plock.c", i32 20, i32 26}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/dlm/plock.c", i32 487, i32 10}
!61 = !{ptr @plock_dev_misc, !62, !"plock_dev_misc", i1 false, i1 false}
!62 = !{!"../fs/dlm/plock.c", i32 485, i32 26}
!63 = !{ptr @dev_fops, !64, !"dev_fops", i1 false, i1 false}
!64 = !{!"../fs/dlm/plock.c", i32 477, i32 37}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/plock.c", i32 458, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dev_write._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dev_write._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/dlm/plock.c", i32 48, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @check_version._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @check_version._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/dlm/plock.c", i32 196, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dlm_plock_callback._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dlm_plock_callback._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/dlm/plock.c", i32 224, i32 3}
!89 = !{ptr @dlm_plock_callback._entry.33, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dlm_plock_callback._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/dlm/plock.c", i32 231, i32 3}
!93 = !{ptr @dlm_plock_callback._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dlm_plock_callback._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2152175202, i64 2152175227}
!106 = !{i64 2152174521, i64 2152174546}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 4670076}
!109 = !{i64 4670273}
!110 = !{i64 2152155506}
