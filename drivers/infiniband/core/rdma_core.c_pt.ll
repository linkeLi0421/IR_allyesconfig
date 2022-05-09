; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/rdma_core.c_pt.bc'
source_filename = "../drivers/infiniband/core/rdma_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+uverbs_uobject_put\22, \22a\22\09"
module asm "\09.weak\09__crc_uverbs_uobject_put\09\09\09\09"
module asm "\09.long\09__crc_uverbs_uobject_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uverbs_uobject_put:\09\09\09\09\09"
module asm "\09.asciz \09\22uverbs_uobject_put\22\09\09\09\09\09"
module asm "__kstrtabns_uverbs_uobject_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+uverbs_idr_class\22, \22a\22\09"
module asm "\09.weak\09__crc_uverbs_idr_class\09\09\09\09"
module asm "\09.long\09__crc_uverbs_idr_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uverbs_idr_class:\09\09\09\09\09"
module asm "\09.asciz \09\22uverbs_idr_class\22\09\09\09\09\09"
module asm "__kstrtabns_uverbs_idr_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+uverbs_uobject_fd_release\22, \22a\22\09"
module asm "\09.weak\09__crc_uverbs_uobject_fd_release\09\09\09\09"
module asm "\09.long\09__crc_uverbs_uobject_fd_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uverbs_uobject_fd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22uverbs_uobject_fd_release\22\09\09\09\09\09"
module asm "__kstrtabns_uverbs_uobject_fd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+uverbs_fd_class\22, \22a\22\09"
module asm "\09.weak\09__crc_uverbs_fd_class\09\09\09\09"
module asm "\09.long\09__crc_uverbs_fd_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uverbs_fd_class:\09\09\09\09\09"
module asm "\09.asciz \09\22uverbs_fd_class\22\09\09\09\09\09"
module asm "__kstrtabns_uverbs_fd_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.170 }
%union.anon.170 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.171, i16, i16, i8 }
%union.anon.171 = type { i64 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uverbs_api_object = type { ptr, ptr, i8, i32 }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.182, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.182 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.uverbs_obj_fd_type = type { %struct.uverbs_obj_type, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_uverbs_uobject_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_uverbs_uobject_put = external dso_local constant [0 x i8], align 1
@__ksymtab_uverbs_uobject_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uverbs_uobject_put to i32), ptr @__kstrtab_uverbs_uobject_put, ptr @__kstrtabns_uverbs_uobject_put }, section "___ksymtab+uverbs_uobject_put", align 4
@rdma_lookup_get_uobject.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/core/rdma_core.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@uverbs_idr_class = dso_local constant { %struct.uverbs_obj_type_class, [32 x i8] } { %struct.uverbs_obj_type_class { ptr @alloc_begin_idr_uobject, ptr @alloc_commit_idr_uobject, ptr @alloc_abort_idr_uobject, ptr @lookup_get_idr_uobject, ptr @lookup_put_idr_uobject, ptr @destroy_hw_idr_uobject, ptr @remove_handle_idr_uobject, ptr @swap_idr_uobjects }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_uverbs_idr_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_uverbs_idr_class = external dso_local constant [0 x i8], align 1
@__ksymtab_uverbs_idr_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uverbs_idr_class to i32), ptr @__kstrtab_uverbs_idr_class, ptr @__kstrtabns_uverbs_idr_class }, section "___ksymtab+uverbs_idr_class", align 4
@__kstrtab_uverbs_uobject_fd_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_uverbs_uobject_fd_release = external dso_local constant [0 x i8], align 1
@__ksymtab_uverbs_uobject_fd_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uverbs_uobject_fd_release to i32), ptr @__kstrtab_uverbs_uobject_fd_release, ptr @__kstrtabns_uverbs_uobject_fd_release }, section "___ksymtab+uverbs_uobject_fd_release", align 4
@uverbs_fd_class = dso_local constant { %struct.uverbs_obj_type_class, [32 x i8] } { %struct.uverbs_obj_type_class { ptr @alloc_begin_fd_uobject, ptr @alloc_commit_fd_uobject, ptr @alloc_abort_fd_uobject, ptr @lookup_get_fd_uobject, ptr @lookup_put_fd_uobject, ptr @destroy_hw_fd_uobject, ptr @remove_handle_fd_uobject, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_uverbs_fd_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_uverbs_fd_class = external dso_local constant [0 x i8], align 1
@__ksymtab_uverbs_fd_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uverbs_fd_class to i32), ptr @__kstrtab_uverbs_fd_class, ptr @__kstrtabns_uverbs_fd_class }, section "___ksymtab+uverbs_fd_class", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 404, i32 7 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"uverbs_idr_class\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 792, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"uverbs_fd_class\00", align 1
@___asan_gen_.19 = private constant [39 x i8] c"../drivers/infiniband/core/rdma_core.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 948, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 378, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_uverbs_fd_class, ptr @__ksymtab_uverbs_idr_class, ptr @__ksymtab_uverbs_uobject_fd_release, ptr @__ksymtab_uverbs_uobject_put, ptr @.str, ptr @.str.1, ptr @uverbs_idr_class, ptr @uverbs_fd_class, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xa_init_flags.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_idr_class to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_fd_class to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_uobject_put(ptr noundef %uobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i = icmp eq ptr %uobject, null
  br i1 %tobool.not.i, label %if.then.i.kref_put.exit_crit_edge, label %do.end.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i = getelementptr %struct.ib_uobject, ptr %uobject, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end.i, %if.then.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uobj_destroy(ptr noundef %uobj, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 6
  tail call void @down_read(ptr noundef %hw_destroy_rwsem) #8
  %usecnt2.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %usecnt2.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt2.i, ptr %usecnt2.i, i32 0, i32 -1, ptr elementtype(i32) %usecnt2.i) #8, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %uverbs_try_lock_object.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

uverbs_try_lock_object.exit:                      ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp4.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp4.i, label %if.end, label %uverbs_try_lock_object.exit.out_unlock_crit_edge

uverbs_try_lock_object.exit.out_unlock_crit_edge: ; preds = %uverbs_try_lock_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %uverbs_try_lock_object.exit
  %call2 = tail call fastcc i32 @uverbs_destroy_uobject(ptr noundef %uobj, i32 noundef 0, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_unlock_crit_edge, label %if.then4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %usecnt2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %usecnt2.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then4, %if.end.out_unlock_crit_edge, %uverbs_try_lock_object.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ -16, %uverbs_try_lock_object.exit.out_unlock_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_destroy_uobject(ptr noundef %uobj, i32 noundef %reason, ptr noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 6, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !43

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %usecnt21.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i56.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt21.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %usecnt21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %usecnt21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp23.not.i = icmp eq i32 %4, -1
  br i1 %cmp23.not.i, label %if.end.assert_uverbs_usecnt.exit_crit_edge, label %sw.epilog.sink.split.i, !prof !38

if.end.assert_uverbs_usecnt.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_uverbs_usecnt.exit

sw.epilog.sink.split.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #8
  br label %assert_uverbs_usecnt.exit

assert_uverbs_usecnt.exit:                        ; preds = %sw.epilog.sink.split.i, %if.end.assert_uverbs_usecnt.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason)
  %cmp25 = icmp eq i32 %reason, 3
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %assert_uverbs_usecnt.exit
  %list = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %6, %list
  br i1 %cmp.i.not, label %if.then26.if.end53_crit_edge, label %do.end47, !prof !38

if.then26.if.end53_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end47:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #8
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.then26.if.end53_crit_edge
  %context = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 2
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %tobool62.not = icmp eq ptr %8, null
  br i1 %tobool62.not, label %do.end80, label %if.end53.if.end104.thread_crit_edge, !prof !43

if.end53.if.end104.thread_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.thread

do.end80:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #8
  br label %if.end104.thread

if.end104.thread:                                 ; preds = %do.end80, %if.end53.if.end104.thread_crit_edge
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %9 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uapi_object, align 4
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type_class, align 4
  %alloc_abort = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %alloc_abort to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_abort, align 4
  tail call void %14(ptr noundef %uobj) #8
  %15 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %context, align 4
  br label %if.then107

if.else:                                          ; preds = %assert_uverbs_usecnt.exit
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %16 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %object, align 8
  %tobool94.not = icmp eq ptr %17, null
  br i1 %tobool94.not, label %if.else.if.end104_crit_edge, label %if.then95

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then95:                                        ; preds = %if.else
  %uapi_object96 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %18 = ptrtoint ptr %uapi_object96 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uapi_object96, align 4
  %type_class97 = getelementptr inbounds %struct.uverbs_api_object, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %type_class97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type_class97, align 4
  %destroy_hw = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %destroy_hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %destroy_hw, align 4
  %call98 = tail call i32 %23(ptr noundef %uobj, i32 noundef %reason, ptr noundef %attrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %object, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.end101, %if.else.if.end104_crit_edge
  %context105 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 2
  %25 = ptrtoint ptr %context105 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %context105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reason)
  %cmp106.not = icmp eq i32 %reason, 0
  br i1 %cmp106.not, label %if.else108, label %if.end104.if.then107_crit_edge

if.end104.if.then107_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

if.then107:                                       ; preds = %if.end104.if.then107_crit_edge, %if.end104.thread
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt21.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %usecnt21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %usecnt21.i, align 4
  br label %if.end111

if.else108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %uapi_object109 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %27 = ptrtoint ptr %uapi_object109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uapi_object109, align 4
  %type_class110 = getelementptr inbounds %struct.uverbs_api_object, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %type_class110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type_class110, align 4
  %remove_handle = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %remove_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remove_handle, align 4
  tail call void %32(ptr noundef %uobj) #8
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then107
  %list112 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4
  %33 = ptrtoint ptr %list112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %list112, align 4
  %cmp.i161.not = icmp eq ptr %34, %list112
  br i1 %cmp.i161.not, label %if.end111.if.end128_crit_edge, label %do.body117

if.end111.if.end128_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.body117:                                       ; preds = %if.end111
  %uobjects_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 7
  %call121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uobjects_lock) #8
  %call.i.i163 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list112) #8
  br i1 %call.i.i163, label %if.end.i.i, label %do.body117.list_del_init.exit_crit_edge

do.body117.list_del_init.exit_crit_edge:          ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list112 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list112, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body117.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %list112 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list112, ptr %list112, align 4
  %prev.i3.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list112, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uobjects_lock, i32 noundef %call121) #8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end128_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.if.end128_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %if.end128

if.then.i.i:                                      ; preds = %list_del_init.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %uobj, null
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end128_crit_edge, label %do.end.i.i

if.then.i.i.if.end128_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %uobj, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %if.end128

if.end128:                                        ; preds = %do.end.i.i, %if.then.i.i.if.end128_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end128_crit_edge, %if.end111.if.end128_crit_edge
  br i1 %cmp25, label %if.then131, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then131:                                       ; preds = %if.end128
  %ref.i164 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i164, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i164, i32 1, i32 3, i32 1) #8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i164, ptr %ref.i164, i32 1, ptr elementtype(i32) %ref.i164) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i166 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i166)
  %cmp.i.i.i.i.i167 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i166, 1
  br i1 %cmp.i.i.i.i.i167, label %if.then.i.i172, label %if.end5.i.i.i.i.i169

if.end5.i.i.i.i.i169:                             ; preds = %if.then131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i166)
  %.not.i.i.i.i.i168 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i166, 0
  br i1 %.not.i.i.i.i.i168, label %if.end5.i.i.i.i.i169.cleanup_crit_edge, label %if.then10.i.i.i.i.i170, !prof !38

if.end5.i.i.i.i.i169.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i170:                           ; preds = %if.end5.i.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i164, i32 noundef 3) #8
  br label %cleanup

if.then.i.i172:                                   ; preds = %if.then131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i171 = icmp eq ptr %uobj, null
  br i1 %tobool.not.i.i171, label %if.then.i.i172.cleanup_crit_edge, label %do.end.i.i174

if.then.i.i172.cleanup_crit_edge:                 ; preds = %if.then.i.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i174:                                    ; preds = %if.then.i.i172
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i173 = getelementptr %struct.ib_uobject, ptr %uobj, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i173, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i174, %if.then.i.i172.cleanup_crit_edge, %if.then10.i.i.i.i.i170, %if.end5.i.i.i.i.i169.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %if.then95.cleanup_crit_edge
  %retval.0 = phi i32 [ %call98, %if.then95.cleanup_crit_edge ], [ 0, %if.end128.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i169.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i170 ], [ 0, %if.then.i.i172.cleanup_crit_edge ], [ 0, %do.end.i.i174 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__uobj_get_destroy(ptr noundef %obj, i32 noundef %id, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %conv = zext i32 %id to i64
  %call = tail call ptr @rdma_lookup_get_uobject(ptr noundef %obj, ptr noundef %1, i64 noundef %conv, i32 noundef 2, ptr noundef %attrs)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @uobj_destroy(ptr noundef %call, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %uapi_object.i = getelementptr inbounds %struct.ib_uobject, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %uapi_object.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uapi_object.i, align 4
  %type_class.i = getelementptr inbounds %struct.uverbs_api_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type_class.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type_class.i, align 4
  %lookup_put.i = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lookup_put.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lookup_put.i, align 4
  tail call void %7(ptr noundef %call, i32 noundef 2) #8
  %ref.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.rdma_lookup_put_uobject.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.i.rdma_lookup_put_uobject.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdma_lookup_put_uobject.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #8
  br label %rdma_lookup_put_uobject.exit

if.then.i.i.i:                                    ; preds = %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.rdma_lookup_put_uobject.exit_crit_edge, label %do.end.i.i.i

if.then.i.i.i.rdma_lookup_put_uobject.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdma_lookup_put_uobject.exit

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i.i = getelementptr %struct.ib_uobject, ptr %call, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %rdma_lookup_put_uobject.exit

rdma_lookup_put_uobject.exit:                     ; preds = %do.end.i.i.i, %if.then.i.i.i.rdma_lookup_put_uobject.exit_crit_edge, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.rdma_lookup_put_uobject.exit_crit_edge
  %9 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %rdma_lookup_put_uobject.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %rdma_lookup_put_uobject.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_lookup_get_uobject(ptr noundef %obj, ptr noundef %ufile, i64 noundef %id, i32 noundef %mode, ptr noundef writeonly %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %obj, inttoptr (i32 -42 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @lookup_get_idr_uobject(ptr noundef null, ptr noundef %ufile, i64 noundef %id, i32 noundef %mode)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp.i70 = icmp ugt ptr %obj, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type_class, align 4
  %lookup_get = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lookup_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lookup_get, align 4
  %call8 = tail call ptr %3(ptr noundef %obj, ptr noundef %ufile, i64 noundef %id, i32 noundef %mode) #8
  %cmp.i71 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %call8, i32 0, i32 10
  %4 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uapi_object, align 4
  %cmp12.not = icmp eq ptr %5, %obj
  br i1 %cmp12.not, label %if.end11.if.end15_crit_edge, label %if.end11.free_crit_edge

if.end11.free_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end11.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %uobj.0 = phi ptr [ %call1, %if.then.if.end15_crit_edge ], [ %call8, %if.end11.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp16.not = icmp eq i32 %mode, 2
  br i1 %cmp16.not, label %if.end15.if.end36_crit_edge, label %land.lhs.true

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end15
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %ib_dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ib_dev, align 8
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.do.end28_crit_edge, label %srcu_read_lock_held.exit

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

srcu_read_lock_held.exit:                         ; preds = %land.lhs.true
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 10, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true20, label %srcu_read_lock_held.exit.do.end28_crit_edge

srcu_read_lock_held.exit.do.end28_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true20:                                  ; preds = %srcu_read_lock_held.exit
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b69 = load i1, ptr @rdma_lookup_get_uobject.__warned, align 1
  br i1 %.b69, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rdma_lookup_get_uobject.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.1) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %srcu_read_lock_held.exit.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %do.end28.free_crit_edge, label %if.end32

do.end28.free_crit_edge:                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end32:                                         ; preds = %do.end28
  %10 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end32.if.end36_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

sw.bb.i:                                          ; preds = %if.end32
  %usecnt.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj.0, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 -1, i32 1, ptr elementtype(i32) %usecnt.i) #8, !srcloc !45
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, -1
  br i1 %cmp.not.i.i.i, label %sw.bb.i.free_crit_edge, label %do.end11.i.i.i

sw.bb.i.free_crit_edge:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

do.end11.i.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  br label %if.end36

sw.bb1.i:                                         ; preds = %if.end32
  %usecnt2.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj.0, i32 0, i32 8
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %usecnt2.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %sw.bb1.i
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt2.i, ptr %usecnt2.i, i32 0, i32 -1, ptr elementtype(i32) %usecnt2.i) #8, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp4.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp4.i, label %atomic_cmpxchg.exit.i.if.end36_crit_edge, label %atomic_cmpxchg.exit.i.free_crit_edge

atomic_cmpxchg.exit.i.free_crit_edge:             ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

atomic_cmpxchg.exit.i.if.end36_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end36:                                         ; preds = %atomic_cmpxchg.exit.i.if.end36_crit_edge, %do.end11.i.i.i, %if.end32.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %tobool37.not = icmp eq ptr %attrs, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %context = getelementptr inbounds %struct.ib_uobject, ptr %uobj.0, i32 0, i32 2
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %context39 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %15 = ptrtoint ptr %context39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %context39, align 4
  br label %cleanup

free:                                             ; preds = %atomic_cmpxchg.exit.i.free_crit_edge, %sw.bb.i.free_crit_edge, %do.end28.free_crit_edge, %if.end11.free_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end11.free_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end28.free_crit_edge ], [ inttoptr (i32 -16 to ptr), %atomic_cmpxchg.exit.i.free_crit_edge ], [ inttoptr (i32 -16 to ptr), %sw.bb.i.free_crit_edge ]
  %uobj.1 = phi ptr [ %call8, %if.end11.free_crit_edge ], [ %uobj.0, %do.end28.free_crit_edge ], [ %uobj.0, %atomic_cmpxchg.exit.i.free_crit_edge ], [ %uobj.0, %sw.bb.i.free_crit_edge ]
  %uapi_object41 = getelementptr inbounds %struct.ib_uobject, ptr %uobj.1, i32 0, i32 10
  %16 = ptrtoint ptr %uapi_object41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uapi_object41, align 4
  %type_class42 = getelementptr inbounds %struct.uverbs_api_object, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %type_class42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type_class42, align 4
  %lookup_put = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %lookup_put to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lookup_put, align 4
  tail call void %21(ptr noundef %uobj.1, i32 noundef %mode) #8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj.1, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %free
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %uobj.1, null
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %uobj.1, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then38, %if.end36.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.then.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %uobj.0, %if.then38 ], [ %uobj.0, %if.end36.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i.cleanup_crit_edge ], [ %ret.0, %do.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_lookup_put_uobject(ptr noundef %uobj, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb19.i
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %entry
  %usecnt.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %sw.epilog.sink.split.i.thread, label %sw.bb.i.sw.bb_crit_edge, !prof !43

sw.bb.i.sw.bb_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.epilog.sink.split.i.thread:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #8
  br label %sw.bb

sw.bb19.i:                                        ; preds = %entry
  %usecnt21.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i56.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt21.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %usecnt21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %usecnt21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp23.not.i = icmp eq i32 %4, -1
  br i1 %cmp23.not.i, label %sw.bb19.i.sw.bb1_crit_edge, label %sw.epilog.sink.split.i, !prof !38

sw.bb19.i.sw.bb1_crit_edge:                       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.epilog.sink.split.i:                           ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #8
  br label %sw.bb1

sw.bb:                                            ; preds = %sw.epilog.sink.split.i.thread, %sw.bb.i.sw.bb_crit_edge
  %usecnt = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #8, !srcloc !47
  br label %sw.epilog

sw.bb1:                                           ; preds = %sw.epilog.sink.split.i, %sw.bb19.i.sw.bb1_crit_edge
  %usecnt2 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2, i32 noundef 4) #8
  %6 = ptrtoint ptr %usecnt2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %usecnt2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %7 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uapi_object, align 4
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type_class, align 4
  %lookup_put = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %lookup_put to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lookup_put, align 4
  tail call void %12(ptr noundef %uobj, i32 noundef %mode) #8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %uverbs_uobject_put.exit

if.then.i.i:                                      ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %uobj, null
  br i1 %tobool.not.i.i, label %if.then.i.i.uverbs_uobject_put.exit_crit_edge, label %do.end.i.i

if.then.i.i.uverbs_uobject_put.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %uobj, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %uverbs_uobject_put.exit

uverbs_uobject_put.exit:                          ; preds = %do.end.i.i, %if.then.i.i.uverbs_uobject_put.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__uobj_perform_destroy(ptr noundef %obj, i32 noundef %id, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__uobj_get_destroy(ptr noundef %obj, i32 noundef %id, ptr noundef %attrs)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %uapi_object.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %uapi_object.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uapi_object.i.i, align 4
  %type_class.i.i = getelementptr inbounds %struct.uverbs_api_object, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type_class.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type_class.i.i, align 4
  %lookup_put.i.i = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %lookup_put.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lookup_put.i.i, align 4
  tail call void %6(ptr noundef %call, i32 noundef 2) #8
  %ref.i.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.i.i.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.cleanup_crit_edge, label %do.end.i.i.i.i

if.then.i.i.i.i.cleanup_crit_edge:                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i.i.i = getelementptr %struct.ib_uobject, ptr %call, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end5.i.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i.i ], [ 0, %if.then.i.i.i.i.cleanup_crit_edge ], [ 0, %do.end.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lookup_get_idr_uobject(ptr nocapture noundef readnone %obj, ptr noundef %ufile, i64 noundef %id, i32 noundef %mode) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %id)
  %0 = icmp ugt i64 %id, 4294967295
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 12
  %conv = trunc i64 %id to i32
  %call2 = tail call ptr @xa_load(ptr noundef %idr, i32 noundef %conv) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then6_crit_edge, label %lor.lhs.false3

rcu_read_lock.exit.if.then6_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false3:                                   ; preds = %rcu_read_lock.exit
  %ref = getelementptr inbounds %struct.ib_uobject, ptr %call2, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #8
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false3
  %7 = phi i32 [ %6, %lor.lhs.false3 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %10, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !38

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #8
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then6_crit_edge, label %kref_get_unless_zero.exit.if.end8_crit_edge

kref_get_unless_zero.exit.if.end8_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

kref_get_unless_zero.exit.if.then6_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %kref_get_unless_zero.exit.if.then6_crit_edge, %rcu_read_lock.exit.if.then6_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %kref_get_unless_zero.exit.if.end8_crit_edge
  %uobj.0 = phi ptr [ %call2, %kref_get_unless_zero.exit.if.end8_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then6 ]
  %call.i13 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i13, label %if.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

if.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %if.end8
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %if.end8.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %17 = call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i20 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %uobj.0, %rcu_read_unlock.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_alloc_begin_uobject(ptr noundef %obj, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %obj, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @down_read_trylock(ptr noundef %hw_destroy_rwsem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %obj, i32 0, i32 1
  %2 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type_class, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call7 = tail call ptr %5(ptr noundef %obj, ptr noundef %attrs) #8
  %cmp.i19 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_alloc_commit_uobject(ptr noundef %uobj, ptr nocapture noundef readonly %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !43

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %uverbs_uobject_get.exit

uverbs_uobject_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.uverbs_uobject_get.exit_crit_edge
  %uobjects_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %uobjects_lock) #8
  %list = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4
  %uobjects = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %uobjects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uobjects, align 4
  %call.i.i10 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %uobjects, ptr noundef %5) #8
  br i1 %call.i.i10, label %if.end.i.i, label %uverbs_uobject_get.exit.list_add.exit_crit_edge

uverbs_uobject_get.exit.list_add.exit_crit_edge:  ; preds = %uverbs_uobject_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %uverbs_uobject_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %uobjects, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %uobjects to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %uobjects, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %uverbs_uobject_get.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %uobjects_lock) #8
  %usecnt = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #8
  %10 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %usecnt, align 4
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %11 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uapi_object, align 4
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type_class, align 4
  %alloc_commit = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %alloc_commit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alloc_commit, align 4
  tail call void %16(ptr noundef %uobj) #8
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 6
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uverbs_uobject_get(ptr noundef %uobject) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ref = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !43

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_assign_uobject(ptr noundef %to_uobj, ptr noundef %new_uobj, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt21.i = getelementptr inbounds %struct.ib_uobject, ptr %new_uobj, i32 0, i32 8
  %call.i.i56.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt21.i, i32 noundef 4) #8
  %0 = ptrtoint ptr %usecnt21.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp23.not.i = icmp eq i32 %1, -1
  br i1 %cmp23.not.i, label %entry.assert_uverbs_usecnt.exit_crit_edge, label %sw.epilog.sink.split.i, !prof !38

entry.assert_uverbs_usecnt.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_uverbs_usecnt.exit

sw.epilog.sink.split.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #8
  br label %assert_uverbs_usecnt.exit

assert_uverbs_usecnt.exit:                        ; preds = %sw.epilog.sink.split.i, %entry.assert_uverbs_usecnt.exit_crit_edge
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %to_uobj, i32 0, i32 10
  %2 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uapi_object, align 4
  %uapi_object1 = getelementptr inbounds %struct.ib_uobject, ptr %new_uobj, i32 0, i32 10
  %4 = ptrtoint ptr %uapi_object1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uapi_object1, align 4
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %lor.rhs, label %assert_uverbs_usecnt.exit.do.end_crit_edge

assert_uverbs_usecnt.exit.do.end_crit_edge:       ; preds = %assert_uverbs_usecnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %assert_uverbs_usecnt.exit
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type_class, align 4
  %swap_uobjects = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %swap_uobjects to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %swap_uobjects, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.rhs.do.end_crit_edge, label %if.end25.critedge, !prof !43

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %assert_uverbs_usecnt.exit.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end25.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %to_uobj, ptr noundef %new_uobj) #8
  %call = tail call fastcc i32 @uverbs_destroy_uobject(ptr noundef %to_uobj, i32 noundef 0, ptr noundef %attrs)
  br label %return

return:                                           ; preds = %if.end25.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_alloc_abort_uobject(ptr noundef %uobj, ptr noundef %attrs, i1 noundef zeroext %hw_obj_valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  br i1 %hw_obj_valid, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then:                                          ; preds = %entry
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %2 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uapi_object, align 4
  %type_class = getelementptr inbounds %struct.uverbs_api_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type_class to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type_class, align 4
  %destroy_hw = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %destroy_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_hw, align 4
  %call = tail call i32 %7(ptr noundef %uobj, i32 noundef 3, ptr noundef %attrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end26_crit_edge, label %do.end, !prof !38

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 713, i32 noundef 9, ptr noundef null) #8
  tail call void @rdma_alloc_commit_uobject(ptr noundef %uobj, ptr noundef %attrs)
  br label %cleanup

if.end26:                                         ; preds = %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %call27 = tail call fastcc i32 @uverbs_destroy_uobject(ptr noundef %uobj, i32 noundef 3, ptr noundef %attrs)
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 6
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_ufile_idr_uobject(ptr noundef %ufile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %idr, ptr noundef nonnull @.str.5, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 12, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_ufile_idr_uobject(ptr noundef %ufile) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 12
  %call = call ptr @xa_find(ptr noundef %idr, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #8
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %uverbs_uobject_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.031 = phi ptr [ %call23, %uverbs_uobject_put.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %object = getelementptr inbounds %struct.ib_uobject, ptr %entry1.031, i32 0, i32 3
  %1 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %object, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %do.end, !prof !38

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 785, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %entry1.031, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %uverbs_uobject_put.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %entry1.031, i32 0, i32 9
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %uverbs_uobject_put.exit

uverbs_uobject_put.exit:                          ; preds = %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge
  %call23 = call ptr @xa_find_after(ptr noundef %idr, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %uverbs_uobject_put.exit.for.end_crit_edge, label %uverbs_uobject_put.exit.for.body_crit_edge

uverbs_uobject_put.exit.for.body_crit_edge:       ; preds = %uverbs_uobject_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

uverbs_uobject_put.exit.for.end_crit_edge:        ; preds = %uverbs_uobject_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %uverbs_uobject_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @xa_destroy(ptr noundef %idr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @alloc_begin_idr_uobject(ptr noundef %obj, ptr nocapture noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1.i, align 8
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i.i.i_crit_edge

entry.if.end8.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %1) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.alloc_uobj.exit_crit_edge, label %cleanup.i

if.then.i.alloc_uobj.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_uobj.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %context.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %cleanup.i, %entry.if.end8.i.i.i_crit_edge
  %5 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj, align 4
  %obj_size.i = getelementptr inbounds %struct.uverbs_obj_type, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %obj_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %tobool8.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool8.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end11.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ufile12.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ufile12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %ufile12.i, align 8
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context.i, align 4
  %context14.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %context14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %context14.i, align 4
  %list.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev.i.i, align 8
  %uapi_object.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %uapi_object.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj, ptr %uapi_object.i, align 4
  %usecnt.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 -1, ptr %usecnt.i, align 8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %ref.i, align 4
  br label %alloc_uobj.exit

alloc_uobj.exit:                                  ; preds = %if.end11.i, %if.then.i.alloc_uobj.exit_crit_edge
  %retval.1.i = phi ptr [ %call9.i.i.i, %if.end11.i ], [ %call.i, %if.then.i.alloc_uobj.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_uobj.exit.cleanup_crit_edge, label %if.end

alloc_uobj.exit.cleanup_crit_edge:                ; preds = %alloc_uobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %alloc_uobj.exit
  %ufile.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 1
  %18 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ufile.i, align 8
  %idr.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %19, i32 0, i32 12
  %id.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idr.i) #8
  %call.i.i = tail call i32 @__xa_alloc(ptr noundef %idr.i, ptr noundef %id.i, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #8
  tail call void @_raw_spin_unlock(ptr noundef %idr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.uobj_put_crit_edge

if.end.uobj_put_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %uobj_put

if.end4:                                          ; preds = %if.end
  %cg_obj = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 5
  %context = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 2
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call5 = tail call i32 @ib_rdmacg_try_charge(ptr noundef %cg_obj, ptr noundef %23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %remove

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

remove:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ufile1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ufile1.i, align 8
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 8
  %call9 = tail call ptr @xa_erase(ptr noundef %idr, i32 noundef %27) #8
  br label %uobj_put

uobj_put:                                         ; preds = %remove, %if.end.uobj_put_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.end.uobj_put_crit_edge ], [ %call5, %remove ]
  %ref.i22 = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i22, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i22, i32 1, i32 3, i32 1) #8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i22, ptr %ref.i22, i32 1, ptr elementtype(i32) %ref.i22) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %uobj_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i22, i32 noundef 3) #8
  br label %uverbs_uobject_put.exit

if.then.i.i:                                      ; preds = %uobj_put
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %retval.1.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.uverbs_uobject_put.exit_crit_edge, label %do.end.i.i

if.then.i.i.uverbs_uobject_put.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %uverbs_uobject_put.exit

uverbs_uobject_put.exit:                          ; preds = %do.end.i.i, %if.then.i.i.uverbs_uobject_put.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge
  %29 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %uverbs_uobject_put.exit, %if.end4.cleanup_crit_edge, %alloc_uobj.exit.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %uverbs_uobject_put.exit ], [ %retval.1.i, %alloc_uobj.exit.cleanup_crit_edge ], [ %retval.1.i, %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alloc_commit_idr_uobject(ptr noundef %uobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 12
  %id = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %call = tail call ptr @xa_store(ptr noundef %idr, i32 noundef %3, ptr noundef %uobj, i32 noundef 3264) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alloc_abort_idr_uobject(ptr noundef %uobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_obj = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 5
  %context = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ib_rdmacg_uncharge(ptr noundef %cg_obj, ptr noundef %3, i32 noundef 1) #8
  %ufile = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 12
  %id = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %call = tail call ptr @xa_erase(ptr noundef %idr, i32 noundef %7) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lookup_put_idr_uobject(ptr nocapture noundef %uobj, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @destroy_hw_idr_uobject(ptr noundef %uobj, i32 noundef %why, ptr noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %0 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uapi_object, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %destroy_object = getelementptr inbounds %struct.uverbs_obj_idr_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %destroy_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy_object, align 4
  %call = tail call i32 %5(ptr noundef %uobj, i32 noundef %why, ptr noundef %attrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %why)
  %cmp = icmp eq i32 %why, 3
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cg_obj = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 5
  %context = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 2
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @ib_rdmacg_uncharge(ptr noundef %cg_obj, ptr noundef %9, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_handle_idr_uobject(ptr noundef %uobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 12
  %id = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %call = tail call ptr @xa_erase(ptr noundef %idr, i32 noundef %3) #8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %uverbs_uobject_put.exit

if.then.i.i:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %uobj, null
  br i1 %tobool.not.i.i, label %if.then.i.i.uverbs_uobject_put.exit_crit_edge, label %do.end.i.i

if.then.i.i.uverbs_uobject_put.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_uobject_put.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %uobj, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %uverbs_uobject_put.exit

uverbs_uobject_put.exit:                          ; preds = %do.end.i.i, %if.then.i.i.uverbs_uobject_put.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.uverbs_uobject_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swap_idr_uobjects(ptr noundef %obj_old, ptr nocapture noundef %obj_new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.ib_uobject, ptr %obj_old, i32 0, i32 1
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %idr = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 12
  %id = getelementptr inbounds %struct.ib_uobject, ptr %obj_old, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  tail call void @_raw_spin_lock(ptr noundef %idr) #8
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef %idr, i32 noundef %3, ptr noundef %obj_old, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #8
  tail call void @_raw_spin_unlock(ptr noundef %idr) #8
  %cmp.not = icmp eq ptr %call.i, %obj_old
  br i1 %cmp.not, label %do.body24, label %entry.cleanup.sink.split_crit_edge, !prof !38

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body24:                                        ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %id26 = getelementptr inbounds %struct.ib_uobject, ptr %obj_new, i32 0, i32 6
  %6 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id26, align 8
  store i32 %7, ptr %id, align 8
  store i32 %5, ptr %id26, align 8
  %8 = load i32, ptr %id, align 8
  tail call void @_raw_spin_lock(ptr noundef %idr) #8
  %call.i78 = tail call ptr @__xa_cmpxchg(ptr noundef %idr, i32 noundef %8, ptr noundef null, ptr noundef %obj_old, i32 noundef 3264) #8
  tail call void @_raw_spin_unlock(ptr noundef %idr) #8
  %cmp35.not = icmp eq ptr %call.i78, null
  br i1 %cmp35.not, label %do.body24.cleanup_crit_edge, label %do.body24.cleanup.sink.split_crit_edge, !prof !38

do.body24.cleanup.sink.split_crit_edge:           ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body24.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 610, %entry.cleanup.sink.split_crit_edge ], [ 616, %do.body24.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body24.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uverbs_uobject_fd_release(ptr nocapture readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  %attrs = alloca %struct.uverbs_attr_bundle, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile2 = getelementptr inbounds %struct.ib_uobject, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ufile2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile2, align 8
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 6
  %call = tail call i32 @down_read_trylock(ptr noundef %hw_destroy_rwsem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end32_crit_edge, label %if.then4

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %attrs) #8
  %4 = call ptr @memset(ptr %attrs, i32 0, i32 56)
  %ufile5 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %ufile5, align 8
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %context6 = getelementptr inbounds %struct.ib_uobject, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %context6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context6, align 4
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %context, align 4
  %usecnt2.i = getelementptr inbounds %struct.ib_uobject, ptr %1, i32 0, i32 8
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %usecnt2.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then4
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt2.i, ptr %usecnt2.i, i32 0, i32 -1, ptr elementtype(i32) %usecnt2.i) #8, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %uverbs_try_lock_object.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

uverbs_try_lock_object.exit:                      ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp4.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp4.i, label %uverbs_try_lock_object.exit.if.end23_crit_edge, label %do.end, !prof !38

uverbs_try_lock_object.exit.if.end23_crit_edge:   ; preds = %uverbs_try_lock_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %uverbs_try_lock_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 9, ptr noundef null) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %uverbs_try_lock_object.exit.if.end23_crit_edge
  %call30 = call fastcc i32 @uverbs_destroy_uobject(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %attrs)
  call void @up_read(ptr noundef %hw_destroy_rwsem) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attrs) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end23, %if.end.if.end32_crit_edge
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #8
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  call void @ib_uverbs_release_file(ptr noundef %3) #8, !callees !51
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %cleanup

do.end.i.i:                                       ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %1, i32 0, i32 9
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_release_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_destroy_ufile_hw(ptr noundef %ufile, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 6
  tail call void @down_write(ptr noundef %hw_destroy_rwsem) #8
  %ucontext = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 3
  %0 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucontext, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %while.cond.preheader

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

while.cond.preheader:                             ; preds = %entry
  %uobjects = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %2 = ptrtoint ptr %uobjects to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %uobjects, align 4
  %cmp.i.not = icmp eq ptr %3, %uobjects
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %call2 = tail call fastcc i32 @__uverbs_cleanup_ufile(ptr noundef %ufile, i32 noundef %reason)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %4 = ptrtoint ptr %uobjects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %uobjects, align 4
  %cmp.i44.not = icmp eq ptr %5, %uobjects
  br i1 %cmp.i44.not, label %while.end.if.end33_crit_edge, label %do.end, !prof !38

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 940, i32 noundef 9, ptr noundef null) #8
  %call32 = tail call fastcc i32 @__uverbs_cleanup_ufile(ptr noundef %ufile, i32 noundef 4)
  br label %if.end33

if.end33:                                         ; preds = %do.end, %while.end.if.end33_crit_edge
  %6 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ucontext, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp.i46 = icmp eq i32 %reason, 2
  br i1 %cmp.i46, label %if.then.i, label %if.end33.if.end5.i_crit_edge

if.end33.if.end5.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end33
  tail call void @uverbs_user_mmap_disassociate(ptr noundef %ufile) #8
  %disassociate_ucontext.i = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 34
  %10 = ptrtoint ptr %disassociate_ucontext.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disassociate_ucontext.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then2.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %7) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i.if.end5.i_crit_edge, %if.end33.if.end5.i_crit_edge
  %cg_obj.i = getelementptr inbounds %struct.ib_ucontext, ptr %7, i32 0, i32 2
  tail call void @ib_rdmacg_uncharge(ptr noundef %cg_obj.i, ptr noundef %9, i32 noundef 0) #8
  %res.i = getelementptr inbounds %struct.ib_ucontext, ptr %7, i32 0, i32 3
  tail call void @rdma_restrack_del(ptr noundef %res.i) #8
  %dealloc_ucontext.i = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 31
  %12 = ptrtoint ptr %dealloc_ucontext.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dealloc_ucontext.i, align 4
  tail call void %13(ptr noundef %7) #8
  %xa_head.i.i = getelementptr inbounds %struct.ib_ucontext, ptr %7, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %15, null
  br i1 %cmp.i.i, label %if.end5.i.ufile_destroy_ucontext.exit_crit_edge, label %do.end.i, !prof !38

if.end5.i.ufile_destroy_ucontext.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ufile_destroy_ucontext.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 874, i32 noundef 9, ptr noundef null) #8
  br label %ufile_destroy_ucontext.exit

ufile_destroy_ucontext.exit:                      ; preds = %do.end.i, %if.end5.i.ufile_destroy_ucontext.exit_crit_edge
  tail call void @kfree(ptr noundef %7) #8
  %16 = ptrtoint ptr %ucontext to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ucontext, align 4
  br label %done

done:                                             ; preds = %ufile_destroy_ucontext.exit, %entry.done_crit_edge
  tail call void @up_write(ptr noundef %hw_destroy_rwsem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uverbs_cleanup_ufile(ptr noundef %ufile, i32 noundef %reason) unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.uverbs_attr_bundle, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %attrs) #8
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 56)
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ufile, ptr %ufile1, align 8
  %uobjects = getelementptr inbounds %struct.ib_uverbs_file, ptr %ufile, i32 0, i32 8
  %2 = ptrtoint ptr %uobjects to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uobjects, align 4
  %cmp.not100 = icmp eq ptr %3, %uobjects
  br i1 %cmp.not100, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %context8 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reason)
  %cmp30 = icmp eq i32 %reason, 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in102 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn105, %for.inc.for.body_crit_edge ]
  %ret.0101 = phi i32 [ -22, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in102 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn105 = load ptr, ptr %.pn.in102, align 4
  %context = getelementptr i8, ptr %.pn.in102, i32 -8
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %7 = ptrtoint ptr %context8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %context8, align 4
  %usecnt2.i = getelementptr i8, ptr %.pn.in102, i32 20
  %call.i.i8.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @llvm.prefetch.p0(ptr %usecnt2.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt2.i, ptr %usecnt2.i, i32 0, i32 -1, ptr elementtype(i32) %usecnt2.i) #8, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %uverbs_try_lock_object.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

uverbs_try_lock_object.exit:                      ; preds = %do.body.i.i.i.i
  %obj.0104 = getelementptr i8, ptr %.pn.in102, i32 -20
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %8, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp4.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp4.i, label %uverbs_try_lock_object.exit.if.end_crit_edge, label %do.end, !prof !38

uverbs_try_lock_object.exit.if.end_crit_edge:     ; preds = %uverbs_try_lock_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %uverbs_try_lock_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 902, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %uverbs_try_lock_object.exit.if.end_crit_edge
  br i1 %cmp30, label %if.then31, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %object = getelementptr i8, ptr %.pn.in102, i32 -4
  %9 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %object, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  %call33 = call fastcc i32 @uverbs_destroy_uobject(ptr noundef %obj.0104, i32 noundef %reason, ptr noundef nonnull %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.for.inc_crit_edge, label %if.else

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt2.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %usecnt2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %usecnt2.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end32.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0101, %if.else ], [ 0, %if.end32.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn105, %uobjects
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ -22, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reason)
  %cmp42 = icmp eq i32 %reason, 4
  br i1 %cmp42, label %if.then43, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %for.end
  %11 = ptrtoint ptr %uobjects to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %uobjects, align 4
  %cmp.i.not = icmp eq ptr %12, %uobjects
  br i1 %cmp.i.not, label %if.then43.cleanup_crit_edge, label %do.end65, !prof !38

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end65:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.then43.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end65 ], [ 0, %if.then43.cleanup_crit_edge ], [ %ret.0.lcssa, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attrs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @alloc_begin_fd_uobject(ptr noundef %obj, ptr nocapture noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1.i, align 8
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end8.i.i.i_crit_edge

entry.if.end8.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %1) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.alloc_uobj.exit_crit_edge, label %cleanup.i

if.then.i.alloc_uobj.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_uobj.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %context.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %cleanup.i, %entry.if.end8.i.i.i_crit_edge
  %5 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj, align 4
  %obj_size.i = getelementptr inbounds %struct.uverbs_obj_type, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %obj_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %obj_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %tobool8.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool8.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end11.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ufile12.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ufile12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %ufile12.i, align 8
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context.i, align 4
  %context14.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %context14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %context14.i, align 4
  %list.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev.i.i, align 8
  %uapi_object.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %uapi_object.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %obj, ptr %uapi_object.i, align 4
  %usecnt.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 -1, ptr %usecnt.i, align 8
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %ref.i, align 4
  br label %alloc_uobj.exit

alloc_uobj.exit:                                  ; preds = %if.end11.i, %if.then.i.alloc_uobj.exit_crit_edge
  %retval.1.i = phi ptr [ %call9.i.i.i, %if.end11.i ], [ %call.i, %if.then.i.alloc_uobj.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_uobj.exit.cleanup_crit_edge, label %if.end

alloc_uobj.exit.cleanup_crit_edge:                ; preds = %alloc_uobj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %alloc_uobj.exit
  %18 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %obj, align 4
  %fops = getelementptr inbounds %struct.uverbs_obj_fd_type, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fops, align 4
  %release = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  %cmp.not = icmp ne ptr %23, @uverbs_uobject_fd_release
  %cmp4 = icmp ne ptr %23, @uverbs_async_event_release
  %spec.select = and i1 %cmp.not, %cmp4
  br i1 %spec.select, label %do.end, label %if.end29, !prof !43

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 468, i32 noundef 9, ptr noundef null) #8
  br label %err_fd

if.end29:                                         ; preds = %if.end
  %call30 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %24 = inttoptr i32 %call30 to ptr
  br label %err_fd

if.end34:                                         ; preds = %if.end29
  %name = getelementptr inbounds %struct.uverbs_obj_fd_type, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %27 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fops, align 4
  %flags = getelementptr inbounds %struct.uverbs_obj_fd_type, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %call36 = tail call ptr @anon_inode_getfile(ptr noundef %26, ptr noundef %28, ptr noundef null, i32 noundef %30) #8
  %cmp.i61 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_unused_fd(i32 noundef %call30) #8
  br label %err_fd

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 3
  %31 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call36, ptr %object, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 6
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call30, ptr %id, align 8
  br label %cleanup

err_fd:                                           ; preds = %if.then38, %if.then32, %do.end
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %24, %if.then32 ], [ %call36, %if.then38 ]
  %ref.i62 = getelementptr inbounds %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i62, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i62, i32 1, i32 3, i32 1) #8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i62, ptr %ref.i62, i32 1, ptr elementtype(i32) %ref.i62) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err_fd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i62, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %err_fd
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %tobool.not.i.i = icmp eq ptr %retval.1.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i.i = getelementptr %struct.ib_uobject, ptr %retval.1.i, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end40, %alloc_uobj.exit.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.1.i, %if.end40 ], [ %retval.1.i, %alloc_uobj.exit.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i.cleanup_crit_edge ], [ %ret.0, %do.end.i.i ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alloc_commit_fd_uobject(ptr noundef %uobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 8
  %ufile = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !43

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %id, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uobj, ptr %private_data, align 4
  tail call void @fd_install(i32 noundef %1, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alloc_abort_fd_uobject(ptr nocapture noundef readonly %uobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  tail call void @fput(ptr noundef %1) #8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  tail call void @put_unused_fd(i32 noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lookup_get_fd_uobject(ptr nocapture noundef readonly %obj, ptr noundef readnone %ufile, i64 noundef %id, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %id to i32
  %conv1 = sext i32 %conv to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1, i64 %id)
  %cmp.not = icmp eq i64 %conv1, %id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp3.not = icmp eq i32 %mode, 0
  br i1 %cmp3.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call12 = tail call ptr @fget(i32 noundef %conv) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %private_data = getelementptr inbounds %struct.file, ptr %call12, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %call12, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %fops = getelementptr inbounds %struct.uverbs_obj_fd_type, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops, align 4
  %cmp17.not = icmp eq ptr %5, %7
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end16.if.then22_crit_edge

if.end16.if.then22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end16
  %ufile19 = getelementptr inbounds %struct.ib_uobject, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ufile19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile19, align 8
  %cmp20.not = icmp eq ptr %9, %ufile
  br i1 %cmp20.not, label %if.end24, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end16.if.then22_crit_edge
  tail call void @fput(ptr noundef nonnull %call12) #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uverbs_uobject_get(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -9 to ptr), %if.then22 ], [ %3, %if.end24 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -9 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lookup_put_fd_uobject(ptr nocapture noundef readonly %uobj, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 733, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @fput(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @destroy_hw_fd_uobject(ptr noundef %uobj, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uapi_object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %0 = ptrtoint ptr %uapi_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uapi_object, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %destroy_object = getelementptr inbounds %struct.uverbs_obj_fd_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %destroy_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy_object, align 4
  tail call void %5(ptr noundef %uobj, i32 noundef %why) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @remove_handle_fd_uobject(ptr nocapture noundef %uobj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uverbs_get_uobject_from_file(i16 noundef zeroext %object_id, i32 noundef %access, i64 noundef %id, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uapi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %object_id)
  %cmp.i = icmp eq i16 %object_id, -1
  br i1 %cmp.i, label %entry.uapi_get_object.exit_crit_edge, label %if.end.i

entry.uapi_get_object.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_get_object.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %object_id to i32
  %and.i.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %and1.i.i = and i32 %conv.i, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and1.i.i)
  %cmp.i.i = icmp ugt i32 %and1.i.i, 11
  br i1 %cmp.i.i, label %if.then.i.i.uapi_key_obj.exit.i_crit_edge, label %if.end.i.i

if.then.i.i.uapi_key_obj.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add nuw nsw i32 %and1.i.i, 20
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %object_id)
  %cmp3.i.i = icmp ugt i16 %object_id, 19
  br i1 %cmp3.i.i, label %if.else.i.i.uapi_key_obj.exit.i_crit_edge, label %if.else.i.i.if.end6.i.i_crit_edge

if.else.i.i.if.end6.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.else.i.i.uapi_key_obj.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit.i

if.end6.i.i:                                      ; preds = %if.else.i.i.if.end6.i.i_crit_edge, %if.end.i.i
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %conv.i, %if.else.i.i.if.end6.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %id.addr.0.i.i, 11
  br label %uapi_key_obj.exit.i

uapi_key_obj.exit.i:                              ; preds = %if.end6.i.i, %if.else.i.i.uapi_key_obj.exit.i_crit_edge, %if.then.i.i.uapi_key_obj.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shl.i.i, %if.end6.i.i ], [ -1, %if.then.i.i.uapi_key_obj.exit.i_crit_edge ], [ -1, %if.else.i.i.uapi_key_obj.exit.i_crit_edge ]
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %5, i32 noundef %retval.0.i.i) #8
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  br label %uapi_get_object.exit

uapi_get_object.exit:                             ; preds = %uapi_key_obj.exit.i, %entry.uapi_get_object.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -42 to ptr), %entry.uapi_get_object.exit_crit_edge ], [ %spec.select.i, %uapi_key_obj.exit.i ]
  %6 = zext i32 %access to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %access, label %do.end [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %uapi_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufile, align 8
  %call2 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %retval.0.i, ptr noundef %8, i64 noundef %id, i32 noundef 0, ptr noundef %attrs)
  br label %cleanup

sw.bb3:                                           ; preds = %uapi_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile, align 8
  %call5 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %retval.0.i, ptr noundef %10, i64 noundef %id, i32 noundef 2, ptr noundef %attrs)
  br label %cleanup

sw.bb6:                                           ; preds = %uapi_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufile, align 8
  %call8 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %retval.0.i, ptr noundef %12, i64 noundef %id, i32 noundef 1, ptr noundef %attrs)
  br label %cleanup

sw.bb9:                                           ; preds = %uapi_get_object.exit
  %cmp.i.i39 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i39, label %sw.bb9.cleanup_crit_edge, label %if.end.i41

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i41:                                       ; preds = %sw.bb9
  %13 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile, align 8
  %hw_destroy_rwsem.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %14, i32 0, i32 6
  %call3.i = tail call i32 @down_read_trylock(ptr noundef %hw_destroy_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i40 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i40, label %if.end.i41.cleanup_crit_edge, label %if.end6.i

if.end.i41.cleanup_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i41
  %type_class.i = getelementptr inbounds %struct.uverbs_api_object, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %type_class.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type_class.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call7.i = tail call ptr %18(ptr noundef %retval.0.i, ptr noundef %attrs) #8
  %cmp.i19.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %if.then9.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %hw_destroy_rwsem.i) #8
  br label %cleanup

do.end:                                           ; preds = %uapi_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 980, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9.i, %if.end6.i.cleanup_crit_edge, %if.end.i41.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb6, %sw.bb3, %sw.bb
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %do.end ], [ %call8, %sw.bb6 ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ], [ %call7.i, %if.then9.i ], [ %call7.i, %if.end6.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb9.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.i41.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_finalize_object(ptr noundef %uobj, i32 noundef %access, i1 noundef zeroext %hw_obj_valid, i1 noundef zeroext %commit, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %access to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %access, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rdma_lookup_put_uobject(ptr noundef %uobj, i32 noundef 0)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rdma_lookup_put_uobject(ptr noundef %uobj, i32 noundef 1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %uobj, null
  br i1 %tobool.not, label %sw.bb3.sw.epilog_crit_edge, label %if.then

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb3
  %uapi_object.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %1 = ptrtoint ptr %uapi_object.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uapi_object.i, align 4
  %type_class.i = getelementptr inbounds %struct.uverbs_api_object, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %type_class.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type_class.i, align 4
  %lookup_put.i = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %lookup_put.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lookup_put.i, align 4
  tail call void %6(ptr noundef nonnull %uobj, i32 noundef 2) #8
  %ref.i.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !38

if.end5.i.i.i.i.i.i.sw.epilog_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #8
  br label %sw.epilog

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %rcu.i.i.i = getelementptr %struct.ib_uobject, ptr %uobj, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 44 to ptr)) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br i1 %commit, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rdma_alloc_commit_uobject(ptr noundef %uobj, ptr noundef %attrs)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  %ufile1.i = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 1
  %8 = ptrtoint ptr %ufile1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile1.i, align 8
  br i1 %hw_obj_valid, label %if.then.i, label %if.else.if.end26.i_crit_edge

if.else.if.end26.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then.i:                                        ; preds = %if.else
  %uapi_object.i33 = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 10
  %10 = ptrtoint ptr %uapi_object.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uapi_object.i33, align 4
  %type_class.i34 = getelementptr inbounds %struct.uverbs_api_object, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %type_class.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type_class.i34, align 4
  %destroy_hw.i = getelementptr inbounds %struct.uverbs_obj_type_class, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %destroy_hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destroy_hw.i, align 4
  %call.i = tail call i32 %15(ptr noundef %uobj, i32 noundef 3, ptr noundef %attrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end26.i_crit_edge, label %do.end.i, !prof !38

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 713, i32 noundef 9, ptr noundef null) #8
  tail call void @rdma_alloc_commit_uobject(ptr noundef %uobj, ptr noundef %attrs) #8
  br label %sw.epilog

if.end26.i:                                       ; preds = %if.then.i.if.end26.i_crit_edge, %if.else.if.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @uverbs_destroy_uobject(ptr noundef %uobj, i32 noundef 3, ptr noundef %attrs) #8
  %hw_destroy_rwsem.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %9, i32 0, i32 6
  tail call void @up_read(ptr noundef %hw_destroy_rwsem.i) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end26.i, %do.end.i, %if.then6, %do.end.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_rdmacg_try_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_rdmacg_uncharge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_user_mmap_disassociate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_async_event_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_uverbs_uobject_put, !1, !"__ksymtab_uverbs_uobject_put", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/rdma_core.c", i32 59, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/rdma_core.c", i32 404, i32 7}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uverbs_idr_class, !7, !"uverbs_idr_class", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/rdma_core.c", i32 792, i32 36}
!8 = !{ptr @__ksymtab_uverbs_idr_class, !9, !"__ksymtab_uverbs_idr_class", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/rdma_core.c", i32 802, i32 1}
!10 = !{ptr @__ksymtab_uverbs_uobject_fd_release, !11, !"__ksymtab_uverbs_uobject_fd_release", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/rdma_core.c", i32 845, i32 1}
!12 = !{ptr @uverbs_fd_class, !13, !"uverbs_fd_class", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/rdma_core.c", i32 948, i32 36}
!14 = !{ptr @__ksymtab_uverbs_fd_class, !15, !"__ksymtab_uverbs_fd_class", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/rdma_core.c", i32 957, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xa_init_flags.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148345012}
!37 = !{i64 2148259476, i64 2148259508, i64 2148259537, i64 2148259571, i64 2148259602, i64 2148259625}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2149598986}
!40 = !{i64 2148357304}
!41 = !{i64 739217, i64 739241, i64 739262, i64 739279, i64 739296}
!42 = !{i64 2148357530}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2148254900}
!45 = !{i64 739723, i64 739748, i64 739770, i64 739786, i64 739798, i64 739818, i64 739842, i64 739858, i64 739870}
!46 = !{i64 2148255088}
!47 = !{i64 2148257946, i64 2148257972, i64 2148258001, i64 2148258035, i64 2148258066, i64 2148258089}
!48 = !{i64 2149290999}
!49 = !{i64 2149291265}
!50 = !{i64 2148257011, i64 2148257043, i64 2148257072, i64 2148257106, i64 2148257137, i64 2148257160}
!51 = distinct !{ptr @ib_uverbs_release_file, null}
