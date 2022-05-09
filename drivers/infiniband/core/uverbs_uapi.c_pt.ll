; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_uapi.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_uapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uapi_definition = type { i8, i8, %union.anon.172, %union.anon.175 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { i16, i8, i8, i8 }
%union.anon.175 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.uverbs_api = type { %struct.xarray, i32, i32, i32, %struct.uverbs_api_write_method, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uverbs_api_write_method = type { ptr, i8, i8, i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uverbs_api_object = type { ptr, ptr, i8, i32 }
%struct.uverbs_api_ioctl_method = type { ptr, [2 x i32], i16, i8, i8, i8 }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.176, %union.anon.180 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { i16, i16 }
%union.anon.180 = type { %struct.anon.181, [4 x i8] }
%struct.anon.181 = type { ptr }
%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@uverbs_core_api = internal constant { [13 x %struct.uapi_definition], [36 x i8] } { [13 x %struct.uapi_definition] [%struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_async_fd } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_counters } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_cq } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_device } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_dm } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_flow_action } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_intf } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_mr } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_qp } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_srq } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_obj_wq } }, %struct.uapi_definition { i8 4, i8 0, %union.anon.172 zeroinitializer, %union.anon.175 { ptr @uverbs_def_write_intf } }, %struct.uapi_definition zeroinitializer], [36 x i8] zeroinitializer }, align 32
@uverbs_alloc_api._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Setup of uverbs_api failed, kernel parsing tree description is not valid (%d)??\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uverbs_alloc_api\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/infiniband/core/uverbs_uapi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uverbs_alloc_api._entry_ptr = internal global ptr @uverbs_alloc_api._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@uverbs_fd_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@uverbs_def_obj_async_fd = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_counters = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_cq = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_device = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_dm = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_flow_action = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_intf = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_mr = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_qp = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_srq = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_obj_wq = external dso_local constant [0 x %struct.uapi_definition], align 4
@uverbs_def_write_intf = external dso_local constant [0 x %struct.uapi_definition], align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad count %u key=%x\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1920, i64 1984]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1920, i64 1984]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"uverbs_core_api\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 628, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 671, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 378, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [41 x i8] c"../drivers/infiniband/core/uverbs_uapi.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 523, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @uverbs_alloc_api._entry, ptr @uverbs_alloc_api._entry_ptr, ptr @uverbs_core_api, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xa_init_flags.__key, ptr @.str.6, ptr @.str.10], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_core_api to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_alloc_api._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_destroy_api(ptr noundef %uapi) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %uapi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i) #8
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter.i, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iter.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %while.body.i.i.for.cond.i.loopexit_crit_edge, %while.cond.i.i.for.cond.i.loopexit_crit_edge
  %slot.0.i.ph = phi ptr [ null, %while.cond.i.i.for.cond.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i, %while.body.i.i.for.cond.i.loopexit_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %if.end
  %slot.0.i = phi ptr [ null, %if.end ], [ %slot.0.i.ph, %for.cond.i.loopexit ]
  %tobool.not.i = icmp eq ptr %slot.0.i, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

lor.rhs.i:                                        ; preds = %for.cond.i
  %call1.i = call ptr @radix_tree_next_chunk(ptr noundef nonnull %uapi, ptr noundef nonnull %iter.i, i32 noundef 0) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %uapi_remove_range.exit, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %slot.1.i = phi ptr [ %slot.0.i, %for.cond.i.for.body.i_crit_edge ], [ %call1.i, %lor.rhs.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slot.1.i, align 4
  call void @kfree(ptr noundef %6) #8
  call void @radix_tree_iter_delete(ptr noundef nonnull %uapi, ptr noundef nonnull %iter.i, ptr noundef nonnull %slot.1.i) #8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iter.i, align 4
  %sub.i.i.i = sub i32 %8, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %for.body.i
  %slot.addr.0.i.i = phi ptr [ %slot.1.i, %for.body.i ], [ %incdec.ptr29.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ %sub.i.i.i, %for.body.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add i32 %count.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.for.cond.i.loopexit_crit_edge

while.cond.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.loopexit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr29.i.i = getelementptr ptr, ptr %slot.addr.0.i.i, i32 1
  %11 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iter.i, align 4
  %add.i.i.i = add i32 %12, 1
  store i32 %add.i.i.i, ptr %iter.i, align 4
  %13 = ptrtoint ptr %incdec.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr29.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %14, null
  br i1 %tobool32.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.for.cond.i.loopexit_crit_edge, !prof !48

while.body.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.loopexit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

uapi_remove_range.exit:                           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i) #8
  %write_methods = getelementptr inbounds %struct.uverbs_api, ptr %uapi, i32 0, i32 5
  %15 = ptrtoint ptr %write_methods to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_methods, align 4
  call void @kfree(ptr noundef %16) #8
  call void @kfree(ptr noundef nonnull %uapi) #8
  br label %return

return:                                           ; preds = %uapi_remove_range.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uverbs_alloc_api(ptr noundef %ibdev) local_unnamed_addr #0 align 64 {
entry:
  %iter.i.i = alloca %struct.radix_tree_iter, align 4
  %iter.i36 = alloca %struct.radix_tree_iter, align 4
  %iter.i.i187.i = alloca %struct.radix_tree_iter, align 4
  %iter.i.i149.i = alloca %struct.radix_tree_iter, align 4
  %iter.i.i.i = alloca %struct.radix_tree_iter, align 4
  %iter.i = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3264, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i, align 8
  %driver_id = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %driver_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_id, align 4
  %driver_id2 = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %driver_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %driver_id2, align 4
  %call3 = tail call fastcc i32 @uapi_merge_def(ptr noundef nonnull %call7.i.i, ptr noundef %ibdev, ptr noundef nonnull @uverbs_core_api, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end6:                                          ; preds = %if.end
  %driver_def = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 29
  %6 = ptrtoint ptr %driver_def to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_def, align 4
  %call7 = tail call fastcc i32 @uapi_merge_def(ptr noundef nonnull %call7.i.i, ptr noundef %ibdev, ptr noundef %7, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_crit_edge

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i) #8
  %8 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i187.i, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %iter.i.i187.i, i32 8
  %11 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i149.i, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %iter.i.i149.i, i32 8
  %13 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i.i, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %iter.i.i.i, i32 8
  %15 = getelementptr inbounds i8, ptr %iter.i, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 -1, ptr %15, align 4
  br label %again.outer.i

again.outer.i:                                    ; preds = %again.outer.i.backedge, %if.end10
  %scan_again.0.off0.ph.i = phi i1 [ false, %if.end10 ], [ %scan_again.0.off0.ph.i.be, %again.outer.i.backedge ]
  %starting_key.0.ph.i = phi i32 [ 0, %if.end10 ], [ %starting_key.0.ph.i.be, %again.outer.i.backedge ]
  br label %again.i

again.i:                                          ; preds = %again.i.backedge, %again.outer.i
  %starting_key.0.i = phi i32 [ %starting_key.0.ph.i, %again.outer.i ], [ %starting_key.0.i.be, %again.i.backedge ]
  %17 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %iter.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %starting_key.0.i, ptr %8, align 4
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %while.body.i.i.for.cond.i.loopexit_crit_edge, %while.cond.i.i.for.cond.i.loopexit_crit_edge
  %slot.0.i.ph = phi ptr [ null, %while.cond.i.i.for.cond.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i, %while.body.i.i.for.cond.i.loopexit_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %again.i
  %slot.0.i = phi ptr [ null, %again.i ], [ %slot.0.i.ph, %for.cond.i.loopexit ]
  %tobool.not.i = icmp eq ptr %slot.0.i, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

lor.rhs.i:                                        ; preds = %for.cond.i
  %call1.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i, i32 noundef 0) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %slot.1.i = phi ptr [ %slot.0.i, %for.cond.i.for.body.i_crit_edge ], [ %call1.i, %lor.rhs.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iter.i, align 4
  %and.i.i.i = and i32 %20, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i.i to i32
  %and.i49.i.i = and i32 %20, 1984
  %21 = add nsw i32 %and.i49.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %21)
  %22 = icmp ult i32 %21, 1919
  %and2.i.i.i = and i32 %20, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %23 = and i1 %cmp3.i.i.i, %22
  %inc3.i.i = select i1 %cmp.i.i.i, i32 2, i32 1
  %count.1.i.i = select i1 %23, i32 %inc3.i.i, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %and.i49.i.i)
  %cmp.i51.i.i = icmp eq i32 %and.i49.i.i, 1920
  %inc7.i.i = zext i1 %cmp.i51.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1984, i32 %and.i49.i.i)
  %cmp.i53.i.i = icmp eq i32 %and.i49.i.i, 1984
  %inc11.i.i = zext i1 %cmp.i53.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp3.i56.i.i = icmp ne i32 %and2.i.i.i, 0
  %24 = and i1 %cmp3.i56.i.i, %22
  %inc15.i.i = zext i1 %24 to i32
  %count.2.i.i = add nuw nsw i32 %inc11.i.i, %inc7.i.i
  %count.3.i.i = add nuw nsw i32 %count.2.i.i, %count.1.i.i
  %count.4.i.i = add nuw nsw i32 %count.3.i.i, %inc15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.4.i.i)
  %cmp.not.i.i = icmp eq i32 %count.4.i.i, 1
  br i1 %cmp.not.i.i, label %for.body.i.uapi_key_okay.exit.i_crit_edge, label %do.end.i.i, !prof !49

for.body.i.uapi_key_okay.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_okay.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 523, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %count.4.i.i, i32 noundef %20) #8
  br label %uapi_key_okay.exit.i

uapi_key_okay.exit.i:                             ; preds = %do.end.i.i, %for.body.i.uapi_key_okay.exit.i_crit_edge
  %25 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iter.i, align 4
  %and.i.i = and i32 %26, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i146.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i146.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %uapi_key_okay.exit.i
  %27 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slot.1.i, align 4
  %disabled.i = getelementptr inbounds %struct.uverbs_api_object, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool5.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool5.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then6.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i
  %or1.i.i = or i32 %26, 2047
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i.i) #8
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 -1, ptr %14, align 4
  %31 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %iter.i.i.i, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %13, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i.loopexit:                          ; preds = %while.body.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge, %while.cond.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge
  %slot.0.i.i.i.ph = phi ptr [ null, %while.cond.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i.i, %while.body.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge ]
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.loopexit, %if.then6.i
  %slot.0.i.i.i = phi ptr [ null, %if.then6.i ], [ %slot.0.i.i.i.ph, %for.cond.i.i.i.loopexit ]
  %tobool.not.i.i.i = icmp eq ptr %slot.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

lor.rhs.i.i.i:                                    ; preds = %for.cond.i.i.i
  %call1.i.i.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i.i, i32 noundef 0) #8
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %lor.rhs.i.i.i.cleanup.i_crit_edge, label %lor.rhs.i.i.i.for.body.i.i.i_crit_edge

lor.rhs.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

lor.rhs.i.i.i.cleanup.i_crit_edge:                ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body.i.i.i:                                   ; preds = %lor.rhs.i.i.i.for.body.i.i.i_crit_edge, %for.cond.i.i.i.for.body.i.i.i_crit_edge
  %slot.1.i.i.i = phi ptr [ %slot.0.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %call1.i.i.i, %lor.rhs.i.i.i.for.body.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iter.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %or1.i.i)
  %cmp.i.i147.i = icmp ugt i32 %34, %or1.i.i
  br i1 %cmp.i.i147.i, label %for.body.i.i.i.cleanup.i_crit_edge, label %do.end.i.i.i

for.body.i.i.i.cleanup.i_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %35 = ptrtoint ptr %slot.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slot.1.i.i.i, align 4
  call void @kfree(ptr noundef %36) #8
  call void @radix_tree_iter_delete(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i.i, ptr noundef nonnull %slot.1.i.i.i) #8
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %13, align 4
  %39 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iter.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 %38, %40
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %do.end.i.i.i
  %slot.addr.0.i.i.i.i = phi ptr [ %slot.1.i.i.i, %do.end.i.i.i ], [ %incdec.ptr29.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %count.0.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %do.end.i.i.i ], [ %dec.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %dec.i.i.i.i = add i32 %count.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %dec.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %while.cond.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge

while.cond.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.loopexit

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  %incdec.ptr29.i.i.i.i = getelementptr ptr, ptr %slot.addr.0.i.i.i.i, i32 1
  %41 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iter.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store i32 %add.i.i.i.i.i, ptr %iter.i.i.i, align 4
  %43 = ptrtoint ptr %incdec.ptr29.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr29.i.i.i.i, align 4
  %tobool32.not.i.i.i.i = icmp eq ptr %44, null
  br i1 %tobool32.not.i.i.i.i, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, label %while.body.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge, !prof !48

while.body.i.i.i.i.for.cond.i.i.i.loopexit_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.loopexit

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i.i

cleanup.i:                                        ; preds = %for.body.i.i.i.cleanup.i_crit_edge, %lor.rhs.i.i.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i.i) #8
  br label %again.outer.i.backedge

if.end9.i:                                        ; preds = %uapi_key_okay.exit.i
  %and.i148.i = and i32 %26, 1984
  %45 = add nsw i32 %and.i148.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %45)
  %46 = icmp ult i32 %45, 1919
  %and2.i.i = and i32 %26, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp3.i.i = icmp eq i32 %and2.i.i, 0
  %47 = and i1 %cmp3.i.i, %46
  br i1 %47, label %if.then12.i, label %if.end27.i

if.then12.i:                                      ; preds = %if.end9.i
  %48 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slot.1.i, align 4
  %disabled17.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %disabled17.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load18.i = load i8, ptr %disabled17.i, align 2
  %51 = and i8 %bf.load18.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not.i = icmp eq i8 %51, 0
  br i1 %tobool20.not.i, label %if.then12.i.for.inc.i_crit_edge, label %if.then21.i

if.then12.i.for.inc.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.then12.i
  %or.i.i = or i32 %26, 63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i149.i) #8
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 -1, ptr %12, align 4
  %53 = ptrtoint ptr %iter.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %iter.i.i149.i, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %26, ptr %11, align 4
  br label %for.cond.i.i152.i

for.cond.i.i152.i.loopexit:                       ; preds = %while.body.i.i.i169.i.for.cond.i.i152.i.loopexit_crit_edge, %while.cond.i.i.i165.i.for.cond.i.i152.i.loopexit_crit_edge
  %slot.0.i.i150.i.ph = phi ptr [ null, %while.cond.i.i.i165.i.for.cond.i.i152.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i166.i, %while.body.i.i.i169.i.for.cond.i.i152.i.loopexit_crit_edge ]
  br label %for.cond.i.i152.i

for.cond.i.i152.i:                                ; preds = %for.cond.i.i152.i.loopexit, %if.then21.i
  %slot.0.i.i150.i = phi ptr [ null, %if.then21.i ], [ %slot.0.i.i150.i.ph, %for.cond.i.i152.i.loopexit ]
  %tobool.not.i.i151.i = icmp eq ptr %slot.0.i.i150.i, null
  br i1 %tobool.not.i.i151.i, label %lor.rhs.i.i155.i, label %for.cond.i.i152.i.for.body.i.i158.i_crit_edge

for.cond.i.i152.i.for.body.i.i158.i_crit_edge:    ; preds = %for.cond.i.i152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i158.i

lor.rhs.i.i155.i:                                 ; preds = %for.cond.i.i152.i
  %call1.i.i153.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i149.i, i32 noundef 0) #8
  %tobool2.not.i.i154.i = icmp eq ptr %call1.i.i153.i, null
  br i1 %tobool2.not.i.i154.i, label %lor.rhs.i.i155.i.cleanup25.i_crit_edge, label %lor.rhs.i.i155.i.for.body.i.i158.i_crit_edge

lor.rhs.i.i155.i.for.body.i.i158.i_crit_edge:     ; preds = %lor.rhs.i.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i158.i

lor.rhs.i.i155.i.cleanup25.i_crit_edge:           ; preds = %lor.rhs.i.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25.i

for.body.i.i158.i:                                ; preds = %lor.rhs.i.i155.i.for.body.i.i158.i_crit_edge, %for.cond.i.i152.i.for.body.i.i158.i_crit_edge
  %slot.1.i.i156.i = phi ptr [ %slot.0.i.i150.i, %for.cond.i.i152.i.for.body.i.i158.i_crit_edge ], [ %call1.i.i153.i, %lor.rhs.i.i155.i.for.body.i.i158.i_crit_edge ]
  %55 = ptrtoint ptr %iter.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iter.i.i149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %or.i.i)
  %cmp.i.i157.i = icmp ugt i32 %56, %or.i.i
  br i1 %cmp.i.i157.i, label %for.body.i.i158.i.cleanup25.i_crit_edge, label %do.end.i.i160.i

for.body.i.i158.i.cleanup25.i_crit_edge:          ; preds = %for.body.i.i158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25.i

do.end.i.i160.i:                                  ; preds = %for.body.i.i158.i
  %57 = ptrtoint ptr %slot.1.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %slot.1.i.i156.i, align 4
  call void @kfree(ptr noundef %58) #8
  call void @radix_tree_iter_delete(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i149.i, ptr noundef nonnull %slot.1.i.i156.i) #8
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %11, align 4
  %61 = ptrtoint ptr %iter.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iter.i.i149.i, align 4
  %sub.i.i.i.i159.i = sub i32 %60, %62
  br label %while.cond.i.i.i165.i

while.cond.i.i.i165.i:                            ; preds = %while.body.i.i.i169.i.while.cond.i.i.i165.i_crit_edge, %do.end.i.i160.i
  %slot.addr.0.i.i.i161.i = phi ptr [ %slot.1.i.i156.i, %do.end.i.i160.i ], [ %incdec.ptr29.i.i.i166.i, %while.body.i.i.i169.i.while.cond.i.i.i165.i_crit_edge ]
  %count.0.i.i.i162.i = phi i32 [ %sub.i.i.i.i159.i, %do.end.i.i160.i ], [ %dec.i.i.i163.i, %while.body.i.i.i169.i.while.cond.i.i.i165.i_crit_edge ]
  %dec.i.i.i163.i = add i32 %count.0.i.i.i162.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i163.i)
  %cmp.i.i.i164.i = icmp sgt i32 %dec.i.i.i163.i, 0
  br i1 %cmp.i.i.i164.i, label %while.body.i.i.i169.i, label %while.cond.i.i.i165.i.for.cond.i.i152.i.loopexit_crit_edge

while.cond.i.i.i165.i.for.cond.i.i152.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i152.i.loopexit

while.body.i.i.i169.i:                            ; preds = %while.cond.i.i.i165.i
  %incdec.ptr29.i.i.i166.i = getelementptr ptr, ptr %slot.addr.0.i.i.i161.i, i32 1
  %63 = ptrtoint ptr %iter.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iter.i.i149.i, align 4
  %add.i.i.i.i167.i = add i32 %64, 1
  store i32 %add.i.i.i.i167.i, ptr %iter.i.i149.i, align 4
  %65 = ptrtoint ptr %incdec.ptr29.i.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %incdec.ptr29.i.i.i166.i, align 4
  %tobool32.not.i.i.i168.i = icmp eq ptr %66, null
  br i1 %tobool32.not.i.i.i168.i, label %while.body.i.i.i169.i.while.cond.i.i.i165.i_crit_edge, label %while.body.i.i.i169.i.for.cond.i.i152.i.loopexit_crit_edge, !prof !48

while.body.i.i.i169.i.for.cond.i.i152.i.loopexit_crit_edge: ; preds = %while.body.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i152.i.loopexit

while.body.i.i.i169.i.while.cond.i.i.i165.i_crit_edge: ; preds = %while.body.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i165.i

cleanup25.i:                                      ; preds = %for.body.i.i158.i.cleanup25.i_crit_edge, %lor.rhs.i.i155.i.cleanup25.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i149.i) #8
  br label %again.i.backedge

if.end27.i:                                       ; preds = %if.end9.i
  %67 = zext i32 %and.i148.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i148.i, label %if.end46.i [
    i32 1920, label %if.end27.i.if.then32.i_crit_edge
    i32 1984, label %if.end27.i.if.then32.i_crit_edge119
  ]

if.end27.i.if.then32.i_crit_edge119:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end27.i.if.then32.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.end27.i.if.then32.i_crit_edge, %if.end27.i.if.then32.i_crit_edge119
  %68 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slot.1.i, align 4
  %disabled38.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %disabled38.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load39.i = load i8, ptr %disabled38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39.i)
  %tobool41.not.i = icmp sgt i8 %bf.load39.i, -1
  br i1 %tobool41.not.i, label %if.then32.i.for.inc.i_crit_edge, label %if.then42.i

if.then32.i.for.inc.i_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then42.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %69) #8
  call void @radix_tree_iter_delete(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i, ptr noundef nonnull %slot.1.i) #8
  br label %for.inc.i

if.end46.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp3.i177.i = icmp ne i32 %and2.i.i, 0
  %71 = and i1 %cmp3.i177.i, %46
  br i1 %71, label %if.then49.i, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then49.i:                                      ; preds = %if.end46.i
  %72 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %slot.1.i, align 4
  %mandatory.i = getelementptr inbounds %struct.uverbs_attr_spec, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %mandatory.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load54.i = load i8, ptr %mandatory.i, align 1
  %75 = and i8 %bf.load54.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool57.not.i = icmp eq i8 %75, 0
  br i1 %tobool57.not.i, label %if.then49.i.for.inc.i_crit_edge, label %if.end59.i

if.then49.i.for.inc.i_crit_edge:                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end59.i:                                       ; preds = %if.then49.i
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %73, align 4
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %77, label %if.end59.i.for.inc.i_crit_edge [
    i8 3, label %if.end59.i.if.then.i.i_crit_edge
    i8 4, label %if.end59.i.if.then.i.i_crit_edge120
    i8 6, label %if.then11.i.i
  ]

if.end59.i.if.then.i.i_crit_edge120:              ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end59.i.if.then.i.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.end59.i.for.inc.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.end59.i.if.then.i.i_crit_edge, %if.end59.i.if.then.i.i_crit_edge120
  %u.i.i = getelementptr inbounds %struct.uverbs_attr_spec, ptr %73, i32 0, i32 2
  br label %if.end63.i

if.then11.i.i:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  %u2.i.i = getelementptr inbounds %struct.uverbs_attr_spec, ptr %73, i32 0, i32 3
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then11.i.i, %if.then.i.i
  %retval.0.i.ph.in.in.i = phi ptr [ %u2.i.i, %if.then11.i.i ], [ %u.i.i, %if.then.i.i ]
  %79 = ptrtoint ptr %retval.0.i.ph.in.in.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %retval.0.i.ph.in230.i = load i16, ptr %retval.0.i.ph.in.in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %retval.0.i.ph.in230.i)
  %cmp.i178.i = icmp eq i16 %retval.0.i.ph.in230.i, -1
  br i1 %cmp.i178.i, label %if.end63.i.for.inc.i_crit_edge, label %if.end.i.i

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end63.i
  %conv.i.i = zext i16 %retval.0.i.ph.in230.i to i32
  %and.i.i179.i = and i32 %conv.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i179.i)
  %tobool.not.i.i180.i = icmp eq i32 %and.i.i179.i, 0
  br i1 %tobool.not.i.i180.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %and1.i.i.i = and i32 %conv.i.i, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and1.i.i.i)
  %cmp.i.i181.i = icmp ugt i32 %and1.i.i.i, 11
  br i1 %cmp.i.i181.i, label %if.then.i.i.i.uapi_key_obj.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.uapi_key_obj.exit.i.i_crit_edge:    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i182.i = add nuw nsw i32 %and1.i.i.i, 20
  br label %if.end6.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %retval.0.i.ph.in230.i)
  %cmp3.i.i183.i = icmp ugt i16 %retval.0.i.ph.in230.i, 19
  br i1 %cmp3.i.i183.i, label %if.else.i.i.i.uapi_key_obj.exit.i.i_crit_edge, label %if.else.i.i.i.if.end6.i.i.i_crit_edge

if.else.i.i.i.if.end6.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i.i

if.else.i.i.i.uapi_key_obj.exit.i.i_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i.if.end6.i.i.i_crit_edge, %if.end.i.i.i
  %id.addr.0.i.i.i = phi i32 [ %add.i.i182.i, %if.end.i.i.i ], [ %conv.i.i, %if.else.i.i.i.if.end6.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw nsw i32 %id.addr.0.i.i.i, 11
  br label %uapi_key_obj.exit.i.i

uapi_key_obj.exit.i.i:                            ; preds = %if.end6.i.i.i, %if.else.i.i.i.uapi_key_obj.exit.i.i_crit_edge, %if.then.i.i.i.uapi_key_obj.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %shl.i.i.i, %if.end6.i.i.i ], [ -1, %if.then.i.i.i.uapi_key_obj.exit.i.i_crit_edge ], [ -1, %if.else.i.i.i.uapi_key_obj.exit.i.i_crit_edge ]
  %call4.i.i = call ptr @radix_tree_lookup(ptr noundef %call7.i.i, i32 noundef %retval.0.i.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %uapi_key_obj.exit.i.i.if.end78.i_crit_edge, label %uapi_get_object.exit.i

uapi_key_obj.exit.i.i.if.end78.i_crit_edge:       ; preds = %uapi_key_obj.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

uapi_get_object.exit.i:                           ; preds = %uapi_key_obj.exit.i.i
  %cmp.i186.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186.i, label %if.then66.i, label %if.else.i

if.then66.i:                                      ; preds = %uapi_get_object.exit.i
  %cmp68.i = icmp eq ptr %call4.i.i, inttoptr (i32 -42 to ptr)
  br i1 %cmp68.i, label %if.then66.i.for.inc.i_crit_edge, label %if.then66.i.if.end78.i_crit_edge

if.then66.i.if.end78.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.then66.i.for.inc.i_crit_edge:                  ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %uapi_get_object.exit.i
  %disabled72.i = getelementptr inbounds %struct.uverbs_api_object, ptr %call4.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %disabled72.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load73.i = load i8, ptr %disabled72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73.i)
  %tobool75.not.i = icmp sgt i8 %bf.load73.i, -1
  br i1 %tobool75.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.if.end78.i_crit_edge

if.else.i.if.end78.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end78.i:                                       ; preds = %if.else.i.if.end78.i_crit_edge, %if.then66.i.if.end78.i_crit_edge, %uapi_key_obj.exit.i.i.if.end78.i_crit_edge
  %81 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iter.i, align 4
  %and.i = and i32 %82, -64
  %or.i188.i = or i32 %82, 63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i187.i) #8
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 -1, ptr %10, align 4
  %84 = ptrtoint ptr %iter.i.i187.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %iter.i.i187.i, align 4
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and.i, ptr %9, align 4
  br label %for.cond.i.i191.i

for.cond.i.i191.i.loopexit:                       ; preds = %while.body.i.i.i208.i.for.cond.i.i191.i.loopexit_crit_edge, %while.cond.i.i.i204.i.for.cond.i.i191.i.loopexit_crit_edge
  %slot.0.i.i189.i.ph = phi ptr [ null, %while.cond.i.i.i204.i.for.cond.i.i191.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i205.i, %while.body.i.i.i208.i.for.cond.i.i191.i.loopexit_crit_edge ]
  br label %for.cond.i.i191.i

for.cond.i.i191.i:                                ; preds = %for.cond.i.i191.i.loopexit, %if.end78.i
  %slot.0.i.i189.i = phi ptr [ null, %if.end78.i ], [ %slot.0.i.i189.i.ph, %for.cond.i.i191.i.loopexit ]
  %tobool.not.i.i190.i = icmp eq ptr %slot.0.i.i189.i, null
  br i1 %tobool.not.i.i190.i, label %lor.rhs.i.i194.i, label %for.cond.i.i191.i.for.body.i.i197.i_crit_edge

for.cond.i.i191.i.for.body.i.i197.i_crit_edge:    ; preds = %for.cond.i.i191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i197.i

lor.rhs.i.i194.i:                                 ; preds = %for.cond.i.i191.i
  %call1.i.i192.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i187.i, i32 noundef 0) #8
  %tobool2.not.i.i193.i = icmp eq ptr %call1.i.i192.i, null
  br i1 %tobool2.not.i.i193.i, label %lor.rhs.i.i194.i.cleanup81.i_crit_edge, label %lor.rhs.i.i194.i.for.body.i.i197.i_crit_edge

lor.rhs.i.i194.i.for.body.i.i197.i_crit_edge:     ; preds = %lor.rhs.i.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i197.i

lor.rhs.i.i194.i.cleanup81.i_crit_edge:           ; preds = %lor.rhs.i.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81.i

for.body.i.i197.i:                                ; preds = %lor.rhs.i.i194.i.for.body.i.i197.i_crit_edge, %for.cond.i.i191.i.for.body.i.i197.i_crit_edge
  %slot.1.i.i195.i = phi ptr [ %slot.0.i.i189.i, %for.cond.i.i191.i.for.body.i.i197.i_crit_edge ], [ %call1.i.i192.i, %lor.rhs.i.i194.i.for.body.i.i197.i_crit_edge ]
  %86 = ptrtoint ptr %iter.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iter.i.i187.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %or.i188.i)
  %cmp.i.i196.i = icmp ugt i32 %87, %or.i188.i
  br i1 %cmp.i.i196.i, label %for.body.i.i197.i.cleanup81.i_crit_edge, label %do.end.i.i199.i

for.body.i.i197.i.cleanup81.i_crit_edge:          ; preds = %for.body.i.i197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81.i

do.end.i.i199.i:                                  ; preds = %for.body.i.i197.i
  %88 = ptrtoint ptr %slot.1.i.i195.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %slot.1.i.i195.i, align 4
  call void @kfree(ptr noundef %89) #8
  call void @radix_tree_iter_delete(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i187.i, ptr noundef nonnull %slot.1.i.i195.i) #8
  %90 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %9, align 4
  %92 = ptrtoint ptr %iter.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iter.i.i187.i, align 4
  %sub.i.i.i.i198.i = sub i32 %91, %93
  br label %while.cond.i.i.i204.i

while.cond.i.i.i204.i:                            ; preds = %while.body.i.i.i208.i.while.cond.i.i.i204.i_crit_edge, %do.end.i.i199.i
  %slot.addr.0.i.i.i200.i = phi ptr [ %slot.1.i.i195.i, %do.end.i.i199.i ], [ %incdec.ptr29.i.i.i205.i, %while.body.i.i.i208.i.while.cond.i.i.i204.i_crit_edge ]
  %count.0.i.i.i201.i = phi i32 [ %sub.i.i.i.i198.i, %do.end.i.i199.i ], [ %dec.i.i.i202.i, %while.body.i.i.i208.i.while.cond.i.i.i204.i_crit_edge ]
  %dec.i.i.i202.i = add i32 %count.0.i.i.i201.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i202.i)
  %cmp.i.i.i203.i = icmp sgt i32 %dec.i.i.i202.i, 0
  br i1 %cmp.i.i.i203.i, label %while.body.i.i.i208.i, label %while.cond.i.i.i204.i.for.cond.i.i191.i.loopexit_crit_edge

while.cond.i.i.i204.i.for.cond.i.i191.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i191.i.loopexit

while.body.i.i.i208.i:                            ; preds = %while.cond.i.i.i204.i
  %incdec.ptr29.i.i.i205.i = getelementptr ptr, ptr %slot.addr.0.i.i.i200.i, i32 1
  %94 = ptrtoint ptr %iter.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iter.i.i187.i, align 4
  %add.i.i.i.i206.i = add i32 %95, 1
  store i32 %add.i.i.i.i206.i, ptr %iter.i.i187.i, align 4
  %96 = ptrtoint ptr %incdec.ptr29.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %incdec.ptr29.i.i.i205.i, align 4
  %tobool32.not.i.i.i207.i = icmp eq ptr %97, null
  br i1 %tobool32.not.i.i.i207.i, label %while.body.i.i.i208.i.while.cond.i.i.i204.i_crit_edge, label %while.body.i.i.i208.i.for.cond.i.i191.i.loopexit_crit_edge, !prof !48

while.body.i.i.i208.i.for.cond.i.i191.i.loopexit_crit_edge: ; preds = %while.body.i.i.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i191.i.loopexit

while.body.i.i.i208.i.while.cond.i.i.i204.i_crit_edge: ; preds = %while.body.i.i.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i204.i

cleanup81.i:                                      ; preds = %for.body.i.i197.i.cleanup81.i_crit_edge, %lor.rhs.i.i194.i.cleanup81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i187.i) #8
  br label %again.i.backedge

again.i.backedge:                                 ; preds = %cleanup81.i, %cleanup25.i
  %starting_key.0.i.be = phi i32 [ %26, %cleanup25.i ], [ %82, %cleanup81.i ]
  br label %again.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.then66.i.for.inc.i_crit_edge, %if.end63.i.for.inc.i_crit_edge, %if.end59.i.for.inc.i_crit_edge, %if.then49.i.for.inc.i_crit_edge, %if.end46.i.for.inc.i_crit_edge, %if.then42.i, %if.then32.i.for.inc.i_crit_edge, %if.then12.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %98 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %8, align 4
  %100 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iter.i, align 4
  %sub.i.i.i = sub i32 %99, %101
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %for.inc.i
  %slot.addr.0.i.i = phi ptr [ %slot.1.i, %for.inc.i ], [ %incdec.ptr29.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ %sub.i.i.i, %for.inc.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add i32 %count.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.for.cond.i.loopexit_crit_edge

while.cond.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.loopexit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr29.i.i = getelementptr ptr, ptr %slot.addr.0.i.i, i32 1
  %102 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iter.i, align 4
  %add.i.i.i = add i32 %103, 1
  store i32 %add.i.i.i, ptr %iter.i, align 4
  %104 = ptrtoint ptr %incdec.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %incdec.ptr29.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %105, null
  br i1 %tobool32.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.for.cond.i.loopexit_crit_edge, !prof !48

while.body.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.loopexit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

for.end.i:                                        ; preds = %lor.rhs.i
  br i1 %scan_again.0.off0.ph.i, label %for.end.i.again.outer.i.backedge_crit_edge, label %uapi_finalize_disable.exit

for.end.i.again.outer.i.backedge_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.outer.i.backedge

again.outer.i.backedge:                           ; preds = %for.end.i.again.outer.i.backedge_crit_edge, %cleanup.i
  %scan_again.0.off0.ph.i.be = phi i1 [ false, %for.end.i.again.outer.i.backedge_crit_edge ], [ true, %cleanup.i ]
  %starting_key.0.ph.i.be = phi i32 [ 0, %for.end.i.again.outer.i.backedge_crit_edge ], [ %26, %cleanup.i ]
  br label %again.outer.i

uapi_finalize_disable.exit:                       ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i36) #8
  %106 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i36, i32 0, i32 1
  %107 = getelementptr inbounds i8, ptr %iter.i36, i32 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 -1, ptr %107, align 4
  %109 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %iter.i36, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %106, align 4
  %111 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i.i, i32 0, i32 1
  %112 = getelementptr inbounds i8, ptr %iter.i.i, i32 8
  br label %for.cond.i39

for.cond.i39.loopexit:                            ; preds = %while.body.i.i67.for.cond.i39.loopexit_crit_edge, %while.cond.i.i63.for.cond.i39.loopexit_crit_edge
  %slot.0.i37.ph = phi ptr [ null, %while.cond.i.i63.for.cond.i39.loopexit_crit_edge ], [ %incdec.ptr29.i.i64, %while.body.i.i67.for.cond.i39.loopexit_crit_edge ]
  br label %for.cond.i39

for.cond.i39:                                     ; preds = %for.cond.i39.loopexit, %uapi_finalize_disable.exit
  %slot.0.i37 = phi ptr [ null, %uapi_finalize_disable.exit ], [ %slot.0.i37.ph, %for.cond.i39.loopexit ]
  %max_write.0.i = phi i32 [ 0, %uapi_finalize_disable.exit ], [ %max_write.1.i, %for.cond.i39.loopexit ]
  %max_write_ex.0.i = phi i32 [ 0, %uapi_finalize_disable.exit ], [ %max_write_ex.1.i, %for.cond.i39.loopexit ]
  %tobool.not.i38 = icmp eq ptr %slot.0.i37, null
  br i1 %tobool.not.i38, label %lor.rhs.i42, label %for.cond.i39.for.body.i47_crit_edge

for.cond.i39.for.body.i47_crit_edge:              ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i47

lor.rhs.i42:                                      ; preds = %for.cond.i39
  %call1.i40 = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i36, i32 noundef 0) #8
  %tobool2.not.i41 = icmp eq ptr %call1.i40, null
  br i1 %tobool2.not.i41, label %for.end.i69, label %lor.rhs.i42.for.body.i47_crit_edge

lor.rhs.i42.for.body.i47_crit_edge:               ; preds = %lor.rhs.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i47

for.body.i47:                                     ; preds = %lor.rhs.i42.for.body.i47_crit_edge, %for.cond.i39.for.body.i47_crit_edge
  %slot.1.i43 = phi ptr [ %slot.0.i37, %for.cond.i39.for.body.i47_crit_edge ], [ %call1.i40, %lor.rhs.i42.for.body.i47_crit_edge ]
  %113 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iter.i36, align 4
  %and.i.i44 = and i32 %114, 1984
  %115 = add nsw i32 %and.i.i44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %115)
  %116 = icmp ult i32 %115, 1919
  %and2.i.i45 = and i32 %114, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i45)
  %cmp3.i.i46 = icmp eq i32 %and2.i.i45, 0
  %117 = and i1 %cmp3.i.i46, %116
  br i1 %117, label %if.then.i48, label %for.body.i47.for.inc.i58_crit_edge

for.body.i47.for.inc.i58_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i58

if.then.i48:                                      ; preds = %for.body.i47
  %118 = ptrtoint ptr %slot.1.i43 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %slot.1.i43, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i) #8
  %destroy_bkey.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 -1, ptr %112, align 4
  %121 = ptrtoint ptr %destroy_bkey.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 63, ptr %destroy_bkey.i.i, align 4
  %add.i.i136.i = add nuw i32 %114, 1
  %122 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %iter.i.i, align 4
  %123 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add.i.i136.i, ptr %111, align 4
  %attr_mandatory.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %119, i32 0, i32 1
  %has_udata.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %119, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i.loopexit:                            ; preds = %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge
  %slot.0.i.i.ph = phi ptr [ null, %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.loopexit, %if.then.i48
  %slot.0.i.i = phi ptr [ null, %if.then.i48 ], [ %slot.0.i.i.ph, %for.cond.i.i.loopexit ]
  %single_uobj.0.off0.i.i = phi i1 [ false, %if.then.i48 ], [ %single_uobj.3.off0.i.i, %for.cond.i.i.loopexit ]
  %max_bkey.0.i.i = phi i32 [ 0, %if.then.i48 ], [ %144, %for.cond.i.i.loopexit ]
  %num_attrs.0.i.i = phi i32 [ 0, %if.then.i48 ], [ %inc.i.i, %for.cond.i.i.loopexit ]
  %tobool.not.i.i49 = icmp eq ptr %slot.0.i.i, null
  br i1 %tobool.not.i.i49, label %lor.rhs.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

lor.rhs.i.i:                                      ; preds = %for.cond.i.i
  %call2.i.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i.i, i32 noundef 0) #8
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %lor.rhs.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge, label %lor.rhs.i.i.for.body.i.i_crit_edge

lor.rhs.i.i.for.body.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

lor.rhs.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_finalize_ioctl_method.exit.i

for.body.i.i:                                     ; preds = %lor.rhs.i.i.for.body.i.i_crit_edge, %for.cond.i.i.for.body.i.i_crit_edge
  %slot.1.i.i = phi ptr [ %slot.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %call2.i.i, %lor.rhs.i.i.for.body.i.i_crit_edge ]
  %124 = ptrtoint ptr %slot.1.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %slot.1.i.i, align 4
  %126 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %iter.i.i, align 4
  %and.i137.i = and i32 %127, 63
  %sub.i.i138.i = add nsw i32 %and.i137.i, -1
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %125, align 4
  %130 = xor i32 %127, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %130)
  %cmp.not.i.i50 = icmp ult i32 %130, 64
  br i1 %cmp.not.i.i50, label %if.end.i.i51, label %for.body.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge

for.body.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_finalize_ioctl_method.exit.i

if.end.i.i51:                                     ; preds = %for.body.i.i
  %mandatory.i.i = getelementptr inbounds %struct.uverbs_attr_spec, ptr %125, i32 0, i32 1
  %131 = ptrtoint ptr %mandatory.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load.i.i = load i8, ptr %mandatory.i.i, align 1
  %132 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool10.not.i.i = icmp eq i8 %132, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i51.if.end12.i.i_crit_edge, label %if.then11.i.i53

if.end.i.i51.if.end12.i.i_crit_edge:              ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then11.i.i53:                                  ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.i.i = and i32 %sub.i.i138.i, 31
  %shl.i.i.i52 = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %sub.i.i138.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %attr_mandatory.i.i, i32 %div2.i.i.i
  %133 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %134, %shl.i.i.i52
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i53, %if.end.i.i51.if.end12.i.i_crit_edge
  %135 = ptrtoint ptr %mandatory.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load14.i.i = load i8, ptr %mandatory.i.i, align 1
  %136 = and i8 %bf.load14.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool17.not.i.i = icmp eq i8 %136, 0
  br i1 %tobool17.not.i.i, label %if.end12.i.i.if.end21.i.i_crit_edge, label %if.then18.i.i

if.end12.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %has_udata.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load19.i.i = load i8, ptr %has_udata.i.i, align 2
  %bf.set.i.i = or i8 %bf.load19.i.i, 16
  store i8 %bf.set.i.i, ptr %has_udata.i.i, align 2
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %if.end12.i.i.if.end21.i.i_crit_edge
  %.off.i.i = add i8 %129, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then27.i.i, label %if.end21.i.i.for.inc.i.i_crit_edge

if.end21.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then27.i.i:                                    ; preds = %if.end21.i.i
  %access29.i.i = getelementptr inbounds %struct.uverbs_attr_spec, ptr %125, i32 0, i32 2, i32 0, i32 1
  %138 = ptrtoint ptr %access29.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %access29.i.i, align 2
  %140 = and i8 %139, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %140)
  %switch203.i.i = icmp eq i8 %140, 2
  br i1 %switch203.i.i, label %if.then37.i.i, label %if.then27.i.i.for.inc.i.i_crit_edge

if.then27.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then37.i.i:                                    ; preds = %if.then27.i.i
  br i1 %single_uobj.0.off0.i.i, label %if.then37.i.i.cleanup.i55_crit_edge, label %if.end66.i.i, !prof !48

if.then37.i.i.cleanup.i55_crit_edge:              ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i55

if.end66.i.i:                                     ; preds = %if.then37.i.i
  %141 = ptrtoint ptr %mandatory.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load70.i.i = load i8, ptr %mandatory.i.i, align 1
  %142 = and i8 %bf.load70.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool73.not.i.i = icmp eq i8 %142, 0
  br i1 %tobool73.not.i.i, label %if.end66.i.i.cleanup.i55_crit_edge, label %if.end108.i.i, !prof !48

if.end66.i.i.cleanup.i55_crit_edge:               ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i55

if.end108.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %139)
  %cmp110.i.i = icmp eq i8 %139, 3
  br i1 %cmp110.i.i, label %if.then112.i.i, label %if.end108.i.i.for.inc.i.i_crit_edge

if.end108.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then112.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv113.i.i = trunc i32 %sub.i.i138.i to i8
  %143 = ptrtoint ptr %destroy_bkey.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv113.i.i, ptr %destroy_bkey.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then112.i.i, %if.end108.i.i.for.inc.i.i_crit_edge, %if.then27.i.i.for.inc.i.i_crit_edge, %if.end21.i.i.for.inc.i.i_crit_edge
  %single_uobj.3.off0.i.i = phi i1 [ %single_uobj.0.off0.i.i, %if.end21.i.i.for.inc.i.i_crit_edge ], [ true, %if.end108.i.i.for.inc.i.i_crit_edge ], [ true, %if.then112.i.i ], [ %single_uobj.0.off0.i.i, %if.then27.i.i.for.inc.i.i_crit_edge ]
  %144 = call i32 @llvm.umax.i32(i32 %max_bkey.0.i.i, i32 %sub.i.i138.i) #8
  %inc.i.i = add i32 %num_attrs.0.i.i, 1
  %145 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %111, align 4
  %147 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %iter.i.i, align 4
  %sub.i.i.i.i = sub i32 %146, %148
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %for.inc.i.i
  %slot.addr.0.i.i.i = phi ptr [ %slot.1.i.i, %for.inc.i.i ], [ %incdec.ptr29.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %count.0.i.i.i = phi i32 [ %sub.i.i.i.i, %for.inc.i.i ], [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %count.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp.i.i.i54 = icmp sgt i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i54, label %while.body.i.i.i, label %while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge

while.cond.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.loopexit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr29.i.i.i = getelementptr ptr, ptr %slot.addr.0.i.i.i, i32 1
  %149 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %iter.i.i, align 4
  %add.i.i.i.i = add i32 %150, 1
  store i32 %add.i.i.i.i, ptr %iter.i.i, align 4
  %151 = ptrtoint ptr %incdec.ptr29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %incdec.ptr29.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %152, null
  br i1 %tobool32.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %while.body.i.i.i.for.cond.i.i.loopexit_crit_edge, !prof !48

while.body.i.i.i.for.cond.i.i.loopexit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.loopexit

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

uapi_finalize_ioctl_method.exit.i:                ; preds = %for.body.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge, %lor.rhs.i.i.uapi_finalize_ioctl_method.exit.i_crit_edge
  %153 = trunc i32 %max_bkey.0.i.i to i8
  %conv127.i.i = add i8 %153, 1
  %key_bitmap_len.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %119, i32 0, i32 4
  %154 = ptrtoint ptr %key_bitmap_len.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv127.i.i, ptr %key_bitmap_len.i.i, align 1
  call void @uapi_compute_bundle_size(ptr noundef %119, i32 noundef %num_attrs.0.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #8
  br label %for.inc.i58

cleanup.i55:                                      ; preds = %if.end66.i.i.cleanup.i55_crit_edge, %if.then37.i.i.cleanup.i55_crit_edge
  %.sink.i = phi i32 [ 392, %if.then37.i.i.cleanup.i55_crit_edge ], [ 396, %if.end66.i.i.cleanup.i55_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #8
  br label %uapi_finalize.exit.thread

for.inc.i58:                                      ; preds = %uapi_finalize_ioctl_method.exit.i, %for.body.i47.for.inc.i58_crit_edge
  %155 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %iter.i36, align 4
  %and.i139.i = and i32 %156, 1984
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %and.i139.i)
  %cmp.i140.i = icmp eq i32 %and.i139.i, 1920
  %and.i56 = and i32 %156, 63
  %157 = call i32 @llvm.umax.i32(i32 %max_write.0.i, i32 %and.i56) #8
  %max_write.1.i = select i1 %cmp.i140.i, i32 %157, i32 %max_write.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1984, i32 %and.i139.i)
  %cmp.i142.i = icmp eq i32 %and.i139.i, 1984
  %158 = call i32 @llvm.umax.i32(i32 %max_write_ex.0.i, i32 %and.i56) #8
  %max_write_ex.1.i = select i1 %cmp.i142.i, i32 %158, i32 %max_write_ex.0.i
  %159 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %106, align 4
  %sub.i.i.i57 = sub i32 %160, %156
  br label %while.cond.i.i63

while.cond.i.i63:                                 ; preds = %while.body.i.i67.while.cond.i.i63_crit_edge, %for.inc.i58
  %slot.addr.0.i.i59 = phi ptr [ %slot.1.i43, %for.inc.i58 ], [ %incdec.ptr29.i.i64, %while.body.i.i67.while.cond.i.i63_crit_edge ]
  %count.0.i.i60 = phi i32 [ %sub.i.i.i57, %for.inc.i58 ], [ %dec.i.i61, %while.body.i.i67.while.cond.i.i63_crit_edge ]
  %dec.i.i61 = add i32 %count.0.i.i60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i61)
  %cmp.i.i62 = icmp sgt i32 %dec.i.i61, 0
  br i1 %cmp.i.i62, label %while.body.i.i67, label %while.cond.i.i63.for.cond.i39.loopexit_crit_edge

while.cond.i.i63.for.cond.i39.loopexit_crit_edge: ; preds = %while.cond.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i39.loopexit

while.body.i.i67:                                 ; preds = %while.cond.i.i63
  %incdec.ptr29.i.i64 = getelementptr ptr, ptr %slot.addr.0.i.i59, i32 1
  %161 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iter.i36, align 4
  %add.i.i.i65 = add i32 %162, 1
  store i32 %add.i.i.i65, ptr %iter.i36, align 4
  %163 = ptrtoint ptr %incdec.ptr29.i.i64 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %incdec.ptr29.i.i64, align 4
  %tobool32.not.i.i66 = icmp eq ptr %164, null
  br i1 %tobool32.not.i.i66, label %while.body.i.i67.while.cond.i.i63_crit_edge, label %while.body.i.i67.for.cond.i39.loopexit_crit_edge, !prof !48

while.body.i.i67.for.cond.i39.loopexit_crit_edge: ; preds = %while.body.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i39.loopexit

while.body.i.i67.while.cond.i.i63_crit_edge:      ; preds = %while.body.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i63

for.end.i69:                                      ; preds = %lor.rhs.i42
  %notsupp_method.i = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 4
  %165 = ptrtoint ptr %notsupp_method.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @ib_uverbs_notsupp, ptr %notsupp_method.i, align 8
  %add.i = add i32 %max_write.0.i, 1
  %num_write.i = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 2
  %166 = ptrtoint ptr %num_write.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add.i, ptr %num_write.i, align 8
  %add28.i = add i32 %max_write_ex.0.i, 1
  %num_write_ex.i = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 3
  %167 = ptrtoint ptr %num_write_ex.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %add28.i, ptr %num_write_ex.i, align 4
  %add31.i = add i32 %add28.i, %add.i
  %168 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add31.i, i32 4) #8
  %169 = extractvalue { i32, i1 } %168, 1
  br i1 %169, label %for.end.i69.uapi_finalize.exit.thread_crit_edge, label %if.end7.i.i, !prof !48

for.end.i69.uapi_finalize.exit.thread_crit_edge:  ; preds = %for.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_finalize.exit.thread

if.end7.i.i:                                      ; preds = %for.end.i69
  %170 = extractvalue { i32, i1 } %168, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %170, i32 noundef 3264) #12
  %tobool33.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not.i, label %if.end7.i.i.uapi_finalize.exit.thread_crit_edge, label %for.cond36.preheader.i

if.end7.i.i.uapi_finalize.exit.thread_crit_edge:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_finalize.exit.thread

for.cond36.preheader.i:                           ; preds = %if.end7.i.i
  %171 = ptrtoint ptr %num_write.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_write.i, align 8
  %173 = ptrtoint ptr %num_write_ex.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_write_ex.i, align 4
  %add39168.i = sub i32 0, %172
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %add39168.i)
  %cmp40.not169.i = icmp eq i32 %174, %add39168.i
  br i1 %cmp40.not169.i, label %for.cond36.preheader.i.for.end44.i_crit_edge, label %for.body41.i.preheader

for.cond36.preheader.i.for.end44.i_crit_edge:     ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44.i

for.body41.i.preheader:                           ; preds = %for.cond36.preheader.i
  %175 = ptrtoint ptr %num_write.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_write.i, align 8
  %177 = ptrtoint ptr %num_write_ex.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_write_ex.i, align 4
  %add39.i = add i32 %178, %176
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.i.preheader
  %i.0170.i = phi i32 [ %inc.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %for.body41.i.preheader ]
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %i.0170.i
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %notsupp_method.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %i.0170.i, 1
  %cmp40.not.i = icmp eq i32 %inc.i, %add39.i
  br i1 %cmp40.not.i, label %for.body41.i.for.end44.i_crit_edge, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i

for.body41.i.for.end44.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44.i

for.end44.i:                                      ; preds = %for.body41.i.for.end44.i_crit_edge, %for.cond36.preheader.i.for.end44.i_crit_edge
  %.lcssa.i = phi i32 [ %172, %for.cond36.preheader.i.for.end44.i_crit_edge ], [ %176, %for.body41.i.for.end44.i_crit_edge ]
  %write_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 5
  %180 = ptrtoint ptr %write_methods.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call8.i.i, ptr %write_methods.i, align 8
  %add.ptr.i = getelementptr ptr, ptr %call8.i.i, i32 %.lcssa.i
  %write_ex_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %call7.i.i, i32 0, i32 6
  %181 = ptrtoint ptr %write_ex_methods.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %add.ptr.i, ptr %write_ex_methods.i, align 4
  %182 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %iter.i36, align 4
  %183 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %106, align 4
  br label %for.cond47.i

for.cond47.i.loopexit:                            ; preds = %while.body.i134.i.for.cond47.i.loopexit_crit_edge, %while.cond.i130.i.for.cond47.i.loopexit_crit_edge
  %slot.2.i.ph = phi ptr [ null, %while.cond.i130.i.for.cond47.i.loopexit_crit_edge ], [ %incdec.ptr29.i131.i, %while.body.i134.i.for.cond47.i.loopexit_crit_edge ]
  br label %for.cond47.i

for.cond47.i:                                     ; preds = %for.cond47.i.loopexit, %for.end44.i
  %slot.2.i = phi ptr [ null, %for.end44.i ], [ %slot.2.i.ph, %for.cond47.i.loopexit ]
  %tobool48.not.i = icmp eq ptr %slot.2.i, null
  br i1 %tobool48.not.i, label %lor.rhs49.i, label %for.cond47.i.for.body54.i_crit_edge

for.cond47.i.for.body54.i_crit_edge:              ; preds = %for.cond47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.i

lor.rhs49.i:                                      ; preds = %for.cond47.i
  %call51.i = call ptr @radix_tree_next_chunk(ptr noundef %call7.i.i, ptr noundef nonnull %iter.i36, i32 noundef 0) #8
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %uapi_finalize.exit, label %lor.rhs49.i.for.body54.i_crit_edge

lor.rhs49.i.for.body54.i_crit_edge:               ; preds = %lor.rhs49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.i

for.body54.i:                                     ; preds = %lor.rhs49.i.for.body54.i_crit_edge, %for.cond47.i.for.body54.i_crit_edge
  %slot.3.i = phi ptr [ %slot.2.i, %for.cond47.i.for.body54.i_crit_edge ], [ %call51.i, %lor.rhs49.i.for.body54.i_crit_edge ]
  %184 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %iter.i36, align 4
  %and.i145.i = and i32 %185, 1984
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %and.i145.i)
  %cmp.i146.i74 = icmp eq i32 %and.i145.i, 1920
  br i1 %cmp.i146.i74, label %do.end60.i, label %for.body54.i.if.end66.i_crit_edge

for.body54.i.if.end66.i_crit_edge:                ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

do.end60.i:                                       ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %slot.3.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %slot.3.i, align 4
  %188 = ptrtoint ptr %write_methods.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write_methods.i, align 8
  %and64.i = and i32 %185, 63
  %arrayidx65.i = getelementptr ptr, ptr %189, i32 %and64.i
  %190 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %arrayidx65.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end60.i, %for.body54.i.if.end66.i_crit_edge
  %191 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %iter.i36, align 4
  %and.i147.i = and i32 %192, 1984
  call void @__sanitizer_cov_trace_const_cmp4(i32 1984, i32 %and.i147.i)
  %cmp.i148.i = icmp eq i32 %and.i147.i, 1984
  br i1 %cmp.i148.i, label %do.end72.i, label %if.end66.i.for.inc79.i_crit_edge

if.end66.i.for.inc79.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79.i

do.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %slot.3.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %slot.3.i, align 4
  %195 = ptrtoint ptr %write_ex_methods.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write_ex_methods.i, align 4
  %and76.i = and i32 %192, 63
  %arrayidx77.i = getelementptr ptr, ptr %196, i32 %and76.i
  %197 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %194, ptr %arrayidx77.i, align 4
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %do.end72.i, %if.end66.i.for.inc79.i_crit_edge
  %198 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %106, align 4
  %200 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %iter.i36, align 4
  %sub.i.i125.i = sub i32 %199, %201
  br label %while.cond.i130.i

while.cond.i130.i:                                ; preds = %while.body.i134.i.while.cond.i130.i_crit_edge, %for.inc79.i
  %slot.addr.0.i126.i = phi ptr [ %slot.3.i, %for.inc79.i ], [ %incdec.ptr29.i131.i, %while.body.i134.i.while.cond.i130.i_crit_edge ]
  %count.0.i127.i = phi i32 [ %sub.i.i125.i, %for.inc79.i ], [ %dec.i128.i, %while.body.i134.i.while.cond.i130.i_crit_edge ]
  %dec.i128.i = add i32 %count.0.i127.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i128.i)
  %cmp.i129.i = icmp sgt i32 %dec.i128.i, 0
  br i1 %cmp.i129.i, label %while.body.i134.i, label %while.cond.i130.i.for.cond47.i.loopexit_crit_edge

while.cond.i130.i.for.cond47.i.loopexit_crit_edge: ; preds = %while.cond.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.i.loopexit

while.body.i134.i:                                ; preds = %while.cond.i130.i
  %incdec.ptr29.i131.i = getelementptr ptr, ptr %slot.addr.0.i126.i, i32 1
  %202 = ptrtoint ptr %iter.i36 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %iter.i36, align 4
  %add.i.i132.i = add i32 %203, 1
  store i32 %add.i.i132.i, ptr %iter.i36, align 4
  %204 = ptrtoint ptr %incdec.ptr29.i131.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %incdec.ptr29.i131.i, align 4
  %tobool32.not.i133.i = icmp eq ptr %205, null
  br i1 %tobool32.not.i133.i, label %while.body.i134.i.while.cond.i130.i_crit_edge, label %while.body.i134.i.for.cond47.i.loopexit_crit_edge, !prof !48

while.body.i134.i.for.cond47.i.loopexit_crit_edge: ; preds = %while.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.i.loopexit

while.body.i134.i.while.cond.i130.i_crit_edge:    ; preds = %while.body.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i130.i

uapi_finalize.exit.thread:                        ; preds = %if.end7.i.i.uapi_finalize.exit.thread_crit_edge, %for.end.i69.uapi_finalize.exit.thread_crit_edge, %cleanup.i55
  %retval.2.i.ph = phi i32 [ -12, %for.end.i69.uapi_finalize.exit.thread_crit_edge ], [ -12, %if.end7.i.i.uapi_finalize.exit.thread_crit_edge ], [ -22, %cleanup.i55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i36) #8
  br label %err

uapi_finalize.exit:                               ; preds = %lor.rhs49.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i36) #8
  br label %cleanup

err:                                              ; preds = %uapi_finalize.exit.thread, %if.end6.err_crit_edge, %if.end.err_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.err_crit_edge ], [ %call7, %if.end6.err_crit_edge ], [ %retval.2.i.ph, %uapi_finalize.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %rc.0)
  %cmp.not = icmp eq i32 %rc.0, -12
  br i1 %cmp.not, label %err.if.end16_crit_edge, label %do.end

err.if.end16_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %206 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str, i32 noundef %rc.0) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end, %err.if.end16_crit_edge
  call void @uverbs_destroy_api(ptr noundef nonnull %call7.i.i)
  %207 = inttoptr i32 %rc.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %uapi_finalize.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %207, %if.end16 ], [ %call7.i.i, %uapi_finalize.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uapi_merge_def(ptr noundef %uapi, ptr noundef %ibdev, ptr noundef readonly %def_list, i1 noundef zeroext %is_driver) unnamed_addr #0 align 64 {
entry:
  %exists.i162 = alloca i8, align 1
  %exists.i.i = alloca i8, align 1
  %exists.i = alloca i8, align 1
  %exists = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists) #8
  %tobool.not = icmp eq ptr %def_list, null
  br i1 %tobool.not, label %entry.cleanup100_crit_edge, label %for.cond.preheader

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

for.cond.preheader:                               ; preds = %entry
  %uverbs_cmd_mask.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 15
  %ops = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1
  %bf.shl.i.i = select i1 %is_driver, i8 64, i8 0
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %cur_method_key.0 = phi i32 [ %cur_method_key.2, %for.inc ], [ -1, %for.cond.preheader ]
  %cur_obj_key.0 = phi i32 [ %cur_obj_key.1, %for.inc ], [ -1, %for.cond.preheader ]
  %def.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %def_list, %for.cond.preheader ]
  %0 = ptrtoint ptr %def.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %def.0, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %1, label %do.end86 [
    i8 4, label %sw.bb
    i8 3, label %sw.bb5
    i8 0, label %for.cond.cleanup100_crit_edge
    i8 6, label %sw.bb42
    i8 5, label %sw.bb50
    i8 1, label %sw.bb58
    i8 2, label %sw.bb69
  ]

for.cond.cleanup100_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

sw.bb:                                            ; preds = %for.cond
  %3 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call fastcc i32 @uapi_merge_def(ptr noundef %uapi, ptr noundef %ibdev, ptr noundef %5, i1 noundef zeroext %is_driver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup100_crit_edge

sw.bb.cleanup100_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb5:                                           ; preds = %for.cond
  %6 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %13)
  %cmp.not = icmp eq i16 %8, %13
  br i1 %cmp.not, label %if.end32, label %do.end, !prof !49

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 293, i32 noundef 9, ptr noundef null) #8
  br label %cleanup100

if.end32:                                         ; preds = %sw.bb5
  %conv34 = zext i16 %8 to i32
  %and.i = and i32 %conv34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  %and1.i = and i32 %conv34, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and1.i)
  %cmp.i = icmp ugt i32 %and1.i, 11
  br i1 %cmp.i, label %uapi_key_obj.exit.thread212, label %uapi_key_obj.exit

uapi_key_obj.exit.thread212:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i) #8
  br label %if.then.i.i

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %8)
  %cmp3.i = icmp ugt i16 %8, 19
  br i1 %cmp3.i, label %if.else.i.i.thread, label %if.else.i.i

if.else.i.i.thread:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i) #8
  br label %uapi_key_obj.exit.i

uapi_key_obj.exit:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl nuw nsw i32 %and1.i, 11
  %shl.i = add nuw nsw i32 %add.i, 40960
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i) #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %uapi_key_obj.exit, %uapi_key_obj.exit.thread212
  %retval.0.i214 = phi i32 [ -1, %uapi_key_obj.exit.thread212 ], [ %shl.i, %uapi_key_obj.exit ]
  %and1.i.i = and i32 %conv34, 61439
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

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i217 = shl nuw nsw i32 %conv34, 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i) #8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i
  %retval.0.i208 = phi i32 [ %retval.0.i214, %if.end.i.i ], [ %shl.i217, %if.else.i.i ]
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %conv34, %if.else.i.i ]
  %shl.i.i = shl nuw nsw i32 %id.addr.0.i.i, 11
  br label %uapi_key_obj.exit.i

uapi_key_obj.exit.i:                              ; preds = %if.end6.i.i, %if.then.i.i.uapi_key_obj.exit.i_crit_edge, %if.else.i.i.thread
  %retval.0.i209 = phi i32 [ %retval.0.i208, %if.end6.i.i ], [ %retval.0.i214, %if.then.i.i.uapi_key_obj.exit.i_crit_edge ], [ -1, %if.else.i.i.thread ]
  %retval.0.i.i = phi i32 [ %shl.i.i, %if.end6.i.i ], [ -1, %if.then.i.i.uapi_key_obj.exit.i_crit_edge ], [ -1, %if.else.i.i.thread ]
  %call1.i = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %retval.0.i.i, i32 noundef 16, ptr noundef nonnull %exists.i) #8
  %cmp.i125.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %uapi_key_obj.exit.i.uapi_merge_obj_tree.exit_crit_edge, label %if.end.i146

uapi_key_obj.exit.i.uapi_merge_obj_tree.exit_crit_edge: ; preds = %uapi_key_obj.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_obj_tree.exit

if.end.i146:                                      ; preds = %uapi_key_obj.exit.i
  %type_attrs.i = getelementptr inbounds %struct.uverbs_object_def, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type_attrs.i, align 4
  %tobool.not.i145 = icmp eq ptr %15, null
  br i1 %tobool.not.i145, label %if.end.i146.if.end80.i_crit_edge, label %if.then4.i

if.end.i146.if.end80.i_crit_edge:                 ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

if.then4.i:                                       ; preds = %if.end.i146
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call1.i, align 4
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end30.i, label %do.end.i, !prof !49

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef null) #8
  br label %uapi_merge_obj_tree.exit.thread174

if.end30.i:                                       ; preds = %if.then4.i
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %11, align 4
  %conv32.i = zext i16 %19 to i32
  %id33.i = getelementptr inbounds %struct.uverbs_api_object, ptr %call1.i, i32 0, i32 3
  %20 = ptrtoint ptr %id33.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv32.i, ptr %id33.i, align 4
  %21 = ptrtoint ptr %type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type_attrs.i, align 4
  %23 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %call1.i, align 4
  %24 = load ptr, ptr %type_attrs.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %type_class37.i = getelementptr inbounds %struct.uverbs_api_object, ptr %call1.i, i32 0, i32 1
  %27 = ptrtoint ptr %type_class37.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %type_class37.i, align 4
  br i1 %is_driver, label %land.lhs.true.i, label %if.end30.i.if.end80.i_crit_edge

if.end30.i.if.end80.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.end30.i
  %28 = ptrtoint ptr %type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type_attrs.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %cmp.not.i = icmp ne ptr %31, @uverbs_idr_class
  %cmp46.i = icmp ne ptr %31, @uverbs_fd_class
  %spec.select.i = and i1 %cmp.not.i, %cmp46.i
  br i1 %spec.select.i, label %do.end63.i, label %land.lhs.true.i.if.end80.i_crit_edge, !prof !48

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

do.end63.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 9, ptr noundef null) #8
  br label %uapi_merge_obj_tree.exit.thread174

if.end80.i:                                       ; preds = %land.lhs.true.i.if.end80.i_crit_edge, %if.end30.i.if.end80.i_crit_edge, %if.end.i146.if.end80.i_crit_edge
  %methods.i = getelementptr inbounds %struct.uverbs_object_def, ptr %11, i32 0, i32 3
  %32 = ptrtoint ptr %methods.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %methods.i, align 4
  %tobool81.not.i = icmp eq ptr %33, null
  br i1 %tobool81.not.i, label %if.end80.i.uapi_merge_obj_tree.exit.thread_crit_edge, label %for.cond.preheader.i

if.end80.i.uapi_merge_obj_tree.exit.thread_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_obj_tree.exit.thread

for.cond.preheader.i:                             ; preds = %if.end80.i
  %num_methods.i = getelementptr inbounds %struct.uverbs_object_def, ptr %11, i32 0, i32 2
  %34 = ptrtoint ptr %num_methods.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_methods.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp84.not145.i = icmp eq i32 %35, 0
  br i1 %cmp84.not145.i, label %for.cond.preheader.i.uapi_merge_obj_tree.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.uapi_merge_obj_tree.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_obj_tree.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0146.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %methods.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %methods.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr %37, i32 0, i32 %i.0146.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %tobool87.not.i = icmp eq ptr %39, null
  br i1 %tobool87.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end89.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end89.i:                                       ; preds = %for.body.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 4
  %conv.i.i = zext i16 %41 to i32
  %and.i.i.i = and i32 %conv.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end89.i
  %and1.i.i.i = and i32 %conv.i.i, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %and1.i.i.i, 7
  br i1 %cmp.i.i.i, label %if.then.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_ioctl_method.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.i = add nuw nsw i32 %and1.i.i.i, 22
  br label %if.end6.i.i.i

if.else.i.i.i:                                    ; preds = %if.end89.i
  %inc.i.i.i = add nuw nsw i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %41)
  %cmp3.i.i.i = icmp ugt i16 %41, 20
  br i1 %cmp3.i.i.i, label %if.else.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge, label %if.else.i.i.i.if.end6.i.i.i_crit_edge

if.else.i.i.i.if.end6.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i.i

if.else.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_ioctl_method.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i.if.end6.i.i.i_crit_edge, %if.end.i.i.i
  %id.addr.0.i.i.i = phi i32 [ %add.i.i.i, %if.end.i.i.i ], [ %inc.i.i.i, %if.else.i.i.i.if.end6.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw nsw i32 %id.addr.0.i.i.i, 6
  br label %uapi_key_ioctl_method.exit.i.i

uapi_key_ioctl_method.exit.i.i:                   ; preds = %if.end6.i.i.i, %if.else.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge, %if.then.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %shl.i.i.i, %if.end6.i.i.i ], [ -1, %if.then.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge ], [ -1, %if.else.i.i.i.uapi_key_ioctl_method.exit.i.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i.i.i, %retval.0.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i.i) #8
  %42 = ptrtoint ptr %exists.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %exists.i.i, align 1, !annotation !50
  %attrs.i.i = getelementptr inbounds %struct.uverbs_method_def, ptr %39, i32 0, i32 3
  %43 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %attrs.i.i, align 4
  %tobool.not.i126.i = icmp eq ptr %44, null
  br i1 %tobool.not.i126.i, label %uapi_key_ioctl_method.exit.i.i.uapi_merge_method.exit.thread.i_crit_edge, label %if.end.i127.i

uapi_key_ioctl_method.exit.i.i.uapi_merge_method.exit.thread.i_crit_edge: ; preds = %uapi_key_ioctl_method.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.thread.i

if.end.i127.i:                                    ; preds = %uapi_key_ioctl_method.exit.i.i
  %call1.i.i = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %or.i.i, i32 noundef 20, ptr noundef nonnull %exists.i.i) #8
  %cmp.i6.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i6.i.i, label %if.end.i127.i.uapi_merge_method.exit.i_crit_edge, label %if.end5.i.i

if.end.i127.i.uapi_merge_method.exit.i_crit_edge: ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.i

if.end5.i.i:                                      ; preds = %if.end.i127.i
  %45 = ptrtoint ptr %exists.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %exists.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not.i.i = icmp eq i8 %46, 0
  %handler34.i.i = getelementptr inbounds %struct.uverbs_method_def, ptr %39, i32 0, i32 4
  %47 = ptrtoint ptr %handler34.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handler34.i.i, align 4
  %tobool35.not.i.i = icmp eq ptr %48, null
  br i1 %tobool6.not.i.i, label %if.else.i128.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  br i1 %tobool35.not.i.i, label %if.then7.i.i.if.end114.i.i_crit_edge, label %if.then7.i.i.uapi_merge_method.exit.thread137.i_crit_edge, !prof !49

if.then7.i.i.uapi_merge_method.exit.thread137.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.thread137.i

if.then7.i.i.if.end114.i.i_crit_edge:             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i.i

if.else.i128.i:                                   ; preds = %if.end5.i.i
  br i1 %tobool35.not.i.i, label %do.end53.i.i, label %if.else.i128.i.if.end59.i.i_crit_edge, !prof !48

if.else.i128.i.if.end59.i.i_crit_edge:            ; preds = %if.else.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i

do.end53.i.i:                                     ; preds = %if.else.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 121, i32 noundef 9, ptr noundef null) #8
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.end53.i.i, %if.else.i128.i.if.end59.i.i_crit_edge
  %49 = ptrtoint ptr %handler34.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handler34.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %51 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %call1.i.i, align 4
  %52 = ptrtoint ptr %handler34.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handler34.i.i, align 4
  %cmp108.not.i.i = icmp eq ptr %53, @uverbs_destroy_def_handler
  br i1 %cmp108.not.i.i, label %if.end59.i.i.if.end114.i.i_crit_edge, label %if.then110.i.i

if.end59.i.i.if.end114.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i.i

if.then110.i.i:                                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver_method.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %call1.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %driver_method.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %driver_method.i.i, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %driver_method.i.i, align 2
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %if.then110.i.i, %if.end59.i.i.if.end114.i.i_crit_edge, %if.then7.i.i.if.end114.i.i_crit_edge
  %num_attrs.i.i = getelementptr inbounds %struct.uverbs_method_def, ptr %39, i32 0, i32 2
  %55 = ptrtoint ptr %num_attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_attrs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp115.not29.i.i = icmp eq i32 %56, 0
  br i1 %cmp115.not29.i.i, label %if.end114.i.i.uapi_merge_method.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end114.i.i.uapi_merge_method.exit.thread.i_crit_edge: ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end114.i.i
  %driver_method128.i.i = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %call1.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.030.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %58, i32 0, i32 %i.030.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool118.not.i.i = icmp eq ptr %60, null
  br i1 %tobool118.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end120.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end120.i.i:                                    ; preds = %for.body.i.i
  %attr121.i.i = getelementptr inbounds %struct.uverbs_attr_def, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %attr121.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %attr121.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %62)
  %cmp123.i.i = icmp eq i8 %62, 5
  br i1 %cmp123.i.i, label %if.then125.i.i, label %if.end120.i.i.if.end139.i.i_crit_edge

if.end120.i.i.if.end139.i.i_crit_edge:            ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i.i

if.then125.i.i:                                   ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %driver_method128.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load129.i.i = load i8, ptr %driver_method128.i.i, align 2
  %bf.load129.mask.i.i = and i8 %bf.load129.i.i, 64
  %bf.shl136.i.i = select i1 %is_driver, i8 64, i8 %bf.load129.mask.i.i
  %bf.clear137.i.i = and i8 %bf.load129.i.i, -65
  %bf.set138.i.i = or i8 %bf.shl136.i.i, %bf.clear137.i.i
  store i8 %bf.set138.i.i, ptr %driver_method128.i.i, align 2
  %64 = ptrtoint ptr %attr121.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %.pr.i.i = load i8, ptr %attr121.i.i, align 4
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.then125.i.i, %if.end120.i.i.if.end139.i.i_crit_edge
  %65 = phi i8 [ %.pr.i.i, %if.then125.i.i ], [ %62, %if.end120.i.i.if.end139.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %65)
  %cmp143.i.i = icmp eq i8 %65, 6
  br i1 %cmp143.i.i, label %if.then145.i.i, label %if.end139.i.i.if.end187.i.i_crit_edge

if.end139.i.i.if.end187.i.i_crit_edge:            ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187.i.i

if.then145.i.i:                                   ; preds = %if.end139.i.i
  %access147.i.i = getelementptr inbounds %struct.uverbs_attr_def, ptr %60, i32 0, i32 1, i32 3, i32 1, i32 2
  %66 = ptrtoint ptr %access147.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %access147.i.i, align 2
  %68 = and i8 %67, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %switch3.i.i = icmp eq i8 %68, 2
  br i1 %switch3.i.i, label %if.then145.i.i.uapi_merge_method.exit.thread137.i_crit_edge, label %if.then145.i.i.if.end187.i.i_crit_edge

if.then145.i.i.if.end187.i.i_crit_edge:           ; preds = %if.then145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187.i.i

if.then145.i.i.uapi_merge_method.exit.thread137.i_crit_edge: ; preds = %if.then145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.thread137.i

if.end187.i.i:                                    ; preds = %if.then145.i.i.if.end187.i.i_crit_edge, %if.end139.i.i.if.end187.i.i_crit_edge
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %60, align 4
  %conv189.i.i = zext i16 %70 to i32
  %and.i7.i.i = and i32 %conv189.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i.i)
  %tobool.not.i8.i.i = icmp eq i32 %and.i7.i.i, 0
  br i1 %tobool.not.i8.i.i, label %if.else.i16.i.i, label %if.then.i11.i.i

if.then.i11.i.i:                                  ; preds = %if.end187.i.i
  %and1.i9.i.i = and i32 %conv189.i.i, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and1.i9.i.i)
  %cmp.i10.i.i = icmp ugt i32 %and1.i9.i.i, 30
  br i1 %cmp.i10.i.i, label %if.then.i11.i.i.uapi_key_attr.exit.i.i_crit_edge, label %if.end.i14.i.i

if.then.i11.i.i.uapi_key_attr.exit.i.i_crit_edge: ; preds = %if.then.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_attr.exit.i.i

if.end.i14.i.i:                                   ; preds = %if.then.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i12.i.i = shl nuw nsw i32 %and1.i9.i.i, 1
  %shl.i13.i.i = add nuw nsw i32 %inc.i12.i.i, 2
  br label %uapi_key_attr.exit.i.i

if.else.i16.i.i:                                  ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %70)
  %cmp3.i15.i.i = icmp ugt i16 %70, 31
  br i1 %cmp3.i15.i.i, label %if.else.i16.i.i.uapi_key_attr.exit.i.i_crit_edge, label %if.end5.i.i.i

if.else.i16.i.i.uapi_key_attr.exit.i.i_crit_edge: ; preds = %if.else.i16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_attr.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.else.i16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl6.i.i.i = shl nuw nsw i32 %conv189.i.i, 1
  %or7.i.i.i = or i32 %shl6.i.i.i, 1
  br label %uapi_key_attr.exit.i.i

uapi_key_attr.exit.i.i:                           ; preds = %if.end5.i.i.i, %if.else.i16.i.i.uapi_key_attr.exit.i.i_crit_edge, %if.end.i14.i.i, %if.then.i11.i.i.uapi_key_attr.exit.i.i_crit_edge
  %retval.0.i17.i.i = phi i32 [ -1, %if.then.i11.i.i.uapi_key_attr.exit.i.i_crit_edge ], [ -1, %if.else.i16.i.i.uapi_key_attr.exit.i.i_crit_edge ], [ %shl.i13.i.i, %if.end.i14.i.i ], [ %or7.i.i.i, %if.end5.i.i.i ]
  %or191.i.i = or i32 %retval.0.i17.i.i, %or.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or191.i.i)
  %cmp.i18.i.i = icmp eq i32 %or191.i.i, -1
  br i1 %cmp.i18.i.i, label %uapi_key_attr.exit.i.i.uapi_merge_method.exit.i_crit_edge, label %if.end.i19.i.i

uapi_key_attr.exit.i.i.uapi_merge_method.exit.i_crit_edge: ; preds = %uapi_key_attr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.i

if.end.i19.i.i:                                   ; preds = %uapi_key_attr.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 16) #11
  %tobool.not.i20.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i20.i.i, label %if.end.i19.i.i.uapi_merge_method.exit.i_crit_edge, label %if.end4.i.i.i

if.end.i19.i.i.uapi_merge_method.exit.i_crit_edge: ; preds = %if.end.i19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i19.i.i
  %call5.i.i.i = tail call i32 @radix_tree_insert(ptr noundef %uapi, i32 noundef %or191.i.i, ptr noundef nonnull %call7.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.uapi_add_elm.exit.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.uapi_add_elm.exit.i.i_crit_edge:    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_add_elm.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  %72 = inttoptr i32 %call5.i.i.i to ptr
  br label %uapi_add_elm.exit.i.i

uapi_add_elm.exit.i.i:                            ; preds = %if.then7.i.i.i, %if.end4.i.i.i.uapi_add_elm.exit.i.i_crit_edge
  %retval.0.i21.i.i = phi ptr [ %72, %if.then7.i.i.i ], [ %call7.i.i.i.i.i, %if.end4.i.i.i.uapi_add_elm.exit.i.i_crit_edge ]
  %cmp.i22.i.i = icmp ugt ptr %retval.0.i21.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i, label %uapi_add_elm.exit.i.i.uapi_merge_method.exit.i_crit_edge, label %if.end196.i.i

uapi_add_elm.exit.i.i.uapi_merge_method.exit.i_crit_edge: ; preds = %uapi_add_elm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.i

if.end196.i.i:                                    ; preds = %uapi_add_elm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = call ptr @memcpy(ptr %retval.0.i21.i.i, ptr %attr121.i.i, i32 16)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end196.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %i.030.i.i, 1
  %74 = ptrtoint ptr %num_attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_attrs.i.i, align 4
  %cmp115.not.i.i = icmp eq i32 %inc.i.i, %75
  br i1 %cmp115.not.i.i, label %for.inc.i.i.uapi_merge_method.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.uapi_merge_method.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_method.exit.thread.i

uapi_merge_method.exit.thread.i:                  ; preds = %for.inc.i.i.uapi_merge_method.exit.thread.i_crit_edge, %if.end114.i.i.uapi_merge_method.exit.thread.i_crit_edge, %uapi_key_ioctl_method.exit.i.i.uapi_merge_method.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i.i) #8
  br label %for.inc.i

uapi_merge_method.exit.thread137.i:               ; preds = %if.then145.i.i.uapi_merge_method.exit.thread137.i_crit_edge, %if.then7.i.i.uapi_merge_method.exit.thread137.i_crit_edge
  %.sink.i = phi i32 [ 150, %if.then145.i.i.uapi_merge_method.exit.thread137.i_crit_edge ], [ 118, %if.then7.i.i.uapi_merge_method.exit.thread137.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i.i) #8
  br label %uapi_merge_obj_tree.exit.thread174

uapi_merge_method.exit.i:                         ; preds = %uapi_add_elm.exit.i.i.uapi_merge_method.exit.i_crit_edge, %if.end.i19.i.i.uapi_merge_method.exit.i_crit_edge, %uapi_key_attr.exit.i.i.uapi_merge_method.exit.i_crit_edge, %if.end.i127.i.uapi_merge_method.exit.i_crit_edge
  %retval.4.i.in.i = phi ptr [ %retval.0.i21.i.i, %uapi_add_elm.exit.i.i.uapi_merge_method.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i19.i.i.uapi_merge_method.exit.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %uapi_key_attr.exit.i.i.uapi_merge_method.exit.i_crit_edge ], [ %call1.i.i, %if.end.i127.i.uapi_merge_method.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i.i) #8
  br label %uapi_merge_obj_tree.exit

for.inc.i:                                        ; preds = %uapi_merge_method.exit.thread.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0146.i, 1
  %76 = ptrtoint ptr %num_methods.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_methods.i, align 4
  %cmp84.not.i = icmp eq i32 %inc.i, %77
  br i1 %cmp84.not.i, label %for.inc.i.uapi_merge_obj_tree.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.uapi_merge_obj_tree.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_merge_obj_tree.exit.thread

uapi_merge_obj_tree.exit.thread:                  ; preds = %for.inc.i.uapi_merge_obj_tree.exit.thread_crit_edge, %for.cond.preheader.i.uapi_merge_obj_tree.exit.thread_crit_edge, %if.end80.i.uapi_merge_obj_tree.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i) #8
  br label %for.inc

uapi_merge_obj_tree.exit.thread174:               ; preds = %uapi_merge_method.exit.thread137.i, %do.end63.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i) #8
  br label %cleanup100

uapi_merge_obj_tree.exit:                         ; preds = %uapi_merge_method.exit.i, %uapi_key_obj.exit.i.uapi_merge_obj_tree.exit_crit_edge
  %retval.2.i.in = phi ptr [ %retval.4.i.in.i, %uapi_merge_method.exit.i ], [ %call1.i, %uapi_key_obj.exit.i.uapi_merge_obj_tree.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i) #8
  %tobool38.not = icmp eq ptr %retval.2.i.in, null
  br i1 %tobool38.not, label %uapi_merge_obj_tree.exit.for.inc_crit_edge, label %cleanup100.loopexit.split.loop.exit195

uapi_merge_obj_tree.exit.for.inc_crit_edge:       ; preds = %uapi_merge_obj_tree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb42:                                          ; preds = %for.cond
  %78 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 3
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add.ptr = getelementptr i8, ptr %ops, i32 %80
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  %tobool43.not = icmp eq ptr %82, null
  br i1 %tobool43.not, label %cleanup, label %sw.bb42.for.inc_crit_edge

sw.bb42.for.inc_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %sw.bb42
  %call46 = tail call fastcc i32 @uapi_disable_elm(ptr noundef %uapi, ptr noundef %def.0, i32 noundef %cur_obj_key.0, i32 noundef %cur_method_key.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup100_crit_edge

cleanup.cleanup100_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb50:                                          ; preds = %for.cond
  %83 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 3
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %call51 = tail call zeroext i1 %85(ptr noundef %ibdev) #8
  br i1 %call51, label %sw.bb50.for.inc_crit_edge, label %if.end53

sw.bb50.for.inc_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end53:                                         ; preds = %sw.bb50
  %call54 = tail call fastcc i32 @uapi_disable_elm(ptr noundef %uapi, ptr noundef %def.0, i32 noundef %cur_obj_key.0, i32 noundef %cur_method_key.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end53.for.inc_crit_edge, label %if.end53.cleanup100_crit_edge

if.end53.cleanup100_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb58:                                          ; preds = %for.cond
  %86 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 2
  %conv60 = zext i16 %88 to i32
  %and.i147 = and i32 %conv60, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148 = icmp eq i32 %and.i147, 0
  br i1 %tobool.not.i148, label %if.else.i155, label %if.then.i151

if.then.i151:                                     ; preds = %sw.bb58
  %and1.i149 = and i32 %conv60, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and1.i149)
  %cmp.i150 = icmp ugt i32 %and1.i149, 11
  br i1 %cmp.i150, label %if.then.i151.uapi_key_obj.exit160_crit_edge, label %if.end.i153

if.then.i151.uapi_key_obj.exit160_crit_edge:      ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit160

if.end.i153:                                      ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #10
  %add.i152 = add nuw nsw i32 %and1.i149, 20
  br label %if.end6.i158

if.else.i155:                                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %88)
  %cmp3.i154 = icmp ugt i16 %88, 19
  br i1 %cmp3.i154, label %if.else.i155.uapi_key_obj.exit160_crit_edge, label %if.else.i155.if.end6.i158_crit_edge

if.else.i155.if.end6.i158_crit_edge:              ; preds = %if.else.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i158

if.else.i155.uapi_key_obj.exit160_crit_edge:      ; preds = %if.else.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_key_obj.exit160

if.end6.i158:                                     ; preds = %if.else.i155.if.end6.i158_crit_edge, %if.end.i153
  %id.addr.0.i156 = phi i32 [ %add.i152, %if.end.i153 ], [ %conv60, %if.else.i155.if.end6.i158_crit_edge ]
  %shl.i157 = shl nuw nsw i32 %id.addr.0.i156, 11
  br label %uapi_key_obj.exit160

uapi_key_obj.exit160:                             ; preds = %if.end6.i158, %if.else.i155.uapi_key_obj.exit160_crit_edge, %if.then.i151.uapi_key_obj.exit160_crit_edge
  %retval.0.i159 = phi i32 [ %shl.i157, %if.end6.i158 ], [ -1, %if.then.i151.uapi_key_obj.exit160_crit_edge ], [ -1, %if.else.i155.uapi_key_obj.exit160_crit_edge ]
  %call62 = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %retval.0.i159, i32 noundef 16, ptr noundef nonnull %exists)
  %cmp.i161 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %cleanup67.thread, label %uapi_key_obj.exit160.for.inc_crit_edge

uapi_key_obj.exit160.for.inc_crit_edge:           ; preds = %uapi_key_obj.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup67.thread:                                 ; preds = %uapi_key_obj.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %call62 to i32
  br label %cleanup100

sw.bb69:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists.i162) #8
  %90 = ptrtoint ptr %exists.i162 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %exists.i162, align 1, !annotation !50
  %91 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2
  %is_ex.i = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2, i32 0, i32 1
  %92 = ptrtoint ptr %is_ex.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i = load i8, ptr %is_ex.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i163 = icmp sgt i8 %bf.load.i, -1
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %91, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %94)
  %cmp.i123.i = icmp ugt i16 %94, 63
  %..i = select i1 %tobool.not.i163, i16 1920, i16 1984
  %95 = or i16 %..i, %94
  %or.i124.i = zext i16 %95 to i32
  %retval.0.i125.i = select i1 %cmp.i123.i, i32 -1, i32 %or.i124.i
  %method_key.0.i = or i32 %retval.0.i125.i, %cur_obj_key.0
  %call5.i = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %method_key.0.i, i32 noundef 8, ptr noundef nonnull %exists.i162) #8
  %cmp.i126.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %uapi_create_write.exit, label %if.end9.i

if.end9.i:                                        ; preds = %sw.bb69
  %96 = ptrtoint ptr %exists.i162 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %exists.i162, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool10.not.i = icmp eq i8 %97, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end44.i_crit_edge, label %land.rhs.i

if.end9.i.if.end44.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

land.rhs.i:                                       ; preds = %if.end9.i
  %98 = ptrtoint ptr %is_ex.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load13.i = load i8, ptr %is_ex.i, align 2
  %bf.lshr14.i = lshr i8 %bf.load13.i, 7
  %is_ex16.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %call5.i, i32 0, i32 1
  %99 = ptrtoint ptr %is_ex16.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load17.i = load i8, ptr %is_ex16.i, align 4
  %bf.lshr18.i = lshr i8 %bf.load17.i, 6
  %bf.clear.i = and i8 %bf.lshr18.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr14.i, i8 %bf.clear.i)
  %cmp.not.i164 = icmp eq i8 %bf.lshr14.i, %bf.clear.i
  br i1 %cmp.not.i164, label %land.rhs.i.if.end44.i_crit_edge, label %uapi_create_write.exit.thread183, !prof !49

land.rhs.i.if.end44.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

uapi_create_write.exit.thread183:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i162) #8
  br label %cleanup100

if.end44.i:                                       ; preds = %land.rhs.i.if.end44.i_crit_edge, %if.end9.i.if.end44.i_crit_edge
  %100 = ptrtoint ptr %is_ex.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load46.i = load i8, ptr %is_ex.i, align 2
  %is_ex48.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %call5.i, i32 0, i32 1
  %101 = ptrtoint ptr %is_ex48.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load49.i = load i8, ptr %is_ex48.i, align 4
  %102 = lshr i8 %bf.load46.i, 1
  %bf.shl.i = and i8 %102, 64
  %bf.clear50.i = and i8 %bf.load49.i, -65
  %bf.set.i = or i8 %bf.clear50.i, %bf.shl.i
  store i8 %bf.set.i, ptr %is_ex48.i, align 4
  %103 = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 3
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %call5.i, align 4
  %bf.load52.i = load i8, ptr %is_ex.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52.i)
  %tobool54.not.i = icmp sgt i8 %bf.load52.i, -1
  br i1 %tobool54.not.i, label %if.end67.i, label %if.end44.i.uapi_create_write.exit.thread_crit_edge

if.end44.i.uapi_create_write.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_create_write.exit.thread

if.end67.i:                                       ; preds = %if.end44.i
  %107 = ptrtoint ptr %uverbs_cmd_mask.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %uverbs_cmd_mask.i, align 8
  %109 = ptrtoint ptr %91 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %91, align 2
  %sh_prom.i = zext i16 %110 to i64
  %shl.i166 = shl nuw i64 1, %sh_prom.i
  %and.i167 = and i64 %shl.i166, %108
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i167)
  %tobool58.not.i = icmp eq i64 %and.i167, 0
  %bf.shl64.i = select i1 %tobool58.not.i, i8 -128, i8 0
  %bf.clear65.i = and i8 %bf.set.i, 127
  %bf.set66.i = or i8 %bf.shl64.i, %bf.clear65.i
  %111 = ptrtoint ptr %is_ex48.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %bf.set66.i, ptr %is_ex48.i, align 4
  %112 = ptrtoint ptr %is_ex.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load69.pr.i = load i8, ptr %is_ex.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load69.pr.i)
  %tobool71.not.i = icmp sgt i8 %bf.load69.pr.i, -1
  br i1 %tobool71.not.i, label %land.lhs.true.i168, label %if.end67.i.uapi_create_write.exit.thread_crit_edge

if.end67.i.uapi_create_write.exit.thread_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_create_write.exit.thread

land.lhs.true.i168:                               ; preds = %if.end67.i
  %113 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %103, align 4
  %tobool72.not.i = icmp eq ptr %114, null
  br i1 %tobool72.not.i, label %land.lhs.true.i168.uapi_create_write.exit.thread_crit_edge, label %if.then73.i

land.lhs.true.i168.uapi_create_write.exit.thread_crit_edge: ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_create_write.exit.thread

if.then73.i:                                      ; preds = %land.lhs.true.i168
  call void @__sanitizer_cov_trace_pc() #10
  %115 = lshr i8 %bf.load69.pr.i, 1
  %bf.shl80.i = and i8 %115, 32
  %bf.clear81.i = and i8 %bf.set66.i, -33
  %bf.set82.i = or i8 %bf.clear81.i, %bf.shl80.i
  %116 = ptrtoint ptr %is_ex48.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %bf.set82.i, ptr %is_ex48.i, align 4
  %117 = ptrtoint ptr %is_ex.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load83.i = load i8, ptr %is_ex.i, align 2
  %118 = lshr i8 %bf.load83.i, 1
  %bf.shl89.i = and i8 %118, 16
  %bf.clear90.i = and i8 %bf.set82.i, -17
  %bf.set91.i = or i8 %bf.shl89.i, %bf.clear90.i
  store i8 %bf.set91.i, ptr %is_ex48.i, align 4
  %req_size.i = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2, i32 0, i32 2
  %119 = ptrtoint ptr %req_size.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %req_size.i, align 1
  %req_size92.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %call5.i, i32 0, i32 2
  %121 = ptrtoint ptr %req_size92.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %req_size92.i, align 1
  %resp_size.i = getelementptr inbounds %struct.uapi_definition, ptr %def.0, i32 0, i32 2, i32 0, i32 3
  %122 = ptrtoint ptr %resp_size.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %resp_size.i, align 2
  %resp_size93.i = getelementptr inbounds %struct.uverbs_api_write_method, ptr %call5.i, i32 0, i32 3
  %124 = ptrtoint ptr %resp_size93.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %resp_size93.i, align 2
  br label %uapi_create_write.exit.thread

uapi_create_write.exit.thread:                    ; preds = %if.then73.i, %land.lhs.true.i168.uapi_create_write.exit.thread_crit_edge, %if.end67.i.uapi_create_write.exit.thread_crit_edge, %if.end44.i.uapi_create_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i162) #8
  br label %for.inc

uapi_create_write.exit:                           ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %call5.i to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists.i162) #8
  br label %cleanup100

do.end86:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef null) #8
  br label %cleanup100

for.inc:                                          ; preds = %uapi_create_write.exit.thread, %uapi_key_obj.exit160.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %sw.bb50.for.inc_crit_edge, %cleanup.for.inc_crit_edge, %sw.bb42.for.inc_crit_edge, %uapi_merge_obj_tree.exit.for.inc_crit_edge, %uapi_merge_obj_tree.exit.thread, %sw.bb.for.inc_crit_edge
  %cur_method_key.2 = phi i32 [ %cur_method_key.0, %sw.bb50.for.inc_crit_edge ], [ %cur_method_key.0, %if.end53.for.inc_crit_edge ], [ %cur_method_key.0, %cleanup.for.inc_crit_edge ], [ %cur_method_key.0, %uapi_merge_obj_tree.exit.for.inc_crit_edge ], [ %cur_method_key.0, %sw.bb.for.inc_crit_edge ], [ %cur_method_key.0, %uapi_merge_obj_tree.exit.thread ], [ %cur_method_key.0, %uapi_key_obj.exit160.for.inc_crit_edge ], [ %method_key.0.i, %uapi_create_write.exit.thread ], [ %cur_method_key.0, %sw.bb42.for.inc_crit_edge ]
  %cur_obj_key.1 = phi i32 [ %cur_obj_key.0, %sw.bb50.for.inc_crit_edge ], [ %cur_obj_key.0, %if.end53.for.inc_crit_edge ], [ %cur_obj_key.0, %cleanup.for.inc_crit_edge ], [ %retval.0.i209, %uapi_merge_obj_tree.exit.for.inc_crit_edge ], [ %cur_obj_key.0, %sw.bb.for.inc_crit_edge ], [ %retval.0.i209, %uapi_merge_obj_tree.exit.thread ], [ %retval.0.i159, %uapi_key_obj.exit160.for.inc_crit_edge ], [ %cur_obj_key.0, %uapi_create_write.exit.thread ], [ %cur_obj_key.0, %sw.bb42.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.uapi_definition, ptr %def.0, i32 1
  br label %for.cond

cleanup100.loopexit.split.loop.exit195:           ; preds = %uapi_merge_obj_tree.exit
  call void @__sanitizer_cov_trace_pc() #10
  %retval.2.i.le = ptrtoint ptr %retval.2.i.in to i32
  br label %cleanup100

cleanup100:                                       ; preds = %cleanup100.loopexit.split.loop.exit195, %do.end86, %uapi_create_write.exit, %uapi_create_write.exit.thread183, %cleanup67.thread, %if.end53.cleanup100_crit_edge, %cleanup.cleanup100_crit_edge, %uapi_merge_obj_tree.exit.thread174, %do.end, %sw.bb.cleanup100_crit_edge, %for.cond.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.4 = phi i32 [ -22, %do.end86 ], [ -22, %do.end ], [ 0, %entry.cleanup100_crit_edge ], [ %125, %uapi_create_write.exit ], [ -22, %uapi_merge_obj_tree.exit.thread174 ], [ %89, %cleanup67.thread ], [ -22, %uapi_create_write.exit.thread183 ], [ %retval.2.i.le, %cleanup100.loopexit.split.loop.exit195 ], [ %call46, %cleanup.cleanup100_crit_edge ], [ %call, %sw.bb.cleanup100_crit_edge ], [ 0, %for.cond.cleanup100_crit_edge ], [ %call54, %if.end53.cleanup100_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists) #8
  ret i32 %retval.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_disassociate_api_pre(ptr noundef %uverbs_dev) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uapi1 = getelementptr inbounds %struct.ib_uverbs_device, ptr %uverbs_dev, i32 0, i32 13
  %0 = ptrtoint ptr %uapi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uapi1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #8
  %2 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %ib_dev = getelementptr inbounds %struct.ib_uverbs_device, ptr %uverbs_dev, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %iter, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %ib_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %ib_dev, align 8
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %iter, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call33 = call ptr @radix_tree_next_chunk(ptr noundef %1, ptr noundef nonnull %iter, i32 noundef 0) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %for.end, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call33, %lor.rhs.for.body_crit_edge ]
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iter, align 4
  %and.i = and i32 %9, 1984
  %10 = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %10)
  %11 = icmp ult i32 %10, 1919
  %and2.i = and i32 %9, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 0
  %12 = and i1 %cmp3.i, %11
  br i1 %12, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %for.body
  %13 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slot.1, align 4
  %driver_method = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %driver_method to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %driver_method, align 2
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool40.not = icmp eq i8 %16, 0
  br i1 %tobool40.not, label %if.then36.for.inc_crit_edge, label %do.body50

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body50:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %14, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body50, %if.then36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %19, %21
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.1, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %23, 1
  store i32 %add.i.i, ptr %iter, align 4
  %24 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %25, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !48

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

for.end:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %disassociate_srcu = getelementptr inbounds %struct.ib_uverbs_device, ptr %uverbs_dev, i32 0, i32 10
  call void @synchronize_srcu(ptr noundef %disassociate_srcu) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uverbs_disassociate_api(ptr noundef %uapi) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #8
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %iter, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call1 = call ptr @radix_tree_next_chunk(ptr noundef %uapi, ptr noundef nonnull %iter, i32 noundef 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.end, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call1, %lor.rhs.for.body_crit_edge ]
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter, align 4
  %and.i = and i32 %6, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i21 = icmp eq i32 %and.i, 0
  br i1 %cmp.i21, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slot.1, align 4
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %and.i22 = and i32 %6, 1984
  %9 = add nsw i32 %and.i22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %9)
  %10 = icmp ult i32 %9, 1919
  %and2.i = and i32 %6, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp ne i32 %and2.i, 0
  %11 = and i1 %cmp3.i, %10
  br i1 %11, label %if.then6, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %if.else
  %12 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slot.1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp = icmp eq i8 %15, 5
  br i1 %cmp, label %if.then12, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %u2 = getelementptr inbounds %struct.uverbs_attr_spec, ptr %13, i32 0, i32 3
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then12, %if.then
  %u2.sink = phi ptr [ %u2, %if.then12 ], [ %8, %if.then ]
  %16 = ptrtoint ptr %u2.sink to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %u2.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then6.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %19 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %18, %20
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.1, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %21 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %22, 1
  store i32 %add.i.i, ptr %iter, align 4
  %23 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %24, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !48

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

for.end:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uapi_disable_elm(ptr noundef %uapi, ptr nocapture noundef readonly %def, i32 noundef %obj_key, i32 noundef %method_key) unnamed_addr #0 align 64 {
entry:
  %exists = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exists) #8
  %scope = getelementptr inbounds %struct.uapi_definition, ptr %def, i32 0, i32 1
  %0 = ptrtoint ptr %scope to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scope, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %1, label %entry.do.end_crit_edge [
    i8 1, label %if.then
    i8 2, label %land.lhs.true
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  %call = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %obj_key, i32 noundef 16, ptr noundef nonnull %exists)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  br label %cleanup61

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %disabled = getelementptr inbounds %struct.uverbs_api_object, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disabled, align 4
  br label %cleanup61

land.lhs.true:                                    ; preds = %entry
  %and.i = and i32 %method_key, 1984
  %5 = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %5)
  %6 = icmp ult i32 %5, 1919
  %and2.i = and i32 %method_key, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 0
  %7 = and i1 %cmp3.i, %6
  br i1 %7, label %if.then12, label %land.lhs.true28

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %method_key, i32 noundef 20, ptr noundef nonnull %exists)
  %cmp.i77 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call13 to i32
  br label %cleanup61

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %disabled18 = getelementptr inbounds %struct.uverbs_api_ioctl_method, ptr %call13, i32 0, i32 3
  %9 = ptrtoint ptr %disabled18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load19 = load i8, ptr %disabled18, align 2
  %bf.set21 = or i8 %bf.load19, 32
  store i8 %bf.set21, ptr %disabled18, align 2
  br label %cleanup61

land.lhs.true28:                                  ; preds = %land.lhs.true
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and.i, label %land.lhs.true28.do.end_crit_edge [
    i32 1920, label %land.lhs.true28.if.then33_crit_edge
    i32 1984, label %land.lhs.true28.if.then33_crit_edge84
  ]

land.lhs.true28.if.then33_crit_edge84:            ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.lhs.true28.if.then33_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.lhs.true28.do.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then33:                                        ; preds = %land.lhs.true28.if.then33_crit_edge, %land.lhs.true28.if.then33_crit_edge84
  %call34 = call fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %method_key, i32 noundef 8, ptr noundef nonnull %exists)
  %cmp.i82 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call34 to i32
  br label %cleanup61

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %disabled39 = getelementptr inbounds %struct.uverbs_api_write_method, ptr %call34, i32 0, i32 1
  %12 = ptrtoint ptr %disabled39 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load40 = load i8, ptr %disabled39, align 4
  %bf.set42 = or i8 %bf.load40, -128
  store i8 %bf.set42, ptr %disabled39, align 4
  br label %cleanup61

do.end:                                           ; preds = %land.lhs.true28.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #8
  br label %cleanup61

cleanup61:                                        ; preds = %do.end, %if.end38, %if.then36, %if.end17, %if.then15, %if.end, %if.then3
  %retval.3 = phi i32 [ -22, %do.end ], [ %3, %if.then3 ], [ 0, %if.end ], [ %8, %if.then15 ], [ 0, %if.end17 ], [ %11, %if.then36 ], [ 0, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exists) #8
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uapi_add_get_elm(ptr noundef %uapi, i32 noundef %key, i32 noundef %alloc_size, ptr nocapture noundef writeonly %exists) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %key)
  %cmp.i = icmp eq i32 %key, -1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %alloc_size, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end4.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end8.i.i.i
  %call5.i = tail call i32 @radix_tree_insert(ptr noundef %uapi, i32 noundef %key, ptr noundef nonnull %call9.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.uapi_add_elm.exit_crit_edge, label %if.then7.i

if.end4.i.uapi_add_elm.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uapi_add_elm.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  %0 = inttoptr i32 %call5.i to ptr
  br label %uapi_add_elm.exit

uapi_add_elm.exit:                                ; preds = %if.then7.i, %if.end4.i.uapi_add_elm.exit_crit_edge
  %retval.0.i = phi ptr [ %0, %if.then7.i ], [ %call9.i.i.i, %if.end4.i.uapi_add_elm.exit_crit_edge ]
  %cmp.i41 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.end, label %if.then

if.then:                                          ; preds = %uapi_add_elm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %exists, align 1
  br label %cleanup

if.end:                                           ; preds = %uapi_add_elm.exit
  %cmp.not = icmp eq ptr %retval.0.i, inttoptr (i32 -17 to ptr)
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @radix_tree_lookup(ptr noundef %uapi, i32 noundef %key) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end31, !prof !48

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 51, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %exists, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.end.cleanup_crit_edge, %if.then, %if.end8.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call5, %if.end31 ], [ %retval.0.i, %if.then ], [ %retval.0.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -75 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ib_uverbs_notsupp(ptr nocapture noundef readnone %attrs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uapi_compute_bundle_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 671, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uverbs_alloc_api._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uverbs_alloc_api._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 695, i32 5}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 718, i32 5}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 728, i32 5}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 480, i32 9}
!16 = !{ptr @xa_init_flags.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @uverbs_core_api, !20, !"uverbs_core_api", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 628, i32 37}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 539, i32 5}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 553, i32 5}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 566, i32 5}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 577, i32 5}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 523, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 427, i32 4}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 462, i32 5}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 466, i32 5}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/core/uverbs_uapi.c", i32 366, i32 4}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
!52 = !{i64 2157837828}
