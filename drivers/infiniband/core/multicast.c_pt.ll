; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/multicast.c_pt.bc'
source_filename = "../drivers/infiniband/core/multicast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_sa_join_multicast\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_sa_join_multicast\09\09\09\09"
module asm "\09.long\09__crc_ib_sa_join_multicast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_sa_join_multicast:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_sa_join_multicast\22\09\09\09\09\09"
module asm "__kstrtabns_ib_sa_join_multicast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_sa_free_multicast\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_sa_free_multicast\09\09\09\09"
module asm "\09.long\09__crc_ib_sa_free_multicast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_sa_free_multicast:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_sa_free_multicast\22\09\09\09\09\09"
module asm "__kstrtabns_ib_sa_free_multicast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_sa_get_mcmember_rec\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_sa_get_mcmember_rec\09\09\09\09"
module asm "\09.long\09__crc_ib_sa_get_mcmember_rec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_sa_get_mcmember_rec:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_sa_get_mcmember_rec\22\09\09\09\09\09"
module asm "__kstrtabns_ib_sa_get_mcmember_rec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_init_ah_from_mcmember\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_init_ah_from_mcmember\09\09\09\09"
module asm "\09.long\09__crc_ib_init_ah_from_mcmember\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_init_ah_from_mcmember:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_init_ah_from_mcmember\22\09\09\09\09\09"
module asm "__kstrtabns_ib_init_ah_from_mcmember:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ib_sa_client = type { %struct.atomic_t, %struct.completion }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.ib_gid = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mcast_member = type { %struct.ib_sa_multicast, ptr, ptr, %struct.list_head, i32, %struct.refcount_struct, %struct.completion }
%struct.ib_sa_multicast = type { %struct.ib_sa_mcmember_rec, i64, ptr, ptr }
%struct.ib_sa_mcmember_rec = type { %union.ib_gid, %union.ib_gid, i32, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.mcast_device = type { ptr, %struct.ib_event_handler, i32, i32, [0 x %struct.mcast_port] }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.mcast_port = type { ptr, %struct.spinlock, %struct.rb_root, %struct.refcount_struct, %struct.completion, i32 }
%struct.rb_root = type { ptr }
%struct.mcast_group = type { %struct.ib_sa_mcmember_rec, %struct.rb_node, ptr, %struct.spinlock, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, [4 x i32], %struct.atomic_t, i32, ptr, i16, i8, i32 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_event = type { ptr, %union.anon.130, i32 }
%union.anon.130 = type { ptr }

@mcast_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.1, ptr @mcast_add_one, ptr @mcast_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ib_sa_join_multicast = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_sa_join_multicast = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_sa_join_multicast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_sa_join_multicast to i32), ptr @__kstrtab_ib_sa_join_multicast, ptr @__kstrtabns_ib_sa_join_multicast }, section "___ksymtab+ib_sa_join_multicast", align 4
@mcast_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ib_sa_free_multicast = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_sa_free_multicast = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_sa_free_multicast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_sa_free_multicast to i32), ptr @__kstrtab_ib_sa_free_multicast, ptr @__kstrtabns_ib_sa_free_multicast }, section "___ksymtab+ib_sa_free_multicast", align 4
@__kstrtab_ib_sa_get_mcmember_rec = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_sa_get_mcmember_rec = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_sa_get_mcmember_rec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_sa_get_mcmember_rec to i32), ptr @__kstrtab_ib_sa_get_mcmember_rec, ptr @__kstrtabns_ib_sa_get_mcmember_rec }, section "___ksymtab+ib_sa_get_mcmember_rec", align 4
@__kstrtab_ib_init_ah_from_mcmember = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_init_ah_from_mcmember = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_init_ah_from_mcmember = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_init_ah_from_mcmember to i32), ptr @__kstrtab_ib_init_ah_from_mcmember, ptr @__kstrtabns_ib_init_ah_from_mcmember }, section "___ksymtab+ib_init_ah_from_mcmember", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_mcast\00", [23 x i8] zeroinitializer }, align 32
@sa_client = internal global { %struct.ib_sa_client, [36 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ib_multicast\00", [19 x i8] zeroinitializer }, align 32
@mcast_add_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mgid0 = internal global { %union.ib_gid, [16 x i8] } zeroinitializer, align 32
@acquire_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&group->work)\00", [32 x i8] zeroinitializer }, align 32
@acquire_group.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&group->lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.mcast_event_handler = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"mcast_client\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 48, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"mcast_wq\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 55, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 884, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"sa_client\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 54, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 49, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 840, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 87, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"mgid0\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 56, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 583, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [39 x i8] c"../drivers/infiniband/core/multicast.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 584, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [33 x i8] c"switch.table.mcast_event_handler\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_ib_init_ah_from_mcmember, ptr @__ksymtab_ib_sa_free_multicast, ptr @__ksymtab_ib_sa_get_mcmember_rec, ptr @__ksymtab_ib_sa_join_multicast, ptr @mcast_client, ptr @mcast_wq, ptr @.str, ptr @sa_client, ptr @.str.1, ptr @mcast_add_one.__key, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @mgid0, ptr @acquire_group.__key, ptr @.str.4, ptr @acquire_group.__key.5, ptr @.str.6, ptr @switch.table.mcast_event_handler], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcast_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcast_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sa_client to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcast_add_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgid0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcast_event_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_sa_join_multicast(ptr noundef %client, ptr noundef %device, i32 noundef %port_num, ptr nocapture noundef readonly %rec, i64 noundef %comp_mask, i32 noundef %gfp_mask, ptr noundef %callback, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 8
  %0 = load i32, ptr getelementptr inbounds (%struct.ib_client, ptr @mcast_client, i32 0, i32 9), align 4
  %call.i = tail call ptr @xa_load(ptr noundef %client_data.i, i32 noundef %0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %if.end.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !41

if.end.kmalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %if.end
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %if.end.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %if.end.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 8
  %1 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef %gfp_mask, i32 noundef 160) #12
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end6

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %kmalloc.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %client, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %client, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %client, ptr %client, i32 1, ptr elementtype(i32) %client) #9, !srcloc !42
  %client7 = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client7, align 8
  %5 = call ptr @memcpy(ptr %call7.i, ptr %rec, i32 64)
  %comp_mask11 = getelementptr inbounds %struct.ib_sa_multicast, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %comp_mask11 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %comp_mask, ptr %comp_mask11, align 8
  %callback13 = getelementptr inbounds %struct.ib_sa_multicast, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %callback13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %callback, ptr %callback13, align 8
  %context15 = getelementptr inbounds %struct.ib_sa_multicast, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %context15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %context, ptr %context15, align 4
  %comp = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 6
  %9 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %comp, align 8
  %wait.i = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #9
  %refcount = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 5
  %call.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount, align 4
  %state = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 8
  %start_port = getelementptr inbounds %struct.mcast_device, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_port, align 4
  %sub = sub i32 %port_num, %13
  %arrayidx = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @mgid0, ptr noundef dereferenceable(16) %rec, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end11.i_crit_edge, label %do.body2.i

if.end6.if.end11.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

do.body2.i:                                       ; preds = %if.end6
  %lock.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %table.i.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 2
  %14 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.013.i.i = load ptr, ptr %table.i.i, align 4
  %tobool.not14.i.i = icmp eq ptr %node.013.i.i, null
  br i1 %tobool.not14.i.i, label %do.body2.i.if.end.i_crit_edge, label %do.body2.i.while.body.i.i_crit_edge

do.body2.i.while.body.i.i_crit_edge:              ; preds = %do.body2.i
  br label %while.body.i.i

do.body2.i.if.end.i_crit_edge:                    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %do.body2.i.while.body.i.i_crit_edge
  %node.015.i.i = phi ptr [ %node.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %node.013.i.i, %do.body2.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %node.015.i.i, i32 -64
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %rec, ptr noundef dereferenceable(16) %add.ptr.i.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i46 = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i46, label %mcast_find.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 1
  %node.1.in.i.i = select i1 %cmp.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %15 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

mcast_find.exit.i:                                ; preds = %while.body.i.i
  %tobool8.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not.i, label %mcast_find.exit.i.if.end.i_crit_edge, label %mcast_find.exit.i.acquire_group.exit_crit_edge

mcast_find.exit.i.acquire_group.exit_crit_edge:   ; preds = %mcast_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit

mcast_find.exit.i.if.end.i_crit_edge:             ; preds = %mcast_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %mcast_find.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %do.body2.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %if.end6.if.end11.i_crit_edge
  br i1 %cmp.i19.i, label %if.end11.i.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !41

if.end11.i.kzalloc.exit.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %if.end11.i
  %and2.i.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge

if.end.i20.i.i.i.kzalloc.exit.i_crit_edge:        ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge, %if.end11.i.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %if.end11.i.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp_mask, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 8
  %16 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %or.i.i, i32 noundef 224) #12
  %tobool13.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not.i, label %acquire_group.exit.thread, label %if.end15.i

acquire_group.exit.thread:                        ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %group61 = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %group61 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %group61, align 4
  br label %if.then19

if.end15.i:                                       ; preds = %kzalloc.exit.i
  %retries.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %retries.i, align 4
  %port16.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %port16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %port16.i, align 4
  %21 = call ptr @memcpy(ptr %call7.i.i.i, ptr %rec, i32 16)
  %pkey_index.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %pkey_index.i, align 8
  %pending_list.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pending_list.i, ptr %pending_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pending_list.i, ptr %prev.i.i, align 4
  %active_list.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %active_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %active_list.i, ptr %active_list.i, align 8
  %prev.i83.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %active_list.i, ptr %prev.i83.i, align 4
  %work.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %27 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @acquire_group.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry22.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry22.i, ptr %entry22.i, align 8
  %prev.i84.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry22.i, ptr %prev.i84.i, align 4
  %func.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mcast_work_handler, ptr %func.i, align 8
  %lock27.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock27.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @acquire_group.__key.5, i16 noundef signext 3) #9
  %lock38.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 1
  %call40.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock38.i) #9
  %table.i85.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 2
  %31 = ptrtoint ptr %table.i85.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %table.i85.i, align 4
  %tobool.not31.i.i = icmp eq ptr %32, null
  br i1 %tobool.not31.i.i, label %if.end15.i.mcast_insert.exit.thread.i_crit_edge, label %if.end15.i.while.body.i89.i_crit_edge

if.end15.i.while.body.i89.i_crit_edge:            ; preds = %if.end15.i
  br label %while.body.i89.i

if.end15.i.mcast_insert.exit.thread.i_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcast_insert.exit.thread.i

while.body.i89.i:                                 ; preds = %if.end12.i.i.while.body.i89.i_crit_edge, %if.end15.i.while.body.i89.i_crit_edge
  %33 = phi ptr [ %35, %if.end12.i.i.while.body.i89.i_crit_edge ], [ %32, %if.end15.i.while.body.i89.i_crit_edge ]
  %add.ptr.i86.i = getelementptr i8, ptr %33, i32 -64
  %call.i87.i = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %call7.i.i.i, ptr noundef dereferenceable(16) %add.ptr.i86.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp.i88.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp.i88.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i90.i = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %while.body.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp4.not.i.i = icmp eq i32 %call.i87.i, 0
  br i1 %cmp4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i91.i = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  br label %if.end12.i.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  br i1 %tobool.not.i, label %if.then8.i.i, label %mcast_insert.exit.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left9.i.i = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.then5.i.i, %if.then.i.i
  %link.1.i.i = phi ptr [ %rb_left.i90.i, %if.then.i.i ], [ %rb_right.i91.i, %if.then5.i.i ], [ %rb_left9.i.i, %if.then8.i.i ]
  %34 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i92.i = icmp eq ptr %35, null
  br i1 %tobool.not.i92.i, label %while.cond.while.end_crit_edge.i.i, label %if.end12.i.i.while.body.i89.i_crit_edge

if.end12.i.i.while.body.i89.i_crit_edge:          ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i89.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %33 to i32
  br label %mcast_insert.exit.thread.i

mcast_insert.exit.thread.i:                       ; preds = %while.cond.while.end_crit_edge.i.i, %if.end15.i.mcast_insert.exit.thread.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end15.i.mcast_insert.exit.thread.i_crit_edge ]
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %table.i85.i, %if.end15.i.mcast_insert.exit.thread.i_crit_edge ]
  %node.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %parent.0.lcssa.i.i, ptr %node.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %39 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %node.i.i, ptr %link.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i.i, ptr noundef %table.i85.i) #9
  br label %if.else.i

mcast_insert.exit.i:                              ; preds = %if.else6.i.i
  %tobool46.not.i = icmp eq ptr %add.ptr.i86.i, null
  br i1 %tobool46.not.i, label %mcast_insert.exit.i.if.else.i_crit_edge, label %if.then47.i

mcast_insert.exit.i.if.else.i_crit_edge:          ; preds = %mcast_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then47.i:                                      ; preds = %mcast_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %acquire_group.exit

if.else.i:                                        ; preds = %mcast_insert.exit.i.if.else.i_crit_edge, %mcast_insert.exit.thread.i
  %refcount.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !44

if.else.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.acquire_group.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !41

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.acquire_group.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %acquire_group.exit

acquire_group.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.acquire_group.exit_crit_edge, %if.then47.i, %mcast_find.exit.i.acquire_group.exit_crit_edge
  %flags.0.i = phi i32 [ %call40.i, %if.then47.i ], [ %call4.i, %mcast_find.exit.i.acquire_group.exit_crit_edge ], [ %call40.i, %if.else.i.i.i.i.acquire_group.exit_crit_edge ], [ %call40.i, %if.end15.sink.split.i.i.i.i ]
  %group.0.i = phi ptr [ %add.ptr.i86.i, %if.then47.i ], [ %add.ptr.i.i, %mcast_find.exit.i.acquire_group.exit_crit_edge ], [ %call7.i.i.i, %if.else.i.i.i.i.acquire_group.exit_crit_edge ], [ %call7.i.i.i, %if.end15.sink.split.i.i.i.i ]
  %refcount49.i = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 9
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount49.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount49.i, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount49.i, ptr %refcount49.i, i32 1, ptr elementtype(i32) %refcount49.i) #9, !srcloc !42
  %lock50.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50.i, i32 noundef %flags.0.i) #9
  %group = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 2
  %43 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %group.0.i, ptr %group, align 4
  %tobool18.not = icmp eq ptr %group.0.i, null
  br i1 %tobool18.not, label %acquire_group.exit.if.then19_crit_edge, label %if.end20

acquire_group.exit.if.then19_crit_edge:           ; preds = %acquire_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %acquire_group.exit.if.then19_crit_edge, %acquire_group.exit.thread
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %client, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %client, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %client, ptr %client, i32 1, ptr elementtype(i32) %client) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i49 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i49)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i49, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then19.ib_sa_client_put.exit_crit_edge

if.then19.ib_sa_client_put.exit_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_sa_client_put.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %comp.i = getelementptr inbounds %struct.ib_sa_client, ptr %client, i32 0, i32 1
  tail call void @complete(ptr noundef %comp.i) #9
  br label %ib_sa_client_put.exit

ib_sa_client_put.exit:                            ; preds = %if.then.i, %if.then19.ib_sa_client_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end20:                                         ; preds = %acquire_group.exit
  %lock.i51 = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i51) #9
  %list.i = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 3
  %pending_list.i52 = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 5
  %prev.i.i53 = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i53, align 4
  %call.i.i18.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %46, ptr noundef %pending_list.i52) #9
  br i1 %call.i.i18.i, label %if.end.i.i.i, label %if.end20.list_add_tail.exit.i_crit_edge

if.end20.list_add_tail.exit.i_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev.i.i53, align 4
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pending_list.i52, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.mcast_member, ptr %call7.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list.i, ptr %46, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end20.list_add_tail.exit.i_crit_edge
  %state.i = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 10
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp6.i = icmp eq i32 %52, 0
  br i1 %cmp6.i, label %if.then.i58, label %list_add_tail.exit.i.queue_join.exit_crit_edge

list_add_tail.exit.i.queue_join.exit_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_join.exit

if.then.i58:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %state.i, align 8
  %call.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount49.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount49.i, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount49.i, ptr %refcount49.i, i32 1, ptr elementtype(i32) %refcount49.i) #9, !srcloc !42
  %55 = load ptr, ptr @mcast_wq, align 4
  %work.i56 = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 4
  %call.i.i57 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %work.i56) #9
  br label %queue_join.exit

queue_join.exit:                                  ; preds = %if.then.i58, %list_add_tail.exit.i.queue_join.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i51, i32 noundef %call3.i) #9
  br label %cleanup

cleanup:                                          ; preds = %queue_join.exit, %ib_sa_client_put.exit, %kmalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %queue_join.exit ], [ inttoptr (i32 -12 to ptr), %ib_sa_client_put.exit ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %kmalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_sa_free_multicast(ptr noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %lock = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %join_state = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 16
  %4 = ptrtoint ptr %join_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %join_state, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 8, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, -1
  store i32 %add.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then.for.inc.i_crit_edge
  %9 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1.i = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %11, -1
  store i32 %add.1.i, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %12 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.2.i = icmp eq i8 %12, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.2.i = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %14, -1
  store i32 %add.2.i, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %15 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3.i = icmp eq i8 %15, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end_crit_edge, label %if.then.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3.i = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %17, -1
  store i32 %add.3.i, ptr %arrayidx.3.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3.i, %for.inc.2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i3.i, align 4
  %state2 = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3 = icmp eq i32 %27, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %state2, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %29 = load ptr, ptr @mcast_wq, align 4
  %work = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work) #9
  br label %if.end8

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call fastcc void @release_group(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %refcount.i = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i23, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.deref_member.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.deref_member.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %deref_member.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %deref_member.exit

if.then.i23:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 6
  tail call void @complete(ptr noundef %comp.i) #9
  br label %deref_member.exit

deref_member.exit:                                ; preds = %if.then.i23, %if.then10.i.i.i.i, %if.end5.i.i.i.i.deref_member.exit_crit_edge
  %comp = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %comp) #9
  %client = getelementptr inbounds %struct.mcast_member, ptr %multicast, i32 0, i32 1
  %31 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i25, label %deref_member.exit.ib_sa_client_put.exit_crit_edge

deref_member.exit.ib_sa_client_put.exit_crit_edge: ; preds = %deref_member.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_sa_client_put.exit

if.then.i25:                                      ; preds = %deref_member.exit
  call void @__sanitizer_cov_trace_pc() #11
  %comp.i24 = getelementptr inbounds %struct.ib_sa_client, ptr %32, i32 0, i32 1
  tail call void @complete(ptr noundef %comp.i24) #9
  br label %ib_sa_client_put.exit

ib_sa_client_put.exit:                            ; preds = %if.then.i25, %deref_member.exit.ib_sa_client_put.exit_crit_edge
  tail call void @kfree(ptr noundef %multicast) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_group(ptr noundef %group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %lock = getelementptr inbounds %struct.mcast_port, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %refcount = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !46
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 1
  %table = getelementptr inbounds %struct.mcast_port, ptr %1, i32 0, i32 2
  tail call void @rb_erase(ptr noundef %node, ptr noundef %table) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  tail call void @kfree(ptr noundef %group) #9
  %refcount.i = getelementptr inbounds %struct.mcast_port, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i = getelementptr inbounds %struct.mcast_port, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %comp.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_sa_get_mcmember_rec(ptr noundef %device, i32 noundef %port_num, ptr nocapture noundef readonly %mgid, ptr nocapture noundef writeonly %rec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 8
  %0 = load i32, ptr getelementptr inbounds (%struct.ib_client, ptr @mcast_client, i32 0, i32 9), align 4
  %call.i = tail call ptr @xa_load(ptr noundef %client_data.i, i32 noundef %0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_port = getelementptr inbounds %struct.mcast_device, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start_port, align 4
  %sub = sub i32 %port_num, %2
  %lock = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %table.i = getelementptr %struct.mcast_device, ptr %call.i, i32 0, i32 4, i32 %sub, i32 2
  %3 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.013.i = load ptr, ptr %table.i, align 4
  %tobool.not14.i = icmp eq ptr %node.013.i, null
  br i1 %tobool.not14.i, label %if.end.if.end11_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %node.015.i = phi ptr [ %node.0.i, %if.end.i.while.body.i_crit_edge ], [ %node.013.i, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %node.015.i, i32 -64
  %call.i22 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %mgid, ptr noundef dereferenceable(16) %add.ptr.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not.i = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not.i, label %mcast_find.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i = icmp slt i32 %call.i22, 0
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i, i32 0, i32 1
  %node.1.in.i = select i1 %cmp.i, ptr %rb_left.i, ptr %rb_right.i
  %4 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end11_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

mcast_find.exit:                                  ; preds = %while.body.i
  %tobool8.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool8.not, label %mcast_find.exit.if.end11_crit_edge, label %if.then9

mcast_find.exit.if.end11_crit_edge:               ; preds = %mcast_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %mcast_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %rec, ptr %add.ptr.i, i32 64)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %mcast_find.exit.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %if.then9 ], [ -99, %mcast_find.exit.if.end11_crit_edge ], [ -99, %if.end.if.end11_crit_edge ], [ -99, %if.end.i.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end11 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_init_ah_from_mcmember(ptr noundef %device, i32 noundef %port_num, ptr noundef %rec, ptr noundef %ndev, i32 noundef %gid_type, ptr noundef %ah_attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 1, i32 2
  %2 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else:                                          ; preds = %entry
  %and.i34 = and i32 %3, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.i35.not = icmp eq i32 %and.i34, 0
  br i1 %tobool.i35.not, label %if.else.cleanup_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ndev.addr.0 = phi ptr [ %ndev, %if.else.if.end3_crit_edge ], [ null, %entry.if.end3_crit_edge ]
  %port_gid = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 1
  %call4 = tail call ptr @rdma_find_gid_by_port(ptr noundef %device, ptr noundef %port_gid, i32 noundef %gid_type, i32 noundef %port_num, ptr noundef %ndev.addr.0) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %5 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %6 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %7, i32 %port_num, i32 1, i32 2
  %8 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %9, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end8.rdma_ah_find_type.exit.thread_crit_edge

if.end8.rdma_ah_find_type.exit.thread_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_ah_find_type.exit.thread

if.end.i:                                         ; preds = %if.end8
  %and.i13.i = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit.thread_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_ah_find_type.exit.thread

if.then2.i:                                       ; preds = %if.end.i
  %and.i17.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %type42 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then5.i

rdma_ah_find_type.exit.thread:                    ; preds = %if.end.i.rdma_ah_find_type.exit.thread_crit_edge, %if.end8.rdma_ah_find_type.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end.i.rdma_ah_find_type.exit.thread_crit_edge ], [ 2, %if.end8.rdma_ah_find_type.exit.thread_crit_edge ]
  %type37 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %10 = ptrtoint ptr %type37 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.ph, ptr %type37, align 4
  br label %rdma_ah_set_dlid.exit

if.then.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type42, align 4
  %mlid43 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 3
  %12 = ptrtoint ptr %mlid43 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mlid43, align 4
  %14 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %14, align 8
  br label %rdma_ah_set_dlid.exit

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type42, align 4
  %mlid = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 3
  %17 = ptrtoint ptr %mlid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mlid, align 4
  %conv = zext i16 %18 to i32
  %19 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %19, align 8
  br label %rdma_ah_set_dlid.exit

rdma_ah_set_dlid.exit:                            ; preds = %if.then5.i, %if.then.i, %rdma_ah_find_type.exit.thread
  %sl = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 12
  %21 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sl, align 8
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %23 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %sl1.i, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %24 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %port_num, ptr %port_num1.i, align 4
  %rate = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 9
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rate, align 1
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 2
  %27 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %static_rate1.i, align 1
  %flow_label = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 13
  %28 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flow_label, align 4
  %hop_limit = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 14
  %30 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hop_limit, align 8
  %traffic_class = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 6
  %32 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %traffic_class, align 8
  tail call void @rdma_move_grh_sgid_attr(ptr noundef %ah_attr, ptr noundef %rec, i32 noundef %29, i8 noundef zeroext %31, i8 noundef zeroext %33, ptr noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %rdma_ah_set_dlid.exit, %if.then6, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ 0, %rdma_ah_set_dlid.exit ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_find_gid_by_port(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_move_grh_sgid_attr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcast_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655370, i32 noundef 1) #9
  store ptr %call, ptr @mcast_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ib_sa_register_client(ptr noundef nonnull @sa_client) #9
  %call1 = tail call i32 @ib_register_client(ptr noundef nonnull @mcast_client) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ib_sa_unregister_client(ptr noundef nonnull @sa_client) #9
  %0 = load ptr, ptr @mcast_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcast_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_unregister_client(ptr noundef nonnull @mcast_client) #9
  tail call void @ib_sa_unregister_client(ptr noundef nonnull @sa_client) #9
  %0 = load ptr, ptr @mcast_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcast_add_one(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys_port_cnt, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 116) #9
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 28) #9
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %5 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %6 = xor i8 %bf.load.i.i, -1
  %7 = lshr i8 %6, 7
  %.not.i = zext i8 %7 to i32
  %start_port = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 2
  %8 = ptrtoint ptr %start_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.not.i, ptr %start_port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.i.i = icmp slt i8 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %if.end.rdma_end_port.exit_crit_edge, label %cond.false.i

if.end.rdma_end_port.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_port_cnt, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %if.end.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ 0, %if.end.rdma_end_port.exit_crit_edge ]
  %end_port = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 3
  %11 = ptrtoint ptr %end_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %end_port, align 8
  %12 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_port, align 4
  %sub64 = sub i32 %cond.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp.not65 = icmp slt i32 %sub64, 0
  br i1 %cmp.not65, label %rdma_end_port.exit.if.then17_crit_edge, label %for.body.lr.ph

rdma_end_port.exit.if.then17_crit_edge:           ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

for.body.lr.ph:                                   ; preds = %rdma_end_port.exit
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %14 = phi i32 [ %13, %for.body.lr.ph ], [ %29, %for.inc.for.body_crit_edge ]
  %count.068 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc.for.body_crit_edge ]
  %add = add i32 %14, %i.066
  %15 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %16, i32 %add, i32 1, i32 2
  %17 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i63.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i63.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_port, align 4
  %add13 = add i32 %21, %i.066
  %port_num = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 5
  %22 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add13, ptr %port_num, align 4
  %lock = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mcast_add_one.__key, i16 noundef signext 3) #9
  %table = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 2
  %23 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %table, align 4
  %comp = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 4
  %24 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #9
  %refcount = getelementptr %struct.mcast_device, ptr %call9.i, i32 0, i32 4, i32 %i.066, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcount, align 4
  %inc = add i32 %count.068, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.end9 ], [ %count.068, %for.body.for.inc_crit_edge ]
  %inc15 = add i32 %i.066, 1
  %26 = ptrtoint ptr %end_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end_port, align 8
  %28 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_port, align 4
  %sub = sub i32 %27, %29
  %cmp.not = icmp sgt i32 %inc15, %sub
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool16.not = icmp eq i32 %count.1, 0
  br i1 %tobool16.not, label %for.end.if.then17_crit_edge, label %if.end18

for.end.if.then17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then17:                                        ; preds = %for.end.if.then17_crit_edge, %rdma_end_port.exit.if.then17_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %device, ptr %call9.i, align 128
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @mcast_client, ptr noundef nonnull %call9.i) #9
  %event_handler = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 1
  %31 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %device, ptr %event_handler, align 4
  %handler = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mcast_event_handler, ptr %handler, align 8
  %list = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mcast_device, ptr %call9.i, i32 0, i32 1, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i, align 16
  tail call void @ib_register_event_handler(ptr noundef %event_handler) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -95, %if.then17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcast_remove_one(ptr nocapture noundef readonly %device, ptr noundef %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_handler = getelementptr inbounds %struct.mcast_device, ptr %client_data, i32 0, i32 1
  tail call void @ib_unregister_event_handler(ptr noundef %event_handler) #9
  %0 = load ptr, ptr @mcast_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #9
  %end_port = getelementptr inbounds %struct.mcast_device, ptr %client_data, i32 0, i32 3
  %start_port = getelementptr inbounds %struct.mcast_device, ptr %client_data, i32 0, i32 2
  %1 = ptrtoint ptr %end_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end_port, align 4
  %3 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_port, align 4
  %sub12 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp.not13 = icmp slt i32 %sub12, 0
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %14, %for.inc.for.body_crit_edge ]
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %5, %i.014
  %6 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %7, i32 %add, i32 1, i32 2
  %8 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %refcount.i = getelementptr %struct.mcast_device, ptr %client_data, i32 0, i32 4, i32 %i.014, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.deref_port.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.deref_port.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %deref_port.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %deref_port.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i = getelementptr %struct.mcast_device, ptr %client_data, i32 0, i32 4, i32 %i.014, i32 4
  tail call void @complete(ptr noundef %comp.i) #9
  br label %deref_port.exit

deref_port.exit:                                  ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.deref_port.exit_crit_edge
  %comp = getelementptr %struct.mcast_device, ptr %client_data, i32 0, i32 4, i32 %i.014, i32 4
  tail call void @wait_for_completion(ptr noundef %comp) #9
  br label %for.inc

for.inc:                                          ; preds = %deref_port.exit, %for.body.for.inc_crit_edge
  %inc = add i32 %i.014, 1
  %11 = ptrtoint ptr %end_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end_port, align 4
  %13 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_port, align 4
  %sub = sub i32 %12, %14
  %cmp.not = icmp sgt i32 %inc, %sub
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %client_data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcast_event_handler(ptr noundef %handler, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %handler, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %element, align 4
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %5, i32 %3, i32 1, i32 2
  %6 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_port = getelementptr i8, ptr %handler, i32 16
  %8 = ptrtoint ptr %start_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_port, align 4
  %sub = sub i32 %3, %9
  %event2 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %10 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event2, align 4
  %switch.tableidx = add i32 %11, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 8
  br i1 %12, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -121, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mcast_event_handler, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %port = getelementptr i8, ptr %handler, i32 24
  %arrayidx = getelementptr [0 x %struct.mcast_port], ptr %port, i32 0, i32 %sub
  tail call fastcc void @mcast_groups_event(ptr noundef %arrayidx, i32 noundef %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcast_groups_event(ptr noundef %port, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mcast_port, ptr %port, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %table = getelementptr inbounds %struct.mcast_port, ptr %port, i32 0, i32 2
  %call5 = tail call ptr @rb_first(ptr noundef %table) #9
  %tobool.not31 = icmp eq ptr %call5, null
  br i1 %tobool.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %entry.for.body_crit_edge
  %node.032 = phi ptr [ %call19, %if.end17.for.body_crit_edge ], [ %call5, %entry.for.body_crit_edge ]
  %lock7 = getelementptr i8, ptr %node.032, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock7) #9
  %state8 = getelementptr i8, ptr %node.032, i32 144
  %0 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp eq i32 %1, 0
  br i1 %cmp9, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr i8, ptr %node.032, i32 140
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !42
  %3 = load ptr, ptr @mcast_wq, align 4
  %work = getelementptr i8, ptr %node.032, i32 60
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #9
  %4 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %state8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %5 = phi i32 [ %.pr, %if.then ], [ %1, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp13.not = icmp eq i32 %5, 2
  br i1 %cmp13.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %state, ptr %state8, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #9
  %call19 = tail call ptr @rb_next(ptr noundef nonnull %node.032) #9
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcast_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %rec.i = alloca %struct.ib_sa_mcmember_rec, align 8
  %pkey_index.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %lock = getelementptr i8, ptr %work, i32 -44
  %pending_list = getelementptr i8, ptr %work, i32 44
  %state = getelementptr i8, ptr %work, i32 84
  %join_state11 = getelementptr i8, ptr %work, i32 -66
  %port1.i = getelementptr i8, ptr %work, i32 -48
  %last_join.i = getelementptr i8, ptr %work, i32 60
  %query.i = getelementptr i8, ptr %work, i32 88
  %port_gid.i = getelementptr i8, ptr %work, i32 -108
  %qkey.i = getelementptr i8, ptr %work, i32 -92
  %mlid.i = getelementptr i8, ptr %work, i32 -88
  %mtu.i = getelementptr i8, ptr %work, i32 -85
  %traffic_class.i = getelementptr i8, ptr %work, i32 -84
  %pkey.i106 = getelementptr i8, ptr %work, i32 -82
  %rate.i = getelementptr i8, ptr %work, i32 -79
  %packet_life_time.i = getelementptr i8, ptr %work, i32 -77
  %sl.i = getelementptr i8, ptr %work, i32 -76
  %flow_label.i = getelementptr i8, ptr %work, i32 -72
  %hop_limit.i = getelementptr i8, ptr %work, i32 -68
  %scope.i = getelementptr i8, ptr %work, i32 -67
  %arrayidx.i.i109 = getelementptr i8, ptr %work, i32 64
  %arrayidx.1.i.i114 = getelementptr i8, ptr %work, i32 68
  %arrayidx.2.i.i119 = getelementptr i8, ptr %work, i32 72
  %arrayidx.3.i.i124 = getelementptr i8, ptr %work, i32 76
  %active_list.i127 = getelementptr i8, ptr %work, i32 52
  %pkey_index5.i = getelementptr i8, ptr %work, i32 92
  %join_state.i165 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec.i, i32 0, i32 16
  %leave_state3.i = getelementptr i8, ptr %work, i32 94
  br label %retest

retest:                                           ; preds = %retest.backedge, %entry
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not188 = icmp eq ptr %1, %pending_list
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not189 = icmp eq i32 %3, 1
  br i1 %cmp.i.not188, label %retest.lor.rhs_crit_edge, label %retest.while.body_crit_edge

retest.while.body_crit_edge:                      ; preds = %retest
  br label %while.body

retest.lor.rhs_crit_edge:                         ; preds = %retest
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end36.lor.rhs_crit_edge, %retest.lor.rhs_crit_edge
  %cmp.not.lcssa = phi i1 [ %cmp.not189, %retest.lor.rhs_crit_edge ], [ %cmp.not, %if.end36.lor.rhs_crit_edge ]
  br i1 %cmp.not.lcssa, label %while.end, label %lor.rhs.if.then_crit_edge

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %retest.while.body_crit_edge
  %cmp.not190 = phi i1 [ %cmp.not, %if.end36.while.body_crit_edge ], [ %cmp.not189, %retest.while.body_crit_edge ]
  %4 = phi ptr [ %185, %if.end36.while.body_crit_edge ], [ %1, %retest.while.body_crit_edge ]
  br i1 %cmp.not190, label %if.end, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %while.body.if.then_crit_edge, %lor.rhs.if.then_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_index.i) #9
  %5 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %pkey_index.i, align 2, !annotation !51
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i103 = icmp eq i32 %7, 3
  br i1 %cmp.i103, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %port_num.i = getelementptr inbounds %struct.mcast_port, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_num.i, align 4
  %16 = ptrtoint ptr %pkey.i106 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pkey.i106, align 2
  %call.i = call i32 @ib_find_pkey(ptr noundef %13, i32 noundef %15, i16 noundef zeroext %17, ptr noundef nonnull %pkey_index.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %ret.0.i = phi i1 [ %phi.cmp.i, %if.then.i ], [ true, %if.then.if.end.i_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp3.i = icmp eq i32 %19, 3
  %or.cond.i = select i1 %cmp3.i, i1 %ret.0.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true4.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %20 = ptrtoint ptr %pkey_index5.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pkey_index5.i, align 8
  %22 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pkey_index.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp7.i = icmp eq i16 %21, %23
  br i1 %cmp7.i, label %land.lhs.true4.i.process_group_error.exit_crit_edge, label %land.lhs.true4.i.if.end10.i_crit_edge

land.lhs.true4.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true4.i.process_group_error.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_group_error.exit

if.end10.i:                                       ; preds = %land.lhs.true4.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %24 = ptrtoint ptr %active_list.i127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %active_list.i127, align 4
  %cmp.i.not52.i = icmp eq ptr %25, %active_list.i127
  br i1 %cmp.i.not52.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %if.end10.i.while.body.i_crit_edge
  %26 = phi ptr [ %56, %if.end23.i.while.body.i_crit_edge ], [ %25, %if.end10.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %26, i32 -88
  %refcount.i = getelementptr i8, ptr %26, i32 12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %while.body.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !44

while.body.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !41

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %while.body.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %while.body.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %refcount_inc.exit.i.list_del_init.exit.i_crit_edge

refcount_inc.exit.i.list_del_init.exit.i_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %refcount_inc.exit.i.list_del_init.exit.i_crit_edge
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %26, ptr %prev.i3.i.i, align 4
  %join_state.i = getelementptr i8, ptr %26, i32 -30
  %37 = ptrtoint ptr %join_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %join_state.i, align 2
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.for.inc.i.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.for.inc.i.i_crit_edge:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i109, align 4
  %add.i.i = add i32 %41, -1
  store i32 %add.i.i, ptr %arrayidx.i.i109, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %list_del_init.exit.i.for.inc.i.i_crit_edge
  %42 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.1.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %arrayidx.1.i.i114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.1.i.i114, align 4
  %add.1.i.i = add i32 %44, -1
  store i32 %add.1.i.i, ptr %arrayidx.1.i.i114, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %45 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.2.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %arrayidx.2.i.i119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2.i.i119, align 4
  %add.2.i.i = add i32 %47, -1
  store i32 %add.2.i.i, ptr %arrayidx.2.i.i119, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %48 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.3.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.adjust_membership.exit.i_crit_edge, label %if.then.3.i.i

for.inc.2.i.i.adjust_membership.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adjust_membership.exit.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %arrayidx.3.i.i124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.3.i.i124, align 4
  %add.3.i.i = add i32 %50, -1
  store i32 %add.3.i.i, ptr %arrayidx.3.i.i124, align 4
  br label %adjust_membership.exit.i

adjust_membership.exit.i:                         ; preds = %if.then.3.i.i, %for.inc.2.i.i.adjust_membership.exit.i_crit_edge
  %state15.i = getelementptr i8, ptr %26, i32 8
  %51 = ptrtoint ptr %state15.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %state15.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %callback.i = getelementptr i8, ptr %26, i32 -16
  %52 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %callback.i, align 8
  %call19.i = call i32 %53(i32 noundef -102, ptr noundef %add.ptr.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i51.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %adjust_membership.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !41

if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %deref_member.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %deref_member.exit.i

if.then.i51.i:                                    ; preds = %adjust_membership.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i.i = getelementptr i8, ptr %26, i32 16
  call void @complete(ptr noundef %comp.i.i) #9
  br label %deref_member.exit.i

deref_member.exit.i:                              ; preds = %if.then.i51.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %deref_member.exit.i.if.end23.i_crit_edge, label %if.then21.i

deref_member.exit.i.if.end23.i_crit_edge:         ; preds = %deref_member.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then21.i:                                      ; preds = %deref_member.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ib_sa_free_multicast(ptr noundef %add.ptr.i) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %deref_member.exit.i.if.end23.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %55 = ptrtoint ptr %active_list.i127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %active_list.i127, align 4
  %cmp.i.not.i = icmp eq ptr %56, %active_list.i127
  br i1 %cmp.i.not.i, label %if.end23.i.while.end.i_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end23.i.while.end.i_crit_edge, %if.end10.i.while.end.i_crit_edge
  %57 = ptrtoint ptr %join_state11 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %join_state11, align 2
  br label %process_group_error.exit

process_group_error.exit:                         ; preds = %while.end.i, %land.lhs.true4.i.process_group_error.exit_crit_edge
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_index.i) #9
  br label %retest.backedge

retest.backedge:                                  ; preds = %if.then40.retest.backedge_crit_edge, %process_group_error.exit
  br label %retest

if.end:                                           ; preds = %while.body
  %add.ptr7 = getelementptr i8, ptr %4, i32 -88
  %join_state9 = getelementptr i8, ptr %4, i32 -30
  %59 = ptrtoint ptr %join_state9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %join_state9, align 2
  %refcount = getelementptr i8, ptr %4, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !43
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !44

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %62 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !41

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %63 = ptrtoint ptr %join_state11 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %join_state11, align 2
  %and102 = and i8 %64, %60
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %and102)
  %cmp14 = icmp eq i8 %60, %and102
  br i1 %cmp14, label %if.then16, label %if.else25

if.then16:                                        ; preds = %refcount_inc.exit
  %comp_mask = getelementptr i8, ptr %4, i32 -24
  %65 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %comp_mask, align 8
  %and.i = and i64 %66, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.if.end.i104_crit_edge, label %land.lhs.true.i

if.then16.if.end.i104_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i104

land.lhs.true.i:                                  ; preds = %if.then16
  %port_gid1.i = getelementptr i8, ptr %4, i32 -72
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %port_gid.i, ptr noundef dereferenceable(16) %port_gid1.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i104_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.i.if.end.i104_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i104

if.end.i104:                                      ; preds = %land.lhs.true.i.if.end.i104_crit_edge, %if.then16.if.end.i104_crit_edge
  %and3.i = and i64 %66, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i104.if.end8.i_crit_edge, label %land.lhs.true5.i

if.end.i104.if.end8.i_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true5.i:                                 ; preds = %if.end.i104
  %67 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qkey.i, align 8
  %qkey6.i = getelementptr i8, ptr %4, i32 -56
  %69 = ptrtoint ptr %qkey6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qkey6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.not.i = icmp eq i32 %68, %70
  br i1 %cmp.not.i, label %land.lhs.true5.i.if.end8.i_crit_edge, label %land.lhs.true5.i.if.else_crit_edge

land.lhs.true5.i.if.else_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true5.i.if.end8.i_crit_edge, %if.end.i104.if.end8.i_crit_edge
  %and9.i = and i64 %66, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end17.i_crit_edge, label %land.lhs.true11.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true11.i:                                ; preds = %if.end8.i
  %71 = ptrtoint ptr %mlid.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mlid.i, align 4
  %mlid12.i = getelementptr i8, ptr %4, i32 -52
  %73 = ptrtoint ptr %mlid12.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mlid12.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp14.not.i = icmp eq i16 %72, %74
  br i1 %cmp14.not.i, label %land.lhs.true11.i.if.end17.i_crit_edge, label %land.lhs.true11.i.if.else_crit_edge

land.lhs.true11.i.if.else_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true11.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true11.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %75 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mtu.i, align 1
  %mtu18.i = getelementptr i8, ptr %4, i32 -49
  %77 = ptrtoint ptr %mtu18.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mtu18.i, align 1
  %79 = and i64 %66, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %79)
  %.not.i = icmp eq i64 %79, 48
  br i1 %.not.i, label %if.end.i.i, label %if.end17.i.if.end22.i_crit_edge

if.end17.i.if.end22.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end.i.i:                                       ; preds = %if.end17.i
  %mtu_selector.i = getelementptr i8, ptr %4, i32 -50
  %80 = ptrtoint ptr %mtu_selector.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mtu_selector.i, align 2
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i8 %81, label %if.end.i.i.if.end22.i_crit_edge [
    i8 0, label %check_selector.exit.i
    i8 1, label %sw.bb6.i.i
    i8 2, label %sw.bb11.i.i
  ]

if.end.i.i.if.end22.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

sw.bb6.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp9.i.not.i = icmp ult i8 %76, %78
  br i1 %cmp9.i.not.i, label %sw.bb6.i.i.if.end22.i_crit_edge, label %sw.bb6.i.i.if.else_crit_edge

sw.bb6.i.i.if.else_crit_edge:                     ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb6.i.i.if.end22.i_crit_edge:                  ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

sw.bb11.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp14.i.not.i = icmp eq i8 %76, %78
  br i1 %cmp14.i.not.i, label %sw.bb11.i.i.if.end22.i_crit_edge, label %sw.bb11.i.i.if.else_crit_edge

sw.bb11.i.i.if.else_crit_edge:                    ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb11.i.i.if.end22.i_crit_edge:                 ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

check_selector.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp.i.not.i105 = icmp ugt i8 %76, %78
  br i1 %cmp.i.not.i105, label %check_selector.exit.i.if.end22.i_crit_edge, label %check_selector.exit.i.if.else_crit_edge

check_selector.exit.i.if.else_crit_edge:          ; preds = %check_selector.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

check_selector.exit.i.if.end22.i_crit_edge:       ; preds = %check_selector.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %check_selector.exit.i.if.end22.i_crit_edge, %sw.bb11.i.i.if.end22.i_crit_edge, %sw.bb6.i.i.if.end22.i_crit_edge, %if.end.i.i.if.end22.i_crit_edge, %if.end17.i.if.end22.i_crit_edge
  %and23.i = and i64 %66, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %tobool24.not.i = icmp eq i64 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end32.i_crit_edge, label %land.lhs.true25.i

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.lhs.true25.i:                                ; preds = %if.end22.i
  %83 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %traffic_class.i, align 8
  %traffic_class27.i = getelementptr i8, ptr %4, i32 -48
  %85 = ptrtoint ptr %traffic_class27.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %traffic_class27.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp29.not.i = icmp eq i8 %84, %86
  br i1 %cmp29.not.i, label %land.lhs.true25.i.if.end32.i_crit_edge, label %land.lhs.true25.i.if.else_crit_edge

land.lhs.true25.i.if.else_crit_edge:              ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true25.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.lhs.true25.i.if.end32.i_crit_edge, %if.end22.i.if.end32.i_crit_edge
  %and33.i = and i64 %66, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end42.i_crit_edge, label %land.lhs.true35.i

if.end32.i.if.end42.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true35.i:                                ; preds = %if.end32.i
  %87 = ptrtoint ptr %pkey.i106 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pkey.i106, align 2
  %pkey37.i = getelementptr i8, ptr %4, i32 -46
  %89 = ptrtoint ptr %pkey37.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pkey37.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %90)
  %cmp39.not.i = icmp eq i16 %88, %90
  br i1 %cmp39.not.i, label %land.lhs.true35.i.if.end42.i_crit_edge, label %land.lhs.true35.i.if.else_crit_edge

land.lhs.true35.i.if.else_crit_edge:              ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true35.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true35.i.if.end42.i_crit_edge, %if.end32.i.if.end42.i_crit_edge
  %91 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rate.i, align 1
  %rate43.i = getelementptr i8, ptr %4, i32 -43
  %93 = ptrtoint ptr %rate43.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rate43.i, align 1
  %95 = and i64 %66, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 768, i64 %95)
  %.not179.i = icmp eq i64 %95, 768
  br i1 %.not179.i, label %if.end.i132.i, label %if.end42.i.if.end47.i_crit_edge

if.end42.i.if.end47.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end.i132.i:                                    ; preds = %if.end42.i
  %rate_selector.i = getelementptr i8, ptr %4, i32 -44
  %96 = ptrtoint ptr %rate_selector.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rate_selector.i, align 4
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %97, label %if.end.i132.i.if.end47.i_crit_edge [
    i8 0, label %check_selector.exit143.i
    i8 1, label %sw.bb6.i136.i
    i8 2, label %sw.bb11.i138.i
  ]

if.end.i132.i.if.end47.i_crit_edge:               ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

sw.bb6.i136.i:                                    ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp9.i135.not.i = icmp ult i8 %92, %94
  br i1 %cmp9.i135.not.i, label %sw.bb6.i136.i.if.end47.i_crit_edge, label %sw.bb6.i136.i.if.else_crit_edge

sw.bb6.i136.i.if.else_crit_edge:                  ; preds = %sw.bb6.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb6.i136.i.if.end47.i_crit_edge:               ; preds = %sw.bb6.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

sw.bb11.i138.i:                                   ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp14.i137.not.i = icmp eq i8 %92, %94
  br i1 %cmp14.i137.not.i, label %sw.bb11.i138.i.if.end47.i_crit_edge, label %sw.bb11.i138.i.if.else_crit_edge

sw.bb11.i138.i.if.else_crit_edge:                 ; preds = %sw.bb11.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb11.i138.i.if.end47.i_crit_edge:              ; preds = %sw.bb11.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

check_selector.exit143.i:                         ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp.i133.not.i = icmp ugt i8 %92, %94
  br i1 %cmp.i133.not.i, label %check_selector.exit143.i.if.end47.i_crit_edge, label %check_selector.exit143.i.if.else_crit_edge

check_selector.exit143.i.if.else_crit_edge:       ; preds = %check_selector.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

check_selector.exit143.i.if.end47.i_crit_edge:    ; preds = %check_selector.exit143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end47.i:                                       ; preds = %check_selector.exit143.i.if.end47.i_crit_edge, %sw.bb11.i138.i.if.end47.i_crit_edge, %sw.bb6.i136.i.if.end47.i_crit_edge, %if.end.i132.i.if.end47.i_crit_edge, %if.end42.i.if.end47.i_crit_edge
  %99 = ptrtoint ptr %packet_life_time.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %packet_life_time.i, align 1
  %packet_life_time48.i = getelementptr i8, ptr %4, i32 -41
  %101 = ptrtoint ptr %packet_life_time48.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %packet_life_time48.i, align 1
  %103 = and i64 %66, 3072
  call void @__sanitizer_cov_trace_const_cmp8(i64 3072, i64 %103)
  %.not180.i = icmp eq i64 %103, 3072
  br i1 %.not180.i, label %if.end.i149.i, label %if.end47.i.if.end52.i_crit_edge

if.end47.i.if.end52.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.end.i149.i:                                    ; preds = %if.end47.i
  %packet_life_time_selector.i = getelementptr i8, ptr %4, i32 -42
  %104 = ptrtoint ptr %packet_life_time_selector.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %packet_life_time_selector.i, align 2
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %105, label %if.end.i149.i.if.end52.i_crit_edge [
    i8 0, label %check_selector.exit160.i
    i8 1, label %sw.bb6.i153.i
    i8 2, label %sw.bb11.i155.i
  ]

if.end.i149.i.if.end52.i_crit_edge:               ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

sw.bb6.i153.i:                                    ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp9.i152.not.i = icmp ult i8 %100, %102
  br i1 %cmp9.i152.not.i, label %sw.bb6.i153.i.if.end52.i_crit_edge, label %sw.bb6.i153.i.if.else_crit_edge

sw.bb6.i153.i.if.else_crit_edge:                  ; preds = %sw.bb6.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb6.i153.i.if.end52.i_crit_edge:               ; preds = %sw.bb6.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

sw.bb11.i155.i:                                   ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp14.i154.not.i = icmp eq i8 %100, %102
  br i1 %cmp14.i154.not.i, label %sw.bb11.i155.i.if.end52.i_crit_edge, label %sw.bb11.i155.i.if.else_crit_edge

sw.bb11.i155.i.if.else_crit_edge:                 ; preds = %sw.bb11.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb11.i155.i.if.end52.i_crit_edge:              ; preds = %sw.bb11.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

check_selector.exit160.i:                         ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %102)
  %cmp.i150.not.i = icmp ugt i8 %100, %102
  br i1 %cmp.i150.not.i, label %check_selector.exit160.i.if.end52.i_crit_edge, label %check_selector.exit160.i.if.else_crit_edge

check_selector.exit160.i.if.else_crit_edge:       ; preds = %check_selector.exit160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

check_selector.exit160.i.if.end52.i_crit_edge:    ; preds = %check_selector.exit160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.end52.i:                                       ; preds = %check_selector.exit160.i.if.end52.i_crit_edge, %sw.bb11.i155.i.if.end52.i_crit_edge, %sw.bb6.i153.i.if.end52.i_crit_edge, %if.end.i149.i.if.end52.i_crit_edge, %if.end47.i.if.end52.i_crit_edge
  %and53.i = and i64 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53.i)
  %tobool54.not.i = icmp eq i64 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.if.end62.i_crit_edge, label %land.lhs.true55.i

if.end52.i.if.end62.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

land.lhs.true55.i:                                ; preds = %if.end52.i
  %107 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sl.i, align 8
  %sl57.i = getelementptr i8, ptr %4, i32 -40
  %109 = ptrtoint ptr %sl57.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sl57.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %110)
  %cmp59.not.i = icmp eq i8 %108, %110
  br i1 %cmp59.not.i, label %land.lhs.true55.i.if.end62.i_crit_edge, label %land.lhs.true55.i.if.else_crit_edge

land.lhs.true55.i.if.else_crit_edge:              ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true55.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %land.lhs.true55.i.if.end62.i_crit_edge, %if.end52.i.if.end62.i_crit_edge
  %and63.i = and i64 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63.i)
  %tobool64.not.i = icmp eq i64 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end62.i.if.end70.i_crit_edge, label %land.lhs.true65.i

if.end62.i.if.end70.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

land.lhs.true65.i:                                ; preds = %if.end62.i
  %111 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flow_label.i, align 4
  %flow_label66.i = getelementptr i8, ptr %4, i32 -36
  %113 = ptrtoint ptr %flow_label66.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flow_label66.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp67.not.i = icmp eq i32 %112, %114
  br i1 %cmp67.not.i, label %land.lhs.true65.i.if.end70.i_crit_edge, label %land.lhs.true65.i.if.else_crit_edge

land.lhs.true65.i.if.else_crit_edge:              ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true65.i.if.end70.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

if.end70.i:                                       ; preds = %land.lhs.true65.i.if.end70.i_crit_edge, %if.end62.i.if.end70.i_crit_edge
  %and71.i = and i64 %66, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71.i)
  %tobool72.not.i = icmp eq i64 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end80.i_crit_edge, label %land.lhs.true73.i

if.end70.i.if.end80.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

land.lhs.true73.i:                                ; preds = %if.end70.i
  %115 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %hop_limit.i, align 8
  %hop_limit75.i = getelementptr i8, ptr %4, i32 -32
  %117 = ptrtoint ptr %hop_limit75.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %hop_limit75.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %118)
  %cmp77.not.i = icmp eq i8 %116, %118
  br i1 %cmp77.not.i, label %land.lhs.true73.i.if.end80.i_crit_edge, label %land.lhs.true73.i.if.else_crit_edge

land.lhs.true73.i.if.else_crit_edge:              ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true73.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.end80.i:                                       ; preds = %land.lhs.true73.i.if.end80.i_crit_edge, %if.end70.i.if.end80.i_crit_edge
  %and81.i = and i64 %66, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81.i)
  %tobool82.not.i = icmp eq i64 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.if.then21_crit_edge, label %land.lhs.true83.i

if.end80.i.if.then21_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

land.lhs.true83.i:                                ; preds = %if.end80.i
  %119 = ptrtoint ptr %scope.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %scope.i, align 1
  %scope85.i = getelementptr i8, ptr %4, i32 -31
  %121 = ptrtoint ptr %scope85.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %scope85.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %122)
  %cmp87.not.i = icmp eq i8 %120, %122
  br i1 %cmp87.not.i, label %land.lhs.true83.i.if.then21_crit_edge, label %land.lhs.true83.i.if.else_crit_edge

land.lhs.true83.i.if.else_crit_edge:              ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true83.i.if.then21_crit_edge:            ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true83.i.if.then21_crit_edge, %if.end80.i.if.then21_crit_edge
  %state.i107 = getelementptr i8, ptr %4, i32 8
  %123 = ptrtoint ptr %state.i107 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %state.i107, align 8
  %124 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.i108 = icmp eq i8 %124, 0
  br i1 %tobool.not.i.i108, label %if.then21.for.inc.i.i113_crit_edge, label %if.then.i.i111

if.then21.for.inc.i.i113_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i113

if.then.i.i111:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i109, align 4
  %add.i.i110 = add i32 %126, 1
  store i32 %add.i.i110, ptr %arrayidx.i.i109, align 4
  br label %for.inc.i.i113

for.inc.i.i113:                                   ; preds = %if.then.i.i111, %if.then21.for.inc.i.i113_crit_edge
  %127 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.1.i.i112 = icmp eq i8 %127, 0
  br i1 %tobool.not.1.i.i112, label %for.inc.i.i113.for.inc.1.i.i118_crit_edge, label %if.then.1.i.i116

for.inc.i.i113.for.inc.1.i.i118_crit_edge:        ; preds = %for.inc.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i118

if.then.1.i.i116:                                 ; preds = %for.inc.i.i113
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %arrayidx.1.i.i114 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.1.i.i114, align 4
  %add.1.i.i115 = add i32 %129, 1
  store i32 %add.1.i.i115, ptr %arrayidx.1.i.i114, align 4
  br label %for.inc.1.i.i118

for.inc.1.i.i118:                                 ; preds = %if.then.1.i.i116, %for.inc.i.i113.for.inc.1.i.i118_crit_edge
  %130 = and i8 %60, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.2.i.i117 = icmp eq i8 %130, 0
  br i1 %tobool.not.2.i.i117, label %for.inc.1.i.i118.for.inc.2.i.i123_crit_edge, label %if.then.2.i.i121

for.inc.1.i.i118.for.inc.2.i.i123_crit_edge:      ; preds = %for.inc.1.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i123

if.then.2.i.i121:                                 ; preds = %for.inc.1.i.i118
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %arrayidx.2.i.i119 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.2.i.i119, align 4
  %add.2.i.i120 = add i32 %132, 1
  store i32 %add.2.i.i120, ptr %arrayidx.2.i.i119, align 4
  br label %for.inc.2.i.i123

for.inc.2.i.i123:                                 ; preds = %if.then.2.i.i121, %for.inc.1.i.i118.for.inc.2.i.i123_crit_edge
  %133 = and i8 %60, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.3.i.i122 = icmp eq i8 %133, 0
  br i1 %tobool.not.3.i.i122, label %for.inc.2.i.i123.adjust_membership.exit.i129_crit_edge, label %if.then.3.i.i126

for.inc.2.i.i123.adjust_membership.exit.i129_crit_edge: ; preds = %for.inc.2.i.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %adjust_membership.exit.i129

if.then.3.i.i126:                                 ; preds = %for.inc.2.i.i123
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %arrayidx.3.i.i124 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.3.i.i124, align 4
  %add.3.i.i125 = add i32 %135, 1
  store i32 %add.3.i.i125, ptr %arrayidx.3.i.i124, align 4
  br label %adjust_membership.exit.i129

adjust_membership.exit.i129:                      ; preds = %if.then.3.i.i126, %for.inc.2.i.i123.adjust_membership.exit.i129_crit_edge
  %136 = ptrtoint ptr %join_state11 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %join_state11, align 2
  %or17.i = or i8 %137, %60
  store i8 %or17.i, ptr %join_state11, align 2
  %138 = call ptr @memcpy(ptr %add.ptr7, ptr %add.ptr, i32 64)
  %139 = ptrtoint ptr %join_state9 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %60, ptr %join_state9, align 2
  %call.i.i.i128 = call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i.i128, label %if.end.i.i.i132, label %adjust_membership.exit.i129.__list_del_entry.exit.i.i_crit_edge

adjust_membership.exit.i129.__list_del_entry.exit.i.i_crit_edge: ; preds = %adjust_membership.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i132:                                  ; preds = %adjust_membership.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i130 = getelementptr i8, ptr %4, i32 4
  %140 = ptrtoint ptr %prev.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i.i.i130, align 4
  %142 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i131 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev1.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev1.i.i.i.i131, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %143, ptr %141, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i132, %adjust_membership.exit.i129.__list_del_entry.exit.i.i_crit_edge
  %146 = ptrtoint ptr %active_list.i127 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %active_list.i127, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %active_list.i127, ptr noundef %147) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end32_crit_edge

__list_del_entry.exit.i.i.if.end32_crit_edge:     ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %4, ptr %prev1.i.i2.i.i, align 4
  %149 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %147, ptr %4, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %4, i32 4
  %150 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %active_list.i127, ptr %prev3.i.i.i.i, align 4
  %151 = ptrtoint ptr %active_list.i127 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %4, ptr %active_list.i127, align 4
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true83.i.if.else_crit_edge, %land.lhs.true73.i.if.else_crit_edge, %land.lhs.true65.i.if.else_crit_edge, %land.lhs.true55.i.if.else_crit_edge, %check_selector.exit160.i.if.else_crit_edge, %sw.bb11.i155.i.if.else_crit_edge, %sw.bb6.i153.i.if.else_crit_edge, %check_selector.exit143.i.if.else_crit_edge, %sw.bb11.i138.i.if.else_crit_edge, %sw.bb6.i136.i.if.else_crit_edge, %land.lhs.true35.i.if.else_crit_edge, %land.lhs.true25.i.if.else_crit_edge, %check_selector.exit.i.if.else_crit_edge, %sw.bb11.i.i.if.else_crit_edge, %sw.bb6.i.i.if.else_crit_edge, %land.lhs.true11.i.if.else_crit_edge, %land.lhs.true5.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i133, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i133:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i, align 4
  %154 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i133, %if.else.list_del_init.exit_crit_edge
  %158 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %4, ptr %prev.i3.i, align 4
  br label %if.end32

if.else25:                                        ; preds = %refcount_inc.exit
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %160 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %port1.i, align 4
  %162 = ptrtoint ptr %last_join.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %add.ptr7, ptr %last_join.i, align 8
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %161, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %port_num.i134 = getelementptr inbounds %struct.mcast_port, ptr %161, i32 0, i32 5
  %167 = ptrtoint ptr %port_num.i134 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port_num.i134, align 4
  %comp_mask.i = getelementptr i8, ptr %4, i32 -24
  %169 = ptrtoint ptr %comp_mask.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %comp_mask.i, align 8
  %call.i135 = call i32 @ib_sa_mcmember_rec_query(ptr noundef nonnull @sa_client, ptr noundef %166, i32 noundef %168, i8 noundef zeroext 2, ptr noundef %add.ptr7, i64 noundef %170, i32 noundef 3000, i32 noundef 3264, ptr noundef nonnull @join_handler, ptr noundef %add.ptr, ptr noundef %query.i) #9
  %171 = call i32 @llvm.smin.i32(i32 %call.i135, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i135)
  %tobool28.not = icmp sgt i32 %call.i135, -1
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else25
  %call.i.i.i.i.i.i137 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %172 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i139, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i138 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i138, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %cleanup

if.then.i139:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i = getelementptr i8, ptr %4, i32 16
  call void @complete(ptr noundef %comp.i) #9
  br label %cleanup

if.end30:                                         ; preds = %if.else25
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %call.i.i.i143 = call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i.i143, label %if.end.i.i.i146, label %if.end30.fail_join.exit_crit_edge

if.end30.fail_join.exit_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_join.exit

if.end.i.i.i146:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i144 = getelementptr i8, ptr %4, i32 4
  %173 = ptrtoint ptr %prev.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i144, align 4
  %175 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i145, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %fail_join.exit

fail_join.exit:                                   ; preds = %if.end.i.i.i146, %if.end30.fail_join.exit_crit_edge
  %179 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i.i147 = getelementptr i8, ptr %4, i32 4
  %180 = ptrtoint ptr %prev.i3.i.i147 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %4, ptr %prev.i3.i.i147, align 4
  br label %if.end32

if.end32:                                         ; preds = %fail_join.exit, %list_del_init.exit, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end32_crit_edge
  %.sink = phi i32 [ %171, %fail_join.exit ], [ -22, %list_del_init.exit ], [ 0, %__list_del_entry.exit.i.i.if.end32_crit_edge ], [ 0, %if.end.i.i.i.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %callback.i148 = getelementptr i8, ptr %4, i32 -16
  %181 = ptrtoint ptr %callback.i148 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %callback.i148, align 8
  %call.i149 = call i32 %182(i32 noundef %.sink, ptr noundef %add.ptr7) #9
  %call.i.i.i.i.i.i152 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %183 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %183, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i153)
  %cmp.i.i.i.i154 = icmp eq i32 %asmresult.i.i.i.i.i.i.i153, 1
  br i1 %cmp.i.i.i.i154, label %if.then.i159, label %if.end5.i.i.i.i156

if.end5.i.i.i.i156:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i153)
  %.not.i.i.i.i155 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i153, 0
  br i1 %.not.i.i.i.i155, label %if.end5.i.i.i.i156.deref_member.exit161_crit_edge, label %if.then10.i.i.i.i157, !prof !41

if.end5.i.i.i.i156.deref_member.exit161_crit_edge: ; preds = %if.end5.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %deref_member.exit161

if.then10.i.i.i.i157:                             ; preds = %if.end5.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %deref_member.exit161

if.then.i159:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i158 = getelementptr i8, ptr %4, i32 16
  call void @complete(ptr noundef %comp.i158) #9
  br label %deref_member.exit161

deref_member.exit161:                             ; preds = %if.then.i159, %if.then10.i.i.i.i157, %if.end5.i.i.i.i156.deref_member.exit161_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool33.not = icmp eq i32 %call.i149, 0
  br i1 %tobool33.not, label %deref_member.exit161.if.end36_crit_edge, label %if.then34

deref_member.exit161.if.end36_crit_edge:          ; preds = %deref_member.exit161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %deref_member.exit161
  call void @__sanitizer_cov_trace_pc() #11
  call void @ib_sa_free_multicast(ptr noundef %add.ptr7)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %deref_member.exit161.if.end36_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %184 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %185, %pending_list
  %186 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp.not = icmp eq i32 %187, 1
  br i1 %cmp.i.not, label %if.end36.lor.rhs_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end36.lor.rhs_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

while.end:                                        ; preds = %lor.rhs
  %188 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i162 = icmp eq i32 %189, 0
  %conv1.i = zext i1 %tobool.not.i162 to i8
  %190 = ptrtoint ptr %arrayidx.1.i.i114 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx.1.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.1.i = icmp eq i32 %191, 0
  %conv1.1.i = select i1 %tobool.not.1.i, i8 2, i8 0
  %leave_state.1.1.i = or i8 %conv1.1.i, %conv1.i
  %192 = ptrtoint ptr %arrayidx.2.i.i119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.2.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.2.i = icmp eq i32 %193, 0
  %conv1.2.i = select i1 %tobool.not.2.i, i8 4, i8 0
  %leave_state.1.2.i = or i8 %leave_state.1.1.i, %conv1.2.i
  %194 = ptrtoint ptr %arrayidx.3.i.i124 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.3.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool.not.3.i = icmp eq i32 %195, 0
  %conv1.3.i = select i1 %tobool.not.3.i, i8 8, i8 0
  %leave_state.1.3.i = or i8 %leave_state.1.2.i, %conv1.3.i
  %196 = ptrtoint ptr %join_state11 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %join_state11, align 2
  %and10.i = and i8 %leave_state.1.3.i, %197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i)
  %tobool39.not = icmp eq i8 %and10.i, 0
  br i1 %tobool39.not, label %if.else52, label %if.then40

if.then40:                                        ; preds = %while.end
  %neg = xor i8 %and10.i, -1
  %198 = ptrtoint ptr %join_state11 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %join_state11, align 2
  %and45 = and i8 %199, %neg
  store i8 %and45, ptr %join_state11, align 2
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %200 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %port1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rec.i) #9
  %202 = call ptr @memcpy(ptr %rec.i, ptr %add.ptr, i32 64)
  %203 = ptrtoint ptr %join_state.i165 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %and10.i, ptr %join_state.i165, align 2
  %204 = ptrtoint ptr %leave_state3.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %and10.i, ptr %leave_state3.i, align 2
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %201, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %port_num.i166 = getelementptr inbounds %struct.mcast_port, ptr %201, i32 0, i32 5
  %209 = ptrtoint ptr %port_num.i166 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port_num.i166, align 4
  %call.i168 = call i32 @ib_sa_mcmember_rec_query(ptr noundef nonnull @sa_client, ptr noundef %208, i32 noundef %210, i8 noundef zeroext 21, ptr noundef nonnull %rec.i, i64 noundef 65539, i32 noundef 3000, i32 noundef 3264, ptr noundef nonnull @leave_handler, ptr noundef %add.ptr, ptr noundef %query.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i168)
  %tobool49.not = icmp sgt i32 %call.i168, -1
  br i1 %tobool49.not, label %if.then40.cleanup_crit_edge, label %if.then40.retest.backedge_crit_edge

if.then40.retest.backedge_crit_edge:              ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %retest.backedge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call fastcc void @release_group(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then40.cleanup_crit_edge, %if.then.i139, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sa_mcmember_rec_query(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @join_handler(i32 noundef %status, ptr nocapture noundef readonly %rec, ptr noundef %context) #0 align 64 {
entry:
  %pkey_index = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_index) #9
  %0 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pkey_index, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #9
  %pending_list.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 5
  %1 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pending_list.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -88
  %last_join.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 7
  %3 = ptrtoint ptr %last_join.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %last_join.i, align 8
  %cmp.i = icmp eq ptr %4, %add.ptr.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %refcount.i = getelementptr i8, ptr %2, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !44

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !41

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #9
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %refcount_inc.exit.i.list_del_init.exit.i_crit_edge

refcount_inc.exit.i.list_del_init.exit.i_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %refcount_inc.exit.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #9
  %callback.i = getelementptr i8, ptr %2, i32 -16
  %15 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback.i, align 8
  %call.i = tail call i32 %16(i32 noundef %status, ptr noundef %add.ptr.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !41

if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %deref_member.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %deref_member.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %comp.i.i = getelementptr i8, ptr %2, i32 16
  tail call void @complete(ptr noundef %comp.i.i) #9
  br label %deref_member.exit.i

deref_member.exit.i:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.deref_member.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %deref_member.exit.i.if.end27_crit_edge, label %if.then3.i

deref_member.exit.i.if.end27_crit_edge:           ; preds = %deref_member.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then3.i:                                       ; preds = %deref_member.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ib_sa_free_multicast(ptr noundef %add.ptr.i) #9
  br label %if.end27

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #9
  br label %if.end27

if.else:                                          ; preds = %entry
  %port = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 2
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %port_num = getelementptr inbounds %struct.mcast_port, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_num, align 4
  %pkey = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 7
  %26 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pkey, align 2
  %call = call i32 @ib_find_pkey(ptr noundef %23, i32 noundef %25, i16 noundef zeroext %27, ptr noundef nonnull %pkey_index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.else.if.end_crit_edge, label %if.then3

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %pkey_index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else.if.end_crit_edge
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  %lock = getelementptr inbounds %struct.mcast_port, ptr %30, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 10
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %pkey_index5 = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 12
  %33 = ptrtoint ptr %pkey_index5 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pkey_index5, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp6 = icmp eq i16 %34, -1
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pkey_index, align 2
  %37 = ptrtoint ptr %pkey_index5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %pkey_index5, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %rec, ptr noundef dereferenceable(16) %context, i32 16) #15
  %38 = call ptr @memcpy(ptr %context, ptr %rec, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.end10.if.end24_crit_edge, label %if.then16

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then16:                                        ; preds = %if.end10
  %node = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 1
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port, align 4
  %table = getelementptr inbounds %struct.mcast_port, ptr %40, i32 0, i32 2
  call void @rb_erase(ptr noundef %node, ptr noundef %table) #9
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 4
  %table.i = getelementptr inbounds %struct.mcast_port, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %table.i, align 4
  %tobool.not31.i = icmp eq ptr %44, null
  br i1 %tobool.not31.i, label %if.then16.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then16.while.end.i_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then16
  %bcmp46 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @mgid0, ptr noundef dereferenceable(16) %context, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp46)
  %tobool21.not.not = icmp eq i32 %bcmp46, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %45 = phi ptr [ %44, %while.body.lr.ph.i ], [ %47, %if.end12.i.while.body.i_crit_edge ]
  %add.ptr.i47 = getelementptr i8, ptr %45, i32 -64
  %call.i48 = call i32 @memcmp(ptr noundef dereferenceable(16) %context, ptr noundef dereferenceable(16) %add.ptr.i47, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.then.i50, label %if.else.i51

if.then.i50:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  br label %if.end12.i

if.else.i51:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp4.not.i = icmp eq i32 %call.i48, 0
  br i1 %cmp4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 1
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else.i51
  br i1 %tobool21.not.not, label %if.then8.i, label %if.else6.i.if.end24_crit_edge

if.else6.i.if.end24_crit_edge:                    ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.then5.i, %if.then.i50
  %link.1.i = phi ptr [ %rb_left.i, %if.then.i50 ], [ %rb_right.i, %if.then5.i ], [ %rb_left9.i, %if.then8.i ]
  %46 = ptrtoint ptr %link.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link.1.i, align 4
  %tobool.not.i52 = icmp eq ptr %47, null
  br i1 %tobool.not.i52, label %while.cond.while.end_crit_edge.i, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i = ptrtoint ptr %45 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then16.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then16.while.end.i_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.1.i, %while.cond.while.end_crit_edge.i ], [ %table.i, %if.then16.while.end.i_crit_edge ]
  %48 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %parent.0.lcssa.i, ptr %node, align 4
  %rb_right.i.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_left.i.i, align 4
  %51 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %node, ptr %link.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %node, ptr noundef %table.i) #9
  br label %if.end24

if.end24:                                         ; preds = %while.end.i, %if.else6.i.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port, align 4
  %lock26 = getelementptr inbounds %struct.mcast_port, ptr %53, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock26) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.else.i, %if.then3.i, %deref_member.exit.i.if.end27_crit_edge
  %work = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 4
  call void @mcast_work_handler(ptr noundef %work)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_index) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @leave_handler(i32 noundef %status, ptr nocapture noundef readnone %rec, ptr noundef %context) #0 align 64 {
entry:
  %rec.i = alloca %struct.ib_sa_mcmember_rec, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %retries = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 14
  %0 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %leave_state = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 13
  %2 = ptrtoint ptr %leave_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %leave_state, align 2
  %port1.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 2
  %4 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rec.i) #9
  %6 = call ptr @memcpy(ptr %rec.i, ptr %context, i32 64)
  %join_state.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec.i, i32 0, i32 16
  %7 = ptrtoint ptr %join_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %join_state.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %port_num.i = getelementptr inbounds %struct.mcast_port, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num.i, align 4
  %query.i = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 11
  %call.i = call i32 @ib_sa_mcmember_rec_query(ptr noundef nonnull @sa_client, ptr noundef %11, i32 noundef %13, i8 noundef zeroext 21, ptr noundef nonnull %rec.i, i64 noundef 65539, i32 noundef 3000, i32 noundef 3264, ptr noundef nonnull @leave_handler, ptr noundef %context, ptr noundef %query.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool2.not = icmp sgt i32 %call.i, -1
  br i1 %tobool2.not, label %if.then, label %land.lhs.true1.if.else_crit_edge

land.lhs.true1.if.else_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retries, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %retries, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true1.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %work = getelementptr inbounds %struct.mcast_group, ptr %context, i32 0, i32 4
  call void @mcast_work_handler(ptr noundef %work)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_ib_sa_join_multicast, !1, !"__ksymtab_ib_sa_join_multicast", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/multicast.c", i32 660, i32 1}
!2 = !{ptr @__ksymtab_ib_sa_free_multicast, !3, !"__ksymtab_ib_sa_free_multicast", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/multicast.c", i32 691, i32 1}
!4 = !{ptr @__ksymtab_ib_sa_get_mcmember_rec, !5, !"__ksymtab_ib_sa_get_mcmember_rec", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/multicast.c", i32 717, i32 1}
!6 = !{ptr @__ksymtab_ib_init_ah_from_mcmember, !7, !"__ksymtab_ib_init_ah_from_mcmember", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/multicast.c", i32 769, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/multicast.c", i32 884, i32 13}
!10 = !{ptr @sa_client, !11, !"sa_client", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/multicast.c", i32 54, i32 28}
!12 = !{ptr @mcast_wq, !13, !"mcast_wq", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/multicast.c", i32 55, i32 33}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/multicast.c", i32 49, i32 12}
!16 = !{ptr @mcast_client, !17, !"mcast_client", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/multicast.c", i32 48, i32 25}
!18 = !{ptr @mcast_add_one.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/multicast.c", i32 840, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @acquire_group.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/multicast.c", i32 583, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @acquire_group.__key.5, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/multicast.c", i32 584, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mgid0, !31, !"mgid0", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/core/multicast.c", i32 56, i32 21}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148513254, i64 2148513280, i64 2148513309, i64 2148513343, i64 2148513374, i64 2148513397}
!43 = !{i64 2148514784, i64 2148514816, i64 2148514845, i64 2148514879, i64 2148514910, i64 2148514933}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2148601730}
!46 = !{i64 2148516439, i64 2148516471, i64 2148516500, i64 2148516534, i64 2148516565, i64 2148516588}
!47 = !{i64 2148601959}
!48 = !{i64 2148602809}
!49 = !{i64 2148517249, i64 2148517281, i64 2148517310, i64 2148517344, i64 2148517375, i64 2148517398}
!50 = !{i64 2149657040}
!51 = !{!"auto-init"}
